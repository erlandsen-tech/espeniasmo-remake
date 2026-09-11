00000000  55                push bp
00000001  89E5              mov bp,sp
00000003  83EC07            sub sp,0x7
00000006  9AB505CF02        call word 0x2cf:word 0x5b5
0000000B  8D7EF9            lea di,[bp-0x7]
0000000E  16                push ss
0000000F  57                push di
00000010  9ABA1C2200        call word 0x22:word 0x1cba
00000015  8D7EF9            lea di,[bp-0x7]
00000018  16                push ss
00000019  57                push di
0000001A  8D7EFE            lea di,[bp-0x2]
0000001D  16                push ss
0000001E  57                push di
0000001F  9AA40B0A02        call word 0x20a:word 0xba4
00000024  807EFE00          cmp byte [bp-0x2],0x0
00000028  74E1              jz 0xb
0000002A  807EFE01          cmp byte [bp-0x2],0x1
0000002E  7404              jz 0x34
00000030  B000              mov al,0x0
00000032  EB02              jmp 0x36
00000034  B001              mov al,0x1
00000036  8846FF            mov [bp-0x1],al
00000039  8A46FF            mov al,[bp-0x1]
0000003C  89EC              mov sp,bp
0000003E  5D                pop bp
0000003F  C3                ret
00000040  0001              add [bx+di],al
00000042  5C                pop sp
00000043  042E              add al,0x2e
00000045  61                popa
00000046  64769A            fs jna 0xffe3
00000049  0000              add [bx+si],al
0000004B  56                push si
0000004C  1A9A3D02          sbb bl,[bp+si+0x23d]
00000050  9C                pushf
00000051  189A5307          sbb [bp+si+0x753],bl
00000055  25189A            and ax,0x9a18
00000058  4E                dec si
00000059  05C317            add ax,0x17c3
0000005C  9ABD162A15        call word 0x152a:word 0x16bd
00000061  9A1B03F714        call word 0x14f7:word 0x31b
00000066  9AD4159813        call word 0x1398:word 0x15d4
0000006B  9ABF052313        call word 0x1323:word 0x5bf
00000070  9A1804C612        call word 0x12c6:word 0x418
00000075  9A7945430E        call word 0xe43:word 0x4579
0000007A  9A9C00330E        call word 0xe33:word 0x9c
0000007F  9A9409990D        call word 0xd99:word 0x994
00000084  9A2F05450D        call word 0xd45:word 0x52f
00000089  9A2C12E10B        call word 0xbe1:word 0x122c
0000008E  9A0000050A        call word 0xa05:word 0x0
00000093  9A5408D208        call word 0x8d2:word 0x854
00000098  9A00003006        call word 0x630:word 0x0
0000009D  9ABB04E305        call word 0x5e3:word 0x4bb
000000A2  9A00124E03        call word 0x34e:word 0x1200
000000A7  9A00004C03        call word 0x34c:word 0x0
000000AC  9A390C0A02        call word 0x20a:word 0xc39
000000B1  89E5              mov bp,sp
000000B3  81EC0002          sub sp,0x200
000000B7  9A00002313        call word 0x1323:word 0x0
000000BC  C606811E01        mov byte [0x1e81],0x1
000000C1  8DBE00FE          lea di,[bp-0x200]
000000C5  16                push ss
000000C6  57                push di
000000C7  8DBE00FF          lea di,[bp-0x100]
000000CB  16                push ss
000000CC  57                push di
000000CD  B80100            mov ax,0x1
000000D0  50                push ax
000000D1  9A9B1B561A        call word 0x1a56:word 0x1b9b
000000D6  BF4000            mov di,0x40
000000D9  0E                push cs
000000DA  57                push di
000000DB  9A3D00C612        call word 0x12c6:word 0x3d
000000E0  BF5C19            mov di,0x195c
000000E3  1E                push ds
000000E4  57                push di
000000E5  B8FF00            mov ax,0xff
000000E8  50                push ax
000000E9  9AAD06561A        call word 0x1a56:word 0x6ad
000000EE  BF5C19            mov di,0x195c
000000F1  1E                push ds
000000F2  57                push di
000000F3  BF4000            mov di,0x40
000000F6  0E                push cs
000000F7  57                push di
000000F8  9A8307561A        call word 0x1a56:word 0x783
000000FD  743B              jz 0x13a
000000FF  BF5C19            mov di,0x195c
00000102  1E                push ds
00000103  57                push di
00000104  BFFA17            mov di,0x17fa
00000107  1E                push ds
00000108  57                push di
00000109  B8FF00            mov ax,0xff
0000010C  50                push ax
0000010D  9AAD06561A        call word 0x1a56:word 0x6ad
00000112  8DBE00FF          lea di,[bp-0x100]
00000116  16                push ss
00000117  57                push di
00000118  BF5C19            mov di,0x195c
0000011B  1E                push ds
0000011C  57                push di
0000011D  9A9306561A        call word 0x1a56:word 0x693
00000122  BF4100            mov di,0x41
00000125  0E                push cs
00000126  57                push di
00000127  9A2007561A        call word 0x1a56:word 0x720
0000012C  BF141E            mov di,0x1e14
0000012F  1E                push ds
00000130  57                push di
00000131  B85000            mov ax,0x50
00000134  50                push ax
00000135  9AAD06561A        call word 0x1a56:word 0x6ad
0000013A  8DBE00FE          lea di,[bp-0x200]
0000013E  16                push ss
0000013F  57                push di
00000140  8DBE00FF          lea di,[bp-0x100]
00000144  16                push ss
00000145  57                push di
00000146  B80100            mov ax,0x1
00000149  50                push ax
0000014A  9A9B1B561A        call word 0x1a56:word 0x1b9b
0000014F  9AEE00C612        call word 0x12c6:word 0xee
00000154  BF4300            mov di,0x43
00000157  0E                push cs
00000158  57                push di
00000159  9A2007561A        call word 0x1a56:word 0x720
0000015E  BF071E            mov di,0x1e07
00000161  1E                push ds
00000162  57                push di
00000163  B80C00            mov ax,0xc
00000166  50                push ax
00000167  9AAD06561A        call word 0x1a56:word 0x6ad
0000016C  9A0000CF02        call word 0x2cf:word 0x0
00000171  B00A              mov al,0xa
00000173  50                push ax
00000174  B87017            mov ax,0x1770
00000177  50                push ax
00000178  9A0F00450D        call word 0xd45:word 0xf
0000017D  BF071E            mov di,0x1e07
00000180  1E                push ds
00000181  57                push di
00000182  9AC2014E03        call word 0x34e:word 0x1c2
00000187  A29616            mov [0x1696],al
0000018A  9AEC00CF02        call word 0x2cf:word 0xec
0000018F  C606941600        mov byte [0x1694],0x0
00000194  BF9516            mov di,0x1695
00000197  1E                push ds
00000198  57                push di
00000199  9A00002200        call word 0x22:word 0x0
0000019E  A09516            mov al,[0x1695]
000001A1  3C00              cmp al,0x0
000001A3  7528              jnz 0x1cd
000001A5  9A4E055909        call word 0x959:word 0x54e
000001AA  E853FE            call 0x0
000001AD  08C0              or al,al
000001AF  7404              jz 0x1b5
000001B1  B000              mov al,0x0
000001B3  EB02              jmp 0x1b7
000001B5  B001              mov al,0x1
000001B7  A29416            mov [0x1694],al
000001BA  9AD8065909        call word 0x959:word 0x6d8
000001BF  803E941600        cmp byte [0x1694],0x0
000001C4  7505              jnz 0x1cb
000001C6  9AEC00CF02        call word 0x2cf:word 0xec
000001CB  EB3E              jmp 0x20b
000001CD  3C01              cmp al,0x1
000001CF  7531              jnz 0x202
000001D1  9AC50D4E03        call word 0x34e:word 0xdc5
000001D6  08C0              or al,al
000001D8  7426              jz 0x200
000001DA  9AD6045909        call word 0x959:word 0x4d6
000001DF  E81EFE            call 0x0
000001E2  08C0              or al,al
000001E4  7404              jz 0x1ea
000001E6  B000              mov al,0x0
000001E8  EB02              jmp 0x1ec
000001EA  B001              mov al,0x1
000001EC  A29416            mov [0x1694],al
000001EF  9AD8065909        call word 0x959:word 0x6d8
000001F4  803E941600        cmp byte [0x1694],0x0
000001F9  7505              jnz 0x200
000001FB  9AEC00CF02        call word 0x2cf:word 0xec
00000200  EB09              jmp 0x20b
00000202  3C02              cmp al,0x2
00000204  7505              jnz 0x20b
00000206  9A4D03CF02        call word 0x2cf:word 0x34d
0000020B  803E941600        cmp byte [0x1694],0x0
00000210  7482              jz 0x194
00000212  9AE3075909        call word 0x959:word 0x7e3
00000217  89EC              mov sp,bp
00000219  31C0              xor ax,ax
0000021B  9AF301561A        call word 0x1a56:word 0x1f3
