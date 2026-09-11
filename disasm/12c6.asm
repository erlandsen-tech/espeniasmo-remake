00000000  55                push bp
00000001  89E5              mov bp,sp
00000003  81EC0001          sub sp,0x100
00000007  FF7608            push word [bp+0x8]
0000000A  FF7606            push word [bp+0x6]
0000000D  31C0              xor ax,ax
0000000F  50                push ax
00000010  8DBE00FF          lea di,[bp-0x100]
00000014  16                push ss
00000015  57                push di
00000016  B8FF00            mov ax,0xff
00000019  50                push ax
0000001A  9A0713561A        call word 0x1a56:word 0x1307
0000001F  8DBE00FF          lea di,[bp-0x100]
00000023  16                push ss
00000024  57                push di
00000025  C47E0A            les di,word [bp+0xa]
00000028  06                push es
00000029  57                push di
0000002A  B8FF00            mov ax,0xff
0000002D  50                push ax
0000002E  9AAD06561A        call word 0x1a56:word 0x6ad
00000033  89EC              mov sp,bp
00000035  5D                pop bp
00000036  CA0400            retf word 0x4
00000039  013A              add [bp+si],di
0000003B  015C55            add [si+0x55],bx
0000003E  89E5              mov bp,sp
00000040  81EC8200          sub sp,0x82
00000044  C47E06            les di,word [bp+0x6]
00000047  06                push es
00000048  57                push di
00000049  8D7E80            lea di,[bp-0x80]
0000004C  16                push ss
0000004D  57                push di
0000004E  B83F00            mov ax,0x3f
00000051  50                push ax
00000052  9AAD06561A        call word 0x1a56:word 0x6ad
00000057  C47E0A            les di,word [bp+0xa]
0000005A  06                push es
0000005B  57                push di
0000005C  8D7EC0            lea di,[bp-0x40]
0000005F  16                push ss
00000060  57                push di
00000061  B83F00            mov ax,0x3f
00000064  50                push ax
00000065  9AAD06561A        call word 0x1a56:word 0x6ad
0000006A  BF3900            mov di,0x39
0000006D  0E                push cs
0000006E  57                push di
0000006F  8D7EC0            lea di,[bp-0x40]
00000072  16                push ss
00000073  57                push di
00000074  9A4C07561A        call word 0x1a56:word 0x74c
00000079  89867EFF          mov [bp-0x82],ax
0000007D  83BE7EFF00        cmp word [bp-0x82],0x0
00000082  7E12              jng 0x96
00000084  8D7EC0            lea di,[bp-0x40]
00000087  16                push ss
00000088  57                push di
00000089  B80100            mov ax,0x1
0000008C  50                push ax
0000008D  FFB67EFF          push word [bp-0x82]
00000091  9A2F08561A        call word 0x1a56:word 0x82f
00000096  BF3B00            mov di,0x3b
00000099  0E                push cs
0000009A  57                push di
0000009B  8D7EC0            lea di,[bp-0x40]
0000009E  16                push ss
0000009F  57                push di
000000A0  9A4C07561A        call word 0x1a56:word 0x74c
000000A5  09C0              or ax,ax
000000A7  7E2C              jng 0xd5
000000A9  8A46C0            mov al,[bp-0x40]
000000AC  FEC8              dec al
000000AE  8846C0            mov [bp-0x40],al
000000B1  8A46C0            mov al,[bp-0x40]
000000B4  FEC0              inc al
000000B6  30E4              xor ah,ah
000000B8  8BF8              mov di,ax
000000BA  807BC05C          cmp byte [bp+di-0x40],0x5c
000000BE  75E9              jnz 0xa9
000000C0  8D7EC0            lea di,[bp-0x40]
000000C3  16                push ss
000000C4  57                push di
000000C5  C47E0E            les di,word [bp+0xe]
000000C8  06                push es
000000C9  57                push di
000000CA  B83F00            mov ax,0x3f
000000CD  50                push ax
000000CE  9AAD06561A        call word 0x1a56:word 0x6ad
000000D3  EB13              jmp 0xe8
000000D5  8D7E80            lea di,[bp-0x80]
000000D8  16                push ss
000000D9  57                push di
000000DA  C47E0E            les di,word [bp+0xe]
000000DD  06                push es
000000DE  57                push di
000000DF  B83F00            mov ax,0x3f
000000E2  50                push ax
000000E3  9AAD06561A        call word 0x1a56:word 0x6ad
000000E8  89EC              mov sp,bp
000000EA  5D                pop bp
000000EB  CA0800            retf word 0x8
000000EE  55                push bp
000000EF  89E5              mov bp,sp
000000F1  81EC4401          sub sp,0x144
000000F5  C47E06            les di,word [bp+0x6]
000000F8  06                push es
000000F9  57                push di
000000FA  8D7EC0            lea di,[bp-0x40]
000000FD  16                push ss
000000FE  57                push di
000000FF  B83F00            mov ax,0x3f
00000102  50                push ax
00000103  9AAD06561A        call word 0x1a56:word 0x6ad
00000108  8A46C0            mov al,[bp-0x40]
0000010B  30E4              xor ah,ah
0000010D  8946BE            mov [bp-0x42],ax
00000110  837EBE00          cmp word [bp-0x42],0x0
00000114  7E28              jng 0x13e
00000116  8B7EBE            mov di,[bp-0x42]
00000119  8A43C0            mov al,[bp+di-0x40]
0000011C  3C2E              cmp al,0x2e
0000011E  7507              jnz 0x127
00000120  FF4EBE            dec word [bp-0x42]
00000123  EB21              jmp 0x146
00000125  EB12              jmp 0x139
00000127  3C3A              cmp al,0x3a
00000129  7404              jz 0x12f
0000012B  3C5C              cmp al,0x5c
0000012D  750A              jnz 0x139
0000012F  8A46C0            mov al,[bp-0x40]
00000132  30E4              xor ah,ah
00000134  8946BE            mov [bp-0x42],ax
00000137  EB0D              jmp 0x146
00000139  FF4EBE            dec word [bp-0x42]
0000013C  EBD2              jmp 0x110
0000013E  8A46C0            mov al,[bp-0x40]
00000141  30E4              xor ah,ah
00000143  8946BE            mov [bp-0x42],ax
00000146  8B46BE            mov ax,[bp-0x42]
00000149  8946BC            mov [bp-0x44],ax
0000014C  837EBC00          cmp word [bp-0x44],0x0
00000150  7E15              jng 0x167
00000152  8B7EBC            mov di,[bp-0x44]
00000155  8A43C0            mov al,[bp+di-0x40]
00000158  3C3A              cmp al,0x3a
0000015A  7404              jz 0x160
0000015C  3C5C              cmp al,0x5c
0000015E  7502              jnz 0x162
00000160  EB05              jmp 0x167
00000162  FF4EBC            dec word [bp-0x44]
00000165  EBE5              jmp 0x14c
00000167  8DBEBCFE          lea di,[bp-0x144]
0000016B  16                push ss
0000016C  57                push di
0000016D  8D7EC0            lea di,[bp-0x40]
00000170  16                push ss
00000171  57                push di
00000172  8B46BC            mov ax,[bp-0x44]
00000175  40                inc ax
00000176  50                push ax
00000177  B80800            mov ax,0x8
0000017A  50                push ax
0000017B  8B46BE            mov ax,[bp-0x42]
0000017E  2B46BC            sub ax,[bp-0x44]
00000181  50                push ax
00000182  5B                pop bx
00000183  58                pop ax
00000184  39D8              cmp ax,bx
00000186  7802              js 0x18a
00000188  89D8              mov ax,bx
0000018A  50                push ax
0000018B  9ADF06561A        call word 0x1a56:word 0x6df
00000190  C47E0A            les di,word [bp+0xa]
00000193  06                push es
00000194  57                push di
00000195  B80800            mov ax,0x8
00000198  50                push ax
00000199  9AAD06561A        call word 0x1a56:word 0x6ad
0000019E  89EC              mov sp,bp
000001A0  5D                pop bp
000001A1  CA0400            retf word 0x4
000001A4  55                push bp
000001A5  89E5              mov bp,sp
000001A7  81EC0401          sub sp,0x104
000001AB  C47E06            les di,word [bp+0x6]
000001AE  06                push es
000001AF  57                push di
000001B0  8DBE00FF          lea di,[bp-0x100]
000001B4  16                push ss
000001B5  57                push di
000001B6  B8FF00            mov ax,0xff
000001B9  50                push ax
000001BA  9AAD06561A        call word 0x1a56:word 0x6ad
000001BF  8A8600FF          mov al,[bp-0x100]
000001C3  30E4              xor ah,ah
000001C5  8986FCFE          mov [bp-0x104],ax
000001C9  B80100            mov ax,0x1
000001CC  3B86FCFE          cmp ax,[bp-0x104]
000001D0  7F2C              jg 0x1fe
000001D2  8986FEFE          mov [bp-0x102],ax
000001D6  EB04              jmp 0x1dc
000001D8  FF86FEFE          inc word [bp-0x102]
000001DC  8BBEFEFE          mov di,[bp-0x102]
000001E0  8A8300FF          mov al,[bp+di-0x100]
000001E4  30E4              xor ah,ah
000001E6  8BF8              mov di,ax
000001E8  8A85BC71          mov al,[di+0x71bc]
000001EC  8BBEFEFE          mov di,[bp-0x102]
000001F0  888300FF          mov [bp+di-0x100],al
000001F4  8B86FEFE          mov ax,[bp-0x102]
000001F8  3B86FCFE          cmp ax,[bp-0x104]
000001FC  75DA              jnz 0x1d8
000001FE  8DBE00FF          lea di,[bp-0x100]
00000202  16                push ss
00000203  57                push di
00000204  C47E0A            les di,word [bp+0xa]
00000207  06                push es
00000208  57                push di
00000209  B8FF00            mov ax,0xff
0000020C  50                push ax
0000020D  9AAD06561A        call word 0x1a56:word 0x6ad
00000212  89EC              mov sp,bp
00000214  5D                pop bp
00000215  CA0400            retf word 0x4
00000218  55                push bp
00000219  89E5              mov bp,sp
0000021B  81EC0401          sub sp,0x104
0000021F  C47E06            les di,word [bp+0x6]
00000222  06                push es
00000223  57                push di
00000224  8DBE00FF          lea di,[bp-0x100]
00000228  16                push ss
00000229  57                push di
0000022A  B8FF00            mov ax,0xff
0000022D  50                push ax
0000022E  9AAD06561A        call word 0x1a56:word 0x6ad
00000233  8A8600FF          mov al,[bp-0x100]
00000237  30E4              xor ah,ah
00000239  8986FCFE          mov [bp-0x104],ax
0000023D  B80100            mov ax,0x1
00000240  3B86FCFE          cmp ax,[bp-0x104]
00000244  7F2C              jg 0x272
00000246  8986FEFE          mov [bp-0x102],ax
0000024A  EB04              jmp 0x250
0000024C  FF86FEFE          inc word [bp-0x102]
00000250  8BBEFEFE          mov di,[bp-0x102]
00000254  8A8300FF          mov al,[bp+di-0x100]
00000258  30E4              xor ah,ah
0000025A  8BF8              mov di,ax
0000025C  8A85BC72          mov al,[di+0x72bc]
00000260  8BBEFEFE          mov di,[bp-0x102]
00000264  888300FF          mov [bp+di-0x100],al
00000268  8B86FEFE          mov ax,[bp-0x102]
0000026C  3B86FCFE          cmp ax,[bp-0x104]
00000270  75DA              jnz 0x24c
00000272  8DBE00FF          lea di,[bp-0x100]
00000276  16                push ss
00000277  57                push di
00000278  C47E0A            les di,word [bp+0xa]
0000027B  06                push es
0000027C  57                push di
0000027D  B8FF00            mov ax,0xff
00000280  50                push ax
00000281  9AAD06561A        call word 0x1a56:word 0x6ad
00000286  89EC              mov sp,bp
00000288  5D                pop bp
00000289  CA0400            retf word 0x4
0000028C  55                push bp
0000028D  89E5              mov bp,sp
0000028F  83EC04            sub sp,0x4
00000292  31C0              xor ax,ax
00000294  8946FC            mov [bp-0x4],ax
00000297  31C0              xor ax,ax
00000299  8946FE            mov [bp-0x2],ax
0000029C  8B7E04            mov di,[bp+0x4]
0000029F  36C4BDFCFE        les di,word [ss:di-0x104]
000002A4  26803D00          cmp byte [es:di],0x0
000002A8  7472              jz 0x31c
000002AA  8B7E04            mov di,[bp+0x4]
000002AD  36C4BDFCFE        les di,word [ss:di-0x104]
000002B2  26803D3D          cmp byte [es:di],0x3d
000002B6  7423              jz 0x2db
000002B8  FF46FC            inc word [bp-0x4]
000002BB  8B7E04            mov di,[bp+0x4]
000002BE  36C4BDFCFE        les di,word [ss:di-0x104]
000002C3  268A15            mov dl,[es:di]
000002C6  8B46FC            mov ax,[bp-0x4]
000002C9  C47E0A            les di,word [bp+0xa]
000002CC  03F8              add di,ax
000002CE  268815            mov [es:di],dl
000002D1  8B7E04            mov di,[bp+0x4]
000002D4  36FF85FCFE        inc word [ss:di-0x104]
000002D9  EBCF              jmp 0x2aa
000002DB  8B7E04            mov di,[bp+0x4]
000002DE  36FF85FCFE        inc word [ss:di-0x104]
000002E3  8B7E04            mov di,[bp+0x4]
000002E6  36C4BDFCFE        les di,word [ss:di-0x104]
000002EB  26803D00          cmp byte [es:di],0x0
000002EF  7423              jz 0x314
000002F1  FF46FE            inc word [bp-0x2]
000002F4  8B7E04            mov di,[bp+0x4]
000002F7  36C4BDFCFE        les di,word [ss:di-0x104]
000002FC  268A15            mov dl,[es:di]
000002FF  8B46FE            mov ax,[bp-0x2]
00000302  C47E06            les di,word [bp+0x6]
00000305  03F8              add di,ax
00000307  268815            mov [es:di],dl
0000030A  8B7E04            mov di,[bp+0x4]
0000030D  36FF85FCFE        inc word [ss:di-0x104]
00000312  EBCF              jmp 0x2e3
00000314  8B7E04            mov di,[bp+0x4]
00000317  36FF85FCFE        inc word [ss:di-0x104]
0000031C  8A46FC            mov al,[bp-0x4]
0000031F  C47E0A            les di,word [bp+0xa]
00000322  268805            mov [es:di],al
00000325  8A46FE            mov al,[bp-0x2]
00000328  C47E06            les di,word [bp+0x6]
0000032B  268805            mov [es:di],al
0000032E  89EC              mov sp,bp
00000330  5D                pop bp
00000331  C20A00            ret word 0xa
00000334  005589            add [di-0x77],dl
00000337  E581              in ax,byte 0x81
00000339  EC                in al,dx
0000033A  0403              add al,0x3
0000033C  C47E06            les di,word [bp+0x6]
0000033F  06                push es
00000340  57                push di
00000341  8DBE00FF          lea di,[bp-0x100]
00000345  16                push ss
00000346  57                push di
00000347  B8FF00            mov ax,0xff
0000034A  50                push ax
0000034B  9AAD06561A        call word 0x1a56:word 0x6ad
00000350  B462              mov ah,0x62
00000352  CD21              int byte 0x21
00000354  8EC3              mov es,bx
00000356  268B1E2C00        mov bx,[es:0x2c]
0000035B  899EFEFE          mov [bp-0x102],bx
0000035F  C786FCFE0000      mov word [bp-0x104],0x0
00000365  8DBEFCFC          lea di,[bp-0x304]
00000369  16                push ss
0000036A  57                push di
0000036B  8DBEFCFD          lea di,[bp-0x204]
0000036F  16                push ss
00000370  57                push di
00000371  55                push bp
00000372  E817FF            call 0x28c
00000375  8DBEFCFC          lea di,[bp-0x304]
00000379  16                push ss
0000037A  57                push di
0000037B  8DBE00FF          lea di,[bp-0x100]
0000037F  16                push ss
00000380  57                push di
00000381  9A8307561A        call word 0x1a56:word 0x783
00000386  7516              jnz 0x39e
00000388  8DBEFCFD          lea di,[bp-0x204]
0000038C  16                push ss
0000038D  57                push di
0000038E  C47E0A            les di,word [bp+0xa]
00000391  06                push es
00000392  57                push di
00000393  B8FF00            mov ax,0xff
00000396  50                push ax
00000397  9AAD06561A        call word 0x1a56:word 0x6ad
0000039C  EB19              jmp 0x3b7
0000039E  8DBEFCFC          lea di,[bp-0x304]
000003A2  16                push ss
000003A3  57                push di
000003A4  BF3403            mov di,0x334
000003A7  0E                push cs
000003A8  57                push di
000003A9  9A8307561A        call word 0x1a56:word 0x783
000003AE  75B5              jnz 0x365
000003B0  C47E0A            les di,word [bp+0xa]
000003B3  26C60500          mov byte [es:di],0x0
000003B7  89EC              mov sp,bp
000003B9  5D                pop bp
000003BA  CA0400            retf word 0x4
000003BD  55                push bp
000003BE  89E5              mov bp,sp
000003C0  83EC40            sub sp,0x40
000003C3  8D7EC0            lea di,[bp-0x40]
000003C6  16                push ss
000003C7  57                push di
000003C8  BFBC73            mov di,0x73bc
000003CB  1E                push ds
000003CC  57                push di
000003CD  B82000            mov ax,0x20
000003D0  50                push ax
000003D1  9A8508561A        call word 0x1a56:word 0x885
000003D6  8D7EE0            lea di,[bp-0x20]
000003D9  16                push ss
000003DA  57                push di
000003DB  9AAF08561A        call word 0x1a56:word 0x8af
000003E0  B030              mov al,0x30
000003E2  50                push ax
000003E3  B039              mov al,0x39
000003E5  50                push ax
000003E6  9ADF08561A        call word 0x1a56:word 0x8df
000003EB  9A5409561A        call word 0x1a56:word 0x954
000003F0  BFDC73            mov di,0x73dc
000003F3  1E                push ds
000003F4  57                push di
000003F5  B82000            mov ax,0x20
000003F8  50                push ax
000003F9  9A1309561A        call word 0x1a56:word 0x913
000003FE  89EC              mov sp,bp
00000400  5D                pop bp
00000401  CA0400            retf word 0x4
00000404  43                inc bx
00000405  53                push bx
00000406  45                inc bp
00000407  54                push sp
00000408  41                inc cx
00000409  4C                dec sp
0000040A  50                push ax
0000040B  48                dec ax
0000040C  4C                dec sp
0000040D  4F                dec di
0000040E  57                push di
0000040F  52                push dx
00000410  55                push bp
00000411  50                push ax
00000412  50                push ax
00000413  52                push dx
00000414  53                push bx
00000415  4F                dec di
00000416  52                push dx
00000417  54                push sp
00000418  89E5              mov bp,sp
0000041A  83EC20            sub sp,0x20
0000041D  8D7EE0            lea di,[bp-0x20]
00000420  16                push ss
00000421  57                push di
00000422  9AAF08561A        call word 0x1a56:word 0x8af
00000427  B041              mov al,0x41
00000429  50                push ax
0000042A  B05A              mov al,0x5a
0000042C  50                push ax
0000042D  9ADF08561A        call word 0x1a56:word 0x8df
00000432  B061              mov al,0x61
00000434  50                push ax
00000435  B07A              mov al,0x7a
00000437  50                push ax
00000438  9ADF08561A        call word 0x1a56:word 0x8df
0000043D  BFBC73            mov di,0x73bc
00000440  1E                push ds
00000441  57                push di
00000442  B82000            mov ax,0x20
00000445  50                push ax
00000446  9A1309561A        call word 0x1a56:word 0x913
0000044B  8D7EE0            lea di,[bp-0x20]
0000044E  16                push ss
0000044F  57                push di
00000450  9AAF08561A        call word 0x1a56:word 0x8af
00000455  B041              mov al,0x41
00000457  50                push ax
00000458  B05A              mov al,0x5a
0000045A  50                push ax
0000045B  9ADF08561A        call word 0x1a56:word 0x8df
00000460  B061              mov al,0x61
00000462  50                push ax
00000463  B07A              mov al,0x7a
00000465  50                push ax
00000466  9ADF08561A        call word 0x1a56:word 0x8df
0000046B  B030              mov al,0x30
0000046D  50                push ax
0000046E  B039              mov al,0x39
00000470  50                push ax
00000471  9ADF08561A        call word 0x1a56:word 0x8df
00000476  BFDC73            mov di,0x73dc
00000479  1E                push ds
0000047A  57                push di
0000047B  B82000            mov ax,0x20
0000047E  50                push ax
0000047F  9A1309561A        call word 0x1a56:word 0x913
00000484  C606FC7400        mov byte [0x74fc],0x0
00000489  EB04              jmp 0x48f
0000048B  FE06FC74          inc byte [0x74fc]
0000048F  803EFC7441        cmp byte [0x74fc],0x41
00000494  7221              jc 0x4b7
00000496  803EFC745A        cmp byte [0x74fc],0x5a
0000049B  771A              ja 0x4b7
0000049D  A0FC74            mov al,[0x74fc]
000004A0  30E4              xor ah,ah
000004A2  2D4100            sub ax,0x41
000004A5  056100            add ax,0x61
000004A8  8AD0              mov dl,al
000004AA  A0FC74            mov al,[0x74fc]
000004AD  30E4              xor ah,ah
000004AF  8BF8              mov di,ax
000004B1  8895BC71          mov [di+0x71bc],dl
000004B5  EB0F              jmp 0x4c6
000004B7  8A16FC74          mov dl,[0x74fc]
000004BB  A0FC74            mov al,[0x74fc]
000004BE  30E4              xor ah,ah
000004C0  8BF8              mov di,ax
000004C2  8895BC71          mov [di+0x71bc],dl
000004C6  803EFC7461        cmp byte [0x74fc],0x61
000004CB  7221              jc 0x4ee
000004CD  803EFC747A        cmp byte [0x74fc],0x7a
000004D2  771A              ja 0x4ee
000004D4  A0FC74            mov al,[0x74fc]
000004D7  30E4              xor ah,ah
000004D9  2D6100            sub ax,0x61
000004DC  054100            add ax,0x41
000004DF  8AD0              mov dl,al
000004E1  A0FC74            mov al,[0x74fc]
000004E4  30E4              xor ah,ah
000004E6  8BF8              mov di,ax
000004E8  8895BC72          mov [di+0x72bc],dl
000004EC  EB0F              jmp 0x4fd
000004EE  8A16FC74          mov dl,[0x74fc]
000004F2  A0FC74            mov al,[0x74fc]
000004F5  30E4              xor ah,ah
000004F7  8BF8              mov di,ax
000004F9  8895BC72          mov [di+0x72bc],dl
000004FD  8A16FC74          mov dl,[0x74fc]
00000501  A0FC74            mov al,[0x74fc]
00000504  30E4              xor ah,ah
00000506  8BF8              mov di,ax
00000508  8895FC73          mov [di+0x73fc],dl
0000050C  803EFC74FF        cmp byte [0x74fc],0xff
00000511  7403              jz 0x516
00000513  E975FF            jmp 0x48b
00000516  BFFE74            mov di,0x74fe
00000519  1E                push ds
0000051A  57                push di
0000051B  2EFF360604        push word [cs:0x406]
00000520  2EFF360404        push word [cs:0x404]
00000525  31C0              xor ax,ax
00000527  31D2              xor dx,dx
00000529  52                push dx
0000052A  50                push ax
0000052B  B8BD03            mov ax,0x3bd
0000052E  8CCA              mov dx,cs
00000530  52                push dx
00000531  50                push ax
00000532  9AC7089813        call word 0x1398:word 0x8c7
00000537  BFFE74            mov di,0x74fe
0000053A  1E                push ds
0000053B  57                push di
0000053C  2EFF360A04        push word [cs:0x40a]
00000541  2EFF360804        push word [cs:0x408]
00000546  B003              mov al,0x3
00000548  50                push ax
00000549  B8BC73            mov ax,0x73bc
0000054C  8CDA              mov dx,ds
0000054E  52                push dx
0000054F  50                push ax
00000550  B82000            mov ax,0x20
00000553  31D2              xor dx,dx
00000555  52                push dx
00000556  50                push ax
00000557  9A4D099813        call word 0x1398:word 0x94d
0000055C  BFFE74            mov di,0x74fe
0000055F  1E                push ds
00000560  57                push di
00000561  2EFF360E04        push word [cs:0x40e]
00000566  2EFF360C04        push word [cs:0x40c]
0000056B  B003              mov al,0x3
0000056D  50                push ax
0000056E  B8BC71            mov ax,0x71bc
00000571  8CDA              mov dx,ds
00000573  52                push dx
00000574  50                push ax
00000575  B80001            mov ax,0x100
00000578  31D2              xor dx,dx
0000057A  52                push dx
0000057B  50                push ax
0000057C  9A4D099813        call word 0x1398:word 0x94d
00000581  BFFE74            mov di,0x74fe
00000584  1E                push ds
00000585  57                push di
00000586  2EFF361204        push word [cs:0x412]
0000058B  2EFF361004        push word [cs:0x410]
00000590  B003              mov al,0x3
00000592  50                push ax
00000593  B8BC72            mov ax,0x72bc
00000596  8CDA              mov dx,ds
00000598  52                push dx
00000599  50                push ax
0000059A  B80001            mov ax,0x100
0000059D  31D2              xor dx,dx
0000059F  52                push dx
000005A0  50                push ax
000005A1  9A4D099813        call word 0x1398:word 0x94d
000005A6  BFFE74            mov di,0x74fe
000005A9  1E                push ds
000005AA  57                push di
000005AB  2EFF361604        push word [cs:0x416]
000005B0  2EFF361404        push word [cs:0x414]
000005B5  B003              mov al,0x3
000005B7  50                push ax
000005B8  B8FC73            mov ax,0x73fc
000005BB  8CDA              mov dx,ds
000005BD  52                push dx
000005BE  50                push ax
000005BF  B80001            mov ax,0x100
000005C2  31D2              xor dx,dx
000005C4  52                push dx
000005C5  50                push ax
000005C6  9A4D099813        call word 0x1398:word 0x94d
000005CB  89EC              mov sp,bp
000005CD  CB                retf
000005CE  0000              add [bx+si],al
