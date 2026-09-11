00000000  55                push bp
00000001  89E5              mov bp,sp
00000003  83EC02            sub sp,0x2
00000006  FF7606            push word [bp+0x6]
00000009  C43EF259          les di,word [0x59f2]
0000000D  26FF7508          push word [es:di+0x8]
00000011  B88002            mov ax,0x280
00000014  50                push ax
00000015  59                pop cx
00000016  5B                pop bx
00000017  58                pop ax
00000018  F7EB              imul bx
0000001A  F7F9              idiv cx
0000001C  8946FE            mov [bp-0x2],ax
0000001F  8B46FE            mov ax,[bp-0x2]
00000022  89EC              mov sp,bp
00000024  5D                pop bp
00000025  CA0200            retf word 0x2
00000028  55                push bp
00000029  89E5              mov bp,sp
0000002B  83EC02            sub sp,0x2
0000002E  FF7606            push word [bp+0x6]
00000031  C43EF259          les di,word [0x59f2]
00000035  26FF750A          push word [es:di+0xa]
00000039  B8A2FE            mov ax,0xfea2
0000003C  50                push ax
0000003D  59                pop cx
0000003E  5B                pop bx
0000003F  58                pop ax
00000040  F7EB              imul bx
00000042  F7F9              idiv cx
00000044  8946FE            mov [bp-0x2],ax
00000047  8B46FE            mov ax,[bp-0x2]
0000004A  89EC              mov sp,bp
0000004C  5D                pop bp
0000004D  CA0200            retf word 0x2
00000050  55                push bp
00000051  89E5              mov bp,sp
00000053  837E0AFF          cmp word [bp+0xa],0xffffffffffffffff
00000057  7E08              jng 0x61
00000059  FF760A            push word [bp+0xa]
0000005C  9A7F1A430E        call word 0xe43:word 0x1a7f
00000061  837E08FF          cmp word [bp+0x8],0xffffffffffffffff
00000065  7E08              jng 0x6f
00000067  FF7608            push word [bp+0x8]
0000006A  9AD91A430E        call word 0xe43:word 0x1ad9
0000006F  8A4606            mov al,[bp+0x6]
00000072  50                push ax
00000073  9A3A1B430E        call word 0xe43:word 0x1b3a
00000078  89EC              mov sp,bp
0000007A  5D                pop bp
0000007B  CA0600            retf word 0x6
0000007E  55                push bp
0000007F  89E5              mov bp,sp
00000081  C44604            les ax,word [bp+0x4]
00000084  8CC2              mov dx,es
00000086  A3F259            mov [0x59f2],ax
00000089  8916F459          mov [0x59f4],dx
0000008D  C406B96B          les ax,word [0x6bb9]
00000091  8CC2              mov dx,es
00000093  A3BA59            mov [0x59ba],ax
00000096  8916BC59          mov [0x59bc],dx
0000009A  C47E04            les di,word [bp+0x4]
0000009D  06                push es
0000009E  57                push di
0000009F  BFBE59            mov di,0x59be
000000A2  1E                push ds
000000A3  57                push di
000000A4  B83400            mov ax,0x34
000000A7  50                push ax
000000A8  9AC002561A        call word 0x1a56:word 0x2c0
000000AD  C47E04            les di,word [bp+0x4]
000000B0  06                push es
000000B1  57                push di
000000B2  9A4004430E        call word 0xe43:word 0x440
000000B7  B80100            mov ax,0x1
000000BA  50                push ax
000000BB  9AA32B430E        call word 0xe43:word 0x2ba3
000000C0  89EC              mov sp,bp
000000C2  5D                pop bp
000000C3  C20400            ret word 0x4
000000C6  55                push bp
000000C7  89E5              mov bp,sp
000000C9  BFBE59            mov di,0x59be
000000CC  1E                push ds
000000CD  57                push di
000000CE  C47E04            les di,word [bp+0x4]
000000D1  06                push es
000000D2  57                push di
000000D3  B83400            mov ax,0x34
000000D6  50                push ax
000000D7  9AC002561A        call word 0x1a56:word 0x2c0
000000DC  C43EBA59          les di,word [0x59ba]
000000E0  06                push es
000000E1  57                push di
000000E2  9A4004430E        call word 0xe43:word 0x440
000000E7  89EC              mov sp,bp
000000E9  5D                pop bp
000000EA  C20400            ret word 0x4
000000ED  55                push bp
000000EE  89E5              mov bp,sp
000000F0  83EC10            sub sp,0x10
000000F3  8B4608            mov ax,[bp+0x8]
000000F6  0B460A            or ax,[bp+0xa]
000000F9  7503              jnz 0xfe
000000FB  E96802            jmp 0x366
000000FE  C47E08            les di,word [bp+0x8]
00000101  897EF6            mov [bp-0xa],di
00000104  8C46F8            mov word [bp-0x8],es
00000107  C47EF6            les di,word [bp-0xa]
0000010A  26837D10FF        cmp word [es:di+0x10],0xffffffffffffffff
0000010F  743B              jz 0x14c
00000111  C47EF6            les di,word [bp-0xa]
00000114  26FF7510          push word [es:di+0x10]
00000118  B8FFFF            mov ax,0xffff
0000011B  50                push ax
0000011C  B000              mov al,0x0
0000011E  50                push ax
0000011F  0E                push cs
00000120  E82DFF            call 0x50
00000123  C47EF6            les di,word [bp-0xa]
00000126  268B4504          mov ax,[es:di+0x4]
0000012A  034606            add ax,[bp+0x6]
0000012D  50                push ax
0000012E  C47EF6            les di,word [bp-0xa]
00000131  268B4506          mov ax,[es:di+0x6]
00000135  034604            add ax,[bp+0x4]
00000138  50                push ax
00000139  C47EF6            les di,word [bp-0xa]
0000013C  26FF7508          push word [es:di+0x8]
00000140  C47EF6            les di,word [bp-0xa]
00000143  26FF750A          push word [es:di+0xa]
00000147  9A0124430E        call word 0xe43:word 0x2401
0000014C  C47EF6            les di,word [bp-0xa]
0000014F  268B4516          mov ax,[es:di+0x16]
00000153  260B4518          or ax,[es:di+0x18]
00000157  7449              jz 0x1a2
00000159  C47EF6            les di,word [bp-0xa]
0000015C  26C47D16          les di,word [es:di+0x16]
00000160  897EF2            mov [bp-0xe],di
00000163  8C46F4            mov word [bp-0xc],es
00000166  B000              mov al,0x0
00000168  50                push ax
00000169  9A3A1B430E        call word 0xe43:word 0x1b3a
0000016E  C47EF2            les di,word [bp-0xe]
00000171  81C70400          add di,0x4
00000175  06                push es
00000176  57                push di
00000177  C47EF6            les di,word [bp-0xa]
0000017A  268B4504          mov ax,[es:di+0x4]
0000017E  034606            add ax,[bp+0x6]
00000181  C47EF2            les di,word [bp-0xe]
00000184  260305            add ax,[es:di]
00000187  50                push ax
00000188  C47EF6            les di,word [bp-0xa]
0000018B  268B4506          mov ax,[es:di+0x6]
0000018F  034604            add ax,[bp+0x4]
00000192  C47EF2            les di,word [bp-0xe]
00000195  26034502          add ax,[es:di+0x2]
00000199  50                push ax
0000019A  B000              mov al,0x0
0000019C  50                push ax
0000019D  9AAF20430E        call word 0xe43:word 0x20af
000001A2  C47EF6            les di,word [bp-0xa]
000001A5  268B451A          mov ax,[es:di+0x1a]
000001A9  260B451C          or ax,[es:di+0x1c]
000001AD  7503              jnz 0x1b2
000001AF  E9A900            jmp 0x25b
000001B2  C47EF6            les di,word [bp-0xa]
000001B5  26FF750E          push word [es:di+0xe]
000001B9  B8FFFF            mov ax,0xffff
000001BC  50                push ax
000001BD  B000              mov al,0x0
000001BF  50                push ax
000001C0  0E                push cs
000001C1  E88CFE            call 0x50
000001C4  C47EF6            les di,word [bp-0xa]
000001C7  26C47D1A          les di,word [es:di+0x1a]
000001CB  897EF2            mov [bp-0xe],di
000001CE  8C46F4            mov word [bp-0xc],es
000001D1  C47EF6            les di,word [bp-0xa]
000001D4  268B4504          mov ax,[es:di+0x4]
000001D8  034606            add ax,[bp+0x6]
000001DB  C47EF2            les di,word [bp-0xe]
000001DE  26034502          add ax,[es:di+0x2]
000001E2  50                push ax
000001E3  C47EF6            les di,word [bp-0xa]
000001E6  268B4506          mov ax,[es:di+0x6]
000001EA  034604            add ax,[bp+0x4]
000001ED  C47EF2            les di,word [bp-0xe]
000001F0  26034504          add ax,[es:di+0x4]
000001F4  50                push ax
000001F5  9A8A1B430E        call word 0xe43:word 0x1b8a
000001FA  C47EF2            les di,word [bp-0xe]
000001FD  268B05            mov ax,[es:di]
00000200  48                dec ax
00000201  8946F0            mov [bp-0x10],ax
00000204  B80100            mov ax,0x1
00000207  3B46F0            cmp ax,[bp-0x10]
0000020A  7F4F              jg 0x25b
0000020C  8946FA            mov [bp-0x6],ax
0000020F  EB03              jmp 0x214
00000211  FF46FA            inc word [bp-0x6]
00000214  8B46FA            mov ax,[bp-0x6]
00000217  D1E0              shl ax,1
00000219  D1E0              shl ax,1
0000021B  C47EF2            les di,word [bp-0xe]
0000021E  03F8              add di,ax
00000220  268B5502          mov dx,[es:di+0x2]
00000224  C47EF6            les di,word [bp-0xa]
00000227  268B4504          mov ax,[es:di+0x4]
0000022B  034606            add ax,[bp+0x6]
0000022E  03C2              add ax,dx
00000230  50                push ax
00000231  8B46FA            mov ax,[bp-0x6]
00000234  D1E0              shl ax,1
00000236  D1E0              shl ax,1
00000238  C47EF2            les di,word [bp-0xe]
0000023B  03F8              add di,ax
0000023D  268B5504          mov dx,[es:di+0x4]
00000241  C47EF6            les di,word [bp-0xa]
00000244  268B4506          mov ax,[es:di+0x6]
00000248  034604            add ax,[bp+0x4]
0000024B  03C2              add ax,dx
0000024D  50                push ax
0000024E  9AC907430E        call word 0xe43:word 0x7c9
00000253  8B46FA            mov ax,[bp-0x6]
00000256  3B46F0            cmp ax,[bp-0x10]
00000259  75B6              jnz 0x211
0000025B  C47EF6            les di,word [bp-0xa]
0000025E  26C44512          les ax,word [es:di+0x12]
00000262  8CC2              mov dx,es
00000264  8946FC            mov [bp-0x4],ax
00000267  8956FE            mov [bp-0x2],dx
0000026A  8B46FC            mov ax,[bp-0x4]
0000026D  0B46FE            or ax,[bp-0x2]
00000270  7462              jz 0x2d4
00000272  C47EFC            les di,word [bp-0x4]
00000275  897EF2            mov [bp-0xe],di
00000278  8C46F4            mov word [bp-0xc],es
0000027B  C47EF2            les di,word [bp-0xe]
0000027E  26FF7508          push word [es:di+0x8]
00000282  B8FFFF            mov ax,0xffff
00000285  50                push ax
00000286  B001              mov al,0x1
00000288  50                push ax
00000289  0E                push cs
0000028A  E8C3FD            call 0x50
0000028D  C47EF6            les di,word [bp-0xa]
00000290  268B4504          mov ax,[es:di+0x4]
00000294  034606            add ax,[bp+0x6]
00000297  C47EF2            les di,word [bp-0xe]
0000029A  26034504          add ax,[es:di+0x4]
0000029E  50                push ax
0000029F  C47EF6            les di,word [bp-0xa]
000002A2  268B4506          mov ax,[es:di+0x6]
000002A6  034604            add ax,[bp+0x4]
000002A9  C47EF2            les di,word [bp-0xe]
000002AC  26034506          add ax,[es:di+0x6]
000002B0  50                push ax
000002B1  9A8A1B430E        call word 0xe43:word 0x1b8a
000002B6  C47EF2            les di,word [bp-0xe]
000002B9  26C47D0A          les di,word [es:di+0xa]
000002BD  06                push es
000002BE  57                push di
000002BF  9AE010430E        call word 0xe43:word 0x10e0
000002C4  C47EFC            les di,word [bp-0x4]
000002C7  26C405            les ax,word [es:di]
000002CA  8CC2              mov dx,es
000002CC  8946FC            mov [bp-0x4],ax
000002CF  8956FE            mov [bp-0x2],dx
000002D2  EB96              jmp 0x26a
000002D4  C47EF6            les di,word [bp-0xa]
000002D7  26837D0C00        cmp word [es:di+0xc],0x0
000002DC  7E77              jng 0x355
000002DE  C47EF6            les di,word [bp-0xa]
000002E1  26FF750E          push word [es:di+0xe]
000002E5  B8FFFF            mov ax,0xffff
000002E8  50                push ax
000002E9  B000              mov al,0x0
000002EB  50                push ax
000002EC  0E                push cs
000002ED  E860FD            call 0x50
000002F0  C47EF6            les di,word [bp-0xa]
000002F3  268B450C          mov ax,[es:di+0xc]
000002F7  48                dec ax
000002F8  8946F4            mov [bp-0xc],ax
000002FB  31C0              xor ax,ax
000002FD  3B46F4            cmp ax,[bp-0xc]
00000300  7F53              jg 0x355
00000302  8946FA            mov [bp-0x6],ax
00000305  EB03              jmp 0x30a
00000307  FF46FA            inc word [bp-0x6]
0000030A  C47EF6            les di,word [bp-0xa]
0000030D  268B4504          mov ax,[es:di+0x4]
00000311  034606            add ax,[bp+0x6]
00000314  0346FA            add ax,[bp-0x6]
00000317  50                push ax
00000318  C47EF6            les di,word [bp-0xa]
0000031B  268B4506          mov ax,[es:di+0x6]
0000031F  034604            add ax,[bp+0x4]
00000322  0346FA            add ax,[bp-0x6]
00000325  50                push ax
00000326  8B46FA            mov ax,[bp-0x6]
00000329  D1E0              shl ax,1
0000032B  8BD0              mov dx,ax
0000032D  C47EF6            les di,word [bp-0xa]
00000330  268B4508          mov ax,[es:di+0x8]
00000334  2BC2              sub ax,dx
00000336  50                push ax
00000337  8B46FA            mov ax,[bp-0x6]
0000033A  D1E0              shl ax,1
0000033C  8BD0              mov dx,ax
0000033E  C47EF6            les di,word [bp-0xa]
00000341  268B450A          mov ax,[es:di+0xa]
00000345  2BC2              sub ax,dx
00000347  50                push ax
00000348  9A3B23430E        call word 0xe43:word 0x233b
0000034D  8B46FA            mov ax,[bp-0x6]
00000350  3B46F4            cmp ax,[bp-0xc]
00000353  75B2              jnz 0x307
00000355  C47E08            les di,word [bp+0x8]
00000358  26C405            les ax,word [es:di]
0000035B  8CC2              mov dx,es
0000035D  894608            mov [bp+0x8],ax
00000360  89560A            mov [bp+0xa],dx
00000363  E98DFD            jmp 0xf3
00000366  89EC              mov sp,bp
00000368  5D                pop bp
00000369  C20C00            ret word 0xc
0000036C  55                push bp
0000036D  89E5              mov bp,sp
0000036F  83EC04            sub sp,0x4
00000372  C47E08            les di,word [bp+0x8]
00000375  897EFC            mov [bp-0x4],di
00000378  8C46FE            mov word [bp-0x2],es
0000037B  B000              mov al,0x0
0000037D  50                push ax
0000037E  9A3A1B430E        call word 0xe43:word 0x1b3a
00000383  C47E0C            les di,word [bp+0xc]
00000386  268B4547          mov ax,[es:di+0x47]
0000038A  260B4549          or ax,[es:di+0x49]
0000038E  750E              jnz 0x39e
00000390  C47E0C            les di,word [bp+0xc]
00000393  26FF7540          push word [es:di+0x40]
00000397  9A7F1A430E        call word 0xe43:word 0x1a7f
0000039C  EB10              jmp 0x3ae
0000039E  C47E0C            les di,word [bp+0xc]
000003A1  26C47D47          les di,word [es:di+0x47]
000003A5  26FF750C          push word [es:di+0xc]
000003A9  9A7F1A430E        call word 0xe43:word 0x1a7f
000003AE  C47EFC            les di,word [bp-0x4]
000003B1  268B4504          mov ax,[es:di+0x4]
000003B5  034606            add ax,[bp+0x6]
000003B8  50                push ax
000003B9  C47EFC            les di,word [bp-0x4]
000003BC  268B4506          mov ax,[es:di+0x6]
000003C0  034604            add ax,[bp+0x4]
000003C3  50                push ax
000003C4  C47EFC            les di,word [bp-0x4]
000003C7  26FF7508          push word [es:di+0x8]
000003CB  C47EFC            les di,word [bp-0x4]
000003CE  26FF750A          push word [es:di+0xa]
000003D2  9A0124430E        call word 0xe43:word 0x2401
000003D7  89EC              mov sp,bp
000003D9  5D                pop bp
000003DA  C20C00            ret word 0xc
000003DD  55                push bp
000003DE  89E5              mov bp,sp
000003E0  83EC08            sub sp,0x8
000003E3  FF760C            push word [bp+0xc]
000003E6  FF760A            push word [bp+0xa]
000003E9  E892FC            call 0x7e
000003EC  C47E0A            les di,word [bp+0xa]
000003EF  897EF8            mov [bp-0x8],di
000003F2  8C46FA            mov word [bp-0x6],es
000003F5  C47EF8            les di,word [bp-0x8]
000003F8  268B4547          mov ax,[es:di+0x47]
000003FC  260B4549          or ax,[es:di+0x49]
00000400  754D              jnz 0x44f
00000402  C47EF8            les di,word [bp-0x8]
00000405  268B4543          mov ax,[es:di+0x43]
00000409  260B4545          or ax,[es:di+0x45]
0000040D  751A              jnz 0x429
0000040F  C44606            les ax,word [bp+0x6]
00000412  8CC2              mov dx,es
00000414  C47EF8            les di,word [bp-0x8]
00000417  26894543          mov [es:di+0x43],ax
0000041B  26895545          mov [es:di+0x45],dx
0000041F  31C0              xor ax,ax
00000421  8946FC            mov [bp-0x4],ax
00000424  8946FE            mov [bp-0x2],ax
00000427  EB0F              jmp 0x438
00000429  C47EF8            les di,word [bp-0x8]
0000042C  26C44543          les ax,word [es:di+0x43]
00000430  8CC2              mov dx,es
00000432  8946FC            mov [bp-0x4],ax
00000435  8956FE            mov [bp-0x2],dx
00000438  FF760C            push word [bp+0xc]
0000043B  FF760A            push word [bp+0xa]
0000043E  FF7608            push word [bp+0x8]
00000441  FF7606            push word [bp+0x6]
00000444  31C0              xor ax,ax
00000446  50                push ax
00000447  31C0              xor ax,ax
00000449  50                push ax
0000044A  E8A0FC            call 0xed
0000044D  EB66              jmp 0x4b5
0000044F  C47EF8            les di,word [bp-0x8]
00000452  26C47D47          les di,word [es:di+0x47]
00000456  268B450E          mov ax,[es:di+0xe]
0000045A  260B4510          or ax,[es:di+0x10]
0000045E  751E              jnz 0x47e
00000460  C44606            les ax,word [bp+0x6]
00000463  8CC2              mov dx,es
00000465  C47EF8            les di,word [bp-0x8]
00000468  26C47D47          les di,word [es:di+0x47]
0000046C  2689450E          mov [es:di+0xe],ax
00000470  26895510          mov [es:di+0x10],dx
00000474  31C0              xor ax,ax
00000476  8946FC            mov [bp-0x4],ax
00000479  8946FE            mov [bp-0x2],ax
0000047C  EB13              jmp 0x491
0000047E  C47EF8            les di,word [bp-0x8]
00000481  26C47D47          les di,word [es:di+0x47]
00000485  26C4450E          les ax,word [es:di+0xe]
00000489  8CC2              mov dx,es
0000048B  8946FC            mov [bp-0x4],ax
0000048E  8956FE            mov [bp-0x2],dx
00000491  FF760C            push word [bp+0xc]
00000494  FF760A            push word [bp+0xa]
00000497  FF7608            push word [bp+0x8]
0000049A  FF7606            push word [bp+0x6]
0000049D  C47EF8            les di,word [bp-0x8]
000004A0  26C47D47          les di,word [es:di+0x47]
000004A4  26FF35            push word [es:di]
000004A7  C47EF8            les di,word [bp-0x8]
000004AA  26C47D47          les di,word [es:di+0x47]
000004AE  26FF7502          push word [es:di+0x2]
000004B2  E838FC            call 0xed
000004B5  8B46FC            mov ax,[bp-0x4]
000004B8  0B46FE            or ax,[bp-0x2]
000004BB  742B              jz 0x4e8
000004BD  C47EFC            les di,word [bp-0x4]
000004C0  268B05            mov ax,[es:di]
000004C3  260B4502          or ax,[es:di+0x2]
000004C7  7410              jz 0x4d9
000004C9  C47EFC            les di,word [bp-0x4]
000004CC  26C405            les ax,word [es:di]
000004CF  8CC2              mov dx,es
000004D1  8946FC            mov [bp-0x4],ax
000004D4  8956FE            mov [bp-0x2],dx
000004D7  EBE4              jmp 0x4bd
000004D9  C44606            les ax,word [bp+0x6]
000004DC  8CC2              mov dx,es
000004DE  C47EFC            les di,word [bp-0x4]
000004E1  268905            mov [es:di],ax
000004E4  26895502          mov [es:di+0x2],dx
000004E8  FF760C            push word [bp+0xc]
000004EB  FF760A            push word [bp+0xa]
000004EE  E8D5FB            call 0xc6
000004F1  89EC              mov sp,bp
000004F3  5D                pop bp
000004F4  CA0800            retf word 0x8
000004F7  55                push bp
000004F8  89E5              mov bp,sp
000004FA  83EC0C            sub sp,0xc
000004FD  C47E0A            les di,word [bp+0xa]
00000500  897EF4            mov [bp-0xc],di
00000503  8C46F6            mov word [bp-0xa],es
00000506  C47EF4            les di,word [bp-0xc]
00000509  268B4547          mov ax,[es:di+0x47]
0000050D  260B4549          or ax,[es:di+0x49]
00000511  7403              jz 0x516
00000513  E9D300            jmp 0x5e9
00000516  C47EF4            les di,word [bp-0xc]
00000519  268B4543          mov ax,[es:di+0x43]
0000051D  260B4545          or ax,[es:di+0x45]
00000521  7503              jnz 0x526
00000523  E9C000            jmp 0x5e6
00000526  FF760C            push word [bp+0xc]
00000529  FF760A            push word [bp+0xa]
0000052C  E84FFB            call 0x7e
0000052F  C47EF4            les di,word [bp-0xc]
00000532  26C44543          les ax,word [es:di+0x43]
00000536  8CC2              mov dx,es
00000538  3B5608            cmp dx,[bp+0x8]
0000053B  751E              jnz 0x55b
0000053D  3B4606            cmp ax,[bp+0x6]
00000540  7519              jnz 0x55b
00000542  C47EF4            les di,word [bp-0xc]
00000545  26C47D43          les di,word [es:di+0x43]
00000549  26C405            les ax,word [es:di]
0000054C  8CC2              mov dx,es
0000054E  C47EF4            les di,word [bp-0xc]
00000551  26894543          mov [es:di+0x43],ax
00000555  26895545          mov [es:di+0x45],dx
00000559  EB6D              jmp 0x5c8
0000055B  C47EF4            les di,word [bp-0xc]
0000055E  26C47D43          les di,word [es:di+0x43]
00000562  26C405            les ax,word [es:di]
00000565  8CC2              mov dx,es
00000567  8946F8            mov [bp-0x8],ax
0000056A  8956FA            mov [bp-0x6],dx
0000056D  C47EF4            les di,word [bp-0xc]
00000570  26C44543          les ax,word [es:di+0x43]
00000574  8CC2              mov dx,es
00000576  8946FC            mov [bp-0x4],ax
00000579  8956FE            mov [bp-0x2],dx
0000057C  8B46F8            mov ax,[bp-0x8]
0000057F  0B46FA            or ax,[bp-0x6]
00000582  742A              jz 0x5ae
00000584  C446F8            les ax,word [bp-0x8]
00000587  8CC2              mov dx,es
00000589  3B5608            cmp dx,[bp+0x8]
0000058C  7505              jnz 0x593
0000058E  3B4606            cmp ax,[bp+0x6]
00000591  741B              jz 0x5ae
00000593  C446F8            les ax,word [bp-0x8]
00000596  8CC2              mov dx,es
00000598  8946FC            mov [bp-0x4],ax
0000059B  8956FE            mov [bp-0x2],dx
0000059E  C47EF8            les di,word [bp-0x8]
000005A1  26C405            les ax,word [es:di]
000005A4  8CC2              mov dx,es
000005A6  8946F8            mov [bp-0x8],ax
000005A9  8956FA            mov [bp-0x6],dx
000005AC  EBCE              jmp 0x57c
000005AE  8B46F8            mov ax,[bp-0x8]
000005B1  0B46FA            or ax,[bp-0x6]
000005B4  7412              jz 0x5c8
000005B6  C47EF8            les di,word [bp-0x8]
000005B9  26C405            les ax,word [es:di]
000005BC  8CC2              mov dx,es
000005BE  C47EFC            les di,word [bp-0x4]
000005C1  268905            mov [es:di],ax
000005C4  26895502          mov [es:di+0x2],dx
000005C8  FF760C            push word [bp+0xc]
000005CB  FF760A            push word [bp+0xa]
000005CE  FF7608            push word [bp+0x8]
000005D1  FF7606            push word [bp+0x6]
000005D4  31C0              xor ax,ax
000005D6  50                push ax
000005D7  31C0              xor ax,ax
000005D9  50                push ax
000005DA  E88FFD            call 0x36c
000005DD  FF760C            push word [bp+0xc]
000005E0  FF760A            push word [bp+0xa]
000005E3  E8E0FA            call 0xc6
000005E6  E9F700            jmp 0x6e0
000005E9  C47EF4            les di,word [bp-0xc]
000005EC  26C47D47          les di,word [es:di+0x47]
000005F0  268B450E          mov ax,[es:di+0xe]
000005F4  260B4510          or ax,[es:di+0x10]
000005F8  7503              jnz 0x5fd
000005FA  E9E300            jmp 0x6e0
000005FD  FF760C            push word [bp+0xc]
00000600  FF760A            push word [bp+0xa]
00000603  E878FA            call 0x7e
00000606  C47EF4            les di,word [bp-0xc]
00000609  26C47D47          les di,word [es:di+0x47]
0000060D  26C4450E          les ax,word [es:di+0xe]
00000611  8CC2              mov dx,es
00000613  3B5608            cmp dx,[bp+0x8]
00000616  7526              jnz 0x63e
00000618  3B4606            cmp ax,[bp+0x6]
0000061B  7521              jnz 0x63e
0000061D  C47EF4            les di,word [bp-0xc]
00000620  26C47D47          les di,word [es:di+0x47]
00000624  26C47D0E          les di,word [es:di+0xe]
00000628  26C405            les ax,word [es:di]
0000062B  8CC2              mov dx,es
0000062D  C47EF4            les di,word [bp-0xc]
00000630  26C47D47          les di,word [es:di+0x47]
00000634  2689450E          mov [es:di+0xe],ax
00000638  26895510          mov [es:di+0x10],dx
0000063C  EB75              jmp 0x6b3
0000063E  C47EF4            les di,word [bp-0xc]
00000641  26C47D47          les di,word [es:di+0x47]
00000645  26C47D0E          les di,word [es:di+0xe]
00000649  26C405            les ax,word [es:di]
0000064C  8CC2              mov dx,es
0000064E  8946F8            mov [bp-0x8],ax
00000651  8956FA            mov [bp-0x6],dx
00000654  C47EF4            les di,word [bp-0xc]
00000657  26C47D47          les di,word [es:di+0x47]
0000065B  26C4450E          les ax,word [es:di+0xe]
0000065F  8CC2              mov dx,es
00000661  8946FC            mov [bp-0x4],ax
00000664  8956FE            mov [bp-0x2],dx
00000667  8B46F8            mov ax,[bp-0x8]
0000066A  0B46FA            or ax,[bp-0x6]
0000066D  742A              jz 0x699
0000066F  C446F8            les ax,word [bp-0x8]
00000672  8CC2              mov dx,es
00000674  3B5608            cmp dx,[bp+0x8]
00000677  7505              jnz 0x67e
00000679  3B4606            cmp ax,[bp+0x6]
0000067C  741B              jz 0x699
0000067E  C446F8            les ax,word [bp-0x8]
00000681  8CC2              mov dx,es
00000683  8946FC            mov [bp-0x4],ax
00000686  8956FE            mov [bp-0x2],dx
00000689  C47EF8            les di,word [bp-0x8]
0000068C  26C405            les ax,word [es:di]
0000068F  8CC2              mov dx,es
00000691  8946F8            mov [bp-0x8],ax
00000694  8956FA            mov [bp-0x6],dx
00000697  EBCE              jmp 0x667
00000699  8B46F8            mov ax,[bp-0x8]
0000069C  0B46FA            or ax,[bp-0x6]
0000069F  7412              jz 0x6b3
000006A1  C47EF8            les di,word [bp-0x8]
000006A4  26C405            les ax,word [es:di]
000006A7  8CC2              mov dx,es
000006A9  C47EFC            les di,word [bp-0x4]
000006AC  268905            mov [es:di],ax
000006AF  26895502          mov [es:di+0x2],dx
000006B3  FF760C            push word [bp+0xc]
000006B6  FF760A            push word [bp+0xa]
000006B9  FF7608            push word [bp+0x8]
000006BC  FF7606            push word [bp+0x6]
000006BF  C47EF4            les di,word [bp-0xc]
000006C2  26C47D47          les di,word [es:di+0x47]
000006C6  26FF35            push word [es:di]
000006C9  C47EF4            les di,word [bp-0xc]
000006CC  26C47D47          les di,word [es:di+0x47]
000006D0  26FF7502          push word [es:di+0x2]
000006D4  E895FC            call 0x36c
000006D7  FF760C            push word [bp+0xc]
000006DA  FF760A            push word [bp+0xa]
000006DD  E8E6F9            call 0xc6
000006E0  89EC              mov sp,bp
000006E2  5D                pop bp
000006E3  CA0800            retf word 0x8
000006E6  55                push bp
000006E7  89E5              mov bp,sp
000006E9  83EC14            sub sp,0x14
000006EC  9A7408E10B        call word 0xbe1:word 0x874
000006F1  FF760C            push word [bp+0xc]
000006F4  FF760A            push word [bp+0xa]
000006F7  E884F9            call 0x7e
000006FA  C47E0A            les di,word [bp+0xa]
000006FD  897EF6            mov [bp-0xa],di
00000700  8C46F8            mov word [bp-0x8],es
00000703  C44606            les ax,word [bp+0x6]
00000706  8CC2              mov dx,es
00000708  C47EF6            les di,word [bp-0xa]
0000070B  26894547          mov [es:di+0x47],ax
0000070F  26895549          mov [es:di+0x49],dx
00000713  C47E06            les di,word [bp+0x6]
00000716  897EF2            mov [bp-0xe],di
00000719  8C46F4            mov word [bp-0xc],es
0000071C  C47EF2            les di,word [bp-0xe]
0000071F  81C71E00          add di,0x1e
00000723  06                push es
00000724  57                push di
00000725  C47EF2            les di,word [bp-0xe]
00000728  26FF35            push word [es:di]
0000072B  C47EF2            les di,word [bp-0xe]
0000072E  26FF7502          push word [es:di+0x2]
00000732  C47EF2            les di,word [bp-0xe]
00000735  26FF7504          push word [es:di+0x4]
00000739  C47EF2            les di,word [bp-0xe]
0000073C  26FF7506          push word [es:di+0x6]
00000740  B001              mov al,0x1
00000742  50                push ax
00000743  9A091D430E        call word 0xe43:word 0x1d09
00000748  C47EF2            les di,word [bp-0xe]
0000074B  26FF750C          push word [es:di+0xc]
0000074F  B8FFFF            mov ax,0xffff
00000752  50                push ax
00000753  B000              mov al,0x0
00000755  50                push ax
00000756  0E                push cs
00000757  E8F6F8            call 0x50
0000075A  C47EF2            les di,word [bp-0xe]
0000075D  26FF35            push word [es:di]
00000760  C47EF2            les di,word [bp-0xe]
00000763  26FF7502          push word [es:di+0x2]
00000767  C47EF2            les di,word [bp-0xe]
0000076A  26FF7504          push word [es:di+0x4]
0000076E  C47EF2            les di,word [bp-0xe]
00000771  26FF7506          push word [es:di+0x6]
00000775  9A0124430E        call word 0xe43:word 0x2401
0000077A  C47EF2            les di,word [bp-0xe]
0000077D  268B4516          mov ax,[es:di+0x16]
00000781  260B4518          or ax,[es:di+0x18]
00000785  7442              jz 0x7c9
00000787  C47EF2            les di,word [bp-0xe]
0000078A  26C47D16          les di,word [es:di+0x16]
0000078E  897EEE            mov [bp-0x12],di
00000791  8C46F0            mov word [bp-0x10],es
00000794  B001              mov al,0x1
00000796  50                push ax
00000797  9A3A1B430E        call word 0xe43:word 0x1b3a
0000079C  C47EEE            les di,word [bp-0x12]
0000079F  81C70400          add di,0x4
000007A3  06                push es
000007A4  57                push di
000007A5  C47EF2            les di,word [bp-0xe]
000007A8  268B05            mov ax,[es:di]
000007AB  C47EEE            les di,word [bp-0x12]
000007AE  260305            add ax,[es:di]
000007B1  50                push ax
000007B2  C47EF2            les di,word [bp-0xe]
000007B5  268B4502          mov ax,[es:di+0x2]
000007B9  C47EEE            les di,word [bp-0x12]
000007BC  26034502          add ax,[es:di+0x2]
000007C0  50                push ax
000007C1  B000              mov al,0x0
000007C3  50                push ax
000007C4  9AAF20430E        call word 0xe43:word 0x20af
000007C9  C47EF2            les di,word [bp-0xe]
000007CC  268B451A          mov ax,[es:di+0x1a]
000007D0  260B451C          or ax,[es:di+0x1c]
000007D4  7503              jnz 0x7d9
000007D6  E99700            jmp 0x870
000007D9  C47EF2            les di,word [bp-0xe]
000007DC  26FF750A          push word [es:di+0xa]
000007E0  B8FFFF            mov ax,0xffff
000007E3  50                push ax
000007E4  B000              mov al,0x0
000007E6  50                push ax
000007E7  0E                push cs
000007E8  E865F8            call 0x50
000007EB  C47EF2            les di,word [bp-0xe]
000007EE  26C47D1A          les di,word [es:di+0x1a]
000007F2  897EEE            mov [bp-0x12],di
000007F5  8C46F0            mov word [bp-0x10],es
000007F8  C47EF2            les di,word [bp-0xe]
000007FB  268B05            mov ax,[es:di]
000007FE  C47EEE            les di,word [bp-0x12]
00000801  26034502          add ax,[es:di+0x2]
00000805  50                push ax
00000806  C47EF2            les di,word [bp-0xe]
00000809  268B4502          mov ax,[es:di+0x2]
0000080D  C47EEE            les di,word [bp-0x12]
00000810  26034504          add ax,[es:di+0x4]
00000814  50                push ax
00000815  9A8A1B430E        call word 0xe43:word 0x1b8a
0000081A  C47EEE            les di,word [bp-0x12]
0000081D  268B05            mov ax,[es:di]
00000820  48                dec ax
00000821  8946EC            mov [bp-0x14],ax
00000824  B80100            mov ax,0x1
00000827  3B46EC            cmp ax,[bp-0x14]
0000082A  7F44              jg 0x870
0000082C  8946FA            mov [bp-0x6],ax
0000082F  EB03              jmp 0x834
00000831  FF46FA            inc word [bp-0x6]
00000834  8B46FA            mov ax,[bp-0x6]
00000837  D1E0              shl ax,1
00000839  D1E0              shl ax,1
0000083B  C47EEE            les di,word [bp-0x12]
0000083E  03F8              add di,ax
00000840  268B4502          mov ax,[es:di+0x2]
00000844  C47EF2            les di,word [bp-0xe]
00000847  260305            add ax,[es:di]
0000084A  50                push ax
0000084B  8B46FA            mov ax,[bp-0x6]
0000084E  D1E0              shl ax,1
00000850  D1E0              shl ax,1
00000852  C47EEE            les di,word [bp-0x12]
00000855  03F8              add di,ax
00000857  268B4504          mov ax,[es:di+0x4]
0000085B  C47EF2            les di,word [bp-0xe]
0000085E  26034502          add ax,[es:di+0x2]
00000862  50                push ax
00000863  9AC907430E        call word 0xe43:word 0x7c9
00000868  8B46FA            mov ax,[bp-0x6]
0000086B  3B46EC            cmp ax,[bp-0x14]
0000086E  75C1              jnz 0x831
00000870  C47EF2            les di,word [bp-0xe]
00000873  26C44512          les ax,word [es:di+0x12]
00000877  8CC2              mov dx,es
00000879  8946FC            mov [bp-0x4],ax
0000087C  8956FE            mov [bp-0x2],dx
0000087F  8B46FC            mov ax,[bp-0x4]
00000882  0B46FE            or ax,[bp-0x2]
00000885  745B              jz 0x8e2
00000887  C47EFC            les di,word [bp-0x4]
0000088A  897EEE            mov [bp-0x12],di
0000088D  8C46F0            mov word [bp-0x10],es
00000890  C47EEE            les di,word [bp-0x12]
00000893  26FF7508          push word [es:di+0x8]
00000897  B8FFFF            mov ax,0xffff
0000089A  50                push ax
0000089B  B001              mov al,0x1
0000089D  50                push ax
0000089E  0E                push cs
0000089F  E8AEF7            call 0x50
000008A2  C47EF2            les di,word [bp-0xe]
000008A5  268B05            mov ax,[es:di]
000008A8  C47EEE            les di,word [bp-0x12]
000008AB  26034504          add ax,[es:di+0x4]
000008AF  50                push ax
000008B0  C47EF2            les di,word [bp-0xe]
000008B3  268B4502          mov ax,[es:di+0x2]
000008B7  C47EEE            les di,word [bp-0x12]
000008BA  26034506          add ax,[es:di+0x6]
000008BE  50                push ax
000008BF  9A8A1B430E        call word 0xe43:word 0x1b8a
000008C4  C47EEE            les di,word [bp-0x12]
000008C7  26C47D0A          les di,word [es:di+0xa]
000008CB  06                push es
000008CC  57                push di
000008CD  9AE010430E        call word 0xe43:word 0x10e0
000008D2  C47EFC            les di,word [bp-0x4]
000008D5  26C405            les ax,word [es:di]
000008D8  8CC2              mov dx,es
000008DA  8946FC            mov [bp-0x4],ax
000008DD  8956FE            mov [bp-0x2],dx
000008E0  EB9D              jmp 0x87f
000008E2  FF760C            push word [bp+0xc]
000008E5  FF760A            push word [bp+0xa]
000008E8  C47EF2            les di,word [bp-0xe]
000008EB  26FF7510          push word [es:di+0x10]
000008EF  26FF750E          push word [es:di+0xe]
000008F3  C47EF2            les di,word [bp-0xe]
000008F6  26FF35            push word [es:di]
000008F9  C47EF2            les di,word [bp-0xe]
000008FC  26FF7502          push word [es:di+0x2]
00000900  E8EAF7            call 0xed
00000903  C47EF2            les di,word [bp-0xe]
00000906  26837D0800        cmp word [es:di+0x8],0x0
0000090B  7E70              jng 0x97d
0000090D  C47EF2            les di,word [bp-0xe]
00000910  26FF750A          push word [es:di+0xa]
00000914  B8FFFF            mov ax,0xffff
00000917  50                push ax
00000918  B000              mov al,0x0
0000091A  50                push ax
0000091B  0E                push cs
0000091C  E831F7            call 0x50
0000091F  C47EF2            les di,word [bp-0xe]
00000922  268B4508          mov ax,[es:di+0x8]
00000926  48                dec ax
00000927  8946F0            mov [bp-0x10],ax
0000092A  31C0              xor ax,ax
0000092C  3B46F0            cmp ax,[bp-0x10]
0000092F  7F4C              jg 0x97d
00000931  8946FA            mov [bp-0x6],ax
00000934  EB03              jmp 0x939
00000936  FF46FA            inc word [bp-0x6]
00000939  C47EF2            les di,word [bp-0xe]
0000093C  268B05            mov ax,[es:di]
0000093F  0346FA            add ax,[bp-0x6]
00000942  50                push ax
00000943  C47EF2            les di,word [bp-0xe]
00000946  268B4502          mov ax,[es:di+0x2]
0000094A  0346FA            add ax,[bp-0x6]
0000094D  50                push ax
0000094E  8B46FA            mov ax,[bp-0x6]
00000951  D1E0              shl ax,1
00000953  8BD0              mov dx,ax
00000955  C47EF2            les di,word [bp-0xe]
00000958  268B4504          mov ax,[es:di+0x4]
0000095C  2BC2              sub ax,dx
0000095E  50                push ax
0000095F  8B46FA            mov ax,[bp-0x6]
00000962  D1E0              shl ax,1
00000964  8BD0              mov dx,ax
00000966  C47EF2            les di,word [bp-0xe]
00000969  268B4506          mov ax,[es:di+0x6]
0000096D  2BC2              sub ax,dx
0000096F  50                push ax
00000970  9A3B23430E        call word 0xe43:word 0x233b
00000975  8B46FA            mov ax,[bp-0x6]
00000978  3B46F0            cmp ax,[bp-0x10]
0000097B  75B9              jnz 0x936
0000097D  FF760C            push word [bp+0xc]
00000980  FF760A            push word [bp+0xa]
00000983  E840F7            call 0xc6
00000986  9A4808E10B        call word 0xbe1:word 0x848
0000098B  89EC              mov sp,bp
0000098D  5D                pop bp
0000098E  CA0800            retf word 0x8
00000991  55                push bp
00000992  89E5              mov bp,sp
00000994  FF760C            push word [bp+0xc]
00000997  FF760A            push word [bp+0xa]
0000099A  E8E1F6            call 0x7e
0000099D  C47E0A            les di,word [bp+0xa]
000009A0  31C0              xor ax,ax
000009A2  26894547          mov [es:di+0x47],ax
000009A6  26894549          mov [es:di+0x49],ax
000009AA  B000              mov al,0x0
000009AC  50                push ax
000009AD  9A3A1B430E        call word 0xe43:word 0x1b3a
000009B2  C47E06            les di,word [bp+0x6]
000009B5  81C71E00          add di,0x1e
000009B9  06                push es
000009BA  57                push di
000009BB  C47E06            les di,word [bp+0x6]
000009BE  26FF35            push word [es:di]
000009C1  C47E06            les di,word [bp+0x6]
000009C4  26FF7502          push word [es:di+0x2]
000009C8  B001              mov al,0x1
000009CA  50                push ax
000009CB  9AAF20430E        call word 0xe43:word 0x20af
000009D0  FF760C            push word [bp+0xc]
000009D3  FF760A            push word [bp+0xa]
000009D6  E8EDF6            call 0xc6
000009D9  89EC              mov sp,bp
000009DB  5D                pop bp
000009DC  CA0800            retf word 0x8
000009DF  55                push bp
000009E0  89E5              mov bp,sp
000009E2  83EC0C            sub sp,0xc
000009E5  9A7408E10B        call word 0xbe1:word 0x874
000009EA  C47E04            les di,word [bp+0x4]
000009ED  897EF6            mov [bp-0xa],di
000009F0  8C46F8            mov word [bp-0x8],es
000009F3  C47EF6            les di,word [bp-0xa]
000009F6  26807D0F00        cmp byte [es:di+0xf],0x0
000009FB  742C              jz 0xa29
000009FD  C47EF6            les di,word [bp-0xa]
00000A00  81C71000          add di,0x10
00000A04  06                push es
00000A05  57                push di
00000A06  C47EF6            les di,word [bp-0xa]
00000A09  26FF35            push word [es:di]
00000A0C  C47EF6            les di,word [bp-0xa]
00000A0F  26FF7502          push word [es:di+0x2]
00000A13  C47EF6            les di,word [bp-0xa]
00000A16  26FF7504          push word [es:di+0x4]
00000A1A  C47EF6            les di,word [bp-0xa]
00000A1D  26FF7506          push word [es:di+0x6]
00000A21  B001              mov al,0x1
00000A23  50                push ax
00000A24  9A091D430E        call word 0xe43:word 0x1d09
00000A29  C47EF6            les di,word [bp-0xa]
00000A2C  26FF750A          push word [es:di+0xa]
00000A30  C47EF6            les di,word [bp-0xa]
00000A33  26FF750A          push word [es:di+0xa]
00000A37  B000              mov al,0x0
00000A39  50                push ax
00000A3A  0E                push cs
00000A3B  E812F6            call 0x50
00000A3E  B80100            mov ax,0x1
00000A41  50                push ax
00000A42  9AA32B430E        call word 0xe43:word 0x2ba3
00000A47  C47EF6            les di,word [bp-0xa]
00000A4A  26FF35            push word [es:di]
00000A4D  C47EF6            les di,word [bp-0xa]
00000A50  26FF7502          push word [es:di+0x2]
00000A54  C47EF6            les di,word [bp-0xa]
00000A57  26FF7504          push word [es:di+0x4]
00000A5B  C47EF6            les di,word [bp-0xa]
00000A5E  26FF7506          push word [es:di+0x6]
00000A62  9A0124430E        call word 0xe43:word 0x2401
00000A67  C47EF6            les di,word [bp-0xa]
00000A6A  26FF7508          push word [es:di+0x8]
00000A6E  9A7F1A430E        call word 0xe43:word 0x1a7f
00000A73  C47EF6            les di,word [bp-0xa]
00000A76  26FF35            push word [es:di]
00000A79  C47EF6            les di,word [bp-0xa]
00000A7C  26FF7502          push word [es:di+0x2]
00000A80  C47EF6            les di,word [bp-0xa]
00000A83  26FF7504          push word [es:di+0x4]
00000A87  C47EF6            les di,word [bp-0xa]
00000A8A  26FF7506          push word [es:di+0x6]
00000A8E  9A3B23430E        call word 0xe43:word 0x233b
00000A93  C47EF6            les di,word [bp-0xa]
00000A96  268B4504          mov ax,[es:di+0x4]
00000A9A  C47EF6            les di,word [bp-0xa]
00000A9D  99                cwd
00000A9E  26F77D0C          idiv word [es:di+0xc]
00000AA2  8946FC            mov [bp-0x4],ax
00000AA5  C47EF6            les di,word [bp-0xa]
00000AA8  268B4506          mov ax,[es:di+0x6]
00000AAC  C47EF6            les di,word [bp-0xa]
00000AAF  99                cwd
00000AB0  26F77D0C          idiv word [es:di+0xc]
00000AB4  8946FE            mov [bp-0x2],ax
00000AB7  C47EF6            les di,word [bp-0xa]
00000ABA  268B450C          mov ax,[es:di+0xc]
00000ABE  48                dec ax
00000ABF  8946F4            mov [bp-0xc],ax
00000AC2  B80100            mov ax,0x1
00000AC5  3B46F4            cmp ax,[bp-0xc]
00000AC8  7E03              jng 0xacd
00000ACA  E9B300            jmp 0xb80
00000ACD  8946FA            mov [bp-0x6],ax
00000AD0  EB03              jmp 0xad5
00000AD2  FF46FA            inc word [bp-0x6]
00000AD5  C47EF6            les di,word [bp-0xa]
00000AD8  26807D0E00        cmp byte [es:di+0xe],0x0
00000ADD  744C              jz 0xb2b
00000ADF  8B46FC            mov ax,[bp-0x4]
00000AE2  F76EFA            imul word [bp-0x6]
00000AE5  C47EF6            les di,word [bp-0xa]
00000AE8  260305            add ax,[es:di]
00000AEB  50                push ax
00000AEC  B80100            mov ax,0x1
00000AEF  50                push ax
00000AF0  0E                push cs
00000AF1  E834F5            call 0x28
00000AF4  C47EF6            les di,word [bp-0xa]
00000AF7  26034502          add ax,[es:di+0x2]
00000AFB  50                push ax
00000AFC  8B46FC            mov ax,[bp-0x4]
00000AFF  F76EFA            imul word [bp-0x6]
00000B02  C47EF6            les di,word [bp-0xa]
00000B05  260305            add ax,[es:di]
00000B08  50                push ax
00000B09  B80100            mov ax,0x1
00000B0C  50                push ax
00000B0D  0E                push cs
00000B0E  E817F5            call 0x28
00000B11  8BD0              mov dx,ax
00000B13  C47EF6            les di,word [bp-0xa]
00000B16  268B4502          mov ax,[es:di+0x2]
00000B1A  C47EF6            les di,word [bp-0xa]
00000B1D  26034506          add ax,[es:di+0x6]
00000B21  2BC2              sub ax,dx
00000B23  50                push ax
00000B24  9AAC07430E        call word 0xe43:word 0x7ac
00000B29  EB4A              jmp 0xb75
00000B2B  B80100            mov ax,0x1
00000B2E  50                push ax
00000B2F  0E                push cs
00000B30  E8CDF4            call 0x0
00000B33  C47EF6            les di,word [bp-0xa]
00000B36  260305            add ax,[es:di]
00000B39  50                push ax
00000B3A  8B46FE            mov ax,[bp-0x2]
00000B3D  F76EFA            imul word [bp-0x6]
00000B40  C47EF6            les di,word [bp-0xa]
00000B43  26034502          add ax,[es:di+0x2]
00000B47  50                push ax
00000B48  B80100            mov ax,0x1
00000B4B  50                push ax
00000B4C  0E                push cs
00000B4D  E8B0F4            call 0x0
00000B50  8BD0              mov dx,ax
00000B52  C47EF6            les di,word [bp-0xa]
00000B55  268B05            mov ax,[es:di]
00000B58  C47EF6            les di,word [bp-0xa]
00000B5B  26034504          add ax,[es:di+0x4]
00000B5F  2BC2              sub ax,dx
00000B61  50                push ax
00000B62  8B46FE            mov ax,[bp-0x2]
00000B65  F76EFA            imul word [bp-0x6]
00000B68  C47EF6            les di,word [bp-0xa]
00000B6B  26034502          add ax,[es:di+0x2]
00000B6F  50                push ax
00000B70  9AAC07430E        call word 0xe43:word 0x7ac
00000B75  8B46FA            mov ax,[bp-0x6]
00000B78  3B46F4            cmp ax,[bp-0xc]
00000B7B  7403              jz 0xb80
00000B7D  E952FF            jmp 0xad2
00000B80  C47EF6            les di,word [bp-0xa]
00000B83  268B450C          mov ax,[es:di+0xc]
00000B87  8946F4            mov [bp-0xc],ax
00000B8A  B80100            mov ax,0x1
00000B8D  3B46F4            cmp ax,[bp-0xc]
00000B90  7E03              jng 0xb95
00000B92  E9FF00            jmp 0xc94
00000B95  8946FA            mov [bp-0x6],ax
00000B98  EB03              jmp 0xb9d
00000B9A  FF46FA            inc word [bp-0x6]
00000B9D  C47EF6            les di,word [bp-0xa]
00000BA0  26807D0E00        cmp byte [es:di+0xe],0x0
00000BA5  7466              jz 0xc0d
00000BA7  B80400            mov ax,0x4
00000BAA  50                push ax
00000BAB  0E                push cs
00000BAC  E851F4            call 0x0
00000BAF  8BC8              mov cx,ax
00000BB1  8B46FA            mov ax,[bp-0x6]
00000BB4  BA1600            mov dx,0x16
00000BB7  F7E2              mul dx
00000BB9  C47EF6            les di,word [bp-0xa]
00000BBC  03F8              add di,ax
00000BBE  268A45FE          mov al,[es:di-0x2]
00000BC2  30E4              xor ah,ah
00000BC4  F7E9              imul cx
00000BC6  8BD8              mov bx,ax
00000BC8  8B46FC            mov ax,[bp-0x4]
00000BCB  99                cwd
00000BCC  B90200            mov cx,0x2
00000BCF  F7F9              idiv cx
00000BD1  8BC8              mov cx,ax
00000BD3  8B46FA            mov ax,[bp-0x6]
00000BD6  48                dec ax
00000BD7  F76EFC            imul word [bp-0x4]
00000BDA  C47EF6            les di,word [bp-0xa]
00000BDD  260305            add ax,[es:di]
00000BE0  03C1              add ax,cx
00000BE2  2BC3              sub ax,bx
00000BE4  50                push ax
00000BE5  B80700            mov ax,0x7
00000BE8  50                push ax
00000BE9  0E                push cs
00000BEA  E83BF4            call 0x28
00000BED  8BD8              mov bx,ax
00000BEF  C47EF6            les di,word [bp-0xa]
00000BF2  268B4506          mov ax,[es:di+0x6]
00000BF6  99                cwd
00000BF7  B90200            mov cx,0x2
00000BFA  F7F9              idiv cx
00000BFC  C47EF6            les di,word [bp-0xa]
00000BFF  26034502          add ax,[es:di+0x2]
00000C03  03C3              add ax,bx
00000C05  50                push ax
00000C06  9A8A1B430E        call word 0xe43:word 0x1b8a
00000C0B  EB64              jmp 0xc71
00000C0D  B80400            mov ax,0x4
00000C10  50                push ax
00000C11  0E                push cs
00000C12  E8EBF3            call 0x0
00000C15  8BC8              mov cx,ax
00000C17  8B46FA            mov ax,[bp-0x6]
00000C1A  BA1600            mov dx,0x16
00000C1D  F7E2              mul dx
00000C1F  C47EF6            les di,word [bp-0xa]
00000C22  03F8              add di,ax
00000C24  268A45FE          mov al,[es:di-0x2]
00000C28  30E4              xor ah,ah
00000C2A  F7E9              imul cx
00000C2C  8BD8              mov bx,ax
00000C2E  C47EF6            les di,word [bp-0xa]
00000C31  268B4504          mov ax,[es:di+0x4]
00000C35  99                cwd
00000C36  B90200            mov cx,0x2
00000C39  F7F9              idiv cx
00000C3B  C47EF6            les di,word [bp-0xa]
00000C3E  260305            add ax,[es:di]
00000C41  2BC3              sub ax,bx
00000C43  50                push ax
00000C44  B80700            mov ax,0x7
00000C47  50                push ax
00000C48  0E                push cs
00000C49  E8DCF3            call 0x28
00000C4C  8BD8              mov bx,ax
00000C4E  8B46FE            mov ax,[bp-0x2]
00000C51  99                cwd
00000C52  B90200            mov cx,0x2
00000C55  F7F9              idiv cx
00000C57  8BC8              mov cx,ax
00000C59  8B46FA            mov ax,[bp-0x6]
00000C5C  48                dec ax
00000C5D  F76EFE            imul word [bp-0x2]
00000C60  C47EF6            les di,word [bp-0xa]
00000C63  26034502          add ax,[es:di+0x2]
00000C67  03C1              add ax,cx
00000C69  03C3              add ax,bx
00000C6B  50                push ax
00000C6C  9A8A1B430E        call word 0xe43:word 0x1b8a
00000C71  8B46FA            mov ax,[bp-0x6]
00000C74  BA1600            mov dx,0x16
00000C77  F7E2              mul dx
00000C79  C47EF6            les di,word [bp-0xa]
00000C7C  03F8              add di,ax
00000C7E  81C7FEFF          add di,0xfffe
00000C82  06                push es
00000C83  57                push di
00000C84  9AE010430E        call word 0xe43:word 0x10e0
00000C89  8B46FA            mov ax,[bp-0x6]
00000C8C  3B46F4            cmp ax,[bp-0xc]
00000C8F  7403              jz 0xc94
00000C91  E906FF            jmp 0xb9a
00000C94  9A4808E10B        call word 0xbe1:word 0x848
00000C99  89EC              mov sp,bp
00000C9B  5D                pop bp
00000C9C  C20400            ret word 0x4
00000C9F  55                push bp
00000CA0  89E5              mov bp,sp
00000CA2  B000              mov al,0x0
00000CA4  50                push ax
00000CA5  9A3A1B430E        call word 0xe43:word 0x1b3a
00000CAA  C47E04            les di,word [bp+0x4]
00000CAD  26807D0F00        cmp byte [es:di+0xf],0x0
00000CB2  7420              jz 0xcd4
00000CB4  C47E04            les di,word [bp+0x4]
00000CB7  81C71000          add di,0x10
00000CBB  06                push es
00000CBC  57                push di
00000CBD  C47E04            les di,word [bp+0x4]
00000CC0  26FF35            push word [es:di]
00000CC3  C47E04            les di,word [bp+0x4]
00000CC6  26FF7502          push word [es:di+0x2]
00000CCA  B001              mov al,0x1
00000CCC  50                push ax
00000CCD  9AAF20430E        call word 0xe43:word 0x20af
00000CD2  EB2C              jmp 0xd00
00000CD4  C47E08            les di,word [bp+0x8]
00000CD7  26FF7540          push word [es:di+0x40]
00000CDB  9A7F1A430E        call word 0xe43:word 0x1a7f
00000CE0  C47E04            les di,word [bp+0x4]
00000CE3  26FF35            push word [es:di]
00000CE6  C47E04            les di,word [bp+0x4]
00000CE9  26FF7502          push word [es:di+0x2]
00000CED  C47E04            les di,word [bp+0x4]
00000CF0  26FF7504          push word [es:di+0x4]
00000CF4  C47E04            les di,word [bp+0x4]
00000CF7  26FF7506          push word [es:di+0x6]
00000CFB  9A0124430E        call word 0xe43:word 0x2401
00000D00  89EC              mov sp,bp
00000D02  5D                pop bp
00000D03  C20800            ret word 0x8
00000D06  55                push bp
00000D07  89E5              mov bp,sp
00000D09  83EC38            sub sp,0x38
00000D0C  C4460E            les ax,word [bp+0xe]
00000D0F  8CC2              mov dx,es
00000D11  A3F259            mov [0x59f2],ax
00000D14  8916F459          mov [0x59f4],dx
00000D18  C47E0E            les di,word [bp+0xe]
00000D1B  06                push es
00000D1C  57                push di
00000D1D  FF760C            push word [bp+0xc]
00000D20  FF760A            push word [bp+0xa]
00000D23  FF7608            push word [bp+0x8]
00000D26  FF7606            push word [bp+0x6]
00000D29  9A6C02430E        call word 0xe43:word 0x26c
00000D2E  C47E0E            les di,word [bp+0xe]
00000D31  06                push es
00000D32  57                push di
00000D33  9A4004430E        call word 0xe43:word 0x440
00000D38  31C0              xor ax,ax
00000D3A  50                push ax
00000D3B  8B4606            mov ax,[bp+0x6]
00000D3E  48                dec ax
00000D3F  50                push ax
00000D40  FF7608            push word [bp+0x8]
00000D43  8B4606            mov ax,[bp+0x6]
00000D46  F7D8              neg ax
00000D48  50                push ax
00000D49  9AE404430E        call word 0xe43:word 0x4e4
00000D4E  8B460C            mov ax,[bp+0xc]
00000D51  C47E0E            les di,word [bp+0xe]
00000D54  26894534          mov [es:di+0x34],ax
00000D58  8B4606            mov ax,[bp+0x6]
00000D5B  F7D8              neg ax
00000D5D  40                inc ax
00000D5E  C47E0E            les di,word [bp+0xe]
00000D61  26894536          mov [es:di+0x36],ax
00000D65  8B4608            mov ax,[bp+0x8]
00000D68  C47E0E            les di,word [bp+0xe]
00000D6B  26894538          mov [es:di+0x38],ax
00000D6F  8B4606            mov ax,[bp+0x6]
00000D72  C47E0E            les di,word [bp+0xe]
00000D75  2689453A          mov [es:di+0x3a],ax
00000D79  C47E0E            les di,word [bp+0xe]
00000D7C  06                push es
00000D7D  57                push di
00000D7E  8D7ECC            lea di,[bp-0x34]
00000D81  16                push ss
00000D82  57                push di
00000D83  B83400            mov ax,0x34
00000D86  50                push ax
00000D87  9AC002561A        call word 0x1a56:word 0x2c0
00000D8C  C47E0E            les di,word [bp+0xe]
00000D8F  26807D4200        cmp byte [es:di+0x42],0x0
00000D94  741D              jz 0xdb3
00000D96  C47E0E            les di,word [bp+0xe]
00000D99  26FF7540          push word [es:di+0x40]
00000D9D  9A7F1A430E        call word 0xe43:word 0x1a7f
00000DA2  31C0              xor ax,ax
00000DA4  50                push ax
00000DA5  31C0              xor ax,ax
00000DA7  50                push ax
00000DA8  FF7608            push word [bp+0x8]
00000DAB  FF7606            push word [bp+0x6]
00000DAE  9A0124430E        call word 0xe43:word 0x2401
00000DB3  C47E0E            les di,word [bp+0xe]
00000DB6  26837D3C00        cmp word [es:di+0x3c],0x0
00000DBB  7E59              jng 0xe16
00000DBD  C47E0E            les di,word [bp+0xe]
00000DC0  26FF753E          push word [es:di+0x3e]
00000DC4  B8FFFF            mov ax,0xffff
00000DC7  50                push ax
00000DC8  B000              mov al,0x0
00000DCA  50                push ax
00000DCB  0E                push cs
00000DCC  E881F2            call 0x50
00000DCF  C47E0E            les di,word [bp+0xe]
00000DD2  268B453C          mov ax,[es:di+0x3c]
00000DD6  48                dec ax
00000DD7  8946C8            mov [bp-0x38],ax
00000DDA  31C0              xor ax,ax
00000DDC  3B46C8            cmp ax,[bp-0x38]
00000DDF  7F35              jg 0xe16
00000DE1  8946CA            mov [bp-0x36],ax
00000DE4  EB03              jmp 0xde9
00000DE6  FF46CA            inc word [bp-0x36]
00000DE9  FF76CA            push word [bp-0x36]
00000DEC  FF76CA            push word [bp-0x36]
00000DEF  8B46CA            mov ax,[bp-0x36]
00000DF2  D1E0              shl ax,1
00000DF4  8BD0              mov dx,ax
00000DF6  8B4608            mov ax,[bp+0x8]
00000DF9  2BC2              sub ax,dx
00000DFB  50                push ax
00000DFC  8B46CA            mov ax,[bp-0x36]
00000DFF  D1E0              shl ax,1
00000E01  8BD0              mov dx,ax
00000E03  8B4606            mov ax,[bp+0x6]
00000E06  2BC2              sub ax,dx
00000E08  50                push ax
00000E09  9A3B23430E        call word 0xe43:word 0x233b
00000E0E  8B46CA            mov ax,[bp-0x36]
00000E11  3B46C8            cmp ax,[bp-0x38]
00000E14  75D0              jnz 0xde6
00000E16  C47E0E            les di,word [bp+0xe]
00000E19  268B454B          mov ax,[es:di+0x4b]
00000E1D  260B454D          or ax,[es:di+0x4d]
00000E21  740E              jz 0xe31
00000E23  C47E0E            les di,word [bp+0xe]
00000E26  26FF754D          push word [es:di+0x4d]
00000E2A  26FF754B          push word [es:di+0x4b]
00000E2E  E8AEFB            call 0x9df
00000E31  FF7610            push word [bp+0x10]
00000E34  FF760E            push word [bp+0xe]
00000E37  C47E0E            les di,word [bp+0xe]
00000E3A  26FF7545          push word [es:di+0x45]
00000E3E  26FF7543          push word [es:di+0x43]
00000E42  31C0              xor ax,ax
00000E44  50                push ax
00000E45  31C0              xor ax,ax
00000E47  50                push ax
00000E48  E8A2F2            call 0xed
00000E4B  C47E0E            les di,word [bp+0xe]
00000E4E  268B4547          mov ax,[es:di+0x47]
00000E52  260B4549          or ax,[es:di+0x49]
00000E56  7415              jz 0xe6d
00000E58  FF7610            push word [bp+0x10]
00000E5B  FF760E            push word [bp+0xe]
00000E5E  C47E0E            les di,word [bp+0xe]
00000E61  26FF7549          push word [es:di+0x49]
00000E65  26FF7547          push word [es:di+0x47]
00000E69  0E                push cs
00000E6A  E879F8            call 0x6e6
00000E6D  8D7ECC            lea di,[bp-0x34]
00000E70  16                push ss
00000E71  57                push di
00000E72  C47E0E            les di,word [bp+0xe]
00000E75  06                push es
00000E76  57                push di
00000E77  B83400            mov ax,0x34
00000E7A  50                push ax
00000E7B  9AC002561A        call word 0x1a56:word 0x2c0
00000E80  C47E0E            les di,word [bp+0xe]
00000E83  06                push es
00000E84  57                push di
00000E85  9A4004430E        call word 0xe43:word 0x440
00000E8A  89EC              mov sp,bp
00000E8C  5D                pop bp
00000E8D  CA0C00            retf word 0xc
00000E90  55                push bp
00000E91  89E5              mov bp,sp
00000E93  83EC01            sub sp,0x1
00000E96  8B4606            mov ax,[bp+0x6]
00000E99  3B460E            cmp ax,[bp+0xe]
00000E9C  7C1E              jl 0xebc
00000E9E  8B460E            mov ax,[bp+0xe]
00000EA1  03460A            add ax,[bp+0xa]
00000EA4  3B4606            cmp ax,[bp+0x6]
00000EA7  7E13              jng 0xebc
00000EA9  8B4604            mov ax,[bp+0x4]
00000EAC  3B460C            cmp ax,[bp+0xc]
00000EAF  7C0B              jl 0xebc
00000EB1  8B460C            mov ax,[bp+0xc]
00000EB4  034608            add ax,[bp+0x8]
00000EB7  3B4604            cmp ax,[bp+0x4]
00000EBA  7F04              jg 0xec0
00000EBC  B000              mov al,0x0
00000EBE  EB02              jmp 0xec2
00000EC0  B001              mov al,0x1
00000EC2  8846FF            mov [bp-0x1],al
00000EC5  8A46FF            mov al,[bp-0x1]
00000EC8  89EC              mov sp,bp
00000ECA  5D                pop bp
00000ECB  C20C00            ret word 0xc
00000ECE  55                push bp
00000ECF  89E5              mov bp,sp
00000ED1  83EC08            sub sp,0x8
00000ED4  C47E04            les di,word [bp+0x4]
00000ED7  897EF8            mov [bp-0x8],di
00000EDA  8C46FA            mov word [bp-0x6],es
00000EDD  B002              mov al,0x2
00000EDF  50                push ax
00000EE0  9A3A1B430E        call word 0xe43:word 0x1b3a
00000EE5  C47EF8            les di,word [bp-0x8]
00000EE8  268B4504          mov ax,[es:di+0x4]
00000EEC  C47EF8            les di,word [bp-0x8]
00000EEF  99                cwd
00000EF0  26F77D0C          idiv word [es:di+0xc]
00000EF4  8946FC            mov [bp-0x4],ax
00000EF7  C47EF8            les di,word [bp-0x8]
00000EFA  268B4506          mov ax,[es:di+0x6]
00000EFE  C47EF8            les di,word [bp-0x8]
00000F01  99                cwd
00000F02  26F77D0C          idiv word [es:di+0xc]
00000F06  8946FE            mov [bp-0x2],ax
00000F09  C47EF8            les di,word [bp-0x8]
00000F0C  26807D0E00        cmp byte [es:di+0xe],0x0
00000F11  7426              jz 0xf39
00000F13  8B4608            mov ax,[bp+0x8]
00000F16  48                dec ax
00000F17  F76EFC            imul word [bp-0x4]
00000F1A  C47EF8            les di,word [bp-0x8]
00000F1D  260305            add ax,[es:di]
00000F20  50                push ax
00000F21  C47EF8            les di,word [bp-0x8]
00000F24  26FF7502          push word [es:di+0x2]
00000F28  FF76FC            push word [bp-0x4]
00000F2B  C47EF8            les di,word [bp-0x8]
00000F2E  26FF7506          push word [es:di+0x6]
00000F32  9A0124430E        call word 0xe43:word 0x2401
00000F37  EB24              jmp 0xf5d
00000F39  C47EF8            les di,word [bp-0x8]
00000F3C  26FF35            push word [es:di]
00000F3F  8B4608            mov ax,[bp+0x8]
00000F42  48                dec ax
00000F43  F76EFE            imul word [bp-0x2]
00000F46  C47EF8            les di,word [bp-0x8]
00000F49  26034502          add ax,[es:di+0x2]
00000F4D  50                push ax
00000F4E  C47EF8            les di,word [bp-0x8]
00000F51  26FF7504          push word [es:di+0x4]
00000F55  FF76FE            push word [bp-0x2]
00000F58  9A0124430E        call word 0xe43:word 0x2401
00000F5D  89EC              mov sp,bp
00000F5F  5D                pop bp
00000F60  C20600            ret word 0x6
00000F63  55                push bp
00000F64  89E5              mov bp,sp
00000F66  83EC0A            sub sp,0xa
00000F69  C47E04            les di,word [bp+0x4]
00000F6C  897EF6            mov [bp-0xa],di
00000F6F  8C46F8            mov word [bp-0x8],es
00000F72  C47EF6            les di,word [bp-0xa]
00000F75  268B4504          mov ax,[es:di+0x4]
00000F79  C47EF6            les di,word [bp-0xa]
00000F7C  99                cwd
00000F7D  26F77D0C          idiv word [es:di+0xc]
00000F81  8946FA            mov [bp-0x6],ax
00000F84  C47EF6            les di,word [bp-0xa]
00000F87  268B4506          mov ax,[es:di+0x6]
00000F8B  C47EF6            les di,word [bp-0xa]
00000F8E  99                cwd
00000F8F  26F77D0C          idiv word [es:di+0xc]
00000F93  8946FC            mov [bp-0x4],ax
00000F96  C47EF6            les di,word [bp-0xa]
00000F99  26FF35            push word [es:di]
00000F9C  C47EF6            les di,word [bp-0xa]
00000F9F  26FF7502          push word [es:di+0x2]
00000FA3  C47EF6            les di,word [bp-0xa]
00000FA6  26FF7504          push word [es:di+0x4]
00000FAA  C47EF6            les di,word [bp-0xa]
00000FAD  26FF7506          push word [es:di+0x6]
00000FB1  FF36F859          push word [0x59f8]
00000FB5  FF36FA59          push word [0x59fa]
00000FB9  E8D4FE            call 0xe90
00000FBC  08C0              or al,al
00000FBE  7507              jnz 0xfc7
00000FC0  31C0              xor ax,ax
00000FC2  8946FE            mov [bp-0x2],ax
00000FC5  EB2F              jmp 0xff6
00000FC7  C47EF6            les di,word [bp-0xa]
00000FCA  26807D0E00        cmp byte [es:di+0xe],0x0
00000FCF  7413              jz 0xfe4
00000FD1  A1F859            mov ax,[0x59f8]
00000FD4  C47EF6            les di,word [bp-0xa]
00000FD7  262B05            sub ax,[es:di]
00000FDA  99                cwd
00000FDB  F77EFA            idiv word [bp-0x6]
00000FDE  40                inc ax
00000FDF  8946FE            mov [bp-0x2],ax
00000FE2  EB12              jmp 0xff6
00000FE4  A1FA59            mov ax,[0x59fa]
00000FE7  C47EF6            les di,word [bp-0xa]
00000FEA  262B4502          sub ax,[es:di+0x2]
00000FEE  99                cwd
00000FEF  F77EFC            idiv word [bp-0x4]
00000FF2  40                inc ax
00000FF3  8946FE            mov [bp-0x2],ax
00000FF6  8B46FE            mov ax,[bp-0x2]
00000FF9  89EC              mov sp,bp
00000FFB  5D                pop bp
00000FFC  C20400            ret word 0x4
00000FFF  55                push bp
00001000  89E5              mov bp,sp
00001002  83EC01            sub sp,0x1
00001005  837E0800          cmp word [bp+0x8],0x0
00001009  742A              jz 0x1035
0000100B  C47E04            les di,word [bp+0x4]
0000100E  26FF35            push word [es:di]
00001011  C47E04            les di,word [bp+0x4]
00001014  26FF7502          push word [es:di+0x2]
00001018  C47E04            les di,word [bp+0x4]
0000101B  26FF7504          push word [es:di+0x4]
0000101F  C47E04            les di,word [bp+0x4]
00001022  26FF7506          push word [es:di+0x6]
00001026  FF36F859          push word [0x59f8]
0000102A  FF36FA59          push word [0x59fa]
0000102E  E85FFE            call 0xe90
00001031  08C0              or al,al
00001033  7404              jz 0x1039
00001035  B000              mov al,0x0
00001037  EB02              jmp 0x103b
00001039  B001              mov al,0x1
0000103B  8846FF            mov [bp-0x1],al
0000103E  8A46FF            mov al,[bp-0x1]
00001041  89EC              mov sp,bp
00001043  5D                pop bp
00001044  C20600            ret word 0x6
00001047  55                push bp
00001048  89E5              mov bp,sp
0000104A  83EC01            sub sp,0x1
0000104D  FF760A            push word [bp+0xa]
00001050  FF7608            push word [bp+0x8]
00001053  E80DFF            call 0xf63
00001056  C47E04            les di,word [bp+0x4]
00001059  268905            mov [es:di],ax
0000105C  C47E04            les di,word [bp+0x4]
0000105F  26833D00          cmp word [es:di],0x0
00001063  7506              jnz 0x106b
00001065  C646FF00          mov byte [bp-0x1],0x0
00001069  EB14              jmp 0x107f
0000106B  8B460C            mov ax,[bp+0xc]
0000106E  C47E04            les di,word [bp+0x4]
00001071  263B05            cmp ax,[es:di]
00001074  7504              jnz 0x107a
00001076  B000              mov al,0x0
00001078  EB02              jmp 0x107c
0000107A  B001              mov al,0x1
0000107C  8846FF            mov [bp-0x1],al
0000107F  8A46FF            mov al,[bp-0x1]
00001082  89EC              mov sp,bp
00001084  5D                pop bp
00001085  C20A00            ret word 0xa
00001088  55                push bp
00001089  89E5              mov bp,sp
0000108B  83EC01            sub sp,0x1
0000108E  837E0800          cmp word [bp+0x8],0x0
00001092  742A              jz 0x10be
00001094  C47E04            les di,word [bp+0x4]
00001097  26FF35            push word [es:di]
0000109A  C47E04            les di,word [bp+0x4]
0000109D  26FF7502          push word [es:di+0x2]
000010A1  C47E04            les di,word [bp+0x4]
000010A4  26FF7504          push word [es:di+0x4]
000010A8  C47E04            les di,word [bp+0x4]
000010AB  26FF7506          push word [es:di+0x6]
000010AF  FF36F859          push word [0x59f8]
000010B3  FF36FA59          push word [0x59fa]
000010B7  E8D6FD            call 0xe90
000010BA  08C0              or al,al
000010BC  7404              jz 0x10c2
000010BE  B000              mov al,0x0
000010C0  EB02              jmp 0x10c4
000010C2  B001              mov al,0x1
000010C4  8846FF            mov [bp-0x1],al
000010C7  8A46FF            mov al,[bp-0x1]
000010CA  89EC              mov sp,bp
000010CC  5D                pop bp
000010CD  C20600            ret word 0x6
000010D0  55                push bp
000010D1  89E5              mov bp,sp
000010D3  83EC01            sub sp,0x1
000010D6  8B4608            mov ax,[bp+0x8]
000010D9  0B460A            or ax,[bp+0xa]
000010DC  7506              jnz 0x10e4
000010DE  C646FF00          mov byte [bp-0x1],0x0
000010E2  EB32              jmp 0x1116
000010E4  FF760A            push word [bp+0xa]
000010E7  FF7608            push word [bp+0x8]
000010EA  E876FE            call 0xf63
000010ED  C47E04            les di,word [bp+0x4]
000010F0  268905            mov [es:di],ax
000010F3  C47E04            les di,word [bp+0x4]
000010F6  26833D00          cmp word [es:di],0x0
000010FA  7506              jnz 0x1102
000010FC  C646FF00          mov byte [bp-0x1],0x0
00001100  EB14              jmp 0x1116
00001102  8B460C            mov ax,[bp+0xc]
00001105  C47E04            les di,word [bp+0x4]
00001108  263B05            cmp ax,[es:di]
0000110B  7504              jnz 0x1111
0000110D  B000              mov al,0x0
0000110F  EB02              jmp 0x1113
00001111  B001              mov al,0x1
00001113  8846FF            mov [bp-0x1],al
00001116  8A46FF            mov al,[bp-0x1]
00001119  89EC              mov sp,bp
0000111B  5D                pop bp
0000111C  C20A00            ret word 0xa
0000111F  55                push bp
00001120  89E5              mov bp,sp
00001122  83EC17            sub sp,0x17
00001125  C47E04            les di,word [bp+0x4]
00001128  26FF7508          push word [es:di+0x8]
0000112C  9A7F1A430E        call word 0xe43:word 0x1a7f
00001131  31C0              xor ax,ax
00001133  8946F6            mov [bp-0xa],ax
00001136  31C0              xor ax,ax
00001138  8946F8            mov [bp-0x8],ax
0000113B  31C0              xor ax,ax
0000113D  8946FA            mov [bp-0x6],ax
00001140  8946FC            mov [bp-0x4],ax
00001143  C646E901          mov byte [bp-0x17],0x1
00001147  807EE900          cmp byte [bp-0x17],0x0
0000114B  7503              jnz 0x1150
0000114D  E9DE01            jmp 0x132e
00001150  FF76F6            push word [bp-0xa]
00001153  FF7606            push word [bp+0x6]
00001156  FF7604            push word [bp+0x4]
00001159  E8A3FE            call 0xfff
0000115C  08C0              or al,al
0000115E  7413              jz 0x1173
00001160  FF76F6            push word [bp-0xa]
00001163  FF7606            push word [bp+0x6]
00001166  FF7604            push word [bp+0x4]
00001169  E862FD            call 0xece
0000116C  31C0              xor ax,ax
0000116E  8946F6            mov [bp-0xa],ax
00001171  EB21              jmp 0x1194
00001173  FF76F8            push word [bp-0x8]
00001176  FF76FC            push word [bp-0x4]
00001179  FF76FA            push word [bp-0x6]
0000117C  E809FF            call 0x1088
0000117F  08C0              or al,al
00001181  7411              jz 0x1194
00001183  FF76F8            push word [bp-0x8]
00001186  FF76FC            push word [bp-0x4]
00001189  FF76FA            push word [bp-0x6]
0000118C  E83FFD            call 0xece
0000118F  31C0              xor ax,ax
00001191  8946F8            mov [bp-0x8],ax
00001194  FF76F6            push word [bp-0xa]
00001197  FF7606            push word [bp+0x6]
0000119A  FF7604            push word [bp+0x4]
0000119D  8D7EF4            lea di,[bp-0xc]
000011A0  16                push ss
000011A1  57                push di
000011A2  E8A2FE            call 0x1047
000011A5  08C0              or al,al
000011A7  7503              jnz 0x11ac
000011A9  E99200            jmp 0x123e
000011AC  837EF600          cmp word [bp-0xa],0x0
000011B0  740C              jz 0x11be
000011B2  FF76F6            push word [bp-0xa]
000011B5  FF7606            push word [bp+0x6]
000011B8  FF7604            push word [bp+0x4]
000011BB  E810FD            call 0xece
000011BE  8B46F4            mov ax,[bp-0xc]
000011C1  8946F6            mov [bp-0xa],ax
000011C4  8B46F6            mov ax,[bp-0xa]
000011C7  BA1600            mov dx,0x16
000011CA  F7E2              mul dx
000011CC  C47E04            les di,word [bp+0x4]
000011CF  03F8              add di,ax
000011D1  26C44510          les ax,word [es:di+0x10]
000011D5  8CC2              mov dx,es
000011D7  3B56FC            cmp dx,[bp-0x4]
000011DA  7513              jnz 0x11ef
000011DC  3B46FA            cmp ax,[bp-0x6]
000011DF  750E              jnz 0x11ef
000011E1  FF76F6            push word [bp-0xa]
000011E4  FF7606            push word [bp+0x6]
000011E7  FF7604            push word [bp+0x4]
000011EA  E8E1FC            call 0xece
000011ED  EB4D              jmp 0x123c
000011EF  8B46FA            mov ax,[bp-0x6]
000011F2  0B46FC            or ax,[bp-0x4]
000011F5  740F              jz 0x1206
000011F7  FF760A            push word [bp+0xa]
000011FA  FF7608            push word [bp+0x8]
000011FD  FF76FC            push word [bp-0x4]
00001200  FF76FA            push word [bp-0x6]
00001203  E899FA            call 0xc9f
00001206  FF76F6            push word [bp-0xa]
00001209  FF7606            push word [bp+0x6]
0000120C  FF7604            push word [bp+0x4]
0000120F  E8BCFC            call 0xece
00001212  8B46F6            mov ax,[bp-0xa]
00001215  BA1600            mov dx,0x16
00001218  F7E2              mul dx
0000121A  C47E04            les di,word [bp+0x4]
0000121D  03F8              add di,ax
0000121F  26C44510          les ax,word [es:di+0x10]
00001223  8CC2              mov dx,es
00001225  8946FA            mov [bp-0x6],ax
00001228  8956FC            mov [bp-0x4],dx
0000122B  8B46FA            mov ax,[bp-0x6]
0000122E  0B46FC            or ax,[bp-0x4]
00001231  7409              jz 0x123c
00001233  FF76FC            push word [bp-0x4]
00001236  FF76FA            push word [bp-0x6]
00001239  E8A3F7            call 0x9df
0000123C  EB39              jmp 0x1277
0000123E  FF76F8            push word [bp-0x8]
00001241  FF76FC            push word [bp-0x4]
00001244  FF76FA            push word [bp-0x6]
00001247  8D7EF4            lea di,[bp-0xc]
0000124A  16                push ss
0000124B  57                push di
0000124C  E881FE            call 0x10d0
0000124F  08C0              or al,al
00001251  7424              jz 0x1277
00001253  837EF800          cmp word [bp-0x8],0x0
00001257  740C              jz 0x1265
00001259  FF76F8            push word [bp-0x8]
0000125C  FF76FC            push word [bp-0x4]
0000125F  FF76FA            push word [bp-0x6]
00001262  E869FC            call 0xece
00001265  8B46F4            mov ax,[bp-0xc]
00001268  8946F8            mov [bp-0x8],ax
0000126B  FF76F8            push word [bp-0x8]
0000126E  FF76FC            push word [bp-0x4]
00001271  FF76FA            push word [bp-0x6]
00001274  E857FC            call 0xece
00001277  833EF65900        cmp word [0x59f6],0x0
0000127C  7403              jz 0x1281
0000127E  E98400            jmp 0x1305
00001281  837EF600          cmp word [bp-0xa],0x0
00001285  7440              jz 0x12c7
00001287  FF76F6            push word [bp-0xa]
0000128A  FF7606            push word [bp+0x6]
0000128D  FF7604            push word [bp+0x4]
00001290  E83BFC            call 0xece
00001293  8B46F6            mov ax,[bp-0xa]
00001296  BA1600            mov dx,0x16
00001299  F7E2              mul dx
0000129B  C47E04            les di,word [bp+0x4]
0000129E  03F8              add di,ax
000012A0  268B4510          mov ax,[es:di+0x10]
000012A4  260B4512          or ax,[es:di+0x12]
000012A8  7407              jz 0x12b1
000012AA  31C0              xor ax,ax
000012AC  8946FE            mov [bp-0x2],ax
000012AF  EB14              jmp 0x12c5
000012B1  8B46F6            mov ax,[bp-0xa]
000012B4  BA1600            mov dx,0x16
000012B7  F7E2              mul dx
000012B9  C47E04            les di,word [bp+0x4]
000012BC  03F8              add di,ax
000012BE  268B450E          mov ax,[es:di+0xe]
000012C2  8946FE            mov [bp-0x2],ax
000012C5  EB21              jmp 0x12e8
000012C7  837EF800          cmp word [bp-0x8],0x0
000012CB  7416              jz 0x12e3
000012CD  8B46F8            mov ax,[bp-0x8]
000012D0  BA1600            mov dx,0x16
000012D3  F7E2              mul dx
000012D5  C47EFA            les di,word [bp-0x6]
000012D8  03F8              add di,ax
000012DA  268B450E          mov ax,[es:di+0xe]
000012DE  8946FE            mov [bp-0x2],ax
000012E1  EB05              jmp 0x12e8
000012E3  31C0              xor ax,ax
000012E5  8946FE            mov [bp-0x2],ax
000012E8  8B46FA            mov ax,[bp-0x6]
000012EB  0B46FC            or ax,[bp-0x4]
000012EE  740F              jz 0x12ff
000012F0  FF760A            push word [bp+0xa]
000012F3  FF7608            push word [bp+0x8]
000012F6  FF76FC            push word [bp-0x4]
000012F9  FF76FA            push word [bp-0x6]
000012FC  E8A0F9            call 0xc9f
000012FF  C646E900          mov byte [bp-0x17],0x0
00001303  EB26              jmp 0x132b
00001305  8D7EEA            lea di,[bp-0x16]
00001308  16                push ss
00001309  57                push di
0000130A  9AE302E10B        call word 0xbe1:word 0x2e3
0000130F  9AB202E10B        call word 0xbe1:word 0x2b2
00001314  09C0              or ax,ax
00001316  75ED              jnz 0x1305
00001318  8B46EE            mov ax,[bp-0x12]
0000131B  A3F859            mov [0x59f8],ax
0000131E  8B46F0            mov ax,[bp-0x10]
00001321  A3FA59            mov [0x59fa],ax
00001324  8A46ED            mov al,[bp-0x13]
00001327  98                cbw
00001328  A3F659            mov [0x59f6],ax
0000132B  E919FE            jmp 0x1147
0000132E  8B46FE            mov ax,[bp-0x2]
00001331  89EC              mov sp,bp
00001333  5D                pop bp
00001334  C20800            ret word 0x8
00001337  55                push bp
00001338  89E5              mov bp,sp
0000133A  83EC3D            sub sp,0x3d
0000133D  C44606            les ax,word [bp+0x6]
00001340  8CC2              mov dx,es
00001342  A3F259            mov [0x59f2],ax
00001345  8916F459          mov [0x59f4],dx
00001349  9AB202E10B        call word 0xbe1:word 0x2b2
0000134E  09C0              or ax,ax
00001350  7703              ja 0x1355
00001352  E99502            jmp 0x15ea
00001355  8D7EE7            lea di,[bp-0x19]
00001358  16                push ss
00001359  57                push di
0000135A  9AE302E10B        call word 0xbe1:word 0x2e3
0000135F  9AB202E10B        call word 0xbe1:word 0x2b2
00001364  09C0              or ax,ax
00001366  75ED              jnz 0x1355
00001368  8D7EE7            lea di,[bp-0x19]
0000136B  16                push ss
0000136C  57                push di
0000136D  BFB059            mov di,0x59b0
00001370  1E                push ds
00001371  57                push di
00001372  B80A00            mov ax,0xa
00001375  50                push ax
00001376  9AC002561A        call word 0x1a56:word 0x2c0
0000137B  8B46EB            mov ax,[bp-0x15]
0000137E  A3F859            mov [0x59f8],ax
00001381  8B46ED            mov ax,[bp-0x13]
00001384  A3FA59            mov [0x59fa],ax
00001387  8A46EA            mov al,[bp-0x16]
0000138A  98                cbw
0000138B  A3F659            mov [0x59f6],ax
0000138E  807EEA00          cmp byte [bp-0x16],0x0
00001392  7503              jnz 0x1397
00001394  E9C700            jmp 0x145e
00001397  C47E06            les di,word [bp+0x6]
0000139A  268B4547          mov ax,[es:di+0x47]
0000139E  260B4549          or ax,[es:di+0x49]
000013A2  7403              jz 0x13a7
000013A4  E9B700            jmp 0x145e
000013A7  C47E06            les di,word [bp+0x6]
000013AA  268B454B          mov ax,[es:di+0x4b]
000013AE  260B454D          or ax,[es:di+0x4d]
000013B2  7503              jnz 0x13b7
000013B4  E9A700            jmp 0x145e
000013B7  C47E06            les di,word [bp+0x6]
000013BA  26C47D4B          les di,word [es:di+0x4b]
000013BE  897EE3            mov [bp-0x1d],di
000013C1  8C46E5            mov word [bp-0x1b],es
000013C4  C47EE3            les di,word [bp-0x1d]
000013C7  26FF35            push word [es:di]
000013CA  C47EE3            les di,word [bp-0x1d]
000013CD  26FF7502          push word [es:di+0x2]
000013D1  C47EE3            les di,word [bp-0x1d]
000013D4  26FF7504          push word [es:di+0x4]
000013D8  C47EE3            les di,word [bp-0x1d]
000013DB  26FF7506          push word [es:di+0x6]
000013DF  FF36F859          push word [0x59f8]
000013E3  FF36FA59          push word [0x59fa]
000013E7  E8A6FA            call 0xe90
000013EA  08C0              or al,al
000013EC  7470              jz 0x145e
000013EE  8D7EC3            lea di,[bp-0x3d]
000013F1  16                push ss
000013F2  57                push di
000013F3  9AAF08561A        call word 0x1a56:word 0x8af
000013F8  B000              mov al,0x0
000013FA  50                push ax
000013FB  9ABE08561A        call word 0x1a56:word 0x8be
00001400  B002              mov al,0x2
00001402  50                push ax
00001403  9ABE08561A        call word 0x1a56:word 0x8be
00001408  B004              mov al,0x4
0000140A  50                push ax
0000140B  9ABE08561A        call word 0x1a56:word 0x8be
00001410  B006              mov al,0x6
00001412  50                push ax
00001413  9ABE08561A        call word 0x1a56:word 0x8be
00001418  9A1A02E10B        call word 0xbe1:word 0x21a
0000141D  FF7608            push word [bp+0x8]
00001420  FF7606            push word [bp+0x6]
00001423  C47E06            les di,word [bp+0x6]
00001426  26FF754D          push word [es:di+0x4d]
0000142A  26FF754B          push word [es:di+0x4b]
0000142E  E8EEFC            call 0x111f
00001431  8946FE            mov [bp-0x2],ax
00001434  8D7EC3            lea di,[bp-0x3d]
00001437  16                push ss
00001438  57                push di
00001439  9AAF08561A        call word 0x1a56:word 0x8af
0000143E  B001              mov al,0x1
00001440  50                push ax
00001441  9ABE08561A        call word 0x1a56:word 0x8be
00001446  B003              mov al,0x3
00001448  50                push ax
00001449  9ABE08561A        call word 0x1a56:word 0x8be
0000144E  B005              mov al,0x5
00001450  50                push ax
00001451  9ABE08561A        call word 0x1a56:word 0x8be
00001456  9A1A02E10B        call word 0xbe1:word 0x21a
0000145B  E99101            jmp 0x15ef
0000145E  A1F859            mov ax,[0x59f8]
00001461  C47E06            les di,word [bp+0x6]
00001464  262B4534          sub ax,[es:di+0x34]
00001468  8946FA            mov [bp-0x6],ax
0000146B  C47E06            les di,word [bp+0x6]
0000146E  268B4536          mov ax,[es:di+0x36]
00001472  48                dec ax
00001473  C47E06            les di,word [bp+0x6]
00001476  2603453A          add ax,[es:di+0x3a]
0000147A  8BD0              mov dx,ax
0000147C  A1FA59            mov ax,[0x59fa]
0000147F  2BC2              sub ax,dx
00001481  8946FC            mov [bp-0x4],ax
00001484  C646F100          mov byte [bp-0xf],0x0
00001488  C47E06            les di,word [bp+0x6]
0000148B  268B4547          mov ax,[es:di+0x47]
0000148F  260B4549          or ax,[es:di+0x49]
00001493  7503              jnz 0x1498
00001495  E9CC00            jmp 0x1564
00001498  C47E06            les di,word [bp+0x6]
0000149B  26C47D47          les di,word [es:di+0x47]
0000149F  897EE3            mov [bp-0x1d],di
000014A2  8C46E5            mov word [bp-0x1b],es
000014A5  C47EE3            les di,word [bp-0x1d]
000014A8  26FF35            push word [es:di]
000014AB  C47EE3            les di,word [bp-0x1d]
000014AE  26FF7502          push word [es:di+0x2]
000014B2  C47EE3            les di,word [bp-0x1d]
000014B5  26FF7504          push word [es:di+0x4]
000014B9  C47EE3            les di,word [bp-0x1d]
000014BC  26FF7506          push word [es:di+0x6]
000014C0  FF76FA            push word [bp-0x6]
000014C3  FF76FC            push word [bp-0x4]
000014C6  E8C7F9            call 0xe90
000014C9  08C0              or al,al
000014CB  7503              jnz 0x14d0
000014CD  E99200            jmp 0x1562
000014D0  8B46FA            mov ax,[bp-0x6]
000014D3  C47EE3            les di,word [bp-0x1d]
000014D6  262B05            sub ax,[es:di]
000014D9  8946FA            mov [bp-0x6],ax
000014DC  8B46FC            mov ax,[bp-0x4]
000014DF  C47EE3            les di,word [bp-0x1d]
000014E2  262B4502          sub ax,[es:di+0x2]
000014E6  8946FC            mov [bp-0x4],ax
000014E9  C47EE3            les di,word [bp-0x1d]
000014EC  26C4450E          les ax,word [es:di+0xe]
000014F0  8CC2              mov dx,es
000014F2  8946F2            mov [bp-0xe],ax
000014F5  8956F4            mov [bp-0xc],dx
000014F8  8B46F2            mov ax,[bp-0xe]
000014FB  0B46F4            or ax,[bp-0xc]
000014FE  7462              jz 0x1562
00001500  807EF100          cmp byte [bp-0xf],0x0
00001504  755C              jnz 0x1562
00001506  C47EF2            les di,word [bp-0xe]
00001509  897EDF            mov [bp-0x21],di
0000150C  8C46E1            mov word [bp-0x1f],es
0000150F  C47EDF            les di,word [bp-0x21]
00001512  26FF7504          push word [es:di+0x4]
00001516  C47EDF            les di,word [bp-0x21]
00001519  26FF7506          push word [es:di+0x6]
0000151D  C47EDF            les di,word [bp-0x21]
00001520  26FF7508          push word [es:di+0x8]
00001524  C47EDF            les di,word [bp-0x21]
00001527  26FF750A          push word [es:di+0xa]
0000152B  FF76FA            push word [bp-0x6]
0000152E  FF76FC            push word [bp-0x4]
00001531  E85CF9            call 0xe90
00001534  08C0              or al,al
00001536  741A              jz 0x1552
00001538  C47EDF            les di,word [bp-0x21]
0000153B  26837D1E00        cmp word [es:di+0x1e],0x0
00001540  7410              jz 0x1552
00001542  C47EDF            les di,word [bp-0x21]
00001545  268B451E          mov ax,[es:di+0x1e]
00001549  8946FE            mov [bp-0x2],ax
0000154C  C646F101          mov byte [bp-0xf],0x1
00001550  EB0E              jmp 0x1560
00001552  C47EF2            les di,word [bp-0xe]
00001555  26C405            les ax,word [es:di]
00001558  8CC2              mov dx,es
0000155A  8946F2            mov [bp-0xe],ax
0000155D  8956F4            mov [bp-0xc],dx
00001560  EB96              jmp 0x14f8
00001562  EB79              jmp 0x15dd
00001564  C47E06            les di,word [bp+0x6]
00001567  26C44543          les ax,word [es:di+0x43]
0000156B  8CC2              mov dx,es
0000156D  8946F2            mov [bp-0xe],ax
00001570  8956F4            mov [bp-0xc],dx
00001573  8B46F2            mov ax,[bp-0xe]
00001576  0B46F4            or ax,[bp-0xc]
00001579  7462              jz 0x15dd
0000157B  807EF100          cmp byte [bp-0xf],0x0
0000157F  755C              jnz 0x15dd
00001581  C47EF2            les di,word [bp-0xe]
00001584  897EE3            mov [bp-0x1d],di
00001587  8C46E5            mov word [bp-0x1b],es
0000158A  C47EE3            les di,word [bp-0x1d]
0000158D  26FF7504          push word [es:di+0x4]
00001591  C47EE3            les di,word [bp-0x1d]
00001594  26FF7506          push word [es:di+0x6]
00001598  C47EE3            les di,word [bp-0x1d]
0000159B  26FF7508          push word [es:di+0x8]
0000159F  C47EE3            les di,word [bp-0x1d]
000015A2  26FF750A          push word [es:di+0xa]
000015A6  FF76FA            push word [bp-0x6]
000015A9  FF76FC            push word [bp-0x4]
000015AC  E8E1F8            call 0xe90
000015AF  08C0              or al,al
000015B1  741A              jz 0x15cd
000015B3  C47EE3            les di,word [bp-0x1d]
000015B6  26837D1E00        cmp word [es:di+0x1e],0x0
000015BB  7410              jz 0x15cd
000015BD  C47EE3            les di,word [bp-0x1d]
000015C0  268B451E          mov ax,[es:di+0x1e]
000015C4  8946FE            mov [bp-0x2],ax
000015C7  C646F101          mov byte [bp-0xf],0x1
000015CB  EB0E              jmp 0x15db
000015CD  C47EF2            les di,word [bp-0xe]
000015D0  26C405            les ax,word [es:di]
000015D3  8CC2              mov dx,es
000015D5  8946F2            mov [bp-0xe],ax
000015D8  8956F4            mov [bp-0xc],dx
000015DB  EB96              jmp 0x1573
000015DD  807EF100          cmp byte [bp-0xf],0x0
000015E1  7505              jnz 0x15e8
000015E3  31C0              xor ax,ax
000015E5  8946FE            mov [bp-0x2],ax
000015E8  EB05              jmp 0x15ef
000015EA  31C0              xor ax,ax
000015EC  8946FE            mov [bp-0x2],ax
000015EF  8B46FE            mov ax,[bp-0x2]
000015F2  89EC              mov sp,bp
000015F4  5D                pop bp
000015F5  CA0400            retf word 0x4
000015F8  55                push bp
000015F9  89E5              mov bp,sp
000015FB  83EC0A            sub sp,0xa
000015FE  9AB202E10B        call word 0xbe1:word 0x2b2
00001603  50                push ax
00001604  9A6702E10B        call word 0xbe1:word 0x267
00001609  89EC              mov sp,bp
0000160B  5D                pop bp
0000160C  CB                retf
0000160D  55                push bp
0000160E  89E5              mov bp,sp
00001610  83EC04            sub sp,0x4
00001613  0E                push cs
00001614  E8E1FF            call 0x15f8
00001617  FF7608            push word [bp+0x8]
0000161A  FF7606            push word [bp+0x6]
0000161D  0E                push cs
0000161E  E816FD            call 0x1337
00001621  8946FC            mov [bp-0x4],ax
00001624  837EFC00          cmp word [bp-0x4],0x0
00001628  74ED              jz 0x1617
0000162A  8B46FC            mov ax,[bp-0x4]
0000162D  8946FE            mov [bp-0x2],ax
00001630  8B46FE            mov ax,[bp-0x2]
00001633  89EC              mov sp,bp
00001635  5D                pop bp
00001636  CA0400            retf word 0x4
00001639  55                push bp
0000163A  89E5              mov bp,sp
0000163C  83EC02            sub sp,0x2
0000163F  FF760C            push word [bp+0xc]
00001642  FF760A            push word [bp+0xa]
00001645  FF7608            push word [bp+0x8]
00001648  FF7606            push word [bp+0x6]
0000164B  0E                push cs
0000164C  E897F0            call 0x6e6
0000164F  FF760C            push word [bp+0xc]
00001652  FF760A            push word [bp+0xa]
00001655  0E                push cs
00001656  E8B4FF            call 0x160d
00001659  8946FE            mov [bp-0x2],ax
0000165C  FF760C            push word [bp+0xc]
0000165F  FF760A            push word [bp+0xa]
00001662  FF7608            push word [bp+0x8]
00001665  FF7606            push word [bp+0x6]
00001668  0E                push cs
00001669  E825F3            call 0x991
0000166C  8B46FE            mov ax,[bp-0x2]
0000166F  89EC              mov sp,bp
00001671  5D                pop bp
00001672  CA0800            retf word 0x8
00001675  55                push bp
00001676  89E5              mov bp,sp
00001678  83EC3C            sub sp,0x3c
0000167B  9A7408E10B        call word 0xbe1:word 0x874
00001680  8D7EC4            lea di,[bp-0x3c]
00001683  16                push ss
00001684  57                push di
00001685  9AAF08561A        call word 0x1a56:word 0x8af
0000168A  B000              mov al,0x0
0000168C  50                push ax
0000168D  9ABE08561A        call word 0x1a56:word 0x8be
00001692  B002              mov al,0x2
00001694  50                push ax
00001695  9ABE08561A        call word 0x1a56:word 0x8be
0000169A  B004              mov al,0x4
0000169C  50                push ax
0000169D  9ABE08561A        call word 0x1a56:word 0x8be
000016A2  B006              mov al,0x6
000016A4  50                push ax
000016A5  9ABE08561A        call word 0x1a56:word 0x8be
000016AA  9A1A02E10B        call word 0xbe1:word 0x21a
000016AF  C47E14            les di,word [bp+0x14]
000016B2  268B4547          mov ax,[es:di+0x47]
000016B6  260B4549          or ax,[es:di+0x49]
000016BA  7447              jz 0x1703
000016BC  C47E14            les di,word [bp+0x14]
000016BF  26C47D47          les di,word [es:di+0x47]
000016C3  268B05            mov ax,[es:di]
000016C6  8946FC            mov [bp-0x4],ax
000016C9  C47E14            les di,word [bp+0x14]
000016CC  26C47D47          les di,word [es:di+0x47]
000016D0  268B4502          mov ax,[es:di+0x2]
000016D4  8946FE            mov [bp-0x2],ax
000016D7  8B46FC            mov ax,[bp-0x4]
000016DA  01460E            add [bp+0xe],ax
000016DD  8B46FC            mov ax,[bp-0x4]
000016E0  01460C            add [bp+0xc],ax
000016E3  8B46FE            mov ax,[bp-0x2]
000016E6  01460A            add [bp+0xa],ax
000016E9  8B46FE            mov ax,[bp-0x2]
000016EC  014608            add [bp+0x8],ax
000016EF  8B46FC            mov ax,[bp-0x4]
000016F2  C47E10            les di,word [bp+0x10]
000016F5  26014504          add [es:di+0x4],ax
000016F9  8B46FE            mov ax,[bp-0x2]
000016FC  C47E10            les di,word [bp+0x10]
000016FF  26014506          add [es:di+0x6],ax
00001703  C47E10            les di,word [bp+0x10]
00001706  897EE0            mov [bp-0x20],di
00001709  8C46E2            mov word [bp-0x1e],es
0000170C  FF7616            push word [bp+0x16]
0000170F  FF7614            push word [bp+0x14]
00001712  E869E9            call 0x7e
00001715  8D7EE4            lea di,[bp-0x1c]
00001718  16                push ss
00001719  57                push di
0000171A  9AE302E10B        call word 0xbe1:word 0x2e3
0000171F  9AB202E10B        call word 0xbe1:word 0x2b2
00001724  09C0              or ax,ax
00001726  75ED              jnz 0x1715
00001728  8B46E8            mov ax,[bp-0x18]
0000172B  8946F0            mov [bp-0x10],ax
0000172E  8B46EA            mov ax,[bp-0x16]
00001731  8946EE            mov [bp-0x12],ax
00001734  8A46E7            mov al,[bp-0x19]
00001737  98                cbw
00001738  8946F2            mov [bp-0xe],ax
0000173B  8B46F0            mov ax,[bp-0x10]
0000173E  8946F4            mov [bp-0xc],ax
00001741  8B46EE            mov ax,[bp-0x12]
00001744  8946F6            mov [bp-0xa],ax
00001747  B80F00            mov ax,0xf
0000174A  50                push ax
0000174B  B8FFFF            mov ax,0xffff
0000174E  50                push ax
0000174F  B002              mov al,0x2
00001751  50                push ax
00001752  0E                push cs
00001753  E8FAE8            call 0x50
00001756  C47EE0            les di,word [bp-0x20]
00001759  268B4508          mov ax,[es:di+0x8]
0000175D  99                cwd
0000175E  B90200            mov cx,0x2
00001761  F7F9              idiv cx
00001763  C47EE0            les di,word [bp-0x20]
00001766  26034504          add ax,[es:di+0x4]
0000176A  50                push ax
0000176B  C47EE0            les di,word [bp-0x20]
0000176E  268B450A          mov ax,[es:di+0xa]
00001772  99                cwd
00001773  B90200            mov cx,0x2
00001776  F7F9              idiv cx
00001778  C47EE0            les di,word [bp-0x20]
0000177B  26034506          add ax,[es:di+0x6]
0000177F  50                push ax
00001780  FF76F0            push word [bp-0x10]
00001783  FF76EE            push word [bp-0x12]
00001786  9AAC07430E        call word 0xe43:word 0x7ac
0000178B  837EF200          cmp word [bp-0xe],0x0
0000178F  7503              jnz 0x1794
00001791  E90702            jmp 0x199b
00001794  8B46EE            mov ax,[bp-0x12]
00001797  3B460A            cmp ax,[bp+0xa]
0000179A  7C21              jl 0x17bd
0000179C  8B46EE            mov ax,[bp-0x12]
0000179F  3B4608            cmp ax,[bp+0x8]
000017A2  7F19              jg 0x17bd
000017A4  C47EE0            les di,word [bp-0x20]
000017A7  268B450A          mov ax,[es:di+0xa]
000017AB  99                cwd
000017AC  B90200            mov cx,0x2
000017AF  F7F9              idiv cx
000017B1  8BD0              mov dx,ax
000017B3  8B46EE            mov ax,[bp-0x12]
000017B6  2BC2              sub ax,dx
000017B8  8946F8            mov [bp-0x8],ax
000017BB  EB38              jmp 0x17f5
000017BD  8B46EE            mov ax,[bp-0x12]
000017C0  3B460A            cmp ax,[bp+0xa]
000017C3  7D19              jnl 0x17de
000017C5  C47EE0            les di,word [bp-0x20]
000017C8  268B450A          mov ax,[es:di+0xa]
000017CC  99                cwd
000017CD  B90200            mov cx,0x2
000017D0  F7F9              idiv cx
000017D2  8BD0              mov dx,ax
000017D4  8B460A            mov ax,[bp+0xa]
000017D7  2BC2              sub ax,dx
000017D9  8946F8            mov [bp-0x8],ax
000017DC  EB17              jmp 0x17f5
000017DE  C47EE0            les di,word [bp-0x20]
000017E1  268B450A          mov ax,[es:di+0xa]
000017E5  99                cwd
000017E6  B90200            mov cx,0x2
000017E9  F7F9              idiv cx
000017EB  8BD0              mov dx,ax
000017ED  8B4608            mov ax,[bp+0x8]
000017F0  2BC2              sub ax,dx
000017F2  8946F8            mov [bp-0x8],ax
000017F5  8B46F0            mov ax,[bp-0x10]
000017F8  3B460E            cmp ax,[bp+0xe]
000017FB  7C21              jl 0x181e
000017FD  8B46F0            mov ax,[bp-0x10]
00001800  3B460C            cmp ax,[bp+0xc]
00001803  7F19              jg 0x181e
00001805  C47EE0            les di,word [bp-0x20]
00001808  268B4508          mov ax,[es:di+0x8]
0000180C  99                cwd
0000180D  B90200            mov cx,0x2
00001810  F7F9              idiv cx
00001812  8BD0              mov dx,ax
00001814  8B46F0            mov ax,[bp-0x10]
00001817  2BC2              sub ax,dx
00001819  8946FA            mov [bp-0x6],ax
0000181C  EB38              jmp 0x1856
0000181E  8B46F0            mov ax,[bp-0x10]
00001821  3B460E            cmp ax,[bp+0xe]
00001824  7D19              jnl 0x183f
00001826  C47EE0            les di,word [bp-0x20]
00001829  268B4508          mov ax,[es:di+0x8]
0000182D  99                cwd
0000182E  B90200            mov cx,0x2
00001831  F7F9              idiv cx
00001833  8BD0              mov dx,ax
00001835  8B460E            mov ax,[bp+0xe]
00001838  2BC2              sub ax,dx
0000183A  8946FA            mov [bp-0x6],ax
0000183D  EB17              jmp 0x1856
0000183F  C47EE0            les di,word [bp-0x20]
00001842  268B4508          mov ax,[es:di+0x8]
00001846  99                cwd
00001847  B90200            mov cx,0x2
0000184A  F7F9              idiv cx
0000184C  8BD0              mov dx,ax
0000184E  8B460C            mov ax,[bp+0xc]
00001851  2BC2              sub ax,dx
00001853  8946FA            mov [bp-0x6],ax
00001856  B80F00            mov ax,0xf
00001859  50                push ax
0000185A  B8FFFF            mov ax,0xffff
0000185D  50                push ax
0000185E  B002              mov al,0x2
00001860  50                push ax
00001861  0E                push cs
00001862  E8EBE7            call 0x50
00001865  C47EE0            les di,word [bp-0x20]
00001868  268B4508          mov ax,[es:di+0x8]
0000186C  99                cwd
0000186D  B90200            mov cx,0x2
00001870  F7F9              idiv cx
00001872  C47EE0            les di,word [bp-0x20]
00001875  26034504          add ax,[es:di+0x4]
00001879  50                push ax
0000187A  C47EE0            les di,word [bp-0x20]
0000187D  268B450A          mov ax,[es:di+0xa]
00001881  99                cwd
00001882  B90200            mov cx,0x2
00001885  F7F9              idiv cx
00001887  C47EE0            les di,word [bp-0x20]
0000188A  26034506          add ax,[es:di+0x6]
0000188E  50                push ax
0000188F  FF76F4            push word [bp-0xc]
00001892  FF76F6            push word [bp-0xa]
00001895  9AAC07430E        call word 0xe43:word 0x7ac
0000189A  8B46F8            mov ax,[bp-0x8]
0000189D  C47EE0            les di,word [bp-0x20]
000018A0  263B4506          cmp ax,[es:di+0x6]
000018A4  750C              jnz 0x18b2
000018A6  8B46FA            mov ax,[bp-0x6]
000018A9  C47EE0            les di,word [bp-0x20]
000018AC  263B4504          cmp ax,[es:di+0x4]
000018B0  7470              jz 0x1922
000018B2  FF7606            push word [bp+0x6]
000018B5  B8FFFF            mov ax,0xffff
000018B8  50                push ax
000018B9  B000              mov al,0x0
000018BB  50                push ax
000018BC  0E                push cs
000018BD  E890E7            call 0x50
000018C0  C47EE0            les di,word [bp-0x20]
000018C3  26FF7504          push word [es:di+0x4]
000018C7  C47EE0            les di,word [bp-0x20]
000018CA  26FF7506          push word [es:di+0x6]
000018CE  C47EE0            les di,word [bp-0x20]
000018D1  26FF7508          push word [es:di+0x8]
000018D5  C47EE0            les di,word [bp-0x20]
000018D8  26FF750A          push word [es:di+0xa]
000018DC  9A0124430E        call word 0xe43:word 0x2401
000018E1  8B46F8            mov ax,[bp-0x8]
000018E4  C47EE0            les di,word [bp-0x20]
000018E7  26894506          mov [es:di+0x6],ax
000018EB  8B46FA            mov ax,[bp-0x6]
000018EE  C47EE0            les di,word [bp-0x20]
000018F1  26894504          mov [es:di+0x4],ax
000018F5  C47EE0            les di,word [bp-0x20]
000018F8  26FF7510          push word [es:di+0x10]
000018FC  9A7F1A430E        call word 0xe43:word 0x1a7f
00001901  C47EE0            les di,word [bp-0x20]
00001904  26FF7504          push word [es:di+0x4]
00001908  C47EE0            les di,word [bp-0x20]
0000190B  26FF7506          push word [es:di+0x6]
0000190F  C47EE0            les di,word [bp-0x20]
00001912  26FF7508          push word [es:di+0x8]
00001916  C47EE0            les di,word [bp-0x20]
00001919  26FF750A          push word [es:di+0xa]
0000191D  9A0124430E        call word 0xe43:word 0x2401
00001922  B80F00            mov ax,0xf
00001925  50                push ax
00001926  B8FFFF            mov ax,0xffff
00001929  50                push ax
0000192A  B002              mov al,0x2
0000192C  50                push ax
0000192D  0E                push cs
0000192E  E81FE7            call 0x50
00001931  C47EE0            les di,word [bp-0x20]
00001934  268B4508          mov ax,[es:di+0x8]
00001938  99                cwd
00001939  B90200            mov cx,0x2
0000193C  F7F9              idiv cx
0000193E  C47EE0            les di,word [bp-0x20]
00001941  26034504          add ax,[es:di+0x4]
00001945  50                push ax
00001946  C47EE0            les di,word [bp-0x20]
00001949  268B450A          mov ax,[es:di+0xa]
0000194D  99                cwd
0000194E  B90200            mov cx,0x2
00001951  F7F9              idiv cx
00001953  C47EE0            les di,word [bp-0x20]
00001956  26034506          add ax,[es:di+0x6]
0000195A  50                push ax
0000195B  FF76F0            push word [bp-0x10]
0000195E  FF76EE            push word [bp-0x12]
00001961  9AAC07430E        call word 0xe43:word 0x7ac
00001966  8B46F0            mov ax,[bp-0x10]
00001969  8946F4            mov [bp-0xc],ax
0000196C  8B46EE            mov ax,[bp-0x12]
0000196F  8946F6            mov [bp-0xa],ax
00001972  8D7EE4            lea di,[bp-0x1c]
00001975  16                push ss
00001976  57                push di
00001977  9AE302E10B        call word 0xbe1:word 0x2e3
0000197C  9AB202E10B        call word 0xbe1:word 0x2b2
00001981  09C0              or ax,ax
00001983  75ED              jnz 0x1972
00001985  8B46E8            mov ax,[bp-0x18]
00001988  8946F0            mov [bp-0x10],ax
0000198B  8B46EA            mov ax,[bp-0x16]
0000198E  8946EE            mov [bp-0x12],ax
00001991  8A46E7            mov al,[bp-0x19]
00001994  98                cbw
00001995  8946F2            mov [bp-0xe],ax
00001998  E9F0FD            jmp 0x178b
0000199B  B80F00            mov ax,0xf
0000199E  50                push ax
0000199F  B8FFFF            mov ax,0xffff
000019A2  50                push ax
000019A3  B002              mov al,0x2
000019A5  50                push ax
000019A6  0E                push cs
000019A7  E8A6E6            call 0x50
000019AA  C47EE0            les di,word [bp-0x20]
000019AD  268B4508          mov ax,[es:di+0x8]
000019B1  99                cwd
000019B2  B90200            mov cx,0x2
000019B5  F7F9              idiv cx
000019B7  C47EE0            les di,word [bp-0x20]
000019BA  26034504          add ax,[es:di+0x4]
000019BE  50                push ax
000019BF  C47EE0            les di,word [bp-0x20]
000019C2  268B450A          mov ax,[es:di+0xa]
000019C6  99                cwd
000019C7  B90200            mov cx,0x2
000019CA  F7F9              idiv cx
000019CC  C47EE0            les di,word [bp-0x20]
000019CF  26034506          add ax,[es:di+0x6]
000019D3  50                push ax
000019D4  FF76F4            push word [bp-0xc]
000019D7  FF76F6            push word [bp-0xa]
000019DA  9AAC07430E        call word 0xe43:word 0x7ac
000019DF  C47EE0            les di,word [bp-0x20]
000019E2  26FF750E          push word [es:di+0xe]
000019E6  B8FFFF            mov ax,0xffff
000019E9  50                push ax
000019EA  B000              mov al,0x0
000019EC  50                push ax
000019ED  0E                push cs
000019EE  E85FE6            call 0x50
000019F1  C47EE0            les di,word [bp-0x20]
000019F4  26FF7504          push word [es:di+0x4]
000019F8  C47EE0            les di,word [bp-0x20]
000019FB  26FF7506          push word [es:di+0x6]
000019FF  C47EE0            les di,word [bp-0x20]
00001A02  26FF7508          push word [es:di+0x8]
00001A06  C47EE0            les di,word [bp-0x20]
00001A09  26FF750A          push word [es:di+0xa]
00001A0D  9A3B23430E        call word 0xe43:word 0x233b
00001A12  C47E14            les di,word [bp+0x14]
00001A15  268B4547          mov ax,[es:di+0x47]
00001A19  260B4549          or ax,[es:di+0x49]
00001A1D  7414              jz 0x1a33
00001A1F  8B46FC            mov ax,[bp-0x4]
00001A22  C47EE0            les di,word [bp-0x20]
00001A25  26294504          sub [es:di+0x4],ax
00001A29  8B46FE            mov ax,[bp-0x2]
00001A2C  C47EE0            les di,word [bp-0x20]
00001A2F  26294506          sub [es:di+0x6],ax
00001A33  FF7616            push word [bp+0x16]
00001A36  FF7614            push word [bp+0x14]
00001A39  E88AE6            call 0xc6
00001A3C  9A4808E10B        call word 0xbe1:word 0x848
00001A41  8D7EC4            lea di,[bp-0x3c]
00001A44  16                push ss
00001A45  57                push di
00001A46  9AAF08561A        call word 0x1a56:word 0x8af
00001A4B  B001              mov al,0x1
00001A4D  50                push ax
00001A4E  9ABE08561A        call word 0x1a56:word 0x8be
00001A53  B003              mov al,0x3
00001A55  50                push ax
00001A56  9ABE08561A        call word 0x1a56:word 0x8be
00001A5B  B005              mov al,0x5
00001A5D  50                push ax
00001A5E  9ABE08561A        call word 0x1a56:word 0x8be
00001A63  9A1A02E10B        call word 0xbe1:word 0x21a
00001A68  89EC              mov sp,bp
00001A6A  5D                pop bp
00001A6B  CA1200            retf word 0x12
00001A6E  55                push bp
00001A6F  89E5              mov bp,sp
00001A71  83EC04            sub sp,0x4
00001A74  C47E1A            les di,word [bp+0x1a]
00001A77  897EFC            mov [bp-0x4],di
00001A7A  8C46FE            mov word [bp-0x2],es
00001A7D  C44616            les ax,word [bp+0x16]
00001A80  8CC2              mov dx,es
00001A82  C47EFC            les di,word [bp-0x4]
00001A85  268905            mov [es:di],ax
00001A88  26895502          mov [es:di+0x2],dx
00001A8C  8B4614            mov ax,[bp+0x14]
00001A8F  C47EFC            les di,word [bp-0x4]
00001A92  26894504          mov [es:di+0x4],ax
00001A96  8B4612            mov ax,[bp+0x12]
00001A99  C47EFC            les di,word [bp-0x4]
00001A9C  26894506          mov [es:di+0x6],ax
00001AA0  8B4610            mov ax,[bp+0x10]
00001AA3  C47EFC            les di,word [bp-0x4]
00001AA6  26894508          mov [es:di+0x8],ax
00001AAA  8B460E            mov ax,[bp+0xe]
00001AAD  C47EFC            les di,word [bp-0x4]
00001AB0  2689450A          mov [es:di+0xa],ax
00001AB4  8B460C            mov ax,[bp+0xc]
00001AB7  C47EFC            les di,word [bp-0x4]
00001ABA  2689450C          mov [es:di+0xc],ax
00001ABE  8B460A            mov ax,[bp+0xa]
00001AC1  C47EFC            les di,word [bp-0x4]
00001AC4  2689450E          mov [es:di+0xe],ax
00001AC8  8B4608            mov ax,[bp+0x8]
00001ACB  C47EFC            les di,word [bp-0x4]
00001ACE  26894510          mov [es:di+0x10],ax
00001AD2  C47EFC            les di,word [bp-0x4]
00001AD5  31C0              xor ax,ax
00001AD7  26894512          mov [es:di+0x12],ax
00001ADB  26894514          mov [es:di+0x14],ax
00001ADF  C47EFC            les di,word [bp-0x4]
00001AE2  31C0              xor ax,ax
00001AE4  26894516          mov [es:di+0x16],ax
00001AE8  26894518          mov [es:di+0x18],ax
00001AEC  C47EFC            les di,word [bp-0x4]
00001AEF  31C0              xor ax,ax
00001AF1  2689451A          mov [es:di+0x1a],ax
00001AF5  2689451C          mov [es:di+0x1c],ax
00001AF9  8B4606            mov ax,[bp+0x6]
00001AFC  C47EFC            les di,word [bp-0x4]
00001AFF  2689451E          mov [es:di+0x1e],ax
00001B03  89EC              mov sp,bp
00001B05  5D                pop bp
00001B06  CA1800            retf word 0x18
00001B09  55                push bp
00001B0A  89E5              mov bp,sp
00001B0C  83EC04            sub sp,0x4
00001B0F  C47E18            les di,word [bp+0x18]
00001B12  897EFC            mov [bp-0x4],di
00001B15  8C46FE            mov word [bp-0x2],es
00001B18  8B4616            mov ax,[bp+0x16]
00001B1B  C47EFC            les di,word [bp-0x4]
00001B1E  268905            mov [es:di],ax
00001B21  8B4614            mov ax,[bp+0x14]
00001B24  C47EFC            les di,word [bp-0x4]
00001B27  26894502          mov [es:di+0x2],ax
00001B2B  8B4612            mov ax,[bp+0x12]
00001B2E  C47EFC            les di,word [bp-0x4]
00001B31  26894504          mov [es:di+0x4],ax
00001B35  8B4610            mov ax,[bp+0x10]
00001B38  C47EFC            les di,word [bp-0x4]
00001B3B  26894506          mov [es:di+0x6],ax
00001B3F  8B460E            mov ax,[bp+0xe]
00001B42  C47EFC            les di,word [bp-0x4]
00001B45  26894508          mov [es:di+0x8],ax
00001B49  8B460C            mov ax,[bp+0xc]
00001B4C  C47EFC            les di,word [bp-0x4]
00001B4F  2689450A          mov [es:di+0xa],ax
00001B53  8B460A            mov ax,[bp+0xa]
00001B56  C47EFC            les di,word [bp-0x4]
00001B59  2689450C          mov [es:di+0xc],ax
00001B5D  C44606            les ax,word [bp+0x6]
00001B60  8CC2              mov dx,es
00001B62  C47EFC            les di,word [bp-0x4]
00001B65  2689450E          mov [es:di+0xe],ax
00001B69  26895510          mov [es:di+0x10],dx
00001B6D  C47EFC            les di,word [bp-0x4]
00001B70  31C0              xor ax,ax
00001B72  26894512          mov [es:di+0x12],ax
00001B76  26894514          mov [es:di+0x14],ax
00001B7A  C47EFC            les di,word [bp-0x4]
00001B7D  31C0              xor ax,ax
00001B7F  26894516          mov [es:di+0x16],ax
00001B83  26894518          mov [es:di+0x18],ax
00001B87  C47EFC            les di,word [bp-0x4]
00001B8A  31C0              xor ax,ax
00001B8C  2689451A          mov [es:di+0x1a],ax
00001B90  2689451C          mov [es:di+0x1c],ax
00001B94  C47EFC            les di,word [bp-0x4]
00001B97  31C0              xor ax,ax
00001B99  2689451E          mov [es:di+0x1e],ax
00001B9D  26894520          mov [es:di+0x20],ax
00001BA1  89EC              mov sp,bp
00001BA3  5D                pop bp
00001BA4  CA1600            retf word 0x16
00001BA7  55                push bp
00001BA8  89E5              mov bp,sp
00001BAA  83EC04            sub sp,0x4
00001BAD  C47E14            les di,word [bp+0x14]
00001BB0  897EFC            mov [bp-0x4],di
00001BB3  8C46FE            mov word [bp-0x2],es
00001BB6  C44610            les ax,word [bp+0x10]
00001BB9  8CC2              mov dx,es
00001BBB  C47EFC            les di,word [bp-0x4]
00001BBE  268905            mov [es:di],ax
00001BC1  26895502          mov [es:di+0x2],dx
00001BC5  8B460E            mov ax,[bp+0xe]
00001BC8  C47EFC            les di,word [bp-0x4]
00001BCB  26894504          mov [es:di+0x4],ax
00001BCF  8B460C            mov ax,[bp+0xc]
00001BD2  C47EFC            les di,word [bp-0x4]
00001BD5  26894506          mov [es:di+0x6],ax
00001BD9  8B460A            mov ax,[bp+0xa]
00001BDC  C47EFC            les di,word [bp-0x4]
00001BDF  26894508          mov [es:di+0x8],ax
00001BE3  C44606            les ax,word [bp+0x6]
00001BE6  8CC2              mov dx,es
00001BE8  C47EFC            les di,word [bp-0x4]
00001BEB  2689450A          mov [es:di+0xa],ax
00001BEF  2689550C          mov [es:di+0xc],dx
00001BF3  89EC              mov sp,bp
00001BF5  5D                pop bp
00001BF6  CA1200            retf word 0x12
00001BF9  0000              add [bx+si],al
00001BFB  0000              add [bx+si],al
00001BFD  0000              add [bx+si],al
00001BFF  00                db 0x00
