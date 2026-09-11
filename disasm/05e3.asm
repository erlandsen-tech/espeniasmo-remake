00000000  104665            adc [bp+0x65],al
00000003  696C206920        imul bp,[si+0x20],0x2069
00000008  62696C            bound bp,[bx+di+0x6c]
0000000B  6C                insb
0000000C  656466696C5589E5  imul ebp,[fs:si+0x55],0xec81e589
         -81EC
00000016  EB09              jmp 0x21
00000018  C47E06            les di,word [bp+0x6]
0000001B  06                push es
0000001C  57                push di
0000001D  8DBE00FF          lea di,[bp-0x100]
00000021  16                push ss
00000022  57                push di
00000023  B8FF00            mov ax,0xff
00000026  50                push ax
00000027  9AAD06561A        call word 0x1a56:word 0x6ad
0000002C  BF0208            mov di,0x802
0000002F  1E                push ds
00000030  57                push di
00000031  9AA008E10B        call word 0xbe1:word 0x8a0
00000036  C70644590A00      mov word [0x5944],0xa
0000003C  8DBE19F6          lea di,[bp-0x9e7]
00000040  16                push ss
00000041  57                push di
00000042  8DBE00FF          lea di,[bp-0x100]
00000046  16                push ss
00000047  57                push di
00000048  9A98003206        call word 0x632:word 0x98
0000004D  A14459            mov ax,[0x5944]
00000050  898615F6          mov [bp-0x9eb],ax
00000054  B80100            mov ax,0x1
00000057  3B8615F6          cmp ax,[bp-0x9eb]
0000005B  7F5C              jg 0xb9
0000005D  898617F6          mov [bp-0x9e9],ax
00000061  EB04              jmp 0x67
00000063  FF8617F6          inc word [bp-0x9e9]
00000067  8DBE19F6          lea di,[bp-0x9e7]
0000006B  16                push ss
0000006C  57                push di
0000006D  9A0A003206        call word 0x632:word 0xa
00000072  08C0              or al,al
00000074  741B              jz 0x91
00000076  8DBE19F6          lea di,[bp-0x9e7]
0000007A  16                push ss
0000007B  57                push di
0000007C  8BBE17F6          mov di,[bp-0x9e9]
00000080  D1E7              shl di,1
00000082  D1E7              shl di,1
00000084  81C75247          add di,0x4752
00000088  1E                push ds
00000089  57                push di
0000008A  9AE3003206        call word 0x632:word 0xe3
0000008F  EB1E              jmp 0xaf
00000091  BF1E8E            mov di,0x8e1e
00000094  1E                push ds
00000095  57                push di
00000096  BF0000            mov di,0x0
00000099  0E                push cs
0000009A  57                push di
0000009B  31C0              xor ax,ax
0000009D  50                push ax
0000009E  9AF717561A        call word 0x1a56:word 0x17f7
000000A3  9A3C17561A        call word 0x1a56:word 0x173c
000000A8  31C0              xor ax,ax
000000AA  9AF301561A        call word 0x1a56:word 0x1f3
000000AF  8B8617F6          mov ax,[bp-0x9e9]
000000B3  3B8615F6          cmp ax,[bp-0x9eb]
000000B7  75AA              jnz 0x63
000000B9  8DBE19F6          lea di,[bp-0x9e7]
000000BD  16                push ss
000000BE  57                push di
000000BF  9AD0003206        call word 0x632:word 0xd0
000000C4  BFEA07            mov di,0x7ea
000000C7  1E                push ds
000000C8  57                push di
000000C9  9AA008E10B        call word 0xbe1:word 0x8a0
000000CE  89EC              mov sp,bp
000000D0  5D                pop bp
000000D1  CA0400            retf word 0x4
000000D4  104665            adc [bp+0x65],al
000000D7  696C206920        imul bp,[si+0x20],0x2069
000000DC  62696C            bound bp,[bx+di+0x6c]
000000DF  6C                insb
000000E0  656466696C5589E5  imul ebp,[fs:si+0x55],0xec81e589
         -81EC
