00000000  55                push bp
00000001  89E5              mov bp,sp
00000003  83EC04            sub sp,0x4
00000006  8D7EFC            lea di,[bp-0x4]
00000009  16                push ss
0000000A  57                push di
0000000B  B80600            mov ax,0x6
0000000E  50                push ax
0000000F  9A8E03561A        call word 0x1a56:word 0x38e
00000014  8B4604            mov ax,[bp+0x4]
00000017  C47EFC            les di,word [bp-0x4]
0000001A  268905            mov [es:di],ax
0000001D  8B3E5E1F          mov di,[0x1f5e]
00000021  D1E7              shl di,1
00000023  D1E7              shl di,1
00000025  C4BD661F          les di,word [di+0x1f66]
00000029  26C44512          les ax,word [es:di+0x12]
0000002D  8CC2              mov dx,es
0000002F  C47EFC            les di,word [bp-0x4]
00000032  26894502          mov [es:di+0x2],ax
00000036  26895504          mov [es:di+0x4],dx
0000003A  C446FC            les ax,word [bp-0x4]
0000003D  8CC2              mov dx,es
0000003F  8B3E5E1F          mov di,[0x1f5e]
00000043  D1E7              shl di,1
00000045  D1E7              shl di,1
00000047  C4BD661F          les di,word [di+0x1f66]
0000004B  26894512          mov [es:di+0x12],ax
0000004F  26895514          mov [es:di+0x14],dx
00000053  A15E1F            mov ax,[0x1f5e]
00000056  8B7E04            mov di,[bp+0x4]
00000059  D1E7              shl di,1
0000005B  D1E7              shl di,1
0000005D  C4BD3A27          les di,word [di+0x273a]
00000061  26894510          mov [es:di+0x10],ax
00000065  89EC              mov sp,bp
00000067  5D                pop bp
00000068  C20200            ret word 0x2
0000006B  55                push bp
0000006C  89E5              mov bp,sp
0000006E  83EC0C            sub sp,0xc
00000071  8B7E04            mov di,[bp+0x4]
00000074  D1E7              shl di,1
00000076  D1E7              shl di,1
00000078  C4BD3A27          les di,word [di+0x273a]
0000007C  268B7D10          mov di,[es:di+0x10]
00000080  D1E7              shl di,1
00000082  D1E7              shl di,1
00000084  C4BD661F          les di,word [di+0x1f66]
00000088  897EF4            mov [bp-0xc],di
0000008B  8C46F6            mov word [bp-0xa],es
0000008E  C47EF4            les di,word [bp-0xc]
00000091  268B4512          mov ax,[es:di+0x12]
00000095  260B4514          or ax,[es:di+0x14]
00000099  7503              jnz 0x9e
0000009B  E9C100            jmp 0x15f
0000009E  C47EF4            les di,word [bp-0xc]
000000A1  26C47D12          les di,word [es:di+0x12]
000000A5  268B05            mov ax,[es:di]
000000A8  3B4604            cmp ax,[bp+0x4]
000000AB  7537              jnz 0xe4
000000AD  C47EF4            les di,word [bp-0xc]
000000B0  26C44512          les ax,word [es:di+0x12]
000000B4  8CC2              mov dx,es
000000B6  8946F8            mov [bp-0x8],ax
000000B9  8956FA            mov [bp-0x6],dx
000000BC  C47EF4            les di,word [bp-0xc]
000000BF  26C47D12          les di,word [es:di+0x12]
000000C3  26C44502          les ax,word [es:di+0x2]
000000C7  8CC2              mov dx,es
000000C9  C47EF4            les di,word [bp-0xc]
000000CC  26894512          mov [es:di+0x12],ax
000000D0  26895514          mov [es:di+0x14],dx
000000D4  8D7EF8            lea di,[bp-0x8]
000000D7  16                push ss
000000D8  57                push di
000000D9  B80600            mov ax,0x6
000000DC  50                push ax
000000DD  9AC003561A        call word 0x1a56:word 0x3c0
000000E2  EB7B              jmp 0x15f
000000E4  C47EF4            les di,word [bp-0xc]
000000E7  26C47D12          les di,word [es:di+0x12]
000000EB  26C44502          les ax,word [es:di+0x2]
000000EF  8CC2              mov dx,es
000000F1  8946F8            mov [bp-0x8],ax
000000F4  8956FA            mov [bp-0x6],dx
000000F7  C47EF4            les di,word [bp-0xc]
000000FA  26C44512          les ax,word [es:di+0x12]
000000FE  8CC2              mov dx,es
00000100  8946FC            mov [bp-0x4],ax
00000103  8956FE            mov [bp-0x2],dx
00000106  8B46F8            mov ax,[bp-0x8]
00000109  0B46FA            or ax,[bp-0x6]
0000010C  7427              jz 0x135
0000010E  C47EF8            les di,word [bp-0x8]
00000111  268B05            mov ax,[es:di]
00000114  3B4604            cmp ax,[bp+0x4]
00000117  741C              jz 0x135
00000119  C446F8            les ax,word [bp-0x8]
0000011C  8CC2              mov dx,es
0000011E  8946FC            mov [bp-0x4],ax
00000121  8956FE            mov [bp-0x2],dx
00000124  C47EF8            les di,word [bp-0x8]
00000127  26C44502          les ax,word [es:di+0x2]
0000012B  8CC2              mov dx,es
0000012D  8946F8            mov [bp-0x8],ax
00000130  8956FA            mov [bp-0x6],dx
00000133  EBD1              jmp 0x106
00000135  8B46F8            mov ax,[bp-0x8]
00000138  0B46FA            or ax,[bp-0x6]
0000013B  7422              jz 0x15f
0000013D  C47EF8            les di,word [bp-0x8]
00000140  26C44502          les ax,word [es:di+0x2]
00000144  8CC2              mov dx,es
00000146  C47EFC            les di,word [bp-0x4]
00000149  26894502          mov [es:di+0x2],ax
0000014D  26895504          mov [es:di+0x4],dx
00000151  8D7EF8            lea di,[bp-0x8]
00000154  16                push ss
00000155  57                push di
00000156  B80600            mov ax,0x6
00000159  50                push ax
0000015A  9AC003561A        call word 0x1a56:word 0x3c0
0000015F  89EC              mov sp,bp
00000161  5D                pop bp
00000162  C20200            ret word 0x2
00000165  55                push bp
00000166  89E5              mov bp,sp
00000168  83EC02            sub sp,0x2
0000016B  C746FE0100        mov word [bp-0x2],0x1
00000170  8B46FE            mov ax,[bp-0x2]
00000173  3B064259          cmp ax,[0x5942]
00000177  7F13              jg 0x18c
00000179  8B7EFE            mov di,[bp-0x2]
0000017C  D1E7              shl di,1
0000017E  8B85381F          mov ax,[di+0x1f38]
00000182  3B4604            cmp ax,[bp+0x4]
00000185  7405              jz 0x18c
00000187  FF46FE            inc word [bp-0x2]
0000018A  EBE4              jmp 0x170
0000018C  8B46FE            mov ax,[bp-0x2]
0000018F  3B064259          cmp ax,[0x5942]
00000193  7F2C              jg 0x1c1
00000195  8B46FE            mov ax,[bp-0x2]
00000198  3B064259          cmp ax,[0x5942]
0000019C  7D13              jnl 0x1b1
0000019E  8B3E4259          mov di,[0x5942]
000001A2  D1E7              shl di,1
000001A4  8B85381F          mov ax,[di+0x1f38]
000001A8  8B7EFE            mov di,[bp-0x2]
000001AB  D1E7              shl di,1
000001AD  8985381F          mov [di+0x1f38],ax
000001B1  8B3E4259          mov di,[0x5942]
000001B5  D1E7              shl di,1
000001B7  31C0              xor ax,ax
000001B9  8985381F          mov [di+0x1f38],ax
000001BD  FF0E4259          dec word [0x5942]
000001C1  89EC              mov sp,bp
000001C3  5D                pop bp
000001C4  C20200            ret word 0x2
000001C7  55                push bp
000001C8  89E5              mov bp,sp
000001CA  83EC01            sub sp,0x1
000001CD  8B7E06            mov di,[bp+0x6]
000001D0  D1E7              shl di,1
000001D2  D1E7              shl di,1
000001D4  C4BD3A27          les di,word [di+0x273a]
000001D8  268B4510          mov ax,[es:di+0x10]
000001DC  3B065E1F          cmp ax,[0x1f5e]
000001E0  753F              jnz 0x221
000001E2  8B3E5E1F          mov di,[0x1f5e]
000001E6  D1E7              shl di,1
000001E8  D1E7              shl di,1
000001EA  C4BD661F          les di,word [di+0x1f66]
000001EE  26807D1801        cmp byte [es:di+0x18],0x1
000001F3  752C              jnz 0x221
000001F5  9AFC016F04        call word 0x46f:word 0x1fc
000001FA  8846FF            mov [bp-0x1],al
000001FD  807EFF00          cmp byte [bp-0x1],0x0
00000201  740D              jz 0x210
00000203  807E0400          cmp byte [bp+0x4],0x0
00000207  7507              jnz 0x210
00000209  C6062E1901        mov byte [0x192e],0x1
0000020E  EB11              jmp 0x221
00000210  807EFF00          cmp byte [bp-0x1],0x0
00000214  750B              jnz 0x221
00000216  807E0400          cmp byte [bp+0x4],0x0
0000021A  7405              jz 0x221
0000021C  C6062E1901        mov byte [0x192e],0x1
00000221  89EC              mov sp,bp
00000223  5D                pop bp
00000224  C20400            ret word 0x4
00000227  55                push bp
00000228  89E5              mov bp,sp
0000022A  83EC06            sub sp,0x6
0000022D  C47E0C            les di,word [bp+0xc]
00000230  06                push es
00000231  57                push di
00000232  8D7EFB            lea di,[bp-0x5]
00000235  16                push ss
00000236  57                push di
00000237  B80500            mov ax,0x5
0000023A  50                push ax
0000023B  9AC002561A        call word 0x1a56:word 0x2c0
00000240  8A46FB            mov al,[bp-0x5]
00000243  3C00              cmp al,0x0
00000245  7513              jnz 0x25a
00000247  FF76FC            push word [bp-0x4]
0000024A  B8FA00            mov ax,0xfa
0000024D  50                push ax
0000024E  B8A000            mov ax,0xa0
00000251  50                push ax
00000252  9AE30A6F04        call word 0x46f:word 0xae3
00000257  E91A03            jmp 0x574
0000025A  3C01              cmp al,0x1
0000025C  7403              jz 0x261
0000025E  E98500            jmp 0x2e6
00000261  8B7EFC            mov di,[bp-0x4]
00000264  D1E7              shl di,1
00000266  D1E7              shl di,1
00000268  C4BD3A27          les di,word [di+0x273a]
0000026C  26837D1000        cmp word [es:di+0x10],0x0
00000271  7470              jz 0x2e3
00000273  9AFC016F04        call word 0x46f:word 0x1fc
00000278  8846FA            mov [bp-0x6],al
0000027B  8B7EFC            mov di,[bp-0x4]
0000027E  D1E7              shl di,1
00000280  D1E7              shl di,1
00000282  C4BD3A27          les di,word [di+0x273a]
00000286  26837D10FF        cmp word [es:di+0x10],0xffffffffffffffff
0000028B  750D              jnz 0x29a
0000028D  FF76FC            push word [bp-0x4]
00000290  E8D2FE            call 0x165
00000293  C6062F1901        mov byte [0x192f],0x1
00000298  EB06              jmp 0x2a0
0000029A  FF76FC            push word [bp-0x4]
0000029D  E8CBFD            call 0x6b
000002A0  8B7EFC            mov di,[bp-0x4]
000002A3  D1E7              shl di,1
000002A5  D1E7              shl di,1
000002A7  C4BD3A27          les di,word [di+0x273a]
000002AB  31C0              xor ax,ax
000002AD  26894510          mov [es:di+0x10],ax
000002B1  8B7EFC            mov di,[bp-0x4]
000002B4  D1E7              shl di,1
000002B6  D1E7              shl di,1
000002B8  C4BD3A27          les di,word [di+0x273a]
000002BC  268B4512          mov ax,[es:di+0x12]
000002C0  BA5200            mov dx,0x52
000002C3  F7E2              mul dx
000002C5  8B7EFC            mov di,[bp-0x4]
000002C8  D1E7              shl di,1
000002CA  D1E7              shl di,1
000002CC  C4BD3A27          les di,word [di+0x273a]
000002D0  03F8              add di,ax
000002D2  26807D1300        cmp byte [es:di+0x13],0x0
000002D7  740A              jz 0x2e3
000002D9  FF76FC            push word [bp-0x4]
000002DC  8A46FA            mov al,[bp-0x6]
000002DF  50                push ax
000002E0  E8E4FE            call 0x1c7
000002E3  E98E02            jmp 0x574
000002E6  3C02              cmp al,0x2
000002E8  7555              jnz 0x33f
000002EA  8B7EFC            mov di,[bp-0x4]
000002ED  D1E7              shl di,1
000002EF  D1E7              shl di,1
000002F1  C4BD3A27          les di,word [di+0x273a]
000002F5  26837D1000        cmp word [es:di+0x10],0x0
000002FA  7540              jnz 0x33c
000002FC  9AFC016F04        call word 0x46f:word 0x1fc
00000301  8846FA            mov [bp-0x6],al
00000304  FF76FC            push word [bp-0x4]
00000307  E8F6FC            call 0x0
0000030A  8B7EFC            mov di,[bp-0x4]
0000030D  D1E7              shl di,1
0000030F  D1E7              shl di,1
00000311  C4BD3A27          les di,word [di+0x273a]
00000315  268B4512          mov ax,[es:di+0x12]
00000319  BA5200            mov dx,0x52
0000031C  F7E2              mul dx
0000031E  8B7EFC            mov di,[bp-0x4]
00000321  D1E7              shl di,1
00000323  D1E7              shl di,1
00000325  C4BD3A27          les di,word [di+0x273a]
00000329  03F8              add di,ax
0000032B  26807D1300        cmp byte [es:di+0x13],0x0
00000330  740A              jz 0x33c
00000332  FF76FC            push word [bp-0x4]
00000335  8A46FA            mov al,[bp-0x6]
00000338  50                push ax
00000339  E88BFE            call 0x1c7
0000033C  E93502            jmp 0x574
0000033F  3C03              cmp al,0x3
00000341  7541              jnz 0x384
00000343  8B7EFC            mov di,[bp-0x4]
00000346  D1E7              shl di,1
00000348  D1E7              shl di,1
0000034A  C4BD0E2F          les di,word [di+0x2f0e]
0000034E  268B4510          mov ax,[es:di+0x10]
00000352  3B065E1F          cmp ax,[0x1f5e]
00000356  7518              jnz 0x370
00000358  8B7EFC            mov di,[bp-0x4]
0000035B  D1E7              shl di,1
0000035D  D1E7              shl di,1
0000035F  C4BD0E2F          les di,word [di+0x2f0e]
00000363  31C0              xor ax,ax
00000365  26894510          mov [es:di+0x10],ax
00000369  C6062E1901        mov byte [0x192e],0x1
0000036E  EB11              jmp 0x381
00000370  8B7EFC            mov di,[bp-0x4]
00000373  D1E7              shl di,1
00000375  D1E7              shl di,1
00000377  C4BD0E2F          les di,word [di+0x2f0e]
0000037B  31C0              xor ax,ax
0000037D  26894510          mov [es:di+0x10],ax
00000381  E9F001            jmp 0x574
00000384  3C04              cmp al,0x4
00000386  7554              jnz 0x3dc
00000388  8B7EFC            mov di,[bp-0x4]
0000038B  D1E7              shl di,1
0000038D  D1E7              shl di,1
0000038F  C4BD0E2F          les di,word [di+0x2f0e]
00000393  26837D1000        cmp word [es:di+0x10],0x0
00000398  7F3F              jg 0x3d9
0000039A  8B7EFC            mov di,[bp-0x4]
0000039D  D1E7              shl di,1
0000039F  D1E7              shl di,1
000003A1  C4BD0E2F          les di,word [di+0x2f0e]
000003A5  268B853803        mov ax,[es:di+0x338]
000003AA  09C0              or ax,ax
000003AC  7902              jns 0x3b0
000003AE  F7D8              neg ax
000003B0  8B7EFC            mov di,[bp-0x4]
000003B3  D1E7              shl di,1
000003B5  D1E7              shl di,1
000003B7  C4BD0E2F          les di,word [di+0x2f0e]
000003BB  26894510          mov [es:di+0x10],ax
000003BF  8B7EFC            mov di,[bp-0x4]
000003C2  D1E7              shl di,1
000003C4  D1E7              shl di,1
000003C6  C4BD0E2F          les di,word [di+0x2f0e]
000003CA  268B4510          mov ax,[es:di+0x10]
000003CE  3B065E1F          cmp ax,[0x1f5e]
000003D2  7505              jnz 0x3d9
000003D4  C6062E1901        mov byte [0x192e],0x1
000003D9  E99801            jmp 0x574
000003DC  3C06              cmp al,0x6
000003DE  7518              jnz 0x3f8
000003E0  8B7EFC            mov di,[bp-0x4]
000003E3  D1E7              shl di,1
000003E5  D1E7              shl di,1
000003E7  C4BDBA3E          les di,word [di+0x3eba]
000003EB  06                push es
000003EC  57                push di
000003ED  B000              mov al,0x0
000003EF  50                push ax
000003F0  9A31096F04        call word 0x46f:word 0x931
000003F5  E97C01            jmp 0x574
000003F8  3C05              cmp al,0x5
000003FA  750E              jnz 0x40a
000003FC  8B46FC            mov ax,[bp-0x4]
000003FF  A35E1F            mov [0x1f5e],ax
00000402  C6062E1901        mov byte [0x192e],0x1
00000407  E96A01            jmp 0x574
0000040A  3C0C              cmp al,0xc
0000040C  750F              jnz 0x41d
0000040E  8B46FE            mov ax,[bp-0x2]
00000411  8B7EFC            mov di,[bp-0x4]
00000414  D1E7              shl di,1
00000416  8985E636          mov [di+0x36e6],ax
0000041A  E95701            jmp 0x574
0000041D  3C0D              cmp al,0xd
0000041F  750F              jnz 0x430
00000421  8B46FE            mov ax,[bp-0x2]
00000424  8B7EFC            mov di,[bp-0x4]
00000427  D1E7              shl di,1
00000429  0185E636          add [di+0x36e6],ax
0000042D  E94401            jmp 0x574
00000430  3C0E              cmp al,0xe
00000432  750F              jnz 0x443
00000434  8B46FE            mov ax,[bp-0x2]
00000437  8B7EFC            mov di,[bp-0x4]
0000043A  D1E7              shl di,1
0000043C  2985E636          sub [di+0x36e6],ax
00000440  E93101            jmp 0x574
00000443  3C0B              cmp al,0xb
00000445  750A              jnz 0x451
00000447  8B46FC            mov ax,[bp-0x4]
0000044A  0106621F          add [0x1f62],ax
0000044E  E92301            jmp 0x574
00000451  3C07              cmp al,0x7
00000453  7537              jnz 0x48c
00000455  8B7EFC            mov di,[bp-0x4]
00000458  D1E7              shl di,1
0000045A  D1E7              shl di,1
0000045C  C4BD661F          les di,word [di+0x1f66]
00000460  268B4510          mov ax,[es:di+0x10]
00000464  3B46FE            cmp ax,[bp-0x2]
00000467  7420              jz 0x489
00000469  8B46FE            mov ax,[bp-0x2]
0000046C  8B7EFC            mov di,[bp-0x4]
0000046F  D1E7              shl di,1
00000471  D1E7              shl di,1
00000473  C4BD661F          les di,word [di+0x1f66]
00000477  26894510          mov [es:di+0x10],ax
0000047B  8B46FC            mov ax,[bp-0x4]
0000047E  3B065E1F          cmp ax,[0x1f5e]
00000482  7505              jnz 0x489
00000484  C6062E1901        mov byte [0x192e],0x1
00000489  E9E800            jmp 0x574
0000048C  3C08              cmp al,0x8
0000048E  7579              jnz 0x509
00000490  8B7EFC            mov di,[bp-0x4]
00000493  D1E7              shl di,1
00000495  D1E7              shl di,1
00000497  C4BD3A27          les di,word [di+0x273a]
0000049B  268B4512          mov ax,[es:di+0x12]
0000049F  3B46FE            cmp ax,[bp-0x2]
000004A2  7463              jz 0x507
000004A4  9AFC016F04        call word 0x46f:word 0x1fc
000004A9  8846FA            mov [bp-0x6],al
000004AC  8B46FE            mov ax,[bp-0x2]
000004AF  8B7EFC            mov di,[bp-0x4]
000004B2  D1E7              shl di,1
000004B4  D1E7              shl di,1
000004B6  C4BD3A27          les di,word [di+0x273a]
000004BA  26894512          mov [es:di+0x12],ax
000004BE  8B7EFC            mov di,[bp-0x4]
000004C1  D1E7              shl di,1
000004C3  D1E7              shl di,1
000004C5  C4BD3A27          les di,word [di+0x273a]
000004C9  26837D10FF        cmp word [es:di+0x10],0xffffffffffffffff
000004CE  7505              jnz 0x4d5
000004D0  C6062F1901        mov byte [0x192f],0x1
000004D5  8B7EFC            mov di,[bp-0x4]
000004D8  D1E7              shl di,1
000004DA  D1E7              shl di,1
000004DC  C4BD3A27          les di,word [di+0x273a]
000004E0  268B4512          mov ax,[es:di+0x12]
000004E4  BA5200            mov dx,0x52
000004E7  F7E2              mul dx
000004E9  8B7EFC            mov di,[bp-0x4]
000004EC  D1E7              shl di,1
000004EE  D1E7              shl di,1
000004F0  C4BD3A27          les di,word [di+0x273a]
000004F4  03F8              add di,ax
000004F6  26807D1300        cmp byte [es:di+0x13],0x0
000004FB  740A              jz 0x507
000004FD  FF76FC            push word [bp-0x4]
00000500  8A46FA            mov al,[bp-0x6]
00000503  50                push ax
00000504  E8C0FC            call 0x1c7
00000507  EB6B              jmp 0x574
00000509  3C09              cmp al,0x9
0000050B  7542              jnz 0x54f
0000050D  8B7EFC            mov di,[bp-0x4]
00000510  D1E7              shl di,1
00000512  D1E7              shl di,1
00000514  C4BD0E2F          les di,word [di+0x2f0e]
00000518  268B4512          mov ax,[es:di+0x12]
0000051C  3B46FE            cmp ax,[bp-0x2]
0000051F  742C              jz 0x54d
00000521  8B46FE            mov ax,[bp-0x2]
00000524  8B7EFC            mov di,[bp-0x4]
00000527  D1E7              shl di,1
00000529  D1E7              shl di,1
0000052B  C4BD0E2F          les di,word [di+0x2f0e]
0000052F  26894512          mov [es:di+0x12],ax
00000533  8B7EFC            mov di,[bp-0x4]
00000536  D1E7              shl di,1
00000538  D1E7              shl di,1
0000053A  C4BD0E2F          les di,word [di+0x2f0e]
0000053E  268B4510          mov ax,[es:di+0x10]
00000542  3B065E1F          cmp ax,[0x1f5e]
00000546  7505              jnz 0x54d
00000548  C6062E1901        mov byte [0x192e],0x1
0000054D  EB25              jmp 0x574
0000054F  3C0A              cmp al,0xa
00000551  7511              jnz 0x564
00000553  9AA8086F04        call word 0x46f:word 0x8a8
00000558  C47E08            les di,word [bp+0x8]
0000055B  06                push es
0000055C  57                push di
0000055D  9A57156F04        call word 0x46f:word 0x1557
00000562  EB10              jmp 0x574
00000564  3C0F              cmp al,0xf
00000566  750C              jnz 0x574
00000568  C47E04            les di,word [bp+0x4]
0000056B  26C60501          mov byte [es:di],0x1
0000056F  9AA8086F04        call word 0x46f:word 0x8a8
00000574  89EC              mov sp,bp
00000576  5D                pop bp
00000577  C20C00            ret word 0xc
0000057A  55                push bp
0000057B  89E5              mov bp,sp
0000057D  83EC06            sub sp,0x6
00000580  C47E06            les di,word [bp+0x6]
00000583  06                push es
00000584  57                push di
00000585  8D7EFA            lea di,[bp-0x6]
00000588  16                push ss
00000589  57                push di
0000058A  B80500            mov ax,0x5
0000058D  50                push ax
0000058E  9AC002561A        call word 0x1a56:word 0x2c0
00000593  8A46FA            mov al,[bp-0x6]
00000596  3C00              cmp al,0x0
00000598  7515              jnz 0x5af
0000059A  8B46FB            mov ax,[bp-0x5]
0000059D  3B065E1F          cmp ax,[0x1f5e]
000005A1  7404              jz 0x5a7
000005A3  B000              mov al,0x0
000005A5  EB02              jmp 0x5a9
000005A7  B001              mov al,0x1
000005A9  8846FF            mov [bp-0x1],al
000005AC  E91B02            jmp 0x7ca
000005AF  3C01              cmp al,0x1
000005B1  7515              jnz 0x5c8
000005B3  8B46FB            mov ax,[bp-0x5]
000005B6  3B065E1F          cmp ax,[0x1f5e]
000005BA  7504              jnz 0x5c0
000005BC  B000              mov al,0x0
000005BE  EB02              jmp 0x5c2
000005C0  B001              mov al,0x1
000005C2  8846FF            mov [bp-0x1],al
000005C5  E90202            jmp 0x7ca
000005C8  3C04              cmp al,0x4
000005CA  7520              jnz 0x5ec
000005CC  8B7EFB            mov di,[bp-0x5]
000005CF  D1E7              shl di,1
000005D1  D1E7              shl di,1
000005D3  C4BD661F          les di,word [di+0x1f66]
000005D7  268B4510          mov ax,[es:di+0x10]
000005DB  3B46FD            cmp ax,[bp-0x3]
000005DE  7404              jz 0x5e4
000005E0  B000              mov al,0x0
000005E2  EB02              jmp 0x5e6
000005E4  B001              mov al,0x1
000005E6  8846FF            mov [bp-0x1],al
000005E9  E9DE01            jmp 0x7ca
000005EC  3C09              cmp al,0x9
000005EE  7533              jnz 0x623
000005F0  8B7EFB            mov di,[bp-0x5]
000005F3  D1E7              shl di,1
000005F5  D1E7              shl di,1
000005F7  C4BD3A27          les di,word [di+0x273a]
000005FB  268B4510          mov ax,[es:di+0x10]
000005FF  3B065E1F          cmp ax,[0x1f5e]
00000603  7416              jz 0x61b
00000605  8B7EFB            mov di,[bp-0x5]
00000608  D1E7              shl di,1
0000060A  D1E7              shl di,1
0000060C  C4BD3A27          les di,word [di+0x273a]
00000610  26837D10FF        cmp word [es:di+0x10],0xffffffffffffffff
00000615  7404              jz 0x61b
00000617  B000              mov al,0x0
00000619  EB02              jmp 0x61d
0000061B  B001              mov al,0x1
0000061D  8846FF            mov [bp-0x1],al
00000620  E9A701            jmp 0x7ca
00000623  3C0A              cmp al,0xa
00000625  7532              jnz 0x659
00000627  8B7EFB            mov di,[bp-0x5]
0000062A  D1E7              shl di,1
0000062C  D1E7              shl di,1
0000062E  C4BD3A27          les di,word [di+0x273a]
00000632  268B4512          mov ax,[es:di+0x12]
00000636  3B46FD            cmp ax,[bp-0x3]
00000639  7512              jnz 0x64d
0000063B  8B7EFB            mov di,[bp-0x5]
0000063E  D1E7              shl di,1
00000640  D1E7              shl di,1
00000642  C4BD3A27          les di,word [di+0x273a]
00000646  26837D1000        cmp word [es:di+0x10],0x0
0000064B  7504              jnz 0x651
0000064D  B000              mov al,0x0
0000064F  EB02              jmp 0x653
00000651  B001              mov al,0x1
00000653  8846FF            mov [bp-0x1],al
00000656  E97101            jmp 0x7ca
00000659  3C0B              cmp al,0xb
0000065B  751E              jnz 0x67b
0000065D  8B7EFB            mov di,[bp-0x5]
00000660  D1E7              shl di,1
00000662  D1E7              shl di,1
00000664  C4BD3A27          les di,word [di+0x273a]
00000668  26837D1000        cmp word [es:di+0x10],0x0
0000066D  7404              jz 0x673
0000066F  B000              mov al,0x0
00000671  EB02              jmp 0x675
00000673  B001              mov al,0x1
00000675  8846FF            mov [bp-0x1],al
00000678  E94F01            jmp 0x7ca
0000067B  3C02              cmp al,0x2
0000067D  751E              jnz 0x69d
0000067F  8B7EFB            mov di,[bp-0x5]
00000682  D1E7              shl di,1
00000684  D1E7              shl di,1
00000686  C4BD3A27          les di,word [di+0x273a]
0000068A  26837D10FF        cmp word [es:di+0x10],0xffffffffffffffff
0000068F  7404              jz 0x695
00000691  B000              mov al,0x0
00000693  EB02              jmp 0x697
00000695  B001              mov al,0x1
00000697  8846FF            mov [bp-0x1],al
0000069A  E92D01            jmp 0x7ca
0000069D  3C03              cmp al,0x3
0000069F  751E              jnz 0x6bf
000006A1  8B7EFB            mov di,[bp-0x5]
000006A4  D1E7              shl di,1
000006A6  D1E7              shl di,1
000006A8  C4BD3A27          les di,word [di+0x273a]
000006AC  26837D10FF        cmp word [es:di+0x10],0xffffffffffffffff
000006B1  7504              jnz 0x6b7
000006B3  B000              mov al,0x0
000006B5  EB02              jmp 0x6b9
000006B7  B001              mov al,0x1
000006B9  8846FF            mov [bp-0x1],al
000006BC  E90B01            jmp 0x7ca
000006BF  3C06              cmp al,0x6
000006C1  7521              jnz 0x6e4
000006C3  8B7EFB            mov di,[bp-0x5]
000006C6  D1E7              shl di,1
000006C8  D1E7              shl di,1
000006CA  C4BD0E2F          les di,word [di+0x2f0e]
000006CE  268B4510          mov ax,[es:di+0x10]
000006D2  3B065E1F          cmp ax,[0x1f5e]
000006D6  7404              jz 0x6dc
000006D8  B000              mov al,0x0
000006DA  EB02              jmp 0x6de
000006DC  B001              mov al,0x1
000006DE  8846FF            mov [bp-0x1],al
000006E1  E9E600            jmp 0x7ca
000006E4  3C07              cmp al,0x7
000006E6  7532              jnz 0x71a
000006E8  8B7EFB            mov di,[bp-0x5]
000006EB  D1E7              shl di,1
000006ED  D1E7              shl di,1
000006EF  C4BD0E2F          les di,word [di+0x2f0e]
000006F3  268B4512          mov ax,[es:di+0x12]
000006F7  3B46FD            cmp ax,[bp-0x3]
000006FA  7512              jnz 0x70e
000006FC  8B7EFB            mov di,[bp-0x5]
000006FF  D1E7              shl di,1
00000701  D1E7              shl di,1
00000703  C4BD0E2F          les di,word [di+0x2f0e]
00000707  26837D1000        cmp word [es:di+0x10],0x0
0000070C  7F04              jg 0x712
0000070E  B000              mov al,0x0
00000710  EB02              jmp 0x714
00000712  B001              mov al,0x1
00000714  8846FF            mov [bp-0x1],al
00000717  E9B000            jmp 0x7ca
0000071A  3C08              cmp al,0x8
0000071C  751E              jnz 0x73c
0000071E  8B7EFB            mov di,[bp-0x5]
00000721  D1E7              shl di,1
00000723  D1E7              shl di,1
00000725  C4BD0E2F          les di,word [di+0x2f0e]
00000729  26837D1000        cmp word [es:di+0x10],0x0
0000072E  7E04              jng 0x734
00000730  B000              mov al,0x0
00000732  EB02              jmp 0x736
00000734  B001              mov al,0x1
00000736  8846FF            mov [bp-0x1],al
00000739  E98E00            jmp 0x7ca
0000073C  3C0C              cmp al,0xc
0000073E  7519              jnz 0x759
00000740  8B7EFB            mov di,[bp-0x5]
00000743  D1E7              shl di,1
00000745  8B85E636          mov ax,[di+0x36e6]
00000749  3B46FD            cmp ax,[bp-0x3]
0000074C  7404              jz 0x752
0000074E  B000              mov al,0x0
00000750  EB02              jmp 0x754
00000752  B001              mov al,0x1
00000754  8846FF            mov [bp-0x1],al
00000757  EB71              jmp 0x7ca
00000759  3C0D              cmp al,0xd
0000075B  7519              jnz 0x776
0000075D  8B7EFB            mov di,[bp-0x5]
00000760  D1E7              shl di,1
00000762  8B85E636          mov ax,[di+0x36e6]
00000766  3B46FD            cmp ax,[bp-0x3]
00000769  7F04              jg 0x76f
0000076B  B000              mov al,0x0
0000076D  EB02              jmp 0x771
0000076F  B001              mov al,0x1
00000771  8846FF            mov [bp-0x1],al
00000774  EB54              jmp 0x7ca
00000776  3C0E              cmp al,0xe
00000778  7519              jnz 0x793
0000077A  8B7EFB            mov di,[bp-0x5]
0000077D  D1E7              shl di,1
0000077F  8B85E636          mov ax,[di+0x36e6]
00000783  3B46FD            cmp ax,[bp-0x3]
00000786  7C04              jl 0x78c
00000788  B000              mov al,0x0
0000078A  EB02              jmp 0x78e
0000078C  B001              mov al,0x1
0000078E  8846FF            mov [bp-0x1],al
00000791  EB37              jmp 0x7ca
00000793  3C05              cmp al,0x5
00000795  7529              jnz 0x7c0
00000797  B86400            mov ax,0x64
0000079A  50                push ax
0000079B  9A6211561A        call word 0x1a56:word 0x1162
000007A0  40                inc ax
000007A1  31D2              xor dx,dx
000007A3  8BC8              mov cx,ax
000007A5  8BDA              mov bx,dx
000007A7  8B46FB            mov ax,[bp-0x5]
000007AA  99                cwd
000007AB  3BD3              cmp dx,bx
000007AD  7F0A              jg 0x7b9
000007AF  7C04              jl 0x7b5
000007B1  3BC1              cmp ax,cx
000007B3  7304              jnc 0x7b9
000007B5  B000              mov al,0x0
000007B7  EB02              jmp 0x7bb
000007B9  B001              mov al,0x1
000007BB  8846FF            mov [bp-0x1],al
000007BE  EB0A              jmp 0x7ca
000007C0  3C0F              cmp al,0xf
000007C2  7506              jnz 0x7ca
000007C4  8A4604            mov al,[bp+0x4]
000007C7  8846FF            mov [bp-0x1],al
000007CA  8A46FF            mov al,[bp-0x1]
000007CD  89EC              mov sp,bp
000007CF  5D                pop bp
000007D0  C20600            ret word 0x6
000007D3  55                push bp
000007D4  89E5              mov bp,sp
000007D6  83EC04            sub sp,0x4
000007D9  807E0400          cmp byte [bp+0x4],0x0
000007DD  740E              jz 0x7ed
000007DF  C4065E59          les ax,word [0x595e]
000007E3  8CC2              mov dx,es
000007E5  8946FC            mov [bp-0x4],ax
000007E8  8956FE            mov [bp-0x2],dx
000007EB  EB0C              jmp 0x7f9
000007ED  C4065A59          les ax,word [0x595a]
000007F1  8CC2              mov dx,es
000007F3  8946FC            mov [bp-0x4],ax
000007F6  8956FE            mov [bp-0x2],dx
000007F9  8B46FC            mov ax,[bp-0x4]
000007FC  0B46FE            or ax,[bp-0x2]
000007FF  7440              jz 0x841
00000801  C47E0A            les di,word [bp+0xa]
00000804  26803D00          cmp byte [es:di],0x0
00000808  7537              jnz 0x841
0000080A  C47EFC            les di,word [bp-0x4]
0000080D  06                push es
0000080E  57                push di
0000080F  8A4604            mov al,[bp+0x4]
00000812  50                push ax
00000813  E864FD            call 0x57a
00000816  08C0              or al,al
00000818  7416              jz 0x830
0000081A  C47EFC            les di,word [bp-0x4]
0000081D  81C70500          add di,0x5
00000821  06                push es
00000822  57                push di
00000823  C47E0A            les di,word [bp+0xa]
00000826  06                push es
00000827  57                push di
00000828  C47E06            les di,word [bp+0x6]
0000082B  06                push es
0000082C  57                push di
0000082D  E8F7F9            call 0x227
00000830  C47EFC            les di,word [bp-0x4]
00000833  26C4450A          les ax,word [es:di+0xa]
00000837  8CC2              mov dx,es
00000839  8946FC            mov [bp-0x4],ax
0000083C  8956FE            mov [bp-0x2],dx
0000083F  EBB8              jmp 0x7f9
00000841  89EC              mov sp,bp
00000843  5D                pop bp
00000844  C20A00            ret word 0xa
00000847  55                push bp
00000848  89E5              mov bp,sp
0000084A  83EC09            sub sp,0x9
0000084D  C47E0E            les di,word [bp+0xe]
00000850  06                push es
00000851  57                push di
00000852  8D7EFB            lea di,[bp-0x5]
00000855  16                push ss
00000856  57                push di
00000857  B80500            mov ax,0x5
0000085A  50                push ax
0000085B  9AC002561A        call word 0x1a56:word 0x2c0
00000860  807E0400          cmp byte [bp+0x4],0x0
00000864  740E              jz 0x874
00000866  C4065659          les ax,word [0x5956]
0000086A  8CC2              mov dx,es
0000086C  8946F7            mov [bp-0x9],ax
0000086F  8956F9            mov [bp-0x7],dx
00000872  EB0C              jmp 0x880
00000874  C4065259          les ax,word [0x5952]
00000878  8CC2              mov dx,es
0000087A  8946F7            mov [bp-0x9],ax
0000087D  8956F9            mov [bp-0x7],dx
00000880  8B46F7            mov ax,[bp-0x9]
00000883  0B46F9            or ax,[bp-0x7]
00000886  7467              jz 0x8ef
00000888  C47E0A            les di,word [bp+0xa]
0000088B  26803D00          cmp byte [es:di],0x0
0000088F  755E              jnz 0x8ef
00000891  C47EF7            les di,word [bp-0x9]
00000894  268A05            mov al,[es:di]
00000897  3A46FB            cmp al,[bp-0x5]
0000089A  7542              jnz 0x8de
0000089C  C47EF7            les di,word [bp-0x9]
0000089F  268B4501          mov ax,[es:di+0x1]
000008A3  3B46FC            cmp ax,[bp-0x4]
000008A6  7536              jnz 0x8de
000008A8  C47EF7            les di,word [bp-0x9]
000008AB  268B4503          mov ax,[es:di+0x3]
000008AF  3B46FE            cmp ax,[bp-0x2]
000008B2  752A              jnz 0x8de
000008B4  C47EF7            les di,word [bp-0x9]
000008B7  81C70500          add di,0x5
000008BB  06                push es
000008BC  57                push di
000008BD  8A4604            mov al,[bp+0x4]
000008C0  50                push ax
000008C1  E8B6FC            call 0x57a
000008C4  08C0              or al,al
000008C6  7416              jz 0x8de
000008C8  C47EF7            les di,word [bp-0x9]
000008CB  81C70A00          add di,0xa
000008CF  06                push es
000008D0  57                push di
000008D1  C47E0A            les di,word [bp+0xa]
000008D4  06                push es
000008D5  57                push di
000008D6  C47E06            les di,word [bp+0x6]
000008D9  06                push es
000008DA  57                push di
000008DB  E849F9            call 0x227
000008DE  C47EF7            les di,word [bp-0x9]
000008E1  26C4450F          les ax,word [es:di+0xf]
000008E5  8CC2              mov dx,es
000008E7  8946F7            mov [bp-0x9],ax
000008EA  8956F9            mov [bp-0x7],dx
000008ED  EB91              jmp 0x880
000008EF  89EC              mov sp,bp
000008F1  5D                pop bp
000008F2  C20E00            ret word 0xe
000008F5  55                push bp
000008F6  89E5              mov bp,sp
000008F8  83EC12            sub sp,0x12
000008FB  C47E08            les di,word [bp+0x8]
000008FE  06                push es
000008FF  57                push di
00000900  8D7EFB            lea di,[bp-0x5]
00000903  16                push ss
00000904  57                push di
00000905  B80500            mov ax,0x5
00000908  50                push ax
00000909  9AC002561A        call word 0x1a56:word 0x2c0
0000090E  807EFB06          cmp byte [bp-0x5],0x6
00000912  7552              jnz 0x966
00000914  8B3E5E1F          mov di,[0x1f5e]
00000918  D1E7              shl di,1
0000091A  D1E7              shl di,1
0000091C  C4BD661F          les di,word [di+0x1f66]
00000920  897EF2            mov [bp-0xe],di
00000923  8C46F4            mov word [bp-0xc],es
00000926  C47EF2            les di,word [bp-0xe]
00000929  268B7D16          mov di,[es:di+0x16]
0000092D  D1E7              shl di,1
0000092F  D1E7              shl di,1
00000931  C4BD0E2F          les di,word [di+0x2f0e]
00000935  897EEE            mov [bp-0x12],di
00000938  8C46F0            mov word [bp-0x10],es
0000093B  8B46FE            mov ax,[bp-0x2]
0000093E  BA3400            mov dx,0x34
00000941  F7E2              mul dx
00000943  8BC8              mov cx,ax
00000945  C47EEE            les di,word [bp-0x12]
00000948  268B4512          mov ax,[es:di+0x12]
0000094C  BA0C01            mov dx,0x10c
0000094F  F7E2              mul dx
00000951  C47EEE            les di,word [bp-0x12]
00000954  03F8              add di,ax
00000956  03F9              add di,cx
00000958  81C7DCFE          add di,0xfedc
0000095C  06                push es
0000095D  57                push di
0000095E  B001              mov al,0x1
00000960  50                push ax
00000961  9A31096F04        call word 0x46f:word 0x931
00000966  C646FA00          mov byte [bp-0x6],0x0
0000096A  8D7EFB            lea di,[bp-0x5]
0000096D  16                push ss
0000096E  57                push di
0000096F  C47E04            les di,word [bp+0x4]
00000972  06                push es
00000973  57                push di
00000974  8D7EFA            lea di,[bp-0x6]
00000977  16                push ss
00000978  57                push di
00000979  B000              mov al,0x0
0000097B  50                push ax
0000097C  E8C8FE            call 0x847
0000097F  C47E04            les di,word [bp+0x4]
00000982  26803D00          cmp byte [es:di],0x0
00000986  7403              jz 0x98b
00000988  E91302            jmp 0xb9e
0000098B  C47E04            les di,word [bp+0x4]
0000098E  06                push es
0000098F  57                push di
00000990  8D7EFA            lea di,[bp-0x6]
00000993  16                push ss
00000994  57                push di
00000995  B000              mov al,0x0
00000997  50                push ax
00000998  E838FE            call 0x7d3
0000099B  C47E04            les di,word [bp+0x4]
0000099E  26803D00          cmp byte [es:di],0x0
000009A2  7403              jz 0x9a7
000009A4  E9F701            jmp 0xb9e
000009A7  807EFA00          cmp byte [bp-0x6],0x0
000009AB  7403              jz 0x9b0
000009AD  E9B901            jmp 0xb69
000009B0  8A46FB            mov al,[bp-0x5]
000009B3  3C00              cmp al,0x0
000009B5  7403              jz 0x9ba
000009B7  E98C00            jmp 0xa46
000009BA  8B3E5E1F          mov di,[0x1f5e]
000009BE  D1E7              shl di,1
000009C0  D1E7              shl di,1
000009C2  C4BD661F          les di,word [di+0x1f66]
000009C6  897EF2            mov [bp-0xe],di
000009C9  8C46F4            mov word [bp-0xc],es
000009CC  C47EF2            les di,word [bp-0xe]
000009CF  81C71B00          add di,0x1b
000009D3  06                push es
000009D4  57                push di
000009D5  9AEF01450D        call word 0xd45:word 0x1ef
000009DA  C47EF2            les di,word [bp-0xe]
000009DD  26C44520          les ax,word [es:di+0x20]
000009E1  8CC2              mov dx,es
000009E3  8946F6            mov [bp-0xa],ax
000009E6  8956F8            mov [bp-0x8],dx
000009E9  8B46FE            mov ax,[bp-0x2]
000009EC  D1E0              shl ax,1
000009EE  8BC8              mov cx,ax
000009F0  C47EF2            les di,word [bp-0xe]
000009F3  268B4510          mov ax,[es:di+0x10]
000009F7  BA8D00            mov dx,0x8d
000009FA  F7E2              mul dx
000009FC  C47EF6            les di,word [bp-0xa]
000009FF  03F8              add di,ax
00000A01  03F9              add di,cx
00000A03  26837DEE00        cmp word [es:di-0x12],0x0
00000A08  7428              jz 0xa32
00000A0A  8B46FE            mov ax,[bp-0x2]
00000A0D  D1E0              shl ax,1
00000A0F  8BC8              mov cx,ax
00000A11  C47EF2            les di,word [bp-0xe]
00000A14  268B4510          mov ax,[es:di+0x10]
00000A18  BA8D00            mov dx,0x8d
00000A1B  F7E2              mul dx
00000A1D  C47EF6            les di,word [bp-0xa]
00000A20  03F8              add di,ax
00000A22  03F9              add di,cx
00000A24  268B45EE          mov ax,[es:di-0x12]
00000A28  A35E1F            mov [0x1f5e],ax
00000A2B  C6062E1901        mov byte [0x192e],0x1
00000A30  EB11              jmp 0xa43
00000A32  B80300            mov ax,0x3
00000A35  50                push ax
00000A36  B83200            mov ax,0x32
00000A39  50                push ax
00000A3A  B8A000            mov ax,0xa0
00000A3D  50                push ax
00000A3E  9AE30A6F04        call word 0x46f:word 0xae3
00000A43  E92301            jmp 0xb69
00000A46  3C01              cmp al,0x1
00000A48  7403              jz 0xa4d
00000A4A  E97E00            jmp 0xacb
00000A4D  8B7EFC            mov di,[bp-0x4]
00000A50  D1E7              shl di,1
00000A52  D1E7              shl di,1
00000A54  C4BD3A27          les di,word [di+0x273a]
00000A58  897EF2            mov [bp-0xe],di
00000A5B  8C46F4            mov word [bp-0xc],es
00000A5E  C47EF2            les di,word [bp-0xe]
00000A61  268B4512          mov ax,[es:di+0x12]
00000A65  BA5200            mov dx,0x52
00000A68  F7E2              mul dx
00000A6A  C47EF2            les di,word [bp-0xe]
00000A6D  03F8              add di,ax
00000A6F  26807D1200        cmp byte [es:di+0x12],0x0
00000A74  7441              jz 0xab7
00000A76  833E425909        cmp word [0x5942],0x9
00000A7B  7D27              jnl 0xaa4
00000A7D  FF064259          inc word [0x5942]
00000A81  8B46FC            mov ax,[bp-0x4]
00000A84  8B3E4259          mov di,[0x5942]
00000A88  D1E7              shl di,1
00000A8A  8985381F          mov [di+0x1f38],ax
00000A8E  FF76FC            push word [bp-0x4]
00000A91  E8D7F5            call 0x6b
00000A94  C47EF2            les di,word [bp-0xe]
00000A97  26C74510FFFF      mov word [es:di+0x10],0xffff
00000A9D  C6062F1901        mov byte [0x192f],0x1
00000AA2  EB11              jmp 0xab5
00000AA4  B80400            mov ax,0x4
00000AA7  50                push ax
00000AA8  B8C800            mov ax,0xc8
00000AAB  50                push ax
00000AAC  B8A000            mov ax,0xa0
00000AAF  50                push ax
00000AB0  9AE30A6F04        call word 0x46f:word 0xae3
00000AB5  EB11              jmp 0xac8
00000AB7  B80500            mov ax,0x5
00000ABA  50                push ax
00000ABB  B8C800            mov ax,0xc8
00000ABE  50                push ax
00000ABF  B8A000            mov ax,0xa0
00000AC2  50                push ax
00000AC3  9AE30A6F04        call word 0x46f:word 0xae3
00000AC8  E99E00            jmp 0xb69
00000ACB  3C02              cmp al,0x2
00000ACD  7514              jnz 0xae3
00000ACF  FF76FC            push word [bp-0x4]
00000AD2  E890F6            call 0x165
00000AD5  FF76FC            push word [bp-0x4]
00000AD8  E825F5            call 0x0
00000ADB  C6062F1901        mov byte [0x192f],0x1
00000AE0  E98600            jmp 0xb69
00000AE3  3C03              cmp al,0x3
00000AE5  7513              jnz 0xafa
00000AE7  B80600            mov ax,0x6
00000AEA  50                push ax
00000AEB  B8FA00            mov ax,0xfa
00000AEE  50                push ax
00000AEF  B8A000            mov ax,0xa0
00000AF2  50                push ax
00000AF3  9AE30A6F04        call word 0x46f:word 0xae3
00000AF8  EB6F              jmp 0xb69
00000AFA  3C04              cmp al,0x4
00000AFC  7513              jnz 0xb11
00000AFE  B80700            mov ax,0x7
00000B01  50                push ax
00000B02  B8FA00            mov ax,0xfa
00000B05  50                push ax
00000B06  B8A000            mov ax,0xa0
00000B09  50                push ax
00000B0A  9AE30A6F04        call word 0x46f:word 0xae3
00000B0F  EB58              jmp 0xb69
00000B11  3C05              cmp al,0x5
00000B13  750A              jnz 0xb1f
00000B15  FF76FC            push word [bp-0x4]
00000B18  9A310E6F04        call word 0x46f:word 0xe31
00000B1D  EB4A              jmp 0xb69
00000B1F  3C06              cmp al,0x6
00000B21  7546              jnz 0xb69
00000B23  8B3E5E1F          mov di,[0x1f5e]
00000B27  D1E7              shl di,1
00000B29  D1E7              shl di,1
00000B2B  C4BD661F          les di,word [di+0x1f66]
00000B2F  897EF2            mov [bp-0xe],di
00000B32  8C46F4            mov word [bp-0xc],es
00000B35  C47EF2            les di,word [bp-0xe]
00000B38  268B7D16          mov di,[es:di+0x16]
00000B3C  D1E7              shl di,1
00000B3E  D1E7              shl di,1
00000B40  C4BD0E2F          les di,word [di+0x2f0e]
00000B44  897EEE            mov [bp-0x12],di
00000B47  8C46F0            mov word [bp-0x10],es
00000B4A  C47EEE            les di,word [bp-0x12]
00000B4D  268B4512          mov ax,[es:di+0x12]
00000B51  BA0C01            mov dx,0x10c
00000B54  F7E2              mul dx
00000B56  C47EEE            les di,word [bp-0x12]
00000B59  03F8              add di,ax
00000B5B  81C7E0FF          add di,0xffe0
00000B5F  06                push es
00000B60  57                push di
00000B61  B000              mov al,0x0
00000B63  50                push ax
00000B64  9A31096F04        call word 0x46f:word 0x931
00000B69  9AA8086F04        call word 0x46f:word 0x8a8
00000B6E  8D7EFB            lea di,[bp-0x5]
00000B71  16                push ss
00000B72  57                push di
00000B73  C47E04            les di,word [bp+0x4]
00000B76  06                push es
00000B77  57                push di
00000B78  8D7EFA            lea di,[bp-0x6]
00000B7B  16                push ss
00000B7C  57                push di
00000B7D  B001              mov al,0x1
00000B7F  50                push ax
00000B80  E8C4FC            call 0x847
00000B83  C47E04            les di,word [bp+0x4]
00000B86  26803D00          cmp byte [es:di],0x0
00000B8A  7402              jz 0xb8e
00000B8C  EB10              jmp 0xb9e
00000B8E  C47E04            les di,word [bp+0x4]
00000B91  06                push es
00000B92  57                push di
00000B93  8D7EFA            lea di,[bp-0x6]
00000B96  16                push ss
00000B97  57                push di
00000B98  B001              mov al,0x1
00000B9A  50                push ax
00000B9B  E835FC            call 0x7d3
00000B9E  89EC              mov sp,bp
00000BA0  5D                pop bp
00000BA1  C20800            ret word 0x8
00000BA4  55                push bp
00000BA5  89E5              mov bp,sp
00000BA7  83EC06            sub sp,0x6
00000BAA  C47E0A            les di,word [bp+0xa]
00000BAD  06                push es
00000BAE  57                push di
00000BAF  8D7EFB            lea di,[bp-0x5]
00000BB2  16                push ss
00000BB3  57                push di
00000BB4  B80500            mov ax,0x5
00000BB7  50                push ax
00000BB8  9AC002561A        call word 0x1a56:word 0x2c0
00000BBD  C6062E1900        mov byte [0x192e],0x0
00000BC2  C6062F1900        mov byte [0x192f],0x0
00000BC7  9AF1026F04        call word 0x46f:word 0x2f1
00000BCC  C47E06            les di,word [bp+0x6]
00000BCF  26C60500          mov byte [es:di],0x0
00000BD3  8A46FB            mov al,[bp-0x5]
00000BD6  3C07              cmp al,0x7
00000BD8  7507              jnz 0xbe1
00000BDA  9A390C6F04        call word 0x46f:word 0xc39
00000BDF  EB4D              jmp 0xc2e
00000BE1  3C08              cmp al,0x8
00000BE3  7507              jnz 0xbec
00000BE5  9AC3136F04        call word 0x46f:word 0x13c3
00000BEA  EB42              jmp 0xc2e
00000BEC  3C0A              cmp al,0xa
00000BEE  7507              jnz 0xbf7
00000BF0  9AC4116F04        call word 0x46f:word 0x11c4
00000BF5  EB37              jmp 0xc2e
00000BF7  3C0B              cmp al,0xb
00000BF9  750A              jnz 0xc05
00000BFB  9A4C114E03        call word 0x34e:word 0x114c
00000C00  8846FA            mov [bp-0x6],al
00000C03  EB29              jmp 0xc2e
00000C05  3C0C              cmp al,0xc
00000C07  7518              jnz 0xc21
00000C09  837EFC00          cmp word [bp-0x4],0x0
00000C0D  7509              jnz 0xc18
00000C0F  C47E06            les di,word [bp+0x6]
00000C12  26C60501          mov byte [es:di],0x1
00000C16  EB07              jmp 0xc1f
00000C18  C47E06            les di,word [bp+0x6]
00000C1B  26C60502          mov byte [es:di],0x2
00000C1F  EB0D              jmp 0xc2e
00000C21  8D7EFB            lea di,[bp-0x5]
00000C24  16                push ss
00000C25  57                push di
00000C26  C47E06            les di,word [bp+0x6]
00000C29  06                push es
00000C2A  57                push di
00000C2B  E8C7FC            call 0x8f5
00000C2E  9AA8086F04        call word 0x46f:word 0x8a8
00000C33  89EC              mov sp,bp
00000C35  5D                pop bp
00000C36  CA0800            retf word 0x8
00000C39  89E5              mov bp,sp
00000C3B  9AE811561A        call word 0x1a56:word 0x11e8
00000C40  89EC              mov sp,bp
00000C42  CB                retf
00000C43  0000              add [bx+si],al
00000C45  0000              add [bx+si],al
00000C47  0000              add [bx+si],al
00000C49  0000              add [bx+si],al
00000C4B  0000              add [bx+si],al
00000C4D  0000              add [bx+si],al
00000C4F  00                db 0x00
