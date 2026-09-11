00000000  55                push bp
00000001  89E5              mov bp,sp
00000003  83EC02            sub sp,0x2
00000006  C47E08            les di,word [bp+0x8]
00000009  268A4506          mov al,[es:di+0x6]
0000000D  30E4              xor ah,ah
0000000F  48                dec ax
00000010  8BD8              mov bx,ax
00000012  C47E08            les di,word [bp+0x8]
00000015  268A4501          mov al,[es:di+0x1]
00000019  30E4              xor ah,ah
0000001B  8BD0              mov dx,ax
0000001D  C47E08            les di,word [bp+0x8]
00000020  268A4507          mov al,[es:di+0x7]
00000024  30E4              xor ah,ah
00000026  034606            add ax,[bp+0x6]
00000029  F7E2              mul dx
0000002B  050700            add ax,0x7
0000002E  31D2              xor dx,dx
00000030  B90800            mov cx,0x8
00000033  F7F1              div cx
00000035  03C3              add ax,bx
00000037  8BD0              mov dx,ax
00000039  C47E08            les di,word [bp+0x8]
0000003C  268A4506          mov al,[es:di+0x6]
00000040  30E4              xor ah,ah
00000042  48                dec ax
00000043  F7D0              not ax
00000045  23C2              and ax,dx
00000047  8946FE            mov [bp-0x2],ax
0000004A  8B46FE            mov ax,[bp-0x2]
0000004D  89EC              mov sp,bp
0000004F  5D                pop bp
00000050  CA0600            retf word 0x6
00000053  55                push bp
00000054  89E5              mov bp,sp
00000056  83EC04            sub sp,0x4
00000059  FF760C            push word [bp+0xc]
0000005C  FF760A            push word [bp+0xa]
0000005F  FF7608            push word [bp+0x8]
00000062  0E                push cs
00000063  E89AFF            call 0x0
00000066  31D2              xor dx,dx
00000068  8BC8              mov cx,ax
0000006A  8BDA              mov bx,dx
0000006C  8B4606            mov ax,[bp+0x6]
0000006F  31D2              xor dx,dx
00000071  9ADC02561A        call word 0x1a56:word 0x2dc
00000076  8946FC            mov [bp-0x4],ax
00000079  8956FE            mov [bp-0x2],dx
0000007C  8B46FC            mov ax,[bp-0x4]
0000007F  8B56FE            mov dx,[bp-0x2]
00000082  89EC              mov sp,bp
00000084  5D                pop bp
00000085  CA0800            retf word 0x8
00000088  55                push bp
00000089  89E5              mov bp,sp
0000008B  83EC04            sub sp,0x4
0000008E  FF760C            push word [bp+0xc]
00000091  FF760A            push word [bp+0xa]
00000094  FF7608            push word [bp+0x8]
00000097  FF7606            push word [bp+0x6]
0000009A  0E                push cs
0000009B  E8B5FF            call 0x53
0000009E  8BC8              mov cx,ax
000000A0  8BDA              mov bx,dx
000000A2  C47E0A            les di,word [bp+0xa]
000000A5  268A05            mov al,[es:di]
000000A8  30E4              xor ah,ah
000000AA  31D2              xor dx,dx
000000AC  9ADC02561A        call word 0x1a56:word 0x2dc
000000B1  8946FC            mov [bp-0x4],ax
000000B4  8956FE            mov [bp-0x2],dx
000000B7  8B46FC            mov ax,[bp-0x4]
000000BA  8B56FE            mov dx,[bp-0x2]
000000BD  89EC              mov sp,bp
000000BF  5D                pop bp
000000C0  CA0800            retf word 0x8
000000C3  55                push bp
000000C4  89E5              mov bp,sp
000000C6  83EC04            sub sp,0x4
000000C9  807E0600          cmp byte [bp+0x6],0x0
000000CD  7434              jz 0x103
000000CF  C47E0C            les di,word [bp+0xc]
000000D2  06                push es
000000D3  57                push di
000000D4  FF7612            push word [bp+0x12]
000000D7  FF7610            push word [bp+0x10]
000000DA  FF760A            push word [bp+0xa]
000000DD  FF7608            push word [bp+0x8]
000000E0  0E                push cs
000000E1  E8A4FF            call 0x88
000000E4  051200            add ax,0x12
000000E7  83D200            adc dx,0x0
000000EA  8BC8              mov cx,ax
000000EC  8BDA              mov bx,dx
000000EE  C47E10            les di,word [bp+0x10]
000000F1  268A4508          mov al,[es:di+0x8]
000000F5  30E4              xor ah,ah
000000F7  31D2              xor dx,dx
000000F9  03C1              add ax,cx
000000FB  13D3              adc dx,bx
000000FD  52                push dx
000000FE  50                push ax
000000FF  FF1E7288          call word far [0x8872]
00000103  C47E0C            les di,word [bp+0xc]
00000106  26C43D            les di,word [es:di]
00000109  897EFC            mov [bp-0x4],di
0000010C  8C46FE            mov word [bp-0x2],es
0000010F  C47EFC            les di,word [bp-0x4]
00000112  31C0              xor ax,ax
00000114  26894504          mov [es:di+0x4],ax
00000118  C47EFC            les di,word [bp-0x4]
0000011B  31C0              xor ax,ax
0000011D  26894506          mov [es:di+0x6],ax
00000121  8B460A            mov ax,[bp+0xa]
00000124  C47EFC            les di,word [bp-0x4]
00000127  268905            mov [es:di],ax
0000012A  8B4608            mov ax,[bp+0x8]
0000012D  C47EFC            les di,word [bp-0x4]
00000130  26894502          mov [es:di+0x2],ax
00000134  C47EFC            les di,word [bp-0x4]
00000137  26C6450800        mov byte [es:di+0x8],0x0
0000013C  C47EFC            les di,word [bp-0x4]
0000013F  26C6450900        mov byte [es:di+0x9],0x0
00000144  C44610            les ax,word [bp+0x10]
00000147  8CC2              mov dx,es
00000149  C47EFC            les di,word [bp-0x4]
0000014C  2689450A          mov [es:di+0xa],ax
00000150  2689550C          mov [es:di+0xc],dx
00000154  C47EFC            les di,word [bp-0x4]
00000157  31C0              xor ax,ax
00000159  2689450E          mov [es:di+0xe],ax
0000015D  26894510          mov [es:di+0x10],ax
00000161  89EC              mov sp,bp
00000163  5D                pop bp
00000164  CA0E00            retf word 0xe
00000167  55                push bp
00000168  89E5              mov bp,sp
0000016A  83EC04            sub sp,0x4
0000016D  C47E06            les di,word [bp+0x6]
00000170  268B05            mov ax,[es:di]
00000173  260B4502          or ax,[es:di+0x2]
00000177  746A              jz 0x1e3
00000179  C47E06            les di,word [bp+0x6]
0000017C  26C43D            les di,word [es:di]
0000017F  897EFC            mov [bp-0x4],di
00000182  8C46FE            mov word [bp-0x2],es
00000185  C47EFC            les di,word [bp-0x4]
00000188  268B450E          mov ax,[es:di+0xe]
0000018C  260B4510          or ax,[es:di+0x10]
00000190  740D              jz 0x19f
00000192  C47EFC            les di,word [bp-0x4]
00000195  81C70E00          add di,0xe
00000199  06                push es
0000019A  57                push di
0000019B  0E                push cs
0000019C  E8C8FF            call 0x167
0000019F  C47E06            les di,word [bp+0x6]
000001A2  06                push es
000001A3  57                push di
000001A4  C47EFC            les di,word [bp-0x4]
000001A7  26FF750C          push word [es:di+0xc]
000001AB  26FF750A          push word [es:di+0xa]
000001AF  C47EFC            les di,word [bp-0x4]
000001B2  26FF35            push word [es:di]
000001B5  C47EFC            les di,word [bp-0x4]
000001B8  26FF7502          push word [es:di+0x2]
000001BC  0E                push cs
000001BD  E8C8FE            call 0x88
000001C0  051200            add ax,0x12
000001C3  83D200            adc dx,0x0
000001C6  8BC8              mov cx,ax
000001C8  8BDA              mov bx,dx
000001CA  C47EFC            les di,word [bp-0x4]
000001CD  26C47D0A          les di,word [es:di+0xa]
000001D1  268A4508          mov al,[es:di+0x8]
000001D5  30E4              xor ah,ah
000001D7  31D2              xor dx,dx
000001D9  03C1              add ax,cx
000001DB  13D3              adc dx,bx
000001DD  52                push dx
000001DE  50                push ax
000001DF  FF1E7688          call word far [0x8876]
000001E3  89EC              mov sp,bp
000001E5  5D                pop bp
000001E6  CA0400            retf word 0x4
000001E9  55                push bp
000001EA  89E5              mov bp,sp
000001EC  83EC02            sub sp,0x2
000001EF  C47E04            les di,word [bp+0x4]
000001F2  26C47D0A          les di,word [es:di+0xa]
000001F6  268A4501          mov al,[es:di+0x1]
000001FA  30E4              xor ah,ah
000001FC  8BC8              mov cx,ax
000001FE  B80800            mov ax,0x8
00000201  99                cwd
00000202  F7F9              idiv cx
00000204  8946FE            mov [bp-0x2],ax
00000207  8B46FE            mov ax,[bp-0x2]
0000020A  89EC              mov sp,bp
0000020C  5D                pop bp
0000020D  C20400            ret word 0x4
00000210  55                push bp
00000211  89E5              mov bp,sp
00000213  83EC20            sub sp,0x20
00000216  C44606            les ax,word [bp+0x6]
00000219  8CC2              mov dx,es
0000021B  C47E0A            les di,word [bp+0xa]
0000021E  26894528          mov [es:di+0x28],ax
00000222  2689552A          mov [es:di+0x2a],dx
00000226  C47E06            les di,word [bp+0x6]
00000229  26FF750C          push word [es:di+0xc]
0000022D  26FF750A          push word [es:di+0xa]
00000231  C47E06            les di,word [bp+0x6]
00000234  26FF35            push word [es:di]
00000237  0E                push cs
00000238  E8C5FD            call 0x0
0000023B  8946E2            mov [bp-0x1e],ax
0000023E  C47E06            les di,word [bp+0x6]
00000241  26C47D0A          les di,word [es:di+0xa]
00000245  268A05            mov al,[es:di]
00000248  FEC8              dec al
0000024A  30E4              xor ah,ah
0000024C  8946E0            mov [bp-0x20],ax
0000024F  31C0              xor ax,ax
00000251  3B46E0            cmp ax,[bp-0x20]
00000254  7F25              jg 0x27b
00000256  8946F8            mov [bp-0x8],ax
00000259  EB03              jmp 0x25e
0000025B  FF46F8            inc word [bp-0x8]
0000025E  8B46F8            mov ax,[bp-0x8]
00000261  D1E0              shl ax,1
00000263  D1E0              shl ax,1
00000265  C47E0A            les di,word [bp+0xa]
00000268  03F8              add di,ax
0000026A  31C0              xor ax,ax
0000026C  268905            mov [es:di],ax
0000026F  26894502          mov [es:di+0x2],ax
00000273  8B46F8            mov ax,[bp-0x8]
00000276  3B46E0            cmp ax,[bp-0x20]
00000279  75E0              jnz 0x25b
0000027B  C47E06            les di,word [bp+0x6]
0000027E  26C47D0A          les di,word [es:di+0xa]
00000282  268A05            mov al,[es:di]
00000285  FEC8              dec al
00000287  30E4              xor ah,ah
00000289  8946E0            mov [bp-0x20],ax
0000028C  31C0              xor ax,ax
0000028E  3B46E0            cmp ax,[bp-0x20]
00000291  7F33              jg 0x2c6
00000293  8946F8            mov [bp-0x8],ax
00000296  EB03              jmp 0x29b
00000298  FF46F8            inc word [bp-0x8]
0000029B  8B46F8            mov ax,[bp-0x8]
0000029E  D1E0              shl ax,1
000002A0  D1E0              shl ax,1
000002A2  C47E0A            les di,word [bp+0xa]
000002A5  03F8              add di,ax
000002A7  06                push es
000002A8  57                push di
000002A9  C47E06            les di,word [bp+0x6]
000002AC  268B4502          mov ax,[es:di+0x2]
000002B0  B90200            mov cx,0x2
000002B3  D3E0              shl ax,cl
000002B5  31D2              xor dx,dx
000002B7  52                push dx
000002B8  50                push ax
000002B9  9A4F03C317        call word 0x17c3:word 0x34f
000002BE  8B46F8            mov ax,[bp-0x8]
000002C1  3B46E0            cmp ax,[bp-0x20]
000002C4  75D2              jnz 0x298
000002C6  31C0              xor ax,ax
000002C8  8946FA            mov [bp-0x6],ax
000002CB  C47E06            les di,word [bp+0x6]
000002CE  26C47D0A          les di,word [es:di+0xa]
000002D2  268A05            mov al,[es:di]
000002D5  30E4              xor ah,ah
000002D7  8946FC            mov [bp-0x4],ax
000002DA  C746FE0100        mov word [bp-0x2],0x1
000002DF  C47E06            les di,word [bp+0x6]
000002E2  26C47D0A          les di,word [es:di+0xa]
000002E6  26807D0200        cmp byte [es:di+0x2],0x0
000002EB  7417              jz 0x304
000002ED  C47E06            les di,word [bp+0x6]
000002F0  268B4502          mov ax,[es:di+0x2]
000002F4  48                dec ax
000002F5  8946F2            mov [bp-0xe],ax
000002F8  C746F4FFFF        mov word [bp-0xc],0xffff
000002FD  C746F6FFFF        mov word [bp-0xa],0xffff
00000302  EB14              jmp 0x318
00000304  31C0              xor ax,ax
00000306  8946F2            mov [bp-0xe],ax
00000309  C47E06            les di,word [bp+0x6]
0000030C  268B4502          mov ax,[es:di+0x2]
00000310  8946F4            mov [bp-0xc],ax
00000313  C746F60100        mov word [bp-0xa],0x1
00000318  C47E06            les di,word [bp+0x6]
0000031B  26C47D0A          les di,word [es:di+0xa]
0000031F  26807D0500        cmp byte [es:di+0x5],0x0
00000324  7418              jz 0x33e
00000326  8D46F0            lea ax,[bp-0x10]
00000329  8CD2              mov dx,ss
0000032B  8946EC            mov [bp-0x14],ax
0000032E  8956EE            mov [bp-0x12],dx
00000331  8D46F8            lea ax,[bp-0x8]
00000334  8CD2              mov dx,ss
00000336  8946E8            mov [bp-0x18],ax
00000339  8956EA            mov [bp-0x16],dx
0000033C  EB16              jmp 0x354
0000033E  8D46F8            lea ax,[bp-0x8]
00000341  8CD2              mov dx,ss
00000343  8946EC            mov [bp-0x14],ax
00000346  8956EE            mov [bp-0x12],dx
00000349  8D46F0            lea ax,[bp-0x10]
0000034C  8CD2              mov dx,ss
0000034E  8946E8            mov [bp-0x18],ax
00000351  8956EA            mov [bp-0x16],dx
00000354  C47E06            les di,word [bp+0x6]
00000357  26C47D0A          les di,word [es:di+0xa]
0000035B  268A4508          mov al,[es:di+0x8]
0000035F  30E4              xor ah,ah
00000361  C47E06            les di,word [bp+0x6]
00000364  03F8              add di,ax
00000366  268D4512          lea ax,[es:di+0x12]
0000036A  8CC2              mov dx,es
0000036C  8946E4            mov [bp-0x1c],ax
0000036F  8956E6            mov [bp-0x1a],dx
00000372  C47EEC            les di,word [bp-0x14]
00000375  268B4502          mov ax,[es:di+0x2]
00000379  C47EEC            les di,word [bp-0x14]
0000037C  268905            mov [es:di],ax
0000037F  C47EEC            les di,word [bp-0x14]
00000382  268B05            mov ax,[es:di]
00000385  C47EEC            les di,word [bp-0x14]
00000388  263B4504          cmp ax,[es:di+0x4]
0000038C  7503              jnz 0x391
0000038E  E97D00            jmp 0x40e
00000391  C47EE8            les di,word [bp-0x18]
00000394  268B4502          mov ax,[es:di+0x2]
00000398  C47EE8            les di,word [bp-0x18]
0000039B  268905            mov [es:di],ax
0000039E  C47EE8            les di,word [bp-0x18]
000003A1  268B05            mov ax,[es:di]
000003A4  C47EE8            les di,word [bp-0x18]
000003A7  263B4504          cmp ax,[es:di+0x4]
000003AB  7451              jz 0x3fe
000003AD  C44EE4            les cx,word [bp-0x1c]
000003B0  8CC3              mov bx,es
000003B2  8B46F0            mov ax,[bp-0x10]
000003B5  D1E0              shl ax,1
000003B7  D1E0              shl ax,1
000003B9  8BD0              mov dx,ax
000003BB  8B46F8            mov ax,[bp-0x8]
000003BE  D1E0              shl ax,1
000003C0  D1E0              shl ax,1
000003C2  C47E0A            les di,word [bp+0xa]
000003C5  03F8              add di,ax
000003C7  26C43D            les di,word [es:di]
000003CA  03FA              add di,dx
000003CC  26890D            mov [es:di],cx
000003CF  26895D02          mov [es:di+0x2],bx
000003D3  8B46E4            mov ax,[bp-0x1c]
000003D6  0346E2            add ax,[bp-0x1e]
000003D9  31D2              xor dx,dx
000003DB  B91000            mov cx,0x10
000003DE  F7F1              div cx
000003E0  0146E6            add [bp-0x1a],ax
000003E3  8B46E4            mov ax,[bp-0x1c]
000003E6  0346E2            add ax,[bp-0x1e]
000003E9  250F00            and ax,0xf
000003EC  8946E4            mov [bp-0x1c],ax
000003EF  C47EE8            les di,word [bp-0x18]
000003F2  268B4506          mov ax,[es:di+0x6]
000003F6  C47EE8            les di,word [bp-0x18]
000003F9  260105            add [es:di],ax
000003FC  EBA0              jmp 0x39e
000003FE  C47EEC            les di,word [bp-0x14]
00000401  268B4506          mov ax,[es:di+0x6]
00000405  C47EEC            les di,word [bp-0x14]
00000408  260105            add [es:di],ax
0000040B  E971FF            jmp 0x37f
0000040E  31C0              xor ax,ax
00000410  8946F8            mov [bp-0x8],ax
00000413  C47E06            les di,word [bp+0x6]
00000416  26C47D0A          les di,word [es:di+0xa]
0000041A  268A4501          mov al,[es:di+0x1]
0000041E  30E4              xor ah,ah
00000420  F76EF8            imul word [bp-0x8]
00000423  3D0800            cmp ax,0x8
00000426  7D5D              jnl 0x485
00000428  C47E06            les di,word [bp+0x6]
0000042B  26C47D0A          les di,word [es:di+0xa]
0000042F  26807D0400        cmp byte [es:di+0x4],0x0
00000434  7420              jz 0x456
00000436  C47E06            les di,word [bp+0x6]
00000439  26C47D0A          les di,word [es:di+0xa]
0000043D  268A4501          mov al,[es:di+0x1]
00000441  30E4              xor ah,ah
00000443  F76EF8            imul word [bp-0x8]
00000446  8AD0              mov dl,al
00000448  8B46F8            mov ax,[bp-0x8]
0000044B  C47E0A            les di,word [bp+0xa]
0000044E  03F8              add di,ax
00000450  26885520          mov [es:di+0x20],dl
00000454  EB2A              jmp 0x480
00000456  C47E06            les di,word [bp+0x6]
00000459  26C47D0A          les di,word [es:di+0xa]
0000045D  268A4501          mov al,[es:di+0x1]
00000461  30E4              xor ah,ah
00000463  8BD0              mov dx,ax
00000465  8B46F8            mov ax,[bp-0x8]
00000468  40                inc ax
00000469  F7EA              imul dx
0000046B  8BD0              mov dx,ax
0000046D  B80800            mov ax,0x8
00000470  2BC2              sub ax,dx
00000472  8AD0              mov dl,al
00000474  8B46F8            mov ax,[bp-0x8]
00000477  C47E0A            les di,word [bp+0xa]
0000047A  03F8              add di,ax
0000047C  26885520          mov [es:di+0x20],dl
00000480  FF46F8            inc word [bp-0x8]
00000483  EB8E              jmp 0x413
00000485  89EC              mov sp,bp
00000487  5D                pop bp
00000488  CA0800            retf word 0x8
0000048B  55                push bp
0000048C  89E5              mov bp,sp
0000048E  83EC04            sub sp,0x4
00000491  C47E06            les di,word [bp+0x6]
00000494  268B4528          mov ax,[es:di+0x28]
00000498  260B452A          or ax,[es:di+0x2a]
0000049C  743F              jz 0x4dd
0000049E  C47E06            les di,word [bp+0x6]
000004A1  26C47D28          les di,word [es:di+0x28]
000004A5  26C47D0A          les di,word [es:di+0xa]
000004A9  268A05            mov al,[es:di]
000004AC  FEC8              dec al
000004AE  30E4              xor ah,ah
000004B0  8946FC            mov [bp-0x4],ax
000004B3  31C0              xor ax,ax
000004B5  3B46FC            cmp ax,[bp-0x4]
000004B8  7F23              jg 0x4dd
000004BA  8946FE            mov [bp-0x2],ax
000004BD  EB03              jmp 0x4c2
000004BF  FF46FE            inc word [bp-0x2]
000004C2  8B46FE            mov ax,[bp-0x2]
000004C5  D1E0              shl ax,1
000004C7  D1E0              shl ax,1
000004C9  C47E06            les di,word [bp+0x6]
000004CC  03F8              add di,ax
000004CE  06                push es
000004CF  57                push di
000004D0  9AB403C317        call word 0x17c3:word 0x3b4
000004D5  8B46FE            mov ax,[bp-0x2]
000004D8  3B46FC            cmp ax,[bp-0x4]
000004DB  75E2              jnz 0x4bf
000004DD  89EC              mov sp,bp
000004DF  5D                pop bp
000004E0  CA0400            retf word 0x4
000004E3  55                push bp
000004E4  89E5              mov bp,sp
000004E6  83EC14            sub sp,0x14
000004E9  C47E0C            les di,word [bp+0xc]
000004EC  26FF752A          push word [es:di+0x2a]
000004F0  26FF7528          push word [es:di+0x28]
000004F4  E8F2FC            call 0x1e9
000004F7  8BC8              mov cx,ax
000004F9  C47E0C            les di,word [bp+0xc]
000004FC  26C47D28          les di,word [es:di+0x28]
00000500  268A4508          mov al,[es:di+0x8]
00000504  30E4              xor ah,ah
00000506  03460A            add ax,[bp+0xa]
00000509  31D2              xor dx,dx
0000050B  F7F1              div cx
0000050D  8BD0              mov dx,ax
0000050F  C47E0C            les di,word [bp+0xc]
00000512  26C47D28          les di,word [es:di+0x28]
00000516  26C47D0A          les di,word [es:di+0xa]
0000051A  268A4503          mov al,[es:di+0x3]
0000051E  98                cbw
0000051F  33C2              xor ax,dx
00000521  8946FC            mov [bp-0x4],ax
00000524  C47E0C            les di,word [bp+0xc]
00000527  26FF752A          push word [es:di+0x2a]
0000052B  26FF7528          push word [es:di+0x28]
0000052F  E8B7FC            call 0x1e9
00000532  8BC8              mov cx,ax
00000534  C47E0C            les di,word [bp+0xc]
00000537  26C47D28          les di,word [es:di+0x28]
0000053B  268A4508          mov al,[es:di+0x8]
0000053F  30E4              xor ah,ah
00000541  03460A            add ax,[bp+0xa]
00000544  31D2              xor dx,dx
00000546  F7F1              div cx
00000548  92                xchg ax,dx
00000549  8946FA            mov [bp-0x6],ax
0000054C  C47E0C            les di,word [bp+0xc]
0000054F  26C47D28          les di,word [es:di+0x28]
00000553  26C47D0A          les di,word [es:di+0xa]
00000557  268A4501          mov al,[es:di+0x1]
0000055B  30E4              xor ah,ah
0000055D  8BD0              mov dx,ax
0000055F  B80100            mov ax,0x1
00000562  8BCA              mov cx,dx
00000564  D3E0              shl ax,cl
00000566  48                dec ax
00000567  8946F8            mov [bp-0x8],ax
0000056A  8B46FA            mov ax,[bp-0x6]
0000056D  C47E0C            les di,word [bp+0xc]
00000570  03F8              add di,ax
00000572  268A4520          mov al,[es:di+0x20]
00000576  30E4              xor ah,ah
00000578  8946F6            mov [bp-0xa],ax
0000057B  C47E0C            les di,word [bp+0xc]
0000057E  26C47D28          les di,word [es:di+0x28]
00000582  26C47D0A          les di,word [es:di+0xa]
00000586  268A4501          mov al,[es:di+0x1]
0000058A  30E4              xor ah,ah
0000058C  8946F4            mov [bp-0xc],ax
0000058F  B80100            mov ax,0x1
00000592  8B4EF4            mov cx,[bp-0xc]
00000595  D3E0              shl ax,cl
00000597  48                dec ax
00000598  8946F2            mov [bp-0xe],ax
0000059B  C47E0C            les di,word [bp+0xc]
0000059E  26C47D28          les di,word [es:di+0x28]
000005A2  268B05            mov ax,[es:di]
000005A5  3B460A            cmp ax,[bp+0xa]
000005A8  7703              ja 0x5ad
000005AA  E9A300            jmp 0x650
000005AD  C47E0C            les di,word [bp+0xc]
000005B0  26C47D28          les di,word [es:di+0x28]
000005B4  268B4502          mov ax,[es:di+0x2]
000005B8  3B4608            cmp ax,[bp+0x8]
000005BB  7703              ja 0x5c0
000005BD  E99000            jmp 0x650
000005C0  C47E0C            les di,word [bp+0xc]
000005C3  26C47D28          les di,word [es:di+0x28]
000005C7  26C47D0A          les di,word [es:di+0xa]
000005CB  268A05            mov al,[es:di]
000005CE  FEC8              dec al
000005D0  30E4              xor ah,ah
000005D2  8946EC            mov [bp-0x14],ax
000005D5  31C0              xor ax,ax
000005D7  3B46EC            cmp ax,[bp-0x14]
000005DA  7774              ja 0x650
000005DC  8946FE            mov [bp-0x2],ax
000005DF  EB03              jmp 0x5e4
000005E1  FF46FE            inc word [bp-0x2]
000005E4  8B46FC            mov ax,[bp-0x4]
000005E7  8BC8              mov cx,ax
000005E9  8B4608            mov ax,[bp+0x8]
000005EC  D1E0              shl ax,1
000005EE  D1E0              shl ax,1
000005F0  8BD0              mov dx,ax
000005F2  8B46FE            mov ax,[bp-0x2]
000005F5  D1E0              shl ax,1
000005F7  D1E0              shl ax,1
000005F9  C47E0C            les di,word [bp+0xc]
000005FC  03F8              add di,ax
000005FE  26C43D            les di,word [es:di]
00000601  03FA              add di,dx
00000603  26C43D            les di,word [es:di]
00000606  03F9              add di,cx
00000608  89F8              mov ax,di
0000060A  8CC2              mov dx,es
0000060C  8946EE            mov [bp-0x12],ax
0000060F  8956F0            mov [bp-0x10],dx
00000612  8B4606            mov ax,[bp+0x6]
00000615  2346F2            and ax,[bp-0xe]
00000618  8B4EF6            mov cx,[bp-0xa]
0000061B  D3E0              shl ax,cl
0000061D  8BD8              mov bx,ax
0000061F  8B46F8            mov ax,[bp-0x8]
00000622  8B4EF6            mov cx,[bp-0xa]
00000625  D3E0              shl ax,cl
00000627  F7D0              not ax
00000629  8BD0              mov dx,ax
0000062B  C47EEE            les di,word [bp-0x12]
0000062E  268A05            mov al,[es:di]
00000631  30E4              xor ah,ah
00000633  23C2              and ax,dx
00000635  0BC3              or ax,bx
00000637  C47EEE            les di,word [bp-0x12]
0000063A  268805            mov [es:di],al
0000063D  8B4606            mov ax,[bp+0x6]
00000640  8B4EF4            mov cx,[bp-0xc]
00000643  D3E8              shr ax,cl
00000645  894606            mov [bp+0x6],ax
00000648  8B46FE            mov ax,[bp-0x2]
0000064B  3B46EC            cmp ax,[bp-0x14]
0000064E  7591              jnz 0x5e1
00000650  89EC              mov sp,bp
00000652  5D                pop bp
00000653  CA0A00            retf word 0xa
00000656  55                push bp
00000657  89E5              mov bp,sp
00000659  83EC21            sub sp,0x21
0000065C  C47E08            les di,word [bp+0x8]
0000065F  06                push es
00000660  57                push di
00000661  8D7EEF            lea di,[bp-0x11]
00000664  16                push ss
00000665  57                push di
00000666  B80800            mov ax,0x8
00000669  50                push ax
0000066A  9AC002561A        call word 0x1a56:word 0x2c0
0000066F  C47E10            les di,word [bp+0x10]
00000672  06                push es
00000673  57                push di
00000674  8D7EF7            lea di,[bp-0x9]
00000677  16                push ss
00000678  57                push di
00000679  B80900            mov ax,0x9
0000067C  50                push ax
0000067D  9AC002561A        call word 0x1a56:word 0x2c0
00000682  8A46F7            mov al,[bp-0x9]
00000685  30E4              xor ah,ah
00000687  8946ED            mov [bp-0x13],ax
0000068A  807EF801          cmp byte [bp-0x8],0x1
0000068E  7403              jz 0x693
00000690  E9A601            jmp 0x839
00000693  C47E04            les di,word [bp+0x4]
00000696  06                push es
00000697  57                push di
00000698  8B460C            mov ax,[bp+0xc]
0000069B  2B460E            sub ax,[bp+0xe]
0000069E  50                push ax
0000069F  B000              mov al,0x0
000006A1  50                push ax
000006A2  9A871B561A        call word 0x1a56:word 0x1b87
000006A7  807EFA00          cmp byte [bp-0x6],0x0
000006AB  741B              jz 0x6c8
000006AD  8B460E            mov ax,[bp+0xe]
000006B0  31D2              xor dx,dx
000006B2  B90800            mov cx,0x8
000006B5  F7F1              div cx
000006B7  25FEFF            and ax,0xfffe
000006BA  8946EB            mov [bp-0x15],ax
000006BD  8B460E            mov ax,[bp+0xe]
000006C0  250F00            and ax,0xf
000006C3  8946E9            mov [bp-0x17],ax
000006C6  EB16              jmp 0x6de
000006C8  8B460E            mov ax,[bp+0xe]
000006CB  31D2              xor dx,dx
000006CD  B90800            mov cx,0x8
000006D0  F7F1              div cx
000006D2  8946EB            mov [bp-0x15],ax
000006D5  8B460E            mov ax,[bp+0xe]
000006D8  250700            and ax,0x7
000006DB  8946E9            mov [bp-0x17],ax
000006DE  807EFB00          cmp byte [bp-0x5],0x0
000006E2  7503              jnz 0x6e7
000006E4  E9A900            jmp 0x790
000006E7  807EFA00          cmp byte [bp-0x6],0x0
000006EB  7451              jz 0x73e
000006ED  1E                push ds
000006EE  FC                cld
000006EF  8B96EDFF          mov dx,[bp-0x13]
000006F3  4A                dec dx
000006F4  7845              js 0x73b
000006F6  C5B61400          lds si,word [bp+0x14]
000006FA  89D3              mov bx,dx
000006FC  D1E3              shl bx,1
000006FE  D1E3              shl bx,1
00000700  C530              lds si,word [bx+si]
00000702  03B6EBFF          add si,[bp-0x15]
00000706  C4BE0400          les di,word [bp+0x4]
0000070A  AD                lodsw
0000070B  8A8EE9FF          mov cl,[bp-0x17]
0000070F  D3C8              ror ax,cl
00000711  8B9E0C00          mov bx,[bp+0xc]
00000715  2B9E0E00          sub bx,[bp+0xe]
00000719  F6D9              neg cl
0000071B  80C110            add cl,0x10
0000071E  30ED              xor ch,ch
00000720  83FB00            cmp bx,0x0
00000723  7ECE              jng 0x6f3
00000725  39CB              cmp bx,cx
00000727  7D02              jnl 0x72b
00000729  89D9              mov cx,bx
0000072B  29CB              sub bx,cx
0000072D  D1C8              ror ax,1
0000072F  26D015            rcl byte [es:di],1
00000732  47                inc di
00000733  E2F8              loop 0x72d
00000735  AD                lodsw
00000736  B91000            mov cx,0x10
00000739  EBE5              jmp 0x720
0000073B  1F                pop ds
0000073C  EB4F              jmp 0x78d
0000073E  1E                push ds
0000073F  FC                cld
00000740  8B96EDFF          mov dx,[bp-0x13]
00000744  4A                dec dx
00000745  7845              js 0x78c
00000747  C5B61400          lds si,word [bp+0x14]
0000074B  89D3              mov bx,dx
0000074D  D1E3              shl bx,1
0000074F  D1E3              shl bx,1
00000751  C530              lds si,word [bx+si]
00000753  03B6EBFF          add si,[bp-0x15]
00000757  C4BE0400          les di,word [bp+0x4]
0000075B  AC                lodsb
0000075C  8A8EE9FF          mov cl,[bp-0x17]
00000760  D2C8              ror al,cl
00000762  8B9E0C00          mov bx,[bp+0xc]
00000766  2B9E0E00          sub bx,[bp+0xe]
0000076A  F6D9              neg cl
0000076C  80C108            add cl,0x8
0000076F  30ED              xor ch,ch
00000771  83FB00            cmp bx,0x0
00000774  7ECE              jng 0x744
00000776  39CB              cmp bx,cx
00000778  7D02              jnl 0x77c
0000077A  89D9              mov cx,bx
0000077C  29CB              sub bx,cx
0000077E  D0C8              ror al,1
00000780  26D015            rcl byte [es:di],1
00000783  47                inc di
00000784  E2F8              loop 0x77e
00000786  AC                lodsb
00000787  B90800            mov cx,0x8
0000078A  EBE5              jmp 0x771
0000078C  1F                pop ds
0000078D  E9A600            jmp 0x836
00000790  807EFA00          cmp byte [bp-0x6],0x0
00000794  7451              jz 0x7e7
00000796  1E                push ds
00000797  FC                cld
00000798  8B96EDFF          mov dx,[bp-0x13]
0000079C  4A                dec dx
0000079D  7845              js 0x7e4
0000079F  C5B61400          lds si,word [bp+0x14]
000007A3  89D3              mov bx,dx
000007A5  D1E3              shl bx,1
000007A7  D1E3              shl bx,1
000007A9  C530              lds si,word [bx+si]
000007AB  03B6EBFF          add si,[bp-0x15]
000007AF  C4BE0400          les di,word [bp+0x4]
000007B3  AD                lodsw
000007B4  8A8EE9FF          mov cl,[bp-0x17]
000007B8  D3C0              rol ax,cl
000007BA  8B9E0C00          mov bx,[bp+0xc]
000007BE  2B9E0E00          sub bx,[bp+0xe]
000007C2  F6D9              neg cl
000007C4  80C110            add cl,0x10
000007C7  30ED              xor ch,ch
000007C9  83FB00            cmp bx,0x0
000007CC  7ECE              jng 0x79c
000007CE  39CB              cmp bx,cx
000007D0  7D02              jnl 0x7d4
000007D2  89D9              mov cx,bx
000007D4  29CB              sub bx,cx
000007D6  D1C0              rol ax,1
000007D8  26D015            rcl byte [es:di],1
000007DB  47                inc di
000007DC  E2F8              loop 0x7d6
000007DE  AD                lodsw
000007DF  B91000            mov cx,0x10
000007E2  EBE5              jmp 0x7c9
000007E4  1F                pop ds
000007E5  EB4F              jmp 0x836
000007E7  1E                push ds
000007E8  FC                cld
000007E9  8B96EDFF          mov dx,[bp-0x13]
000007ED  4A                dec dx
000007EE  7845              js 0x835
000007F0  C5B61400          lds si,word [bp+0x14]
000007F4  89D3              mov bx,dx
000007F6  D1E3              shl bx,1
000007F8  D1E3              shl bx,1
000007FA  C530              lds si,word [bx+si]
000007FC  03B6EBFF          add si,[bp-0x15]
00000800  C4BE0400          les di,word [bp+0x4]
00000804  AC                lodsb
00000805  8A8EE9FF          mov cl,[bp-0x17]
00000809  D2C0              rol al,cl
0000080B  8B9E0C00          mov bx,[bp+0xc]
0000080F  2B9E0E00          sub bx,[bp+0xe]
00000813  F6D9              neg cl
00000815  80C108            add cl,0x8
00000818  30ED              xor ch,ch
0000081A  83FB00            cmp bx,0x0
0000081D  7ECE              jng 0x7ed
0000081F  39CB              cmp bx,cx
00000821  7D02              jnl 0x825
00000823  89D9              mov cx,bx
00000825  29CB              sub bx,cx
00000827  D0C0              rol al,1
00000829  26D015            rcl byte [es:di],1
0000082C  47                inc di
0000082D  E2F8              loop 0x827
0000082F  AC                lodsb
00000830  B90800            mov cx,0x8
00000833  EBE5              jmp 0x81a
00000835  1F                pop ds
00000836  E99E00            jmp 0x8d7
00000839  807EF808          cmp byte [bp-0x8],0x8
0000083D  752A              jnz 0x869
0000083F  8B460E            mov ax,[bp+0xe]
00000842  3B460C            cmp ax,[bp+0xc]
00000845  7320              jnc 0x867
00000847  8A46FA            mov al,[bp-0x6]
0000084A  98                cbw
0000084B  33460E            xor ax,[bp+0xe]
0000084E  C47E14            les di,word [bp+0x14]
00000851  26C43D            les di,word [es:di]
00000854  03F8              add di,ax
00000856  268A05            mov al,[es:di]
00000859  C47E04            les di,word [bp+0x4]
0000085C  268805            mov [es:di],al
0000085F  FF4604            inc word [bp+0x4]
00000862  FF460E            inc word [bp+0xe]
00000865  EBD8              jmp 0x83f
00000867  EB6E              jmp 0x8d7
00000869  8A46F8            mov al,[bp-0x8]
0000086C  30E4              xor ah,ah
0000086E  8BD0              mov dx,ax
00000870  B80100            mov ax,0x1
00000873  8BCA              mov cx,dx
00000875  D3E0              shl ax,cl
00000877  48                dec ax
00000878  8946E1            mov [bp-0x1f],ax
0000087B  8A46F8            mov al,[bp-0x8]
0000087E  30E4              xor ah,ah
00000880  8BC8              mov cx,ax
00000882  B80800            mov ax,0x8
00000885  99                cwd
00000886  F7F9              idiv cx
00000888  8946DF            mov [bp-0x21],ax
0000088B  8B460E            mov ax,[bp+0xe]
0000088E  3B460C            cmp ax,[bp+0xc]
00000891  7344              jnc 0x8d7
00000893  8B460E            mov ax,[bp+0xe]
00000896  31D2              xor dx,dx
00000898  F776DF            div word [bp-0x21]
0000089B  92                xchg ax,dx
0000089C  8BF8              mov di,ax
0000089E  8A43EF            mov al,[bp+di-0x11]
000008A1  30E4              xor ah,ah
000008A3  8BD8              mov bx,ax
000008A5  8A46FA            mov al,[bp-0x6]
000008A8  98                cbw
000008A9  8BC8              mov cx,ax
000008AB  8B460E            mov ax,[bp+0xe]
000008AE  31D2              xor dx,dx
000008B0  F776DF            div word [bp-0x21]
000008B3  33C1              xor ax,cx
000008B5  C47E14            les di,word [bp+0x14]
000008B8  26C43D            les di,word [es:di]
000008BB  03F8              add di,ax
000008BD  268A05            mov al,[es:di]
000008C0  30E4              xor ah,ah
000008C2  8BCB              mov cx,bx
000008C4  D3E8              shr ax,cl
000008C6  2346E1            and ax,[bp-0x1f]
000008C9  C47E04            les di,word [bp+0x4]
000008CC  268805            mov [es:di],al
000008CF  FF4604            inc word [bp+0x4]
000008D2  FF460E            inc word [bp+0xe]
000008D5  EBB4              jmp 0x88b
000008D7  89EC              mov sp,bp
000008D9  5D                pop bp
000008DA  C21400            ret word 0x14
000008DD  55                push bp
000008DE  89E5              mov bp,sp
000008E0  83EC23            sub sp,0x23
000008E3  C47E08            les di,word [bp+0x8]
000008E6  06                push es
000008E7  57                push di
000008E8  8D7EEF            lea di,[bp-0x11]
000008EB  16                push ss
000008EC  57                push di
000008ED  B80800            mov ax,0x8
000008F0  50                push ax
000008F1  9AC002561A        call word 0x1a56:word 0x2c0
000008F6  C47E10            les di,word [bp+0x10]
000008F9  06                push es
000008FA  57                push di
000008FB  8D7EF7            lea di,[bp-0x9]
000008FE  16                push ss
000008FF  57                push di
00000900  B80900            mov ax,0x9
00000903  50                push ax
00000904  9AC002561A        call word 0x1a56:word 0x2c0
00000909  8A46F7            mov al,[bp-0x9]
0000090C  30E4              xor ah,ah
0000090E  8946ED            mov [bp-0x13],ax
00000911  807EF801          cmp byte [bp-0x8],0x1
00000915  7403              jz 0x91a
00000917  E96401            jmp 0xa7e
0000091A  807EFA00          cmp byte [bp-0x6],0x0
0000091E  7422              jz 0x942
00000920  8B460E            mov ax,[bp+0xe]
00000923  31D2              xor dx,dx
00000925  B90800            mov cx,0x8
00000928  F7F1              div cx
0000092A  25FEFF            and ax,0xfffe
0000092D  8946EB            mov [bp-0x15],ax
00000930  8B460E            mov ax,[bp+0xe]
00000933  250F00            and ax,0xf
00000936  8BD0              mov dx,ax
00000938  B81000            mov ax,0x10
0000093B  2BC2              sub ax,dx
0000093D  8946E9            mov [bp-0x17],ax
00000940  EB1D              jmp 0x95f
00000942  8B460E            mov ax,[bp+0xe]
00000945  31D2              xor dx,dx
00000947  B90800            mov cx,0x8
0000094A  F7F1              div cx
0000094C  8946EB            mov [bp-0x15],ax
0000094F  8B460E            mov ax,[bp+0xe]
00000952  250700            and ax,0x7
00000955  8BD0              mov dx,ax
00000957  B80800            mov ax,0x8
0000095A  2BC2              sub ax,dx
0000095C  8946E9            mov [bp-0x17],ax
0000095F  807EFB00          cmp byte [bp-0x5],0x0
00000963  7503              jnz 0x968
00000965  E98B00            jmp 0x9f3
00000968  807EFA00          cmp byte [bp-0x6],0x0
0000096C  7442              jz 0x9b0
0000096E  1E                push ds
0000096F  FC                cld
00000970  31D2              xor dx,dx
00000972  FE8EEDFF          dec byte [bp-0x13]
00000976  7835              js 0x9ad
00000978  C5B61600          lds si,word [bp+0x16]
0000097C  89D3              mov bx,dx
0000097E  42                inc dx
0000097F  D1E3              shl bx,1
00000981  D1E3              shl bx,1
00000983  C438              les di,word [bx+si]
00000985  03BEEBFF          add di,[bp-0x15]
00000989  C5B60400          lds si,word [bp+0x4]
0000098D  8B8EE9FF          mov cx,[bp-0x17]
00000991  8B9E0C00          mov bx,[bp+0xc]
00000995  2B9E0E00          sub bx,[bp+0xe]
00000999  83FB00            cmp bx,0x0
0000099C  7ED4              jng 0x972
0000099E  29CB              sub bx,cx
000009A0  D00C              ror byte [si],1
000009A2  D1D8              rcr ax,1
000009A4  46                inc si
000009A5  E2F9              loop 0x9a0
000009A7  AB                stosw
000009A8  B91000            mov cx,0x10
000009AB  EBEC              jmp 0x999
000009AD  1F                pop ds
000009AE  EB40              jmp 0x9f0
000009B0  1E                push ds
000009B1  FC                cld
000009B2  31D2              xor dx,dx
000009B4  FE8EEDFF          dec byte [bp-0x13]
000009B8  7835              js 0x9ef
000009BA  C5B61600          lds si,word [bp+0x16]
000009BE  89D3              mov bx,dx
000009C0  42                inc dx
000009C1  D1E3              shl bx,1
000009C3  D1E3              shl bx,1
000009C5  C438              les di,word [bx+si]
000009C7  03BEEBFF          add di,[bp-0x15]
000009CB  C5B60400          lds si,word [bp+0x4]
000009CF  8B8EE9FF          mov cx,[bp-0x17]
000009D3  8B9E0C00          mov bx,[bp+0xc]
000009D7  2B9E0E00          sub bx,[bp+0xe]
000009DB  83FB00            cmp bx,0x0
000009DE  7ED4              jng 0x9b4
000009E0  29CB              sub bx,cx
000009E2  D00C              ror byte [si],1
000009E4  D0D8              rcr al,1
000009E6  46                inc si
000009E7  E2F9              loop 0x9e2
000009E9  AA                stosb
000009EA  B90800            mov cx,0x8
000009ED  EBEC              jmp 0x9db
000009EF  1F                pop ds
000009F0  E98800            jmp 0xa7b
000009F3  807EFA00          cmp byte [bp-0x6],0x0
000009F7  7442              jz 0xa3b
000009F9  1E                push ds
000009FA  FC                cld
000009FB  31D2              xor dx,dx
000009FD  FE8EEDFF          dec byte [bp-0x13]
00000A01  7835              js 0xa38
00000A03  C5B61600          lds si,word [bp+0x16]
00000A07  89D3              mov bx,dx
00000A09  42                inc dx
00000A0A  D1E3              shl bx,1
00000A0C  D1E3              shl bx,1
00000A0E  C438              les di,word [bx+si]
00000A10  03BEEBFF          add di,[bp-0x15]
00000A14  C5B60400          lds si,word [bp+0x4]
00000A18  8B8EE9FF          mov cx,[bp-0x17]
00000A1C  8B9E0C00          mov bx,[bp+0xc]
00000A20  2B9E0E00          sub bx,[bp+0xe]
00000A24  83FB00            cmp bx,0x0
00000A27  7ED4              jng 0x9fd
00000A29  29CB              sub bx,cx
00000A2B  D00C              ror byte [si],1
00000A2D  D1D0              rcl ax,1
00000A2F  46                inc si
00000A30  E2F9              loop 0xa2b
00000A32  AB                stosw
00000A33  B91000            mov cx,0x10
00000A36  EBEC              jmp 0xa24
00000A38  1F                pop ds
00000A39  EB40              jmp 0xa7b
00000A3B  1E                push ds
00000A3C  FC                cld
00000A3D  31D2              xor dx,dx
00000A3F  FE8EEDFF          dec byte [bp-0x13]
00000A43  7835              js 0xa7a
00000A45  C5B61600          lds si,word [bp+0x16]
00000A49  89D3              mov bx,dx
00000A4B  42                inc dx
00000A4C  D1E3              shl bx,1
00000A4E  D1E3              shl bx,1
00000A50  C438              les di,word [bx+si]
00000A52  03BEEBFF          add di,[bp-0x15]
00000A56  C5B60400          lds si,word [bp+0x4]
00000A5A  8B8EE9FF          mov cx,[bp-0x17]
00000A5E  8B9E0C00          mov bx,[bp+0xc]
00000A62  2B9E0E00          sub bx,[bp+0xe]
00000A66  83FB00            cmp bx,0x0
00000A69  7ED4              jng 0xa3f
00000A6B  29CB              sub bx,cx
00000A6D  D00C              ror byte [si],1
00000A6F  D0D0              rcl al,1
00000A71  46                inc si
00000A72  E2F9              loop 0xa6d
00000A74  AA                stosb
00000A75  B90800            mov cx,0x8
00000A78  EBEC              jmp 0xa66
00000A7A  1F                pop ds
00000A7B  E9F700            jmp 0xb75
00000A7E  807EF808          cmp byte [bp-0x8],0x8
00000A82  752B              jnz 0xaaf
00000A84  8B460E            mov ax,[bp+0xe]
00000A87  3B460C            cmp ax,[bp+0xc]
00000A8A  7320              jnc 0xaac
00000A8C  C47E04            les di,word [bp+0x4]
00000A8F  268A15            mov dl,[es:di]
00000A92  8A46FA            mov al,[bp-0x6]
00000A95  98                cbw
00000A96  33460E            xor ax,[bp+0xe]
00000A99  C47E16            les di,word [bp+0x16]
00000A9C  26C43D            les di,word [es:di]
00000A9F  03F8              add di,ax
00000AA1  268815            mov [es:di],dl
00000AA4  FF4604            inc word [bp+0x4]
00000AA7  FF460E            inc word [bp+0xe]
00000AAA  EBD8              jmp 0xa84
00000AAC  E9C600            jmp 0xb75
00000AAF  8A46F7            mov al,[bp-0x9]
00000AB2  FEC8              dec al
00000AB4  30E4              xor ah,ah
00000AB6  09C0              or ax,ax
00000AB8  722A              jc 0xae4
00000ABA  8946DD            mov [bp-0x23],ax
00000ABD  EB03              jmp 0xac2
00000ABF  FF4EDD            dec word [bp-0x23]
00000AC2  8B46DD            mov ax,[bp-0x23]
00000AC5  D1E0              shl ax,1
00000AC7  D1E0              shl ax,1
00000AC9  C47E16            les di,word [bp+0x16]
00000ACC  03F8              add di,ax
00000ACE  26C43D            les di,word [es:di]
00000AD1  06                push es
00000AD2  57                push di
00000AD3  FF7614            push word [bp+0x14]
00000AD6  B000              mov al,0x0
00000AD8  50                push ax
00000AD9  9A871B561A        call word 0x1a56:word 0x1b87
00000ADE  837EDD00          cmp word [bp-0x23],0x0
00000AE2  75DB              jnz 0xabf
00000AE4  8A46F8            mov al,[bp-0x8]
00000AE7  30E4              xor ah,ah
00000AE9  8BD0              mov dx,ax
00000AEB  B80100            mov ax,0x1
00000AEE  8BCA              mov cx,dx
00000AF0  D3E0              shl ax,cl
00000AF2  48                dec ax
00000AF3  8946E1            mov [bp-0x1f],ax
00000AF6  8A46F8            mov al,[bp-0x8]
00000AF9  30E4              xor ah,ah
00000AFB  8BC8              mov cx,ax
00000AFD  B80800            mov ax,0x8
00000B00  99                cwd
00000B01  F7F9              idiv cx
00000B03  8946DF            mov [bp-0x21],ax
00000B06  8B460E            mov ax,[bp+0xe]
00000B09  3B460C            cmp ax,[bp+0xc]
00000B0C  7367              jnc 0xb75
00000B0E  8B460E            mov ax,[bp+0xe]
00000B11  31D2              xor dx,dx
00000B13  F776DF            div word [bp-0x21]
00000B16  92                xchg ax,dx
00000B17  8BF8              mov di,ax
00000B19  8A43EF            mov al,[bp+di-0x11]
00000B1C  30E4              xor ah,ah
00000B1E  8BD0              mov dx,ax
00000B20  C47E04            les di,word [bp+0x4]
00000B23  268A05            mov al,[es:di]
00000B26  30E4              xor ah,ah
00000B28  2346E1            and ax,[bp-0x1f]
00000B2B  8BCA              mov cx,dx
00000B2D  D3E0              shl ax,cl
00000B2F  8BD8              mov bx,ax
00000B31  8A46FA            mov al,[bp-0x6]
00000B34  98                cbw
00000B35  8BC8              mov cx,ax
00000B37  8B460E            mov ax,[bp+0xe]
00000B3A  31D2              xor dx,dx
00000B3C  F776DF            div word [bp-0x21]
00000B3F  33C1              xor ax,cx
00000B41  C47E16            les di,word [bp+0x16]
00000B44  26C43D            les di,word [es:di]
00000B47  03F8              add di,ax
00000B49  268A05            mov al,[es:di]
00000B4C  30E4              xor ah,ah
00000B4E  0BC3              or ax,bx
00000B50  8AD8              mov bl,al
00000B52  8A46FA            mov al,[bp-0x6]
00000B55  98                cbw
00000B56  8BC8              mov cx,ax
00000B58  8B460E            mov ax,[bp+0xe]
00000B5B  31D2              xor dx,dx
00000B5D  F776DF            div word [bp-0x21]
00000B60  33C1              xor ax,cx
00000B62  C47E16            les di,word [bp+0x16]
00000B65  26C43D            les di,word [es:di]
00000B68  03F8              add di,ax
00000B6A  26881D            mov [es:di],bl
00000B6D  FF4604            inc word [bp+0x4]
00000B70  FF460E            inc word [bp+0xe]
00000B73  EB91              jmp 0xb06
00000B75  89EC              mov sp,bp
00000B77  5D                pop bp
00000B78  C21600            ret word 0x16
00000B7B  55                push bp
00000B7C  89E5              mov bp,sp
00000B7E  1E                push ds
00000B7F  FC                cld
00000B80  C4BE0C00          les di,word [bp+0xc]
00000B84  C59E0400          lds bx,word [bp+0x4]
00000B88  8B8E0800          mov cx,[bp+0x8]
00000B8C  8CC0              mov ax,es
00000B8E  09F8              or ax,di
00000B90  747E              jz 0xc10
00000B92  8CDA              mov dx,ds
00000B94  09DA              or dx,bx
00000B96  7478              jz 0xc10
00000B98  83F900            cmp cx,0x0
00000B9B  7473              jz 0xc10
00000B9D  837F0201          cmp word [bx+0x2],0x1
00000BA1  750C              jnz 0xbaf
00000BA3  83C304            add bx,0x4
00000BA6  268A05            mov al,[es:di]
00000BA9  D7                xlatb
00000BAA  AA                stosb
00000BAB  E2F9              loop 0xba6
00000BAD  EB61              jmp 0xc10
00000BAF  8B860A00          mov ax,[bp+0xa]
00000BB3  837F0202          cmp word [bx+0x2],0x2
00000BB7  7524              jnz 0xbdd
00000BB9  250100            and ax,0x1
00000BBC  7406              jz 0xbc4
00000BBE  8B07              mov ax,[bx]
00000BC0  D1E0              shl ax,1
00000BC2  01C3              add bx,ax
00000BC4  83C304            add bx,0x4
00000BC7  268A05            mov al,[es:di]
00000BCA  30E4              xor ah,ah
00000BCC  D1E0              shl ax,1
00000BCE  89CE              mov si,cx
00000BD0  81E60100          and si,0x1
00000BD4  01C6              add si,ax
00000BD6  8A00              mov al,[bx+si]
00000BD8  AA                stosb
00000BD9  E2EC              loop 0xbc7
00000BDB  EB33              jmp 0xc10
00000BDD  8B860A00          mov ax,[bp+0xa]
00000BE1  99                cwd
00000BE2  F77702            div word [bx+0x2]
00000BE5  8B07              mov ax,[bx]
00000BE7  F7E2              mul dx
00000BE9  F76702            mul word [bx+0x2]
00000BEC  050400            add ax,0x4
00000BEF  8B5702            mov dx,[bx+0x2]
00000BF2  01C3              add bx,ax
00000BF4  30F6              xor dh,dh
00000BF6  30E4              xor ah,ah
00000BF8  88F0              mov al,dh
00000BFA  89C6              mov si,ax
00000BFC  268A05            mov al,[es:di]
00000BFF  F6E2              mul dl
00000C01  01C6              add si,ax
00000C03  8A00              mov al,[bx+si]
00000C05  AA                stosb
00000C06  FEC6              inc dh
00000C08  38D6              cmp dh,dl
00000C0A  7502              jnz 0xc0e
00000C0C  30F6              xor dh,dh
00000C0E  E2E6              loop 0xbf6
00000C10  1F                pop ds
00000C11  89EC              mov sp,bp
00000C13  5D                pop bp
00000C14  C20C00            ret word 0xc
00000C17  55                push bp
00000C18  89E5              mov bp,sp
00000C1A  83EC14            sub sp,0x14
00000C1D  8B4604            mov ax,[bp+0x4]
00000C20  3B4606            cmp ax,[bp+0x6]
00000C23  7203              jc 0xc28
00000C25  E9FB00            jmp 0xd23
00000C28  31C0              xor ax,ax
00000C2A  8946F4            mov [bp-0xc],ax
00000C2D  31C0              xor ax,ax
00000C2F  8946F6            mov [bp-0xa],ax
00000C32  31C0              xor ax,ax
00000C34  8946F8            mov [bp-0x8],ax
00000C37  31C0              xor ax,ax
00000C39  8946EE            mov [bp-0x12],ax
00000C3C  31C0              xor ax,ax
00000C3E  8946F2            mov [bp-0xe],ax
00000C41  8B4606            mov ax,[bp+0x6]
00000C44  31D2              xor dx,dx
00000C46  F77604            div word [bp+0x4]
00000C49  8946FA            mov [bp-0x6],ax
00000C4C  8B4606            mov ax,[bp+0x6]
00000C4F  31D2              xor dx,dx
00000C51  F77604            div word [bp+0x4]
00000C54  92                xchg ax,dx
00000C55  8946FC            mov [bp-0x4],ax
00000C58  8B46FC            mov ax,[bp-0x4]
00000C5B  99                cwd
00000C5C  B90200            mov cx,0x2
00000C5F  F7F9              idiv cx
00000C61  8946FE            mov [bp-0x2],ax
00000C64  8B4604            mov ax,[bp+0x4]
00000C67  31D2              xor dx,dx
00000C69  8BC8              mov cx,ax
00000C6B  8BDA              mov bx,dx
00000C6D  8B46F4            mov ax,[bp-0xc]
00000C70  99                cwd
00000C71  3BD3              cmp dx,bx
00000C73  7C0C              jl 0xc81
00000C75  7E03              jng 0xc7a
00000C77  E9A600            jmp 0xd20
00000C7A  3BC1              cmp ax,cx
00000C7C  7203              jc 0xc81
00000C7E  E99F00            jmp 0xd20
00000C81  8B46FA            mov ax,[bp-0x6]
00000C84  0146F8            add [bp-0x8],ax
00000C87  8B46FC            mov ax,[bp-0x4]
00000C8A  0146FE            add [bp-0x2],ax
00000C8D  8B4604            mov ax,[bp+0x4]
00000C90  31D2              xor dx,dx
00000C92  8BC8              mov cx,ax
00000C94  8BDA              mov bx,dx
00000C96  8B46FE            mov ax,[bp-0x2]
00000C99  99                cwd
00000C9A  3BD3              cmp dx,bx
00000C9C  7F06              jg 0xca4
00000C9E  7C0D              jl 0xcad
00000CA0  3BC1              cmp ax,cx
00000CA2  7209              jc 0xcad
00000CA4  FF46F8            inc word [bp-0x8]
00000CA7  8B4604            mov ax,[bp+0x4]
00000CAA  2946FE            sub [bp-0x2],ax
00000CAD  8B46EE            mov ax,[bp-0x12]
00000CB0  8946EC            mov [bp-0x14],ax
00000CB3  8B46F2            mov ax,[bp-0xe]
00000CB6  8946F0            mov [bp-0x10],ax
00000CB9  8B46F6            mov ax,[bp-0xa]
00000CBC  C47E08            les di,word [bp+0x8]
00000CBF  03F8              add di,ax
00000CC1  268A05            mov al,[es:di]
00000CC4  30E4              xor ah,ah
00000CC6  8946EE            mov [bp-0x12],ax
00000CC9  8B7EEE            mov di,[bp-0x12]
00000CCC  8A857A88          mov al,[di-0x7786]
00000CD0  30E4              xor ah,ah
00000CD2  8946F2            mov [bp-0xe],ax
00000CD5  8B46F2            mov ax,[bp-0xe]
00000CD8  3B46F0            cmp ax,[bp-0x10]
00000CDB  7E0E              jng 0xceb
00000CDD  8B46EE            mov ax,[bp-0x12]
00000CE0  8946EC            mov [bp-0x14],ax
00000CE3  8B46F2            mov ax,[bp-0xe]
00000CE6  8946F0            mov [bp-0x10],ax
00000CE9  EB16              jmp 0xd01
00000CEB  8B46F2            mov ax,[bp-0xe]
00000CEE  3B46F0            cmp ax,[bp-0x10]
00000CF1  750E              jnz 0xd01
00000CF3  8B46EE            mov ax,[bp-0x12]
00000CF6  3B46EC            cmp ax,[bp-0x14]
00000CF9  7406              jz 0xd01
00000CFB  8B46EE            mov ax,[bp-0x12]
00000CFE  8946EC            mov [bp-0x14],ax
00000D01  FF46F6            inc word [bp-0xa]
00000D04  8B46F6            mov ax,[bp-0xa]
00000D07  3B46F8            cmp ax,[bp-0x8]
00000D0A  7CAD              jl 0xcb9
00000D0C  8A56EC            mov dl,[bp-0x14]
00000D0F  8B46F4            mov ax,[bp-0xc]
00000D12  C47E08            les di,word [bp+0x8]
00000D15  03F8              add di,ax
00000D17  268815            mov [es:di],dl
00000D1A  FF46F4            inc word [bp-0xc]
00000D1D  E944FF            jmp 0xc64
00000D20  E9A300            jmp 0xdc6
00000D23  8B4606            mov ax,[bp+0x6]
00000D26  3B4604            cmp ax,[bp+0x4]
00000D29  7203              jc 0xd2e
00000D2B  E99800            jmp 0xdc6
00000D2E  8B4606            mov ax,[bp+0x6]
00000D31  8946F4            mov [bp-0xc],ax
00000D34  8B4604            mov ax,[bp+0x4]
00000D37  8946F6            mov [bp-0xa],ax
00000D3A  8B4604            mov ax,[bp+0x4]
00000D3D  8946F8            mov [bp-0x8],ax
00000D40  8B4604            mov ax,[bp+0x4]
00000D43  31D2              xor dx,dx
00000D45  F77606            div word [bp+0x6]
00000D48  8946FA            mov [bp-0x6],ax
00000D4B  8B4604            mov ax,[bp+0x4]
00000D4E  31D2              xor dx,dx
00000D50  F77606            div word [bp+0x6]
00000D53  92                xchg ax,dx
00000D54  8946FC            mov [bp-0x4],ax
00000D57  8B46FC            mov ax,[bp-0x4]
00000D5A  40                inc ax
00000D5B  99                cwd
00000D5C  B90200            mov cx,0x2
00000D5F  F7F9              idiv cx
00000D61  8946FE            mov [bp-0x2],ax
00000D64  837EF600          cmp word [bp-0xa],0x0
00000D68  7E5C              jng 0xdc6
00000D6A  8B46FA            mov ax,[bp-0x6]
00000D6D  2946F8            sub [bp-0x8],ax
00000D70  8B46FC            mov ax,[bp-0x4]
00000D73  0146FE            add [bp-0x2],ax
00000D76  8B4606            mov ax,[bp+0x6]
00000D79  31D2              xor dx,dx
00000D7B  8BC8              mov cx,ax
00000D7D  8BDA              mov bx,dx
00000D7F  8B46FE            mov ax,[bp-0x2]
00000D82  99                cwd
00000D83  3BD3              cmp dx,bx
00000D85  7F06              jg 0xd8d
00000D87  7C0D              jl 0xd96
00000D89  3BC1              cmp ax,cx
00000D8B  7209              jc 0xd96
00000D8D  FF4EF8            dec word [bp-0x8]
00000D90  8B4606            mov ax,[bp+0x6]
00000D93  2946FE            sub [bp-0x2],ax
00000D96  FF4EF4            dec word [bp-0xc]
00000D99  8B46F4            mov ax,[bp-0xc]
00000D9C  C47E08            les di,word [bp+0x8]
00000D9F  03F8              add di,ax
00000DA1  268A05            mov al,[es:di]
00000DA4  30E4              xor ah,ah
00000DA6  8946EE            mov [bp-0x12],ax
00000DA9  8B46F8            mov ax,[bp-0x8]
00000DAC  3B46F6            cmp ax,[bp-0xa]
00000DAF  7D13              jnl 0xdc4
00000DB1  FF4EF6            dec word [bp-0xa]
00000DB4  8A56EE            mov dl,[bp-0x12]
00000DB7  8B46F6            mov ax,[bp-0xa]
00000DBA  C47E08            les di,word [bp+0x8]
00000DBD  03F8              add di,ax
00000DBF  268815            mov [es:di],dl
00000DC2  EBE5              jmp 0xda9
00000DC4  EB9E              jmp 0xd64
00000DC6  89EC              mov sp,bp
00000DC8  5D                pop bp
00000DC9  C20800            ret word 0x8
00000DCC  55                push bp
00000DCD  89E5              mov bp,sp
00000DCF  83EC04            sub sp,0x4
00000DD2  C47E0A            les di,word [bp+0xa]
00000DD5  268A4534          mov al,[es:di+0x34]
00000DD9  FEC8              dec al
00000DDB  30E4              xor ah,ah
00000DDD  8946FC            mov [bp-0x4],ax
00000DE0  31C0              xor ax,ax
00000DE2  3B46FC            cmp ax,[bp-0x4]
00000DE5  7F4B              jg 0xe32
00000DE7  8946FE            mov [bp-0x2],ax
00000DEA  EB03              jmp 0xdef
00000DEC  FF46FE            inc word [bp-0x2]
00000DEF  8B46FE            mov ax,[bp-0x2]
00000DF2  D1E0              shl ax,1
00000DF4  D1E0              shl ax,1
00000DF6  C47E0A            les di,word [bp+0xa]
00000DF9  03F8              add di,ax
00000DFB  26FF750E          push word [es:di+0xe]
00000DFF  26FF750C          push word [es:di+0xc]
00000E03  8B46FE            mov ax,[bp-0x2]
00000E06  D1E0              shl ax,1
00000E08  D1E0              shl ax,1
00000E0A  C47E06            les di,word [bp+0x6]
00000E0D  03F8              add di,ax
00000E0F  26FF750E          push word [es:di+0xe]
00000E13  26FF750C          push word [es:di+0xc]
00000E17  C47E06            les di,word [bp+0x6]
00000E1A  26FF750A          push word [es:di+0xa]
00000E1E  FC                cld
00000E1F  8CDA              mov dx,ds
00000E21  59                pop cx
00000E22  5F                pop di
00000E23  07                pop es
00000E24  5E                pop si
00000E25  1F                pop ds
00000E26  F3A4              rep movsb
00000E28  8EDA              mov ds,dx
00000E2A  8B46FE            mov ax,[bp-0x2]
00000E2D  3B46FC            cmp ax,[bp-0x4]
00000E30  75BA              jnz 0xdec
00000E32  89EC              mov sp,bp
00000E34  5D                pop bp
00000E35  C20A00            ret word 0xa
00000E38  55                push bp
00000E39  89E5              mov bp,sp
00000E3B  83EC04            sub sp,0x4
00000E3E  C47E0A            les di,word [bp+0xa]
00000E41  268A4534          mov al,[es:di+0x34]
00000E45  FEC8              dec al
00000E47  30E4              xor ah,ah
00000E49  8946FC            mov [bp-0x4],ax
00000E4C  31C0              xor ax,ax
00000E4E  3B46FC            cmp ax,[bp-0x4]
00000E51  7F60              jg 0xeb3
00000E53  8946FE            mov [bp-0x2],ax
00000E56  EB03              jmp 0xe5b
00000E58  FF46FE            inc word [bp-0x2]
00000E5B  8B46FE            mov ax,[bp-0x2]
00000E5E  D1E0              shl ax,1
00000E60  D1E0              shl ax,1
00000E62  C47E0A            les di,word [bp+0xa]
00000E65  03F8              add di,ax
00000E67  26FF750E          push word [es:di+0xe]
00000E6B  26FF750C          push word [es:di+0xc]
00000E6F  8B46FE            mov ax,[bp-0x2]
00000E72  D1E0              shl ax,1
00000E74  D1E0              shl ax,1
00000E76  C47E06            les di,word [bp+0x6]
00000E79  03F8              add di,ax
00000E7B  26FF750E          push word [es:di+0xe]
00000E7F  26FF750C          push word [es:di+0xc]
00000E83  C47E06            les di,word [bp+0x6]
00000E86  26FF750A          push word [es:di+0xa]
00000E8A  8CDA              mov dx,ds
00000E8C  59                pop cx
00000E8D  5F                pop di
00000E8E  07                pop es
00000E8F  5E                pop si
00000E90  1F                pop ds
00000E91  89FB              mov bx,di
00000E93  01CB              add bx,cx
00000E95  53                push bx
00000E96  268A07            mov al,[es:bx]
00000E99  50                push ax
00000E9A  FC                cld
00000E9B  41                inc cx
00000E9C  D1E9              shr cx,1
00000E9E  AD                lodsw
00000E9F  86E0              xchg ah,al
00000EA1  AB                stosw
00000EA2  E2FA              loop 0xe9e
00000EA4  58                pop ax
00000EA5  5B                pop bx
00000EA6  268807            mov [es:bx],al
00000EA9  8EDA              mov ds,dx
00000EAB  8B46FE            mov ax,[bp-0x2]
00000EAE  3B46FC            cmp ax,[bp-0x4]
00000EB1  75A5              jnz 0xe58
00000EB3  89EC              mov sp,bp
00000EB5  5D                pop bp
00000EB6  C20A00            ret word 0xa
00000EB9  55                push bp
00000EBA  89E5              mov bp,sp
00000EBC  83EC04            sub sp,0x4
00000EBF  C47E0A            les di,word [bp+0xa]
00000EC2  268A4534          mov al,[es:di+0x34]
00000EC6  FEC8              dec al
00000EC8  30E4              xor ah,ah
00000ECA  8946FC            mov [bp-0x4],ax
00000ECD  31C0              xor ax,ax
00000ECF  3B46FC            cmp ax,[bp-0x4]
00000ED2  7F6F              jg 0xf43
00000ED4  8946FE            mov [bp-0x2],ax
00000ED7  EB03              jmp 0xedc
00000ED9  FF46FE            inc word [bp-0x2]
00000EDC  8B46FE            mov ax,[bp-0x2]
00000EDF  D1E0              shl ax,1
00000EE1  D1E0              shl ax,1
00000EE3  C47E0A            les di,word [bp+0xa]
00000EE6  03F8              add di,ax
00000EE8  26FF750E          push word [es:di+0xe]
00000EEC  26FF750C          push word [es:di+0xc]
00000EF0  8B46FE            mov ax,[bp-0x2]
00000EF3  D1E0              shl ax,1
00000EF5  D1E0              shl ax,1
00000EF7  C47E06            les di,word [bp+0x6]
00000EFA  03F8              add di,ax
00000EFC  26FF750E          push word [es:di+0xe]
00000F00  26FF750C          push word [es:di+0xc]
00000F04  C47E06            les di,word [bp+0x6]
00000F07  26FF750A          push word [es:di+0xa]
00000F0B  FC                cld
00000F0C  8CDA              mov dx,ds
00000F0E  59                pop cx
00000F0F  5F                pop di
00000F10  07                pop es
00000F11  5E                pop si
00000F12  1F                pop ds
00000F13  AC                lodsb
00000F14  88C3              mov bl,al
00000F16  D0D3              rcl bl,1
00000F18  D0D8              rcr al,1
00000F1A  D0D3              rcl bl,1
00000F1C  D0D8              rcr al,1
00000F1E  D0D3              rcl bl,1
00000F20  D0D8              rcr al,1
00000F22  D0D3              rcl bl,1
00000F24  D0D8              rcr al,1
00000F26  D0D3              rcl bl,1
00000F28  D0D8              rcr al,1
00000F2A  D0D3              rcl bl,1
00000F2C  D0D8              rcr al,1
00000F2E  D0D3              rcl bl,1
00000F30  D0D8              rcr al,1
00000F32  D0D3              rcl bl,1
00000F34  D0D8              rcr al,1
00000F36  AA                stosb
00000F37  E2DA              loop 0xf13
00000F39  8EDA              mov ds,dx
00000F3B  8B46FE            mov ax,[bp-0x2]
00000F3E  3B46FC            cmp ax,[bp-0x4]
00000F41  7596              jnz 0xed9
00000F43  89EC              mov sp,bp
00000F45  5D                pop bp
00000F46  C20A00            ret word 0xa
00000F49  55                push bp
00000F4A  89E5              mov bp,sp
00000F4C  83EC04            sub sp,0x4
00000F4F  C47E0A            les di,word [bp+0xa]
00000F52  268A4534          mov al,[es:di+0x34]
00000F56  FEC8              dec al
00000F58  30E4              xor ah,ah
00000F5A  8946FC            mov [bp-0x4],ax
00000F5D  31C0              xor ax,ax
00000F5F  3B46FC            cmp ax,[bp-0x4]
00000F62  7F6D              jg 0xfd1
00000F64  8946FE            mov [bp-0x2],ax
00000F67  EB03              jmp 0xf6c
00000F69  FF46FE            inc word [bp-0x2]
00000F6C  8B46FE            mov ax,[bp-0x2]
00000F6F  D1E0              shl ax,1
00000F71  D1E0              shl ax,1
00000F73  C47E0A            les di,word [bp+0xa]
00000F76  03F8              add di,ax
00000F78  26FF750E          push word [es:di+0xe]
00000F7C  26FF750C          push word [es:di+0xc]
00000F80  8B46FE            mov ax,[bp-0x2]
00000F83  D1E0              shl ax,1
00000F85  D1E0              shl ax,1
00000F87  C47E06            les di,word [bp+0x6]
00000F8A  03F8              add di,ax
00000F8C  26FF750E          push word [es:di+0xe]
00000F90  26FF750C          push word [es:di+0xc]
00000F94  C47E06            les di,word [bp+0x6]
00000F97  26FF750A          push word [es:di+0xa]
00000F9B  59                pop cx
00000F9C  5F                pop di
00000F9D  07                pop es
00000F9E  5E                pop si
00000F9F  5A                pop dx
00000FA0  1E                push ds
00000FA1  8EDA              mov ds,dx
00000FA3  89FB              mov bx,di
00000FA5  01CB              add bx,cx
00000FA7  53                push bx
00000FA8  268A07            mov al,[es:bx]
00000FAB  50                push ax
00000FAC  FC                cld
00000FAD  41                inc cx
00000FAE  D1E9              shr cx,1
00000FB0  AD                lodsw
00000FB1  89C3              mov bx,ax
00000FB3  89CA              mov dx,cx
00000FB5  B91000            mov cx,0x10
00000FB8  D1D3              rcl bx,1
00000FBA  D1D8              rcr ax,1
00000FBC  E2FA              loop 0xfb8
00000FBE  89D1              mov cx,dx
00000FC0  AB                stosw
00000FC1  E2ED              loop 0xfb0
00000FC3  58                pop ax
00000FC4  5B                pop bx
00000FC5  268807            mov [es:bx],al
00000FC8  1F                pop ds
00000FC9  8B46FE            mov ax,[bp-0x2]
00000FCC  3B46FC            cmp ax,[bp-0x4]
00000FCF  7598              jnz 0xf69
00000FD1  89EC              mov sp,bp
00000FD3  5D                pop bp
00000FD4  C20A00            ret word 0xa
00000FD7  55                push bp
00000FD8  89E5              mov bp,sp
00000FDA  83EC49            sub sp,0x49
00000FDD  C47E14            les di,word [bp+0x14]
00000FE0  26837D0400        cmp word [es:di+0x4],0x0
00000FE5  7410              jz 0xff7
00000FE7  C47E14            les di,word [bp+0x14]
00000FEA  26837D0600        cmp word [es:di+0x6],0x0
00000FEF  7406              jz 0xff7
00000FF1  837E0A00          cmp word [bp+0xa],0x0
00000FF5  7503              jnz 0xffa
00000FF7  E99106            jmp 0x168b
00000FFA  C47E14            les di,word [bp+0x14]
00000FFD  26FF7504          push word [es:di+0x4]
00001001  FF760E            push word [bp+0xe]
00001004  5B                pop bx
00001005  58                pop ax
00001006  39D8              cmp ax,bx
00001008  7D02              jnl 0x100c
0000100A  89D8              mov ax,bx
0000100C  8946E6            mov [bp-0x1a],ax
0000100F  8D7EFC            lea di,[bp-0x4]
00001012  16                push ss
00001013  57                push di
00001014  FF76E6            push word [bp-0x1a]
00001017  9A7804C317        call word 0x17c3:word 0x478
0000101C  8D7EF4            lea di,[bp-0xc]
0000101F  16                push ss
00001020  57                push di
00001021  FF76E6            push word [bp-0x1a]
00001024  9A7804C317        call word 0x17c3:word 0x478
00001029  8D7EF8            lea di,[bp-0x8]
0000102C  16                push ss
0000102D  57                push di
0000102E  FF76E6            push word [bp-0x1a]
00001031  9A7804C317        call word 0x17c3:word 0x478
00001036  8B4606            mov ax,[bp+0x6]
00001039  0B4608            or ax,[bp+0x8]
0000103C  740A              jz 0x1048
0000103E  C47E06            les di,word [bp+0x6]
00001041  26837D0201        cmp word [es:di+0x2],0x1
00001046  7504              jnz 0x104c
00001048  B000              mov al,0x0
0000104A  EB02              jmp 0x104e
0000104C  B001              mov al,0x1
0000104E  8846BD            mov [bp-0x43],al
00001051  C47E18            les di,word [bp+0x18]
00001054  26C405            les ax,word [es:di]
00001057  8CC2              mov dx,es
00001059  8946EC            mov [bp-0x14],ax
0000105C  8956EE            mov [bp-0x12],dx
0000105F  C47E14            les di,word [bp+0x14]
00001062  26C405            les ax,word [es:di]
00001065  8CC2              mov dx,es
00001067  8946E8            mov [bp-0x18],ax
0000106A  8956EA            mov [bp-0x16],dx
0000106D  8B4612            mov ax,[bp+0x12]
00001070  03460E            add ax,[bp+0xe]
00001073  C47E18            les di,word [bp+0x18]
00001076  263B4504          cmp ax,[es:di+0x4]
0000107A  771B              ja 0x1097
0000107C  8B460A            mov ax,[bp+0xa]
0000107F  C47E14            les di,word [bp+0x14]
00001082  263B4508          cmp ax,[es:di+0x8]
00001086  770F              ja 0x1097
00001088  8B4610            mov ax,[bp+0x10]
0000108B  03460C            add ax,[bp+0xc]
0000108E  C47E18            les di,word [bp+0x18]
00001091  263B4506          cmp ax,[es:di+0x6]
00001095  760B              jna 0x10a2
00001097  B00B              mov al,0xb
00001099  50                push ax
0000109A  B001              mov al,0x1
0000109C  50                push ax
0000109D  9A9B009C18        call word 0x189c:word 0x9b
000010A2  C47E18            les di,word [bp+0x18]
000010A5  268B453D          mov ax,[es:di+0x3d]
000010A9  014612            add [bp+0x12],ax
000010AC  8B4606            mov ax,[bp+0x6]
000010AF  0B4608            or ax,[bp+0x8]
000010B2  7454              jz 0x1108
000010B4  C47E06            les di,word [bp+0x6]
000010B7  26837D0201        cmp word [es:di+0x2],0x1
000010BC  754A              jnz 0x1108
000010BE  C646E300          mov byte [bp-0x1d],0x0
000010C2  C47E06            les di,word [bp+0x6]
000010C5  268B05            mov ax,[es:di]
000010C8  48                dec ax
000010C9  8946B7            mov [bp-0x49],ax
000010CC  31C0              xor ax,ax
000010CE  3B46B7            cmp ax,[bp-0x49]
000010D1  7F27              jg 0x10fa
000010D3  8946E4            mov [bp-0x1c],ax
000010D6  EB03              jmp 0x10db
000010D8  FF46E4            inc word [bp-0x1c]
000010DB  8B46E4            mov ax,[bp-0x1c]
000010DE  C47E06            les di,word [bp+0x6]
000010E1  03F8              add di,ax
000010E3  268A4504          mov al,[es:di+0x4]
000010E7  30E4              xor ah,ah
000010E9  3B46E4            cmp ax,[bp-0x1c]
000010EC  7404              jz 0x10f2
000010EE  C646E301          mov byte [bp-0x1d],0x1
000010F2  8B46E4            mov ax,[bp-0x1c]
000010F5  3B46B7            cmp ax,[bp-0x49]
000010F8  75DE              jnz 0x10d8
000010FA  807EE300          cmp byte [bp-0x1d],0x0
000010FE  7508              jnz 0x1108
00001100  31C0              xor ax,ax
00001102  894606            mov [bp+0x6],ax
00001105  894608            mov [bp+0x8],ax
00001108  8B4606            mov ax,[bp+0x6]
0000110B  0B4608            or ax,[bp+0x8]
0000110E  7538              jnz 0x1148
00001110  8B4612            mov ax,[bp+0x12]
00001113  C47E14            les di,word [bp+0x14]
00001116  263B453D          cmp ax,[es:di+0x3d]
0000111A  752C              jnz 0x1148
0000111C  8B460E            mov ax,[bp+0xe]
0000111F  C47E14            les di,word [bp+0x14]
00001122  263B4504          cmp ax,[es:di+0x4]
00001126  7520              jnz 0x1148
00001128  C47E18            les di,word [bp+0x18]
0000112B  268A4534          mov al,[es:di+0x34]
0000112F  C47E14            les di,word [bp+0x14]
00001132  263A4534          cmp al,[es:di+0x34]
00001136  7510              jnz 0x1148
00001138  C47E18            les di,word [bp+0x18]
0000113B  268A4535          mov al,[es:di+0x35]
0000113F  C47E14            les di,word [bp+0x14]
00001142  263A4535          cmp al,[es:di+0x35]
00001146  7406              jz 0x114e
00001148  C646E200          mov byte [bp-0x1e],0x0
0000114C  EB46              jmp 0x1194
0000114E  C47E18            les di,word [bp+0x18]
00001151  268A4537          mov al,[es:di+0x37]
00001155  C47E14            les di,word [bp+0x14]
00001158  263A4537          cmp al,[es:di+0x37]
0000115C  741C              jz 0x117a
0000115E  C47E18            les di,word [bp+0x18]
00001161  268A4538          mov al,[es:di+0x38]
00001165  C47E14            les di,word [bp+0x14]
00001168  263A4538          cmp al,[es:di+0x38]
0000116C  7406              jz 0x1174
0000116E  C646E201          mov byte [bp-0x1e],0x1
00001172  EB04              jmp 0x1178
00001174  C646E202          mov byte [bp-0x1e],0x2
00001178  EB1A              jmp 0x1194
0000117A  C47E18            les di,word [bp+0x18]
0000117D  268A4538          mov al,[es:di+0x38]
00001181  C47E14            les di,word [bp+0x14]
00001184  263A4538          cmp al,[es:di+0x38]
00001188  7406              jz 0x1190
0000118A  C646E203          mov byte [bp-0x1e],0x3
0000118E  EB04              jmp 0x1194
00001190  C646E204          mov byte [bp-0x1e],0x4
00001194  837E0E00          cmp word [bp+0xe],0x0
00001198  7409              jz 0x11a3
0000119A  837E0C00          cmp word [bp+0xc],0x0
0000119E  7403              jz 0x11a3
000011A0  E99100            jmp 0x1234
000011A3  C47EFC            les di,word [bp-0x4]
000011A6  06                push es
000011A7  57                push di
000011A8  FF76E6            push word [bp-0x1a]
000011AB  B000              mov al,0x0
000011AD  50                push ax
000011AE  9A871B561A        call word 0x1a56:word 0x1b87
000011B3  837E0A00          cmp word [bp+0xa],0x0
000011B7  7678              jna 0x1231
000011B9  FF4E0A            dec word [bp+0xa]
000011BC  C47EFC            les di,word [bp-0x4]
000011BF  06                push es
000011C0  57                push di
000011C1  FF76E6            push word [bp-0x1a]
000011C4  B000              mov al,0x0
000011C6  50                push ax
000011C7  9A871B561A        call word 0x1a56:word 0x1b87
000011CC  8B4606            mov ax,[bp+0x6]
000011CF  0B4608            or ax,[bp+0x8]
000011D2  741D              jz 0x11f1
000011D4  FF76FE            push word [bp-0x2]
000011D7  FF76FC            push word [bp-0x4]
000011DA  C47E14            les di,word [bp+0x14]
000011DD  26FF7508          push word [es:di+0x8]
000011E1  C47E14            les di,word [bp+0x14]
000011E4  26FF7504          push word [es:di+0x4]
000011E8  FF7608            push word [bp+0x8]
000011EB  FF7606            push word [bp+0x6]
000011EE  E88AF9            call 0xb7b
000011F1  C47E14            les di,word [bp+0x14]
000011F4  81C70C00          add di,0xc
000011F8  06                push es
000011F9  57                push di
000011FA  C47E14            les di,word [bp+0x14]
000011FD  26FF750A          push word [es:di+0xa]
00001201  C47E14            les di,word [bp+0x14]
00001204  81C73400          add di,0x34
00001208  06                push es
00001209  57                push di
0000120A  31C0              xor ax,ax
0000120C  50                push ax
0000120D  C47E14            les di,word [bp+0x14]
00001210  26FF7504          push word [es:di+0x4]
00001214  C47E14            les di,word [bp+0x14]
00001217  81C72C00          add di,0x2c
0000121B  06                push es
0000121C  57                push di
0000121D  FF76FE            push word [bp-0x2]
00001220  FF76FC            push word [bp-0x4]
00001223  E8B7F6            call 0x8dd
00001226  C47E14            les di,word [bp+0x14]
00001229  06                push es
0000122A  57                push di
0000122B  FF9EE8FF          call word far [bp-0x18]
0000122F  EB82              jmp 0x11b3
00001231  E95704            jmp 0x168b
00001234  8B460C            mov ax,[bp+0xc]
00001237  C47E14            les di,word [bp+0x14]
0000123A  263B4506          cmp ax,[es:di+0x6]
0000123E  7603              jna 0x1243
00001240  E94B02            jmp 0x148e
00001243  837E0A00          cmp word [bp+0xa],0x0
00001247  7703              ja 0x124c
00001249  E93F02            jmp 0x148b
0000124C  FF4E0A            dec word [bp+0xa]
0000124F  C47E14            les di,word [bp+0x14]
00001252  268B4508          mov ax,[es:di+0x8]
00001256  48                dec ax
00001257  50                push ax
00001258  FF760C            push word [bp+0xc]
0000125B  C47E14            les di,word [bp+0x14]
0000125E  26FF7506          push word [es:di+0x6]
00001262  59                pop cx
00001263  5B                pop bx
00001264  58                pop ax
00001265  F7EB              imul bx
00001267  F7F9              idiv cx
00001269  99                cwd
0000126A  8BC8              mov cx,ax
0000126C  8BDA              mov bx,dx
0000126E  8B4610            mov ax,[bp+0x10]
00001271  31D2              xor dx,dx
00001273  03C1              add ax,cx
00001275  13D3              adc dx,bx
00001277  8946F2            mov [bp-0xe],ax
0000127A  8B46F2            mov ax,[bp-0xe]
0000127D  C47E18            les di,word [bp+0x18]
00001280  263B4508          cmp ax,[es:di+0x8]
00001284  7503              jnz 0x1289
00001286  E93701            jmp 0x13c0
00001289  C47E18            les di,word [bp+0x18]
0000128C  06                push es
0000128D  57                push di
0000128E  FF76F2            push word [bp-0xe]
00001291  FF9EECFF          call word far [bp-0x14]
00001295  8A46E2            mov al,[bp-0x1e]
00001298  3C00              cmp al,0x0
0000129A  7403              jz 0x129f
0000129C  E9B900            jmp 0x1358
0000129F  C47E18            les di,word [bp+0x18]
000012A2  81C70C00          add di,0xc
000012A6  06                push es
000012A7  57                push di
000012A8  C47E18            les di,word [bp+0x18]
000012AB  81C73400          add di,0x34
000012AF  06                push es
000012B0  57                push di
000012B1  FF7612            push word [bp+0x12]
000012B4  8B4612            mov ax,[bp+0x12]
000012B7  03460E            add ax,[bp+0xe]
000012BA  50                push ax
000012BB  C47E18            les di,word [bp+0x18]
000012BE  81C72C00          add di,0x2c
000012C2  06                push es
000012C3  57                push di
000012C4  FF76FE            push word [bp-0x2]
000012C7  FF76FC            push word [bp-0x4]
000012CA  E889F3            call 0x656
000012CD  FF76FE            push word [bp-0x2]
000012D0  FF76FC            push word [bp-0x4]
000012D3  FF760E            push word [bp+0xe]
000012D6  C47E14            les di,word [bp+0x14]
000012D9  26FF7504          push word [es:di+0x4]
000012DD  E837F9            call 0xc17
000012E0  807EBD00          cmp byte [bp-0x43],0x0
000012E4  7416              jz 0x12fc
000012E6  C47EFC            les di,word [bp-0x4]
000012E9  06                push es
000012EA  57                push di
000012EB  C47EF4            les di,word [bp-0xc]
000012EE  06                push es
000012EF  57                push di
000012F0  C47E14            les di,word [bp+0x14]
000012F3  26FF7504          push word [es:di+0x4]
000012F7  9A641B561A        call word 0x1a56:word 0x1b64
000012FC  8B4606            mov ax,[bp+0x6]
000012FF  0B4608            or ax,[bp+0x8]
00001302  741D              jz 0x1321
00001304  FF76FE            push word [bp-0x2]
00001307  FF76FC            push word [bp-0x4]
0000130A  C47E14            les di,word [bp+0x14]
0000130D  26FF7508          push word [es:di+0x8]
00001311  C47E14            les di,word [bp+0x14]
00001314  26FF7504          push word [es:di+0x4]
00001318  FF7608            push word [bp+0x8]
0000131B  FF7606            push word [bp+0x6]
0000131E  E85AF8            call 0xb7b
00001321  C47E14            les di,word [bp+0x14]
00001324  81C70C00          add di,0xc
00001328  06                push es
00001329  57                push di
0000132A  C47E14            les di,word [bp+0x14]
0000132D  26FF750A          push word [es:di+0xa]
00001331  C47E14            les di,word [bp+0x14]
00001334  81C73400          add di,0x34
00001338  06                push es
00001339  57                push di
0000133A  31C0              xor ax,ax
0000133C  50                push ax
0000133D  C47E14            les di,word [bp+0x14]
00001340  26FF7504          push word [es:di+0x4]
00001344  C47E14            les di,word [bp+0x14]
00001347  81C72C00          add di,0x2c
0000134B  06                push es
0000134C  57                push di
0000134D  FF76FE            push word [bp-0x2]
00001350  FF76FC            push word [bp-0x4]
00001353  E887F5            call 0x8dd
00001356  EB4E              jmp 0x13a6
00001358  3C01              cmp al,0x1
0000135A  7510              jnz 0x136c
0000135C  C47E18            les di,word [bp+0x18]
0000135F  06                push es
00001360  57                push di
00001361  C47E14            les di,word [bp+0x14]
00001364  06                push es
00001365  57                push di
00001366  55                push bp
00001367  E8DFFB            call 0xf49
0000136A  EB3A              jmp 0x13a6
0000136C  3C02              cmp al,0x2
0000136E  7510              jnz 0x1380
00001370  C47E18            les di,word [bp+0x18]
00001373  06                push es
00001374  57                push di
00001375  C47E14            les di,word [bp+0x14]
00001378  06                push es
00001379  57                push di
0000137A  55                push bp
0000137B  E8BAFA            call 0xe38
0000137E  EB26              jmp 0x13a6
00001380  3C03              cmp al,0x3
00001382  7510              jnz 0x1394
00001384  C47E18            les di,word [bp+0x18]
00001387  06                push es
00001388  57                push di
00001389  C47E14            les di,word [bp+0x14]
0000138C  06                push es
0000138D  57                push di
0000138E  55                push bp
0000138F  E827FB            call 0xeb9
00001392  EB12              jmp 0x13a6
00001394  3C04              cmp al,0x4
00001396  750E              jnz 0x13a6
00001398  C47E18            les di,word [bp+0x18]
0000139B  06                push es
0000139C  57                push di
0000139D  C47E14            les di,word [bp+0x14]
000013A0  06                push es
000013A1  57                push di
000013A2  55                push bp
000013A3  E826FA            call 0xdcc
000013A6  C47E14            les di,word [bp+0x14]
000013A9  81C70C00          add di,0xc
000013AD  06                push es
000013AE  57                push di
000013AF  8D7EC2            lea di,[bp-0x3e]
000013B2  16                push ss
000013B3  57                push di
000013B4  B82000            mov ax,0x20
000013B7  50                push ax
000013B8  9AC002561A        call word 0x1a56:word 0x2c0
000013BD  E9BF00            jmp 0x147f
000013C0  807EBD00          cmp byte [bp-0x43],0x0
000013C4  746A              jz 0x1430
000013C6  C47EF4            les di,word [bp-0xc]
000013C9  06                push es
000013CA  57                push di
000013CB  C47EFC            les di,word [bp-0x4]
000013CE  06                push es
000013CF  57                push di
000013D0  C47E14            les di,word [bp+0x14]
000013D3  26FF7504          push word [es:di+0x4]
000013D7  9A641B561A        call word 0x1a56:word 0x1b64
000013DC  FF76FE            push word [bp-0x2]
000013DF  FF76FC            push word [bp-0x4]
000013E2  C47E14            les di,word [bp+0x14]
000013E5  26FF7508          push word [es:di+0x8]
000013E9  C47E14            les di,word [bp+0x14]
000013EC  26FF7504          push word [es:di+0x4]
000013F0  FF7608            push word [bp+0x8]
000013F3  FF7606            push word [bp+0x6]
000013F6  E882F7            call 0xb7b
000013F9  C47E14            les di,word [bp+0x14]
000013FC  81C70C00          add di,0xc
00001400  06                push es
00001401  57                push di
00001402  C47E14            les di,word [bp+0x14]
00001405  26FF750A          push word [es:di+0xa]
00001409  C47E14            les di,word [bp+0x14]
0000140C  81C73400          add di,0x34
00001410  06                push es
00001411  57                push di
00001412  31C0              xor ax,ax
00001414  50                push ax
00001415  C47E14            les di,word [bp+0x14]
00001418  26FF7504          push word [es:di+0x4]
0000141C  C47E14            les di,word [bp+0x14]
0000141F  81C72C00          add di,0x2c
00001423  06                push es
00001424  57                push di
00001425  FF76FE            push word [bp-0x2]
00001428  FF76FC            push word [bp-0x4]
0000142B  E8AFF4            call 0x8dd
0000142E  EB4F              jmp 0x147f
00001430  C47E14            les di,word [bp+0x14]
00001433  268A4534          mov al,[es:di+0x34]
00001437  FEC8              dec al
00001439  30E4              xor ah,ah
0000143B  8946B7            mov [bp-0x49],ax
0000143E  31C0              xor ax,ax
00001440  3B46B7            cmp ax,[bp-0x49]
00001443  7F3A              jg 0x147f
00001445  8946C0            mov [bp-0x40],ax
00001448  EB03              jmp 0x144d
0000144A  FF46C0            inc word [bp-0x40]
0000144D  8B7EC0            mov di,[bp-0x40]
00001450  D1E7              shl di,1
00001452  D1E7              shl di,1
00001454  C47BC2            les di,word [bp+di-0x3e]
00001457  06                push es
00001458  57                push di
00001459  8B46C0            mov ax,[bp-0x40]
0000145C  D1E0              shl ax,1
0000145E  D1E0              shl ax,1
00001460  C47E14            les di,word [bp+0x14]
00001463  03F8              add di,ax
00001465  26C47D0C          les di,word [es:di+0xc]
00001469  06                push es
0000146A  57                push di
0000146B  C47E14            les di,word [bp+0x14]
0000146E  26FF750A          push word [es:di+0xa]
00001472  9A641B561A        call word 0x1a56:word 0x1b64
00001477  8B46C0            mov ax,[bp-0x40]
0000147A  3B46B7            cmp ax,[bp-0x49]
0000147D  75CB              jnz 0x144a
0000147F  C47E14            les di,word [bp+0x14]
00001482  06                push es
00001483  57                push di
00001484  FF9EE8FF          call word far [bp-0x18]
00001488  E9B8FD            jmp 0x1243
0000148B  E9FD01            jmp 0x168b
0000148E  C47EF4            les di,word [bp-0xc]
00001491  06                push es
00001492  57                push di
00001493  FF760E            push word [bp+0xe]
00001496  B000              mov al,0x0
00001498  50                push ax
00001499  9A871B561A        call word 0x1a56:word 0x1b87
0000149E  837E0A00          cmp word [bp+0xa],0x0
000014A2  7703              ja 0x14a7
000014A4  E9E401            jmp 0x168b
000014A7  FF4E0A            dec word [bp+0xa]
000014AA  C47E14            les di,word [bp+0x14]
000014AD  268B4508          mov ax,[es:di+0x8]
000014B1  48                dec ax
000014B2  50                push ax
000014B3  FF760C            push word [bp+0xc]
000014B6  C47E14            les di,word [bp+0x14]
000014B9  26FF7506          push word [es:di+0x6]
000014BD  59                pop cx
000014BE  5B                pop bx
000014BF  58                pop ax
000014C0  F7EB              imul bx
000014C2  F7F9              idiv cx
000014C4  99                cwd
000014C5  8BC8              mov cx,ax
000014C7  8BDA              mov bx,dx
000014C9  8B4610            mov ax,[bp+0x10]
000014CC  31D2              xor dx,dx
000014CE  03C1              add ax,cx
000014D0  13D3              adc dx,bx
000014D2  8946F2            mov [bp-0xe],ax
000014D5  C47E18            les di,word [bp+0x18]
000014D8  06                push es
000014D9  57                push di
000014DA  C47E18            les di,word [bp+0x18]
000014DD  268B4508          mov ax,[es:di+0x8]
000014E1  48                dec ax
000014E2  50                push ax
000014E3  FF9EECFF          call word far [bp-0x14]
000014E7  C47E18            les di,word [bp+0x18]
000014EA  81C70C00          add di,0xc
000014EE  06                push es
000014EF  57                push di
000014F0  C47E18            les di,word [bp+0x18]
000014F3  81C73400          add di,0x34
000014F7  06                push es
000014F8  57                push di
000014F9  FF7612            push word [bp+0x12]
000014FC  8B4612            mov ax,[bp+0x12]
000014FF  03460E            add ax,[bp+0xe]
00001502  50                push ax
00001503  C47E18            les di,word [bp+0x18]
00001506  81C72C00          add di,0x2c
0000150A  06                push es
0000150B  57                push di
0000150C  FF76FE            push word [bp-0x2]
0000150F  FF76FC            push word [bp-0x4]
00001512  E841F1            call 0x656
00001515  C47E18            les di,word [bp+0x18]
00001518  268B4508          mov ax,[es:di+0x8]
0000151C  3B46F2            cmp ax,[bp-0xe]
0000151F  7503              jnz 0x1524
00001521  E9D800            jmp 0x15fc
00001524  C47E18            les di,word [bp+0x18]
00001527  06                push es
00001528  57                push di
00001529  C47E18            les di,word [bp+0x18]
0000152C  268B4508          mov ax,[es:di+0x8]
00001530  48                dec ax
00001531  50                push ax
00001532  FF9EECFF          call word far [bp-0x14]
00001536  C47E18            les di,word [bp+0x18]
00001539  81C70C00          add di,0xc
0000153D  06                push es
0000153E  57                push di
0000153F  C47E18            les di,word [bp+0x18]
00001542  81C73400          add di,0x34
00001546  06                push es
00001547  57                push di
00001548  FF7612            push word [bp+0x12]
0000154B  8B4612            mov ax,[bp+0x12]
0000154E  03460E            add ax,[bp+0xe]
00001551  50                push ax
00001552  C47E18            les di,word [bp+0x18]
00001555  81C72C00          add di,0x2c
00001559  06                push es
0000155A  57                push di
0000155B  FF76FA            push word [bp-0x6]
0000155E  FF76F8            push word [bp-0x8]
00001561  E8F2F0            call 0x656
00001564  8B460E            mov ax,[bp+0xe]
00001567  48                dec ax
00001568  8946B7            mov [bp-0x49],ax
0000156B  31C0              xor ax,ax
0000156D  3B46B7            cmp ax,[bp-0x49]
00001570  7E03              jng 0x1575
00001572  E98400            jmp 0x15f9
00001575  8946E4            mov [bp-0x1c],ax
00001578  EB03              jmp 0x157d
0000157A  FF46E4            inc word [bp-0x1c]
0000157D  8B46E4            mov ax,[bp-0x1c]
00001580  C47EF8            les di,word [bp-0x8]
00001583  03F8              add di,ax
00001585  268A05            mov al,[es:di]
00001588  30E4              xor ah,ah
0000158A  8946BE            mov [bp-0x42],ax
0000158D  8B46E4            mov ax,[bp-0x1c]
00001590  C47EFC            les di,word [bp-0x4]
00001593  03F8              add di,ax
00001595  268A05            mov al,[es:di]
00001598  30E4              xor ah,ah
0000159A  8BF8              mov di,ax
0000159C  8A857A88          mov al,[di-0x7786]
000015A0  30E4              xor ah,ah
000015A2  8946B9            mov [bp-0x47],ax
000015A5  8B7EBE            mov di,[bp-0x42]
000015A8  8A857A88          mov al,[di-0x7786]
000015AC  30E4              xor ah,ah
000015AE  8946BB            mov [bp-0x45],ax
000015B1  8B46BB            mov ax,[bp-0x45]
000015B4  3B46B9            cmp ax,[bp-0x47]
000015B7  7E10              jng 0x15c9
000015B9  8A56BE            mov dl,[bp-0x42]
000015BC  8B46E4            mov ax,[bp-0x1c]
000015BF  C47EFC            les di,word [bp-0x4]
000015C2  03F8              add di,ax
000015C4  268815            mov [es:di],dl
000015C7  EB28              jmp 0x15f1
000015C9  8B46BB            mov ax,[bp-0x45]
000015CC  3B46B9            cmp ax,[bp-0x47]
000015CF  7520              jnz 0x15f1
000015D1  8B46E4            mov ax,[bp-0x1c]
000015D4  C47EF4            les di,word [bp-0xc]
000015D7  03F8              add di,ax
000015D9  268A05            mov al,[es:di]
000015DC  30E4              xor ah,ah
000015DE  3B46BE            cmp ax,[bp-0x42]
000015E1  740E              jz 0x15f1
000015E3  8A56BE            mov dl,[bp-0x42]
000015E6  8B46E4            mov ax,[bp-0x1c]
000015E9  C47EFC            les di,word [bp-0x4]
000015EC  03F8              add di,ax
000015EE  268815            mov [es:di],dl
000015F1  8B46E4            mov ax,[bp-0x1c]
000015F4  3B46B7            cmp ax,[bp-0x49]
000015F7  7581              jnz 0x157a
000015F9  E919FF            jmp 0x1515
000015FC  FF76FE            push word [bp-0x2]
000015FF  FF76FC            push word [bp-0x4]
00001602  FF760E            push word [bp+0xe]
00001605  C47E14            les di,word [bp+0x14]
00001608  26FF7504          push word [es:di+0x4]
0000160C  E808F6            call 0xc17
0000160F  C47EFC            les di,word [bp-0x4]
00001612  06                push es
00001613  57                push di
00001614  C47EF4            les di,word [bp-0xc]
00001617  06                push es
00001618  57                push di
00001619  C47E14            les di,word [bp+0x14]
0000161C  26FF7504          push word [es:di+0x4]
00001620  9A641B561A        call word 0x1a56:word 0x1b64
00001625  8B4606            mov ax,[bp+0x6]
00001628  0B4608            or ax,[bp+0x8]
0000162B  741D              jz 0x164a
0000162D  FF76FE            push word [bp-0x2]
00001630  FF76FC            push word [bp-0x4]
00001633  C47E14            les di,word [bp+0x14]
00001636  26FF7508          push word [es:di+0x8]
0000163A  C47E14            les di,word [bp+0x14]
0000163D  26FF7504          push word [es:di+0x4]
00001641  FF7608            push word [bp+0x8]
00001644  FF7606            push word [bp+0x6]
00001647  E831F5            call 0xb7b
0000164A  C47E14            les di,word [bp+0x14]
0000164D  81C70C00          add di,0xc
00001651  06                push es
00001652  57                push di
00001653  C47E14            les di,word [bp+0x14]
00001656  26FF750A          push word [es:di+0xa]
0000165A  C47E14            les di,word [bp+0x14]
0000165D  81C73400          add di,0x34
00001661  06                push es
00001662  57                push di
00001663  31C0              xor ax,ax
00001665  50                push ax
00001666  C47E14            les di,word [bp+0x14]
00001669  26FF7504          push word [es:di+0x4]
0000166D  C47E14            les di,word [bp+0x14]
00001670  81C72C00          add di,0x2c
00001674  06                push es
00001675  57                push di
00001676  FF76FE            push word [bp-0x2]
00001679  FF76FC            push word [bp-0x4]
0000167C  E85EF2            call 0x8dd
0000167F  C47E14            les di,word [bp+0x14]
00001682  06                push es
00001683  57                push di
00001684  FF9EE8FF          call word far [bp-0x18]
00001688  E913FE            jmp 0x149e
0000168B  89EC              mov sp,bp
0000168D  5D                pop bp
0000168E  CA1600            retf word 0x16
00001691  55                push bp
00001692  89E5              mov bp,sp
00001694  C47E0A            les di,word [bp+0xa]
00001697  06                push es
00001698  57                push di
00001699  FF7608            push word [bp+0x8]
0000169C  FF7606            push word [bp+0x6]
0000169F  9A4F03C317        call word 0x17c3:word 0x34f
000016A4  89EC              mov sp,bp
000016A6  5D                pop bp
000016A7  CA0800            retf word 0x8
000016AA  55                push bp
000016AB  89E5              mov bp,sp
000016AD  C47E0A            les di,word [bp+0xa]
000016B0  06                push es
000016B1  57                push di
000016B2  9AB403C317        call word 0x17c3:word 0x3b4
000016B7  89EC              mov sp,bp
000016B9  5D                pop bp
000016BA  CA0800            retf word 0x8
000016BD  89E5              mov bp,sp
000016BF  B80815            mov ax,0x1508
000016C2  8CDA              mov dx,ds
000016C4  A3B08B            mov [0x8bb0],ax
000016C7  8916B28B          mov [0x8bb2],dx
000016CB  B89116            mov ax,0x1691
000016CE  8CCA              mov dx,cs
000016D0  A37288            mov [0x8872],ax
000016D3  89167488          mov [0x8874],dx
000016D7  B8AA16            mov ax,0x16aa
000016DA  8CCA              mov dx,cs
000016DC  A37688            mov [0x8876],ax
000016DF  89167888          mov [0x8878],dx
000016E3  BF7A88            mov di,0x887a
000016E6  1E                push ds
000016E7  57                push di
000016E8  B80001            mov ax,0x100
000016EB  50                push ax
000016EC  B000              mov al,0x0
000016EE  50                push ax
000016EF  9A871B561A        call word 0x1a56:word 0x1b87
000016F4  89EC              mov sp,bp
000016F6  CB                retf
000016F7  0000              add [bx+si],al
000016F9  0000              add [bx+si],al
000016FB  0000              add [bx+si],al
000016FD  0000              add [bx+si],al
000016FF  00                db 0x00
