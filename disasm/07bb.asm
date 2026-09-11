00000000  55                push bp
00000001  89E5              mov bp,sp
00000003  83EC08            sub sp,0x8
00000006  C47E06            les di,word [bp+0x6]
00000009  268B05            mov ax,[es:di]
0000000C  260B4502          or ax,[es:di+0x2]
00000010  7452              jz 0x64
00000012  C47E06            les di,word [bp+0x6]
00000015  26C405            les ax,word [es:di]
00000018  8CC2              mov dx,es
0000001A  8946FC            mov [bp-0x4],ax
0000001D  8956FE            mov [bp-0x2],dx
00000020  C47EFC            les di,word [bp-0x4]
00000023  26C43D            les di,word [es:di]
00000026  89F8              mov ax,di
00000028  8CC2              mov dx,es
0000002A  8946F8            mov [bp-0x8],ax
0000002D  8956FA            mov [bp-0x6],dx
00000030  C47E06            les di,word [bp+0x6]
00000033  26C43D            les di,word [es:di]
00000036  26C44504          les ax,word [es:di+0x4]
0000003A  8CC2              mov dx,es
0000003C  C47E06            les di,word [bp+0x6]
0000003F  268905            mov [es:di],ax
00000042  26895502          mov [es:di+0x2],dx
00000046  8D7EF8            lea di,[bp-0x8]
00000049  16                push ss
0000004A  57                push di
0000004B  B80D00            mov ax,0xd
0000004E  50                push ax
0000004F  9AC003561A        call word 0x1a56:word 0x3c0
00000054  8D7EFC            lea di,[bp-0x4]
00000057  16                push ss
00000058  57                push di
00000059  B80800            mov ax,0x8
0000005C  50                push ax
0000005D  9AC003561A        call word 0x1a56:word 0x3c0
00000062  EBA2              jmp 0x6
00000064  89EC              mov sp,bp
00000066  5D                pop bp
00000067  CA0400            retf word 0x4
0000006A  55                push bp
0000006B  89E5              mov bp,sp
0000006D  81EC0803          sub sp,0x308
00000071  C47E06            les di,word [bp+0x6]
00000074  06                push es
00000075  57                push di
00000076  8DBE00FF          lea di,[bp-0x100]
0000007A  16                push ss
0000007B  57                push di
0000007C  B8FF00            mov ax,0xff
0000007F  50                push ax
00000080  9AAD06561A        call word 0x1a56:word 0x6ad
00000085  C47E0A            les di,word [bp+0xa]
00000088  268B05            mov ax,[es:di]
0000008B  260B4502          or ax,[es:di+0x2]
0000008F  7520              jnz 0xb1
00000091  C47E0A            les di,word [bp+0xa]
00000094  06                push es
00000095  57                push di
00000096  B80800            mov ax,0x8
00000099  50                push ax
0000009A  9A8E03561A        call word 0x1a56:word 0x38e
0000009F  C47E0A            les di,word [bp+0xa]
000000A2  26C405            les ax,word [es:di]
000000A5  8CC2              mov dx,es
000000A7  8986FCFE          mov [bp-0x104],ax
000000AB  8996FEFE          mov [bp-0x102],dx
000000AF  EB57              jmp 0x108
000000B1  C47E0A            les di,word [bp+0xa]
000000B4  26C405            les ax,word [es:di]
000000B7  8CC2              mov dx,es
000000B9  8986FCFE          mov [bp-0x104],ax
000000BD  8996FEFE          mov [bp-0x102],dx
000000C1  C4BEFCFE          les di,word [bp-0x104]
000000C5  268B4504          mov ax,[es:di+0x4]
000000C9  260B4506          or ax,[es:di+0x6]
000000CD  7414              jz 0xe3
000000CF  C4BEFCFE          les di,word [bp-0x104]
000000D3  26C44504          les ax,word [es:di+0x4]
000000D7  8CC2              mov dx,es
000000D9  8986FCFE          mov [bp-0x104],ax
000000DD  8996FEFE          mov [bp-0x102],dx
000000E1  EBDE              jmp 0xc1
000000E3  C4BEFCFE          les di,word [bp-0x104]
000000E7  81C70400          add di,0x4
000000EB  06                push es
000000EC  57                push di
000000ED  B80800            mov ax,0x8
000000F0  50                push ax
000000F1  9A8E03561A        call word 0x1a56:word 0x38e
000000F6  C4BEFCFE          les di,word [bp-0x104]
000000FA  26C44504          les ax,word [es:di+0x4]
000000FE  8CC2              mov dx,es
00000100  8986FCFE          mov [bp-0x104],ax
00000104  8996FEFE          mov [bp-0x102],dx
00000108  8DBEF8FE          lea di,[bp-0x108]
0000010C  16                push ss
0000010D  57                push di
0000010E  B80D00            mov ax,0xd
00000111  50                push ax
00000112  9A8E03561A        call word 0x1a56:word 0x38e
00000117  C4BEF8FE          les di,word [bp-0x108]
0000011B  89F8              mov ax,di
0000011D  8CC2              mov dx,es
0000011F  C4BEFCFE          les di,word [bp-0x104]
00000123  268905            mov [es:di],ax
00000126  26895502          mov [es:di+0x2],dx
0000012A  807E0400          cmp byte [bp+0x4],0x0
0000012E  7425              jz 0x155
00000130  8DBEF8FD          lea di,[bp-0x208]
00000134  16                push ss
00000135  57                push di
00000136  8DBE00FF          lea di,[bp-0x100]
0000013A  16                push ss
0000013B  57                push di
0000013C  9AA401C612        call word 0x12c6:word 0x1a4
00000141  C4BEFCFE          les di,word [bp-0x104]
00000145  26C43D            les di,word [es:di]
00000148  06                push es
00000149  57                push di
0000014A  B8FF00            mov ax,0xff
0000014D  50                push ax
0000014E  9AAD06561A        call word 0x1a56:word 0x6ad
00000153  EB2E              jmp 0x183
00000155  8DBEF8FC          lea di,[bp-0x308]
00000159  16                push ss
0000015A  57                push di
0000015B  8DBEF8FD          lea di,[bp-0x208]
0000015F  16                push ss
00000160  57                push di
00000161  8DBE00FF          lea di,[bp-0x100]
00000165  16                push ss
00000166  57                push di
00000167  9AEE00C612        call word 0x12c6:word 0xee
0000016C  9AA401C612        call word 0x12c6:word 0x1a4
00000171  C4BEFCFE          les di,word [bp-0x104]
00000175  26C43D            les di,word [es:di]
00000178  06                push es
00000179  57                push di
0000017A  B8FF00            mov ax,0xff
0000017D  50                push ax
0000017E  9AAD06561A        call word 0x1a56:word 0x6ad
00000183  C4BEFCFE          les di,word [bp-0x104]
00000187  31C0              xor ax,ax
00000189  26894504          mov [es:di+0x4],ax
0000018D  26894506          mov [es:di+0x6],ax
00000191  89EC              mov sp,bp
00000193  5D                pop bp
00000194  C20A00            ret word 0xa
00000197  55                push bp
00000198  89E5              mov bp,sp
0000019A  81EC0001          sub sp,0x100
0000019E  C47E10            les di,word [bp+0x10]
000001A1  06                push es
000001A2  57                push di
000001A3  8DBE00FF          lea di,[bp-0x100]
000001A7  16                push ss
000001A8  57                push di
000001A9  B8FF00            mov ax,0xff
000001AC  50                push ax
000001AD  9AAD06561A        call word 0x1a56:word 0x6ad
000001B2  C47E08            les di,word [bp+0x8]
000001B5  31C0              xor ax,ax
000001B7  268905            mov [es:di],ax
000001BA  C47E0C            les di,word [bp+0xc]
000001BD  31C0              xor ax,ax
000001BF  268905            mov [es:di],ax
000001C2  26894502          mov [es:di+0x2],ax
000001C6  8DBE00FF          lea di,[bp-0x100]
000001CA  16                push ss
000001CB  57                push di
000001CC  B82000            mov ax,0x20
000001CF  50                push ax
000001D0  BF5C1B            mov di,0x1b5c
000001D3  1E                push ds
000001D4  57                push di
000001D5  9A1500A712        call word 0x12a7:word 0x15
000001DA  833EB67100        cmp word [0x71b6],0x0
000001DF  7523              jnz 0x204
000001E1  C47E08            les di,word [bp+0x8]
000001E4  26FF05            inc word [es:di]
000001E7  C47E0C            les di,word [bp+0xc]
000001EA  06                push es
000001EB  57                push di
000001EC  BF7A1B            mov di,0x1b7a
000001EF  1E                push ds
000001F0  57                push di
000001F1  8A4606            mov al,[bp+0x6]
000001F4  50                push ax
000001F5  E872FE            call 0x6a
000001F8  BF5C1B            mov di,0x1b5c
000001FB  1E                push ds
000001FC  57                push di
000001FD  9AA900A712        call word 0x12a7:word 0xa9
00000202  EBD6              jmp 0x1da
00000204  89EC              mov sp,bp
00000206  5D                pop bp
00000207  CA0E00            retf word 0xe
0000020A  0000              add [bx+si],al
0000020C  0000              add [bx+si],al
0000020E  0000              add [bx+si],al
