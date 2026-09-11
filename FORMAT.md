# Espen i Asmo data formats (work in progress)

Verified against `C/ESPEN/*` from the v1.3 floppies. Text encoding is CP865 everywhere.

## Images (done)

All `ESPENS.*`, `ESPENP.*`, `ESPEN.OBI/.SEK/.SLU/.STA/.VFI` are IFF `LIST` containers of `FORM ILBM`,
4 bitplanes, ByteRun1 compressed, 16-colour CMAP. `tools/ilbm2png.py` converts them.

| File | Count | Size | Content |
|------|------:|------|---------|
| ESPENS.1-39 | 39 | 360x200 | scene backgrounds. Several rooms have per-state variants (ESPENS.1/2/3 are cold/warm/lit "Hjemme") |
| ESPENP.1-26 | 26 | 108x116 | character portraits shown in the right pane |
| ESPEN.OBI | 108 | 56x40 | inventory / object icons |
| ESPEN.VFI | 10 | | verb icons (toolbar) |
| ESPEN.SEK | 1 | 224x216 | the rucksack (inventory pane) |
| ESPEN.SLU / .STA | 1 each | | end screen, start screen |

## ESPEN.ADV (decoded except rule opcode semantics)

Raw dump of Turbo Pascal records, so fixed-length string buffers carry stale bytes after the
length byte. Always honour the length byte. `tools/adv_dump.py` exports all of this to `game.json`.

| Offset | Table | Slots x size | Notes |
|--------|-------|-------------|-------|
| 0x1d | intro text | 1 string | |
| 0xe8 | rooms | 78 x 454 | 36 used, ids are slot+1 |
| 0x8eca | objects | 92 x 270 | ids are slot+1 |
| 0xefd4 | characters | 16 x 828 | dialogue question options |
| 0x12394 | initial variables | word n + n signed words | vars 1..n (n = 29), copied into the variable block on every start. 14 start at 1, e.g. 28 (progress), 15 (gallows), 27 (swimming), 4/5 (hunger clock) |
| 0x123d2 | messages | 195 x 52 | one table, 1-based ids. 1-2 disk errors, 3-10 engine defaults, rest game text |
| 0x14b70 | hints | 15 x 78 | "Les eventyret om..." shown by the ? verb |
| 0x15004 | rule count | word | 1128 |
| 0x15006 | keyed rules | 1128 x 15 | run when the player's command matches verb+key |
| 0x1921e | global rule count | word | 113 |
| 0x19220 | global rules | 113 x 10 | run every turn, no key |
| 0x1968a | counts | 4 words | 10 verb icons, 108 object icons, 39 scenes, 26 portraits |

Room (454): name `string[13]` at 0; flags byte at 0x10; person id word at 0x19; three state blocks.
State block = 3 x `string[40]` description followed by 9 words: scene image number (ESPENS.n),
then exits N, S, E, W, and four more that are out, in, up, down by the evidence (Hjemme south and
down both go to Kjeller; Kjeller up goes to Hjemme; Kongetrapp in goes to Prinsesserom). Blocks at
0x1b/0x96, 0xa8/0x123, 0x135/0x1b0. Portrait number (ESPENP.n) at 0x1c2.

Object (270): name `string[19]` at 0; three state blocks of 3 x `string[25]` + icon word
(ESPEN.OBI index) + flags word (bit 0 = portable, bit 8 seen only on lit torch, probably light
source); start room id at 266; start state at 268. Room 0 = not in play yet.

Character (828): name at 0; two sets of five question options at 28 and 296, 52 bytes each
(2 x `string[25]`); binary from 504 not decoded (probably per-question rule references).

Character (828): name at 0; two dialogue sets at 28 and 296 (one per person state, 268 bytes
each): four questions then the default answer, 52 bytes each (2 x `string[25]`). Word at 824 is
the home room used by summon_person.

## Rules (decoded from ADVRTNOR.EXE segment 0x20a; `tools/rules.py`)

Keyed rule (15 bytes): verb byte, key1 word, key2 word, condition (op, a, b), action (op, a, b).
Global rule (10 bytes): condition, action. Command = (verb, k1, k2):

| verb | k1 | k2 | default handling when no rule says `handled` |
|------|----|----|-----------------------------------------------|
| 0 go | room id | direction 1-8 = N S E W out in up down | follow the exit in the room's current state, else message 3 |
| 1 take | object | 0 | into inventory if portable and fewer than 9 carried |
| 2 drop | object | 0 | into current room |
| 3 use | object | 0 | message 6 "Ingenting spesielt skjedde!" |
| 4 give | object | 0 | message 7, to the person present |
| 5 look | object | 0 | show the object's state description |
| 6 talk | person | question 1-4 | show the question, then the state's default answer |

Per turn: keyed rules whose key matches, in file order; then global rules; then default handling
unless an action said `handled`; then a second pass over both lists, which runs regardless of
`handled`. The loader moves every rule containing condition 15 (`else`) out of the first lists into
separate second-pass lists (`disasm/0959.asm:0000`), so pass 1 runs only non-else rules and pass 2
only else rules, where `else` evaluates true. `handled` never stops a list; only `end_game` aborts
the rest of the turn (`disasm/020a.asm:07D3`, `0847`). Actions run only when the
condition holds. Conditions: 0 room_is, 1 room_not, 2 carried, 3 not_carried, 4 room_state a b,
5 chance a%, 6 person_here, 7 person_state a b (and present), 8 person_absent, 9 object_here (room or
carried), 10 object_state a b (and in play), 11 object_gone, 12 var_eq, 13 var_gt, 14 var_lt, 15 else.
Actions: 0 popup message a, 1 remove_object, 2 place_object (into current room), 3 remove_person,
4 summon_person (to home room), 5 goto_room, 6 message a (text pane), 7 set_room_state,
8 set_object_state, 9 set_person_state, 10 end_game (restart), 11 add_score, 12 var_set, 13 var_add,
14 var_sub, 15 handled.

The editor compiled multi-condition rules into runs of records using var 0 as a counter, var -1 as
a fire flag and var -2 as a constant zero (variables live in a block starting two slots before
index 0). `tools/rules.py` folds these back to IF a AND b THEN x; y. Game variables in use: 4 = hunger
clock on, 5 = hunger counter (warn 25, 35, die 45), 6 = rats present, 9 = turns in the witch's
sack (dies at 3), 14 = turns in the princess room (gallows at 10), 16 = turns on the gallows,
28 = progress (ending when > 20). Score is added 5 per solved step.