000000EA  F5                cmc
000000EB  09C4              or sp,ax
000000ED  7E06              jng 0xf5
000000EF  06                push es
000000F0  57                push di
000000F1  8DBE00FF          lea di,[bp-0x100]
000000F5  16                push ss
000000F6  57                push di
000000F7  B8FF00            mov ax,0xff
000000FA  50                push ax
000000FB  9AAD06561A        call word 0x1a56:word 0x6ad
00000100  BF0208            mov di,0x802
00000103  1E                push ds
00000104  57                push di
00000105  9AA008E10B        call word 0xbe1:word 0x8a0
0000010A  8DBE19F6          lea di,[bp-0x9e7]
0000010E  16                push ss
0000010F  57                push di
00000110  8DBE00FF          lea di,[bp-0x100]
00000114  16                push ss
00000115  57                push di
00000116  9A98003206        call word 0x632:word 0x98
0000011B  A14659            mov ax,[0x5946]
0000011E  89860FF6          mov [bp-0x9f1],ax
00000122  B80100            mov ax,0x1
00000125  3B860FF6          cmp ax,[bp-0x9f1]
00000129  7E03              jng 0x12e
0000012B  E9F800            jmp 0x226
0000012E  898617F6          mov [bp-0x9e9],ax
00000132  EB04              jmp 0x138
00000134  FF8617F6          inc word [bp-0x9e9]
00000138  8DBE19F6          lea di,[bp-0x9e7]
0000013C  16                push ss
0000013D  57                push di
0000013E  9A0A003206        call word 0x632:word 0xa
00000143  08C0              or al,al
00000145  7503              jnz 0x14a
00000147  E9B100            jmp 0x1fb
0000014A  8DBE19F6          lea di,[bp-0x9e7]
0000014E  16                push ss
0000014F  57                push di
00000150  8DBE13F6          lea di,[bp-0x9ed]
00000154  16                push ss
00000155  57                push di
00000156  9AE3003206        call word 0x632:word 0xe3
0000015B  C4BE13F6          les di,word [bp-0x9ed]
0000015F  89BE0BF6          mov [bp-0x9f5],di
00000163  8C860DF6          mov word [bp-0x9f3],es
00000167  C4BE0BF6          les di,word [bp-0x9f5]
0000016B  26FF750C          push word [es:di+0xc]
0000016F  26FF750A          push word [es:di+0xa]
00000173  C4BE0BF6          les di,word [bp-0x9f5]
00000177  26FF35            push word [es:di]
0000017A  C4BE0BF6          les di,word [bp-0x9f5]
0000017E  26FF7502          push word [es:di+0x2]
00000182  9A88002A15        call word 0x152a:word 0x88
00000187  051200            add ax,0x12
0000018A  83D200            adc dx,0x0
0000018D  8BC8              mov cx,ax
0000018F  8BDA              mov bx,dx
00000191  C4BE0BF6          les di,word [bp-0x9f5]
00000195  26C47D0A          les di,word [es:di+0xa]
00000199  268A4508          mov al,[es:di+0x8]
0000019D  30E4              xor ah,ah
0000019F  31D2              xor dx,dx
000001A1  03C1              add ax,cx
000001A3  13D3              adc dx,bx
000001A5  898611F6          mov [bp-0x9ef],ax
000001A9  8B8617F6          mov ax,[bp-0x9e9]
000001AD  BA0900            mov dx,0x9
000001B0  F7E2              mul dx
000001B2  8BF8              mov di,ax
000001B4  81C77547          add di,0x4775
000001B8  1E                push ds
000001B9  57                push di
000001BA  FFB611F6          push word [bp-0x9ef]
000001BE  9AD703450D        call word 0xd45:word 0x3d7
000001C3  08C0              or al,al
000001C5  7507              jnz 0x1ce
000001C7  31C0              xor ax,ax
000001C9  9AF301561A        call word 0x1a56:word 0x1f3
000001CE  C4BE13F6          les di,word [bp-0x9ed]
000001D2  06                push es
000001D3  57                push di
000001D4  8B8617F6          mov ax,[bp-0x9e9]
000001D8  BA0900            mov dx,0x9
000001DB  F7E2              mul dx
000001DD  8BF8              mov di,ax
000001DF  C4BD7A47          les di,word [di+0x477a]
000001E3  06                push es
000001E4  57                push di
000001E5  FFB611F6          push word [bp-0x9ef]
000001E9  9A641B561A        call word 0x1a56:word 0x1b64
000001EE  8DBE13F6          lea di,[bp-0x9ed]
000001F2  16                push ss
000001F3  57                push di
000001F4  9A67012A15        call word 0x152a:word 0x167
000001F9  EB1E              jmp 0x219
000001FB  BF1E8E            mov di,0x8e1e
000001FE  1E                push ds
000001FF  57                push di
00000200  BFD400            mov di,0xd4
00000203  0E                push cs
00000204  57                push di
00000205  31C0              xor ax,ax
00000207  50                push ax
00000208  9AF717561A        call word 0x1a56:word 0x17f7
0000020D  9A3C17561A        call word 0x1a56:word 0x173c
00000212  31C0              xor ax,ax
00000214  9AF301561A        call word 0x1a56:word 0x1f3
00000219  8B8617F6          mov ax,[bp-0x9e9]
0000021D  3B860FF6          cmp ax,[bp-0x9f1]
00000221  7403              jz 0x226
00000223  E90EFF            jmp 0x134
00000226  8DBE19F6          lea di,[bp-0x9e7]
0000022A  16                push ss
0000022B  57                push di
0000022C  9AD0003206        call word 0x632:word 0xd0
00000231  BFEA07            mov di,0x7ea
00000234  1E                push ds
00000235  57                push di
00000236  9AA008E10B        call word 0xbe1:word 0x8a0
0000023B  89EC              mov sp,bp
0000023D  5D                pop bp
0000023E  CA0400            retf word 0x4
00000241  0002              add [bp+si],al
00000243  732E              jnc 0x273
00000245  02702E            add dh,[bx+si+0x2e]
00000248  042E              add al,0x2e
0000024A  7374              jnc 0x2c0
0000024C  61                popa
0000024D  042E              add al,0x2e
0000024F  736C              jnc 0x2bd
00000251  7504              jnz 0x257
00000253  2E7365            {pn} jnc 0x2bb
00000256  6B1946            imul bx,[bx+di],0x46
00000259  65696C207665      imul bp,[gs:si+0x20],0x6576
0000025F  64206C65          and [fs:si+0x65],ch
00000263  7369              jnc 0x2ce
00000265  6E                outsb
00000266  67206176          and [ecx+0x76],ah
0000026A  206269            and [bp+si+0x69],ah
0000026D  6C                insb
0000026E  6465205589        and [gs:di-0x77],dl
00000273  E581              in ax,byte 0x81
00000275  EC                in al,dx
00000276  350CBF            xor ax,0xbf0c
00000279  0208              add cl,[bx+si]
0000027B  1E                push ds
0000027C  57                push di
0000027D  9AA008E10B        call word 0xbe1:word 0x8a0
00000282  B000              mov al,0x0
00000284  50                push ax
00000285  8DBEF6F5          lea di,[bp-0xa0a]
00000289  16                push ss
0000028A  57                push di
0000028B  B8FF00            mov ax,0xff
0000028E  50                push ax
0000028F  9AF51B561A        call word 0x1a56:word 0x1bf5
00000294  BF5C19            mov di,0x195c
00000297  1E                push ds
00000298  57                push di
00000299  BF4102            mov di,0x241
0000029C  0E                push cs
0000029D  57                push di
0000029E  9A8307561A        call word 0x1a56:word 0x783
000002A3  740A              jz 0x2af
000002A5  BF5C19            mov di,0x195c
000002A8  1E                push ds
000002A9  57                push di
000002AA  9A461C561A        call word 0x1a56:word 0x1c46
000002AF  8B4608            mov ax,[bp+0x8]
000002B2  99                cwd
000002B3  52                push dx
000002B4  50                push ax
000002B5  31C0              xor ax,ax
000002B7  50                push ax
000002B8  8DBEF6F6          lea di,[bp-0x90a]
000002BC  16                push ss
000002BD  57                push di
000002BE  B80400            mov ax,0x4
000002C1  50                push ax
000002C2  9A0713561A        call word 0x1a56:word 0x1307
000002C7  8DBECBF3          lea di,[bp-0xc35]
000002CB  16                push ss
000002CC  57                push di
000002CD  8DBECBF4          lea di,[bp-0xb35]
000002D1  16                push ss
000002D2  57                push di
000002D3  BF071E            mov di,0x1e07
000002D6  1E                push ds
000002D7  57                push di
000002D8  9AEE00C612        call word 0x12c6:word 0xee
000002DD  B80100            mov ax,0x1
000002E0  50                push ax
000002E1  B80700            mov ax,0x7
000002E4  50                push ax
000002E5  9ADF06561A        call word 0x1a56:word 0x6df
000002EA  8DBE08F7          lea di,[bp-0x8f8]
000002EE  16                push ss
000002EF  57                push di
000002F0  B80800            mov ax,0x8
000002F3  50                push ax
000002F4  9AAD06561A        call word 0x1a56:word 0x6ad
000002F9  8A4606            mov al,[bp+0x6]
000002FC  3C00              cmp al,0x0
000002FE  7538              jnz 0x338
00000300  8DBECBF4          lea di,[bp-0xb35]
00000304  16                push ss
00000305  57                push di
00000306  8DBE08F7          lea di,[bp-0x8f8]
0000030A  16                push ss
0000030B  57                push di
0000030C  9A9306561A        call word 0x1a56:word 0x693
00000311  BF4202            mov di,0x242
00000314  0E                push cs
00000315  57                push di
00000316  9A2007561A        call word 0x1a56:word 0x720
0000031B  8DBEF6F6          lea di,[bp-0x90a]
0000031F  16                push ss
00000320  57                push di
00000321  9A2007561A        call word 0x1a56:word 0x720
00000326  8DBEFBF6          lea di,[bp-0x905]
0000032A  16                push ss
0000032B  57                push di
0000032C  B80C00            mov ax,0xc
0000032F  50                push ax
00000330  9AAD06561A        call word 0x1a56:word 0x6ad
00000335  E9CA00            jmp 0x402
00000338  3C01              cmp al,0x1
0000033A  7538              jnz 0x374
0000033C  8DBECBF4          lea di,[bp-0xb35]
00000340  16                push ss
00000341  57                push di
00000342  8DBE08F7          lea di,[bp-0x8f8]
00000346  16                push ss
00000347  57                push di
00000348  9A9306561A        call word 0x1a56:word 0x693
0000034D  BF4502            mov di,0x245
00000350  0E                push cs
00000351  57                push di
00000352  9A2007561A        call word 0x1a56:word 0x720
00000357  8DBEF6F6          lea di,[bp-0x90a]
0000035B  16                push ss
0000035C  57                push di
0000035D  9A2007561A        call word 0x1a56:word 0x720
00000362  8DBEFBF6          lea di,[bp-0x905]
00000366  16                push ss
00000367  57                push di
00000368  B80C00            mov ax,0xc
0000036B  50                push ax
0000036C  9AAD06561A        call word 0x1a56:word 0x6ad
00000371  E98E00            jmp 0x402
00000374  3C02              cmp al,0x2
00000376  752C              jnz 0x3a4
00000378  8DBECBF4          lea di,[bp-0xb35]
0000037C  16                push ss
0000037D  57                push di
0000037E  8DBE08F7          lea di,[bp-0x8f8]
00000382  16                push ss
00000383  57                push di
00000384  9A9306561A        call word 0x1a56:word 0x693
00000389  BF4802            mov di,0x248
0000038C  0E                push cs
0000038D  57                push di
0000038E  9A2007561A        call word 0x1a56:word 0x720
00000393  8DBEFBF6          lea di,[bp-0x905]
00000397  16                push ss
00000398  57                push di
00000399  B80C00            mov ax,0xc
0000039C  50                push ax
0000039D  9AAD06561A        call word 0x1a56:word 0x6ad
000003A2  EB5E              jmp 0x402
000003A4  3C03              cmp al,0x3
000003A6  752C              jnz 0x3d4
000003A8  8DBECBF4          lea di,[bp-0xb35]
000003AC  16                push ss
000003AD  57                push di
000003AE  8DBE08F7          lea di,[bp-0x8f8]
000003B2  16                push ss
000003B3  57                push di
000003B4  9A9306561A        call word 0x1a56:word 0x693
000003B9  BF4D02            mov di,0x24d
000003BC  0E                push cs
000003BD  57                push di
000003BE  9A2007561A        call word 0x1a56:word 0x720
000003C3  8DBEFBF6          lea di,[bp-0x905]
000003C7  16                push ss
000003C8  57                push di
000003C9  B80C00            mov ax,0xc
000003CC  50                push ax
000003CD  9AAD06561A        call word 0x1a56:word 0x6ad
000003D2  EB2E              jmp 0x402
000003D4  3C04              cmp al,0x4
000003D6  752A              jnz 0x402
000003D8  8DBECBF4          lea di,[bp-0xb35]
000003DC  16                push ss
000003DD  57                push di
000003DE  8DBE08F7          lea di,[bp-0x8f8]
000003E2  16                push ss
000003E3  57                push di
000003E4  9A9306561A        call word 0x1a56:word 0x693
000003E9  BF5202            mov di,0x252
000003EC  0E                push cs
000003ED  57                push di
000003EE  9A2007561A        call word 0x1a56:word 0x720
000003F3  8DBEFBF6          lea di,[bp-0x905]
000003F7  16                push ss
000003F8  57                push di
000003F9  B80C00            mov ax,0xc
000003FC  50                push ax
000003FD  9AAD06561A        call word 0x1a56:word 0x6ad
00000402  8DBEFBF6          lea di,[bp-0x905]
00000406  16                push ss
00000407  57                push di
00000408  B82000            mov ax,0x20
0000040B  50                push ax
0000040C  8DBECBF5          lea di,[bp-0xa35]
00000410  16                push ss
00000411  57                push di
00000412  9A1500A712        call word 0x12a7:word 0x15
00000417  833EB67100        cmp word [0x71b6],0x0
0000041C  7574              jnz 0x492
0000041E  8DBE15F7          lea di,[bp-0x8eb]
00000422  16                push ss
00000423  57                push di
00000424  8DBEFBF6          lea di,[bp-0x905]
00000428  16                push ss
00000429  57                push di
0000042A  9A98003206        call word 0x632:word 0x98
0000042F  8DBE15F7          lea di,[bp-0x8eb]
00000433  16                push ss
00000434  57                push di
00000435  9A0A003206        call word 0x632:word 0xa
0000043A  08C0              or al,al
0000043C  7413              jz 0x451
0000043E  8DBE15F7          lea di,[bp-0x8eb]
00000442  16                push ss
00000443  57                push di
00000444  8DBE11F7          lea di,[bp-0x8ef]
00000448  16                push ss
00000449  57                push di
0000044A  9AE3003206        call word 0x632:word 0xe3
0000044F  EB28              jmp 0x479
00000451  BF1E8E            mov di,0x8e1e
00000454  1E                push ds
00000455  57                push di
00000456  BF5702            mov di,0x257
00000459  0E                push cs
0000045A  57                push di
0000045B  31C0              xor ax,ax
0000045D  50                push ax
0000045E  9AF717561A        call word 0x1a56:word 0x17f7
00000463  9A5517561A        call word 0x1a56:word 0x1755
00000468  BF1E8D            mov di,0x8d1e
0000046B  1E                push ds
0000046C  57                push di
0000046D  9AEF16561A        call word 0x1a56:word 0x16ef
00000472  31C0              xor ax,ax
00000474  9AF301561A        call word 0x1a56:word 0x1f3
00000479  8DBE15F7          lea di,[bp-0x8eb]
0000047D  16                push ss
0000047E  57                push di
0000047F  9AD0003206        call word 0x632:word 0xd0
00000484  C48611F7          les ax,word [bp-0x8ef]
00000488  8CC2              mov dx,es
0000048A  8946FC            mov [bp-0x4],ax
0000048D  8956FE            mov [bp-0x2],dx
00000490  EB08              jmp 0x49a
00000492  31C0              xor ax,ax
00000494  8946FC            mov [bp-0x4],ax
00000497  8946FE            mov [bp-0x2],ax
0000049A  8DBEF6F5          lea di,[bp-0xa0a]
0000049E  16                push ss
0000049F  57                push di
000004A0  9A461C561A        call word 0x1a56:word 0x1c46
000004A5  BFEA07            mov di,0x7ea
000004A8  1E                push ds
000004A9  57                push di
000004AA  9AA008E10B        call word 0xbe1:word 0x8a0
000004AF  8B46FC            mov ax,[bp-0x4]
000004B2  8B56FE            mov dx,[bp-0x2]
000004B5  89EC              mov sp,bp
000004B7  5D                pop bp
000004B8  CA0400            retf word 0x4
000004BB  89E5              mov bp,sp
000004BD  C6065C1A00        mov byte [0x1a5c],0x0
000004C2  C6065C1900        mov byte [0x195c],0x0
000004C7  89EC              mov sp,bp
000004C9  CB                retf
000004CA  0000              add [bx+si],al
000004CC  0000              add [bx+si],al
000004CE  0000              add [bx+si],al
