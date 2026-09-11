00000000  55                push bp
00000001  89E5              mov bp,sp
00000003  837E0400          cmp word [bp+0x4],0x0
00000007  7423              jz 0x2c
00000009  C47E06            les di,word [bp+0x6]
0000000C  81C78000          add di,0x80
00000010  06                push es
00000011  57                push di
00000012  BF8489            mov di,0x8984
00000015  1E                push ds
00000016  57                push di
00000017  B8FF00            mov ax,0xff
0000001A  50                push ax
0000001B  9AAD06561A        call word 0x1a56:word 0x6ad
00000020  B001              mov al,0x1
00000022  50                push ax
00000023  8A4604            mov al,[bp+0x4]
00000026  50                push ax
00000027  9A9B009C18        call word 0x189c:word 0x9b
0000002C  89EC              mov sp,bp
0000002E  5D                pop bp
0000002F  C20600            ret word 0x6
00000032  55                push bp
00000033  89E5              mov bp,sp
00000035  83EC44            sub sp,0x44
00000038  C47E06            les di,word [bp+0x6]
0000003B  06                push es
0000003C  57                push di
0000003D  8D7EC0            lea di,[bp-0x40]
00000040  16                push ss
00000041  57                push di
00000042  B83F00            mov ax,0x3f
00000045  50                push ax
00000046  9AAD06561A        call word 0x1a56:word 0x6ad
0000004B  C47E0A            les di,word [bp+0xa]
0000004E  897EBC            mov [bp-0x44],di
00000051  8C46BE            mov word [bp-0x42],es
00000054  8D7EC0            lea di,[bp-0x40]
00000057  16                push ss
00000058  57                push di
00000059  C47EBC            les di,word [bp-0x44]
0000005C  81C78000          add di,0x80
00000060  06                push es
00000061  57                push di
00000062  B83F00            mov ax,0x3f
00000065  50                push ax
00000066  9AAD06561A        call word 0x1a56:word 0x6ad
0000006B  C47EBC            les di,word [bp-0x44]
0000006E  26C685C00000      mov byte [es:di+0xc0],0x0
00000074  C47EBC            les di,word [bp-0x44]
00000077  06                push es
00000078  57                push di
00000079  C47EBC            les di,word [bp-0x44]
0000007C  81C78000          add di,0x80
00000080  06                push es
00000081  57                push di
00000082  9AC618561A        call word 0x1a56:word 0x18c6
00000087  C47E0A            les di,word [bp+0xa]
0000008A  06                push es
0000008B  57                push di
0000008C  9A6D02561A        call word 0x1a56:word 0x26d
00000091  50                push ax
00000092  E86BFF            call 0x0
00000095  C47E0A            les di,word [bp+0xa]
00000098  06                push es
00000099  57                push di
0000009A  B80100            mov ax,0x1
0000009D  50                push ax
0000009E  9AFD18561A        call word 0x1a56:word 0x18fd
000000A3  C47E0A            les di,word [bp+0xa]
000000A6  06                push es
000000A7  57                push di
000000A8  9A6D02561A        call word 0x1a56:word 0x26d
000000AD  50                push ax
000000AE  E84FFF            call 0x0
000000B1  C47EBC            les di,word [bp-0x44]
000000B4  26C685C00001      mov byte [es:di+0xc0],0x1
000000BA  C47E0A            les di,word [bp+0xa]
000000BD  06                push es
000000BE  57                push di
000000BF  C47E0A            les di,word [bp+0xa]
000000C2  81C7CD00          add di,0xcd
000000C6  06                push es
000000C7  57                push di
000000C8  B80008            mov ax,0x800
000000CB  50                push ax
000000CC  0E                push cs
000000CD  E80B04            call 0x4db
000000D0  89EC              mov sp,bp
000000D2  5D                pop bp
000000D3  CA0800            retf word 0x8
000000D6  55                push bp
000000D7  89E5              mov bp,sp
000000D9  83EC44            sub sp,0x44
000000DC  C47E06            les di,word [bp+0x6]
000000DF  06                push es
000000E0  57                push di
000000E1  8D7EC0            lea di,[bp-0x40]
000000E4  16                push ss
000000E5  57                push di
000000E6  B83F00            mov ax,0x3f
000000E9  50                push ax
000000EA  9AAD06561A        call word 0x1a56:word 0x6ad
000000EF  C47E0A            les di,word [bp+0xa]
000000F2  897EBC            mov [bp-0x44],di
000000F5  8C46BE            mov word [bp-0x42],es
000000F8  8D7EC0            lea di,[bp-0x40]
000000FB  16                push ss
000000FC  57                push di
000000FD  C47EBC            les di,word [bp-0x44]
00000100  81C78000          add di,0x80
00000104  06                push es
00000105  57                push di
00000106  B83F00            mov ax,0x3f
00000109  50                push ax
0000010A  9AAD06561A        call word 0x1a56:word 0x6ad
0000010F  C47EBC            les di,word [bp-0x44]
00000112  26C685C00000      mov byte [es:di+0xc0],0x0
00000118  C47EBC            les di,word [bp-0x44]
0000011B  06                push es
0000011C  57                push di
0000011D  C47EBC            les di,word [bp-0x44]
00000120  81C78000          add di,0x80
00000124  06                push es
00000125  57                push di
00000126  9AC618561A        call word 0x1a56:word 0x18c6
0000012B  C47E0A            les di,word [bp+0xa]
0000012E  06                push es
0000012F  57                push di
00000130  9A6D02561A        call word 0x1a56:word 0x26d
00000135  50                push ax
00000136  E8C7FE            call 0x0
00000139  C47EBC            les di,word [bp-0x44]
0000013C  06                push es
0000013D  57                push di
0000013E  B80100            mov ax,0x1
00000141  50                push ax
00000142  9AF418561A        call word 0x1a56:word 0x18f4
00000147  C47E0A            les di,word [bp+0xa]
0000014A  06                push es
0000014B  57                push di
0000014C  9A6D02561A        call word 0x1a56:word 0x26d
00000151  50                push ax
00000152  E8ABFE            call 0x0
00000155  C47EBC            les di,word [bp-0x44]
00000158  26C685C00002      mov byte [es:di+0xc0],0x2
0000015E  C47E0A            les di,word [bp+0xa]
00000161  06                push es
00000162  57                push di
00000163  C47EBC            les di,word [bp-0x44]
00000166  81C7CD00          add di,0xcd
0000016A  06                push es
0000016B  57                push di
0000016C  B80008            mov ax,0x800
0000016F  50                push ax
00000170  0E                push cs
00000171  E86703            call 0x4db
00000174  89EC              mov sp,bp
00000176  5D                pop bp
00000177  CA0800            retf word 0x8
0000017A  55                push bp
0000017B  89E5              mov bp,sp
0000017D  83EC04            sub sp,0x4
00000180  C47E06            les di,word [bp+0x6]
00000183  897EFC            mov [bp-0x4],di
00000186  8C46FE            mov word [bp-0x2],es
00000189  C47EFC            les di,word [bp-0x4]
0000018C  2680BDC00000      cmp byte [es:di+0xc0],0x0
00000192  7502              jnz 0x196
00000194  EB63              jmp 0x1f9
00000196  C47EFC            les di,word [bp-0x4]
00000199  2680BDC00001      cmp byte [es:di+0xc0],0x1
0000019F  7537              jnz 0x1d8
000001A1  C47EFC            les di,word [bp-0x4]
000001A4  06                push es
000001A5  57                push di
000001A6  C47EFC            les di,word [bp-0x4]
000001A9  26C4BDC500        les di,word [es:di+0xc5]
000001AE  06                push es
000001AF  57                push di
000001B0  C47EFC            les di,word [bp-0x4]
000001B3  268B85C100        mov ax,[es:di+0xc1]
000001B8  C47EFC            les di,word [bp-0x4]
000001BB  262B85C300        sub ax,[es:di+0xc3]
000001C0  50                push ax
000001C1  31C0              xor ax,ax
000001C3  50                push ax
000001C4  50                push ax
000001C5  9AE119561A        call word 0x1a56:word 0x19e1
000001CA  C47E06            les di,word [bp+0x6]
000001CD  06                push es
000001CE  57                push di
000001CF  9A6D02561A        call word 0x1a56:word 0x26d
000001D4  50                push ax
000001D5  E828FE            call 0x0
000001D8  C47EFC            les di,word [bp-0x4]
000001DB  06                push es
000001DC  57                push di
000001DD  9A7519561A        call word 0x1a56:word 0x1975
000001E2  C47EFC            les di,word [bp-0x4]
000001E5  26C685C00000      mov byte [es:di+0xc0],0x0
000001EB  C47E06            les di,word [bp+0x6]
000001EE  06                push es
000001EF  57                push di
000001F0  9A6D02561A        call word 0x1a56:word 0x26d
000001F5  50                push ax
000001F6  E807FE            call 0x0
000001F9  89EC              mov sp,bp
000001FB  5D                pop bp
000001FC  CA0400            retf word 0x4
000001FF  55                push bp
00000200  89E5              mov bp,sp
00000202  83EC08            sub sp,0x8
00000205  C47E0C            les di,word [bp+0xc]
00000208  897EF8            mov [bp-0x8],di
0000020B  8C46FA            mov word [bp-0x6],es
0000020E  8B4606            mov ax,[bp+0x6]
00000211  C47EF8            les di,word [bp-0x8]
00000214  263B85C300        cmp ax,[es:di+0xc3]
00000219  7730              ja 0x24b
0000021B  C47E08            les di,word [bp+0x8]
0000021E  06                push es
0000021F  57                push di
00000220  C47EF8            les di,word [bp-0x8]
00000223  26C4BDC900        les di,word [es:di+0xc9]
00000228  06                push es
00000229  57                push di
0000022A  FF7606            push word [bp+0x6]
0000022D  9A641B561A        call word 0x1a56:word 0x1b64
00000232  8B4606            mov ax,[bp+0x6]
00000235  C47EF8            les di,word [bp-0x8]
00000238  260185C900        add [es:di+0xc9],ax
0000023D  8B4606            mov ax,[bp+0x6]
00000240  C47EF8            les di,word [bp-0x8]
00000243  262985C300        sub [es:di+0xc3],ax
00000248  E92101            jmp 0x36c
0000024B  C47E08            les di,word [bp+0x8]
0000024E  89F8              mov ax,di
00000250  8CC2              mov dx,es
00000252  8946FC            mov [bp-0x4],ax
00000255  8956FE            mov [bp-0x2],dx
00000258  C47EF8            les di,word [bp-0x8]
0000025B  268B85C300        mov ax,[es:di+0xc3]
00000260  C47EF8            les di,word [bp-0x8]
00000263  263B85C100        cmp ax,[es:di+0xc1]
00000268  7203              jc 0x26d
0000026A  E98700            jmp 0x2f4
0000026D  C47E08            les di,word [bp+0x8]
00000270  06                push es
00000271  57                push di
00000272  C47EF8            les di,word [bp-0x8]
00000275  26C4BDC900        les di,word [es:di+0xc9]
0000027A  06                push es
0000027B  57                push di
0000027C  C47EF8            les di,word [bp-0x8]
0000027F  26FFB5C300        push word [es:di+0xc3]
00000284  9A641B561A        call word 0x1a56:word 0x1b64
00000289  C47EF8            les di,word [bp-0x8]
0000028C  268B85C300        mov ax,[es:di+0xc3]
00000291  0146FC            add [bp-0x4],ax
00000294  C47EF8            les di,word [bp-0x8]
00000297  268B85C300        mov ax,[es:di+0xc3]
0000029C  294606            sub [bp+0x6],ax
0000029F  C47EF8            les di,word [bp-0x8]
000002A2  06                push es
000002A3  57                push di
000002A4  C47EF8            les di,word [bp-0x8]
000002A7  26C4BDC500        les di,word [es:di+0xc5]
000002AC  06                push es
000002AD  57                push di
000002AE  C47EF8            les di,word [bp-0x8]
000002B1  26FFB5C100        push word [es:di+0xc1]
000002B6  31C0              xor ax,ax
000002B8  50                push ax
000002B9  50                push ax
000002BA  9AE119561A        call word 0x1a56:word 0x19e1
000002BF  C47E0C            les di,word [bp+0xc]
000002C2  06                push es
000002C3  57                push di
000002C4  9A6D02561A        call word 0x1a56:word 0x26d
000002C9  50                push ax
000002CA  E833FD            call 0x0
000002CD  C47EF8            les di,word [bp-0x8]
000002D0  26C485C500        les ax,word [es:di+0xc5]
000002D5  8CC2              mov dx,es
000002D7  C47EF8            les di,word [bp-0x8]
000002DA  268985C900        mov [es:di+0xc9],ax
000002DF  268995CB00        mov [es:di+0xcb],dx
000002E4  C47EF8            les di,word [bp-0x8]
000002E7  268B85C100        mov ax,[es:di+0xc1]
000002EC  C47EF8            les di,word [bp-0x8]
000002EF  268985C300        mov [es:di+0xc3],ax
000002F4  8B4606            mov ax,[bp+0x6]
000002F7  C47EF8            les di,word [bp-0x8]
000002FA  263B85C100        cmp ax,[es:di+0xc1]
000002FF  7236              jc 0x337
00000301  C47EF8            les di,word [bp-0x8]
00000304  06                push es
00000305  57                push di
00000306  C47EFC            les di,word [bp-0x4]
00000309  06                push es
0000030A  57                push di
0000030B  FF7606            push word [bp+0x6]
0000030E  31C0              xor ax,ax
00000310  50                push ax
00000311  50                push ax
00000312  9AE119561A        call word 0x1a56:word 0x19e1
00000317  C47E0C            les di,word [bp+0xc]
0000031A  06                push es
0000031B  57                push di
0000031C  9A6D02561A        call word 0x1a56:word 0x26d
00000321  50                push ax
00000322  E8DBFC            call 0x0
00000325  C47EF8            les di,word [bp-0x8]
00000328  268B85C100        mov ax,[es:di+0xc1]
0000032D  C47EF8            les di,word [bp-0x8]
00000330  268985C300        mov [es:di+0xc3],ax
00000335  EB35              jmp 0x36c
00000337  C47EFC            les di,word [bp-0x4]
0000033A  06                push es
0000033B  57                push di
0000033C  C47EF8            les di,word [bp-0x8]
0000033F  26C4BDC500        les di,word [es:di+0xc5]
00000344  06                push es
00000345  57                push di
00000346  FF7606            push word [bp+0x6]
00000349  9A641B561A        call word 0x1a56:word 0x1b64
0000034E  8B4606            mov ax,[bp+0x6]
00000351  C47EF8            les di,word [bp-0x8]
00000354  260185C900        add [es:di+0xc9],ax
00000359  C47EF8            les di,word [bp-0x8]
0000035C  268B85C100        mov ax,[es:di+0xc1]
00000361  2B4606            sub ax,[bp+0x6]
00000364  C47EF8            les di,word [bp-0x8]
00000367  268985C300        mov [es:di+0xc3],ax
0000036C  89EC              mov sp,bp
0000036E  5D                pop bp
0000036F  CA0A00            retf word 0xa
00000372  55                push bp
00000373  89E5              mov bp,sp
00000375  83EC08            sub sp,0x8
00000378  C47E0C            les di,word [bp+0xc]
0000037B  897EF8            mov [bp-0x8],di
0000037E  8C46FA            mov word [bp-0x6],es
00000381  C47E08            les di,word [bp+0x8]
00000384  89F8              mov ax,di
00000386  8CC2              mov dx,es
00000388  8946FC            mov [bp-0x4],ax
0000038B  8956FE            mov [bp-0x2],dx
0000038E  8B4606            mov ax,[bp+0x6]
00000391  C47EF8            les di,word [bp-0x8]
00000394  263B85C300        cmp ax,[es:di+0xc3]
00000399  7730              ja 0x3cb
0000039B  C47EF8            les di,word [bp-0x8]
0000039E  26C4BDC900        les di,word [es:di+0xc9]
000003A3  06                push es
000003A4  57                push di
000003A5  C47EFC            les di,word [bp-0x4]
000003A8  06                push es
000003A9  57                push di
000003AA  FF7606            push word [bp+0x6]
000003AD  9A641B561A        call word 0x1a56:word 0x1b64
000003B2  8B4606            mov ax,[bp+0x6]
000003B5  C47EF8            les di,word [bp-0x8]
000003B8  260185C900        add [es:di+0xc9],ax
000003BD  8B4606            mov ax,[bp+0x6]
000003C0  C47EF8            les di,word [bp-0x8]
000003C3  262985C300        sub [es:di+0xc3],ax
000003C8  E90A01            jmp 0x4d5
000003CB  C47EF8            les di,word [bp-0x8]
000003CE  2683BDC30000      cmp word [es:di+0xc3],0x0
000003D4  7632              jna 0x408
000003D6  C47EF8            les di,word [bp-0x8]
000003D9  26C4BDC900        les di,word [es:di+0xc9]
000003DE  06                push es
000003DF  57                push di
000003E0  C47EFC            les di,word [bp-0x4]
000003E3  06                push es
000003E4  57                push di
000003E5  C47EF8            les di,word [bp-0x8]
000003E8  26FFB5C300        push word [es:di+0xc3]
000003ED  9A641B561A        call word 0x1a56:word 0x1b64
000003F2  C47EF8            les di,word [bp-0x8]
000003F5  268B85C300        mov ax,[es:di+0xc3]
000003FA  0146FC            add [bp-0x4],ax
000003FD  C47EF8            les di,word [bp-0x8]
00000400  268B85C300        mov ax,[es:di+0xc3]
00000405  294606            sub [bp+0x6],ax
00000408  C47EF8            les di,word [bp-0x8]
0000040B  26C485C500        les ax,word [es:di+0xc5]
00000410  8CC2              mov dx,es
00000412  C47EF8            les di,word [bp-0x8]
00000415  268985C900        mov [es:di+0xc9],ax
0000041A  268995CB00        mov [es:di+0xcb],dx
0000041F  8B4606            mov ax,[bp+0x6]
00000422  C47EF8            les di,word [bp-0x8]
00000425  263B85C100        cmp ax,[es:di+0xc1]
0000042A  7230              jc 0x45c
0000042C  C47EF8            les di,word [bp-0x8]
0000042F  06                push es
00000430  57                push di
00000431  C47EFC            les di,word [bp-0x4]
00000434  06                push es
00000435  57                push di
00000436  FF7606            push word [bp+0x6]
00000439  31C0              xor ax,ax
0000043B  50                push ax
0000043C  50                push ax
0000043D  9ADA19561A        call word 0x1a56:word 0x19da
00000442  C47E0C            les di,word [bp+0xc]
00000445  06                push es
00000446  57                push di
00000447  9A6D02561A        call word 0x1a56:word 0x26d
0000044C  50                push ax
0000044D  E8B0FB            call 0x0
00000450  C47EF8            les di,word [bp-0x8]
00000453  31C0              xor ax,ax
00000455  268985C300        mov [es:di+0xc3],ax
0000045A  EB79              jmp 0x4d5
0000045C  C47EF8            les di,word [bp-0x8]
0000045F  06                push es
00000460  57                push di
00000461  C47EF8            les di,word [bp-0x8]
00000464  26C4BDC500        les di,word [es:di+0xc5]
00000469  06                push es
0000046A  57                push di
0000046B  C47EF8            les di,word [bp-0x8]
0000046E  26FFB5C100        push word [es:di+0xc1]
00000473  C47EF8            les di,word [bp-0x8]
00000476  81C7C300          add di,0xc3
0000047A  06                push es
0000047B  57                push di
0000047C  9ADA19561A        call word 0x1a56:word 0x19da
00000481  C47EF8            les di,word [bp-0x8]
00000484  268B85C300        mov ax,[es:di+0xc3]
00000489  3B4606            cmp ax,[bp+0x6]
0000048C  730C              jnc 0x49a
0000048E  C47E0C            les di,word [bp+0xc]
00000491  06                push es
00000492  57                push di
00000493  B86400            mov ax,0x64
00000496  50                push ax
00000497  E866FB            call 0x0
0000049A  C47E0C            les di,word [bp+0xc]
0000049D  06                push es
0000049E  57                push di
0000049F  9A6D02561A        call word 0x1a56:word 0x26d
000004A4  50                push ax
000004A5  E858FB            call 0x0
000004A8  C47EF8            les di,word [bp-0x8]
000004AB  26C4BDC500        les di,word [es:di+0xc5]
000004B0  06                push es
000004B1  57                push di
000004B2  C47EFC            les di,word [bp-0x4]
000004B5  06                push es
000004B6  57                push di
000004B7  FF7606            push word [bp+0x6]
000004BA  9A641B561A        call word 0x1a56:word 0x1b64
000004BF  8B4606            mov ax,[bp+0x6]
000004C2  C47EF8            les di,word [bp-0x8]
000004C5  260185C900        add [es:di+0xc9],ax
000004CA  8B4606            mov ax,[bp+0x6]
000004CD  C47EF8            les di,word [bp-0x8]
000004D0  262985C300        sub [es:di+0xc3],ax
000004D5  89EC              mov sp,bp
000004D7  5D                pop bp
000004D8  CA0A00            retf word 0xa
000004DB  55                push bp
000004DC  89E5              mov bp,sp
000004DE  83EC04            sub sp,0x4
000004E1  C47E0C            les di,word [bp+0xc]
000004E4  897EFC            mov [bp-0x4],di
000004E7  8C46FE            mov word [bp-0x2],es
000004EA  8B4606            mov ax,[bp+0x6]
000004ED  C47EFC            les di,word [bp-0x4]
000004F0  268985C100        mov [es:di+0xc1],ax
000004F5  C47EFC            les di,word [bp-0x4]
000004F8  2680BDC00001      cmp byte [es:di+0xc0],0x1
000004FE  750D              jnz 0x50d
00000500  8B4606            mov ax,[bp+0x6]
00000503  C47EFC            les di,word [bp-0x4]
00000506  268985C300        mov [es:di+0xc3],ax
0000050B  EB0A              jmp 0x517
0000050D  C47EFC            les di,word [bp-0x4]
00000510  31C0              xor ax,ax
00000512  268985C300        mov [es:di+0xc3],ax
00000517  C47E08            les di,word [bp+0x8]
0000051A  89F8              mov ax,di
0000051C  8CC2              mov dx,es
0000051E  C47EFC            les di,word [bp-0x4]
00000521  268985C500        mov [es:di+0xc5],ax
00000526  268995C700        mov [es:di+0xc7],dx
0000052B  C47E08            les di,word [bp+0x8]
0000052E  89F8              mov ax,di
00000530  8CC2              mov dx,es
00000532  C47EFC            les di,word [bp-0x4]
00000535  268985C900        mov [es:di+0xc9],ax
0000053A  268995CB00        mov [es:di+0xcb],dx
0000053F  89EC              mov sp,bp
00000541  5D                pop bp
00000542  CA0A00            retf word 0xa
00000545  55                push bp
00000546  89E5              mov bp,sp
00000548  83EC04            sub sp,0x4
0000054B  C47E06            les di,word [bp+0x6]
0000054E  897EFC            mov [bp-0x4],di
00000551  8C46FE            mov word [bp-0x2],es
00000554  C47EFC            les di,word [bp-0x4]
00000557  2680BDC00001      cmp byte [es:di+0xc0],0x1
0000055D  7549              jnz 0x5a8
0000055F  C47EFC            les di,word [bp-0x4]
00000562  06                push es
00000563  57                push di
00000564  C47EFC            les di,word [bp-0x4]
00000567  26C4BDC500        les di,word [es:di+0xc5]
0000056C  06                push es
0000056D  57                push di
0000056E  C47EFC            les di,word [bp-0x4]
00000571  268B85C100        mov ax,[es:di+0xc1]
00000576  C47EFC            les di,word [bp-0x4]
00000579  262B85C300        sub ax,[es:di+0xc3]
0000057E  50                push ax
0000057F  31C0              xor ax,ax
00000581  50                push ax
00000582  50                push ax
00000583  9AE119561A        call word 0x1a56:word 0x19e1
00000588  C47E06            les di,word [bp+0x6]
0000058B  06                push es
0000058C  57                push di
0000058D  9A6D02561A        call word 0x1a56:word 0x26d
00000592  50                push ax
00000593  E86AFA            call 0x0
00000596  C47EFC            les di,word [bp-0x4]
00000599  268B85C100        mov ax,[es:di+0xc1]
0000059E  C47EFC            les di,word [bp-0x4]
000005A1  268985C300        mov [es:di+0xc3],ax
000005A6  EB0A              jmp 0x5b2
000005A8  C47EFC            les di,word [bp-0x4]
000005AB  31C0              xor ax,ax
000005AD  268985C300        mov [es:di+0xc3],ax
000005B2  C47EFC            les di,word [bp-0x4]
000005B5  26C485C500        les ax,word [es:di+0xc5]
000005BA  8CC2              mov dx,es
000005BC  C47EFC            les di,word [bp-0x4]
000005BF  268985C900        mov [es:di+0xc9],ax
000005C4  268995CB00        mov [es:di+0xcb],dx
000005C9  89EC              mov sp,bp
000005CB  5D                pop bp
000005CC  CA0400            retf word 0x4
000005CF  55                push bp
000005D0  89E5              mov bp,sp
000005D2  83EC08            sub sp,0x8
000005D5  C47E0A            les di,word [bp+0xa]
000005D8  897EF8            mov [bp-0x8],di
000005DB  8C46FA            mov word [bp-0x6],es
000005DE  C47EF8            les di,word [bp-0x8]
000005E1  06                push es
000005E2  57                push di
000005E3  9A721A561A        call word 0x1a56:word 0x1a72
000005E8  2B4606            sub ax,[bp+0x6]
000005EB  1B5608            sbb dx,[bp+0x8]
000005EE  8946FC            mov [bp-0x4],ax
000005F1  8956FE            mov [bp-0x2],dx
000005F4  C47EF8            les di,word [bp-0x8]
000005F7  2680BDC00001      cmp byte [es:di+0xc0],0x1
000005FD  7434              jz 0x633
000005FF  837EFE00          cmp word [bp-0x2],0x0
00000603  7C2E              jl 0x633
00000605  7F06              jg 0x60d
00000607  837EFC00          cmp word [bp-0x4],0x0
0000060B  7226              jc 0x633
0000060D  C47EF8            les di,word [bp-0x8]
00000610  268B85C900        mov ax,[es:di+0xc9]
00000615  C47EF8            les di,word [bp-0x8]
00000618  260385C300        add ax,[es:di+0xc3]
0000061D  C47EF8            les di,word [bp-0x8]
00000620  262B85C500        sub ax,[es:di+0xc5]
00000625  31D2              xor dx,dx
00000627  3B56FE            cmp dx,[bp-0x2]
0000062A  7C07              jl 0x633
0000062C  7F2E              jg 0x65c
0000062E  3B46FC            cmp ax,[bp-0x4]
00000631  7329              jnc 0x65c
00000633  C47E0A            les di,word [bp+0xa]
00000636  06                push es
00000637  57                push di
00000638  0E                push cs
00000639  E809FF            call 0x545
0000063C  C47E0A            les di,word [bp+0xa]
0000063F  06                push es
00000640  57                push di
00000641  FF7608            push word [bp+0x8]
00000644  FF7606            push word [bp+0x6]
00000647  9A421A561A        call word 0x1a56:word 0x1a42
0000064C  C47E0A            les di,word [bp+0xa]
0000064F  06                push es
00000650  57                push di
00000651  9A6D02561A        call word 0x1a56:word 0x26d
00000656  50                push ax
00000657  E8A6F9            call 0x0
0000065A  EB3E              jmp 0x69a
0000065C  C47EF8            les di,word [bp-0x8]
0000065F  268B85C300        mov ax,[es:di+0xc3]
00000664  31D2              xor dx,dx
00000666  8BC8              mov cx,ax
00000668  8BDA              mov bx,dx
0000066A  C446FC            les ax,word [bp-0x4]
0000066D  8CC2              mov dx,es
0000066F  2BC1              sub ax,cx
00000671  1BD3              sbb dx,bx
00000673  C47EF8            les di,word [bp-0x8]
00000676  262985C900        sub [es:di+0xc9],ax
0000067B  C47EF8            les di,word [bp-0x8]
0000067E  268B85C300        mov ax,[es:di+0xc3]
00000683  31D2              xor dx,dx
00000685  8BC8              mov cx,ax
00000687  8BDA              mov bx,dx
00000689  C446FC            les ax,word [bp-0x4]
0000068C  8CC2              mov dx,es
0000068E  2BC1              sub ax,cx
00000690  1BD3              sbb dx,bx
00000692  C47EF8            les di,word [bp-0x8]
00000695  260185C300        add [es:di+0xc3],ax
0000069A  89EC              mov sp,bp
0000069C  5D                pop bp
0000069D  CA0800            retf word 0x8
000006A0  55                push bp
000006A1  89E5              mov bp,sp
000006A3  83EC08            sub sp,0x8
000006A6  C47E06            les di,word [bp+0x6]
000006A9  897EF8            mov [bp-0x8],di
000006AC  8C46FA            mov word [bp-0x6],es
000006AF  C47EF8            les di,word [bp-0x8]
000006B2  268A85C000        mov al,[es:di+0xc0]
000006B7  3C01              cmp al,0x1
000006B9  7536              jnz 0x6f1
000006BB  C47EF8            les di,word [bp-0x8]
000006BE  268B85C300        mov ax,[es:di+0xc3]
000006C3  31D2              xor dx,dx
000006C5  52                push dx
000006C6  50                push ax
000006C7  C47EF8            les di,word [bp-0x8]
000006CA  06                push es
000006CB  57                push di
000006CC  9A721A561A        call word 0x1a56:word 0x1a72
000006D1  8BC8              mov cx,ax
000006D3  8BDA              mov bx,dx
000006D5  C47EF8            les di,word [bp-0x8]
000006D8  268B85C100        mov ax,[es:di+0xc1]
000006DD  31D2              xor dx,dx
000006DF  03C1              add ax,cx
000006E1  13D3              adc dx,bx
000006E3  59                pop cx
000006E4  5B                pop bx
000006E5  2BC1              sub ax,cx
000006E7  1BD3              sbb dx,bx
000006E9  8946FC            mov [bp-0x4],ax
000006EC  8956FE            mov [bp-0x2],dx
000006EF  EB26              jmp 0x717
000006F1  3C02              cmp al,0x2
000006F3  7522              jnz 0x717
000006F5  C47EF8            les di,word [bp-0x8]
000006F8  268B85C300        mov ax,[es:di+0xc3]
000006FD  31D2              xor dx,dx
000006FF  52                push dx
00000700  50                push ax
00000701  C47EF8            les di,word [bp-0x8]
00000704  06                push es
00000705  57                push di
00000706  9A721A561A        call word 0x1a56:word 0x1a72
0000070B  59                pop cx
0000070C  5B                pop bx
0000070D  2BC1              sub ax,cx
0000070F  1BD3              sbb dx,bx
00000711  8946FC            mov [bp-0x4],ax
00000714  8956FE            mov [bp-0x2],dx
00000717  C47E06            les di,word [bp+0x6]
0000071A  06                push es
0000071B  57                push di
0000071C  9A6D02561A        call word 0x1a56:word 0x26d
00000721  50                push ax
00000722  E8DBF8            call 0x0
00000725  8B46FC            mov ax,[bp-0x4]
00000728  8B56FE            mov dx,[bp-0x2]
0000072B  89EC              mov sp,bp
0000072D  5D                pop bp
0000072E  CA0400            retf word 0x4
00000731  55                push bp
00000732  89E5              mov bp,sp
00000734  83EC04            sub sp,0x4
00000737  C47E06            les di,word [bp+0x6]
0000073A  06                push es
0000073B  57                push di
0000073C  9A891A561A        call word 0x1a56:word 0x1a89
00000741  8946FC            mov [bp-0x4],ax
00000744  8956FE            mov [bp-0x2],dx
00000747  8B46FC            mov ax,[bp-0x4]
0000074A  8B56FE            mov dx,[bp-0x2]
0000074D  89EC              mov sp,bp
0000074F  5D                pop bp
00000750  CA0400            retf word 0x4
00000753  89E5              mov bp,sp
00000755  B8F015            mov ax,0x15f0
00000758  8CDA              mov dx,ds
0000075A  A3888B            mov [0x8b88],ax
0000075D  89168A8B          mov [0x8b8a],dx
00000761  89EC              mov sp,bp
00000763  CB                retf
00000764  0000              add [bx+si],al
00000766  0000              add [bx+si],al
00000768  0000              add [bx+si],al
0000076A  0000              add [bx+si],al
0000076C  0000              add [bx+si],al
0000076E  0000              add [bx+si],al
