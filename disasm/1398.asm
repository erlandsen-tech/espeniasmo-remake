00000000  55                push bp
00000001  89E5              mov bp,sp
00000003  C47E06            les di,word [bp+0x6]
00000006  81C78000          add di,0x80
0000000A  06                push es
0000000B  57                push di
0000000C  BF8489            mov di,0x8984
0000000F  1E                push ds
00000010  57                push di
00000011  B8FF00            mov ax,0xff
00000014  50                push ax
00000015  9AAD06561A        call word 0x1a56:word 0x6ad
0000001A  B002              mov al,0x2
0000001C  50                push ax
0000001D  8A4604            mov al,[bp+0x4]
00000020  50                push ax
00000021  9A9B009C18        call word 0x189c:word 0x9b
00000026  89EC              mov sp,bp
00000028  5D                pop bp
00000029  C20600            ret word 0x6
0000002C  0443              add al,0x43
0000002E  41                inc cx
0000002F  54                push sp
00000030  2004              and [si],al
00000032  46                inc si
00000033  4F                dec di
00000034  52                push dx
00000035  4D                dec bp
00000036  044C              add al,0x4c
00000038  49                dec cx
00000039  53                push bx
0000003A  54                push sp
0000003B  0450              add al,0x50
0000003D  52                push dx
0000003E  4F                dec di
0000003F  50                push ax
00000040  55                push bp
00000041  89E5              mov bp,sp
00000043  81EC0104          sub sp,0x401
00000047  8DBEFFFE          lea di,[bp-0x101]
0000004B  16                push ss
0000004C  57                push di
0000004D  8D7E04            lea di,[bp+0x4]
00000050  16                push ss
00000051  57                push di
00000052  B80400            mov ax,0x4
00000055  50                push ax
00000056  9AC007561A        call word 0x1a56:word 0x7c0
0000005B  BF2C00            mov di,0x2c
0000005E  0E                push cs
0000005F  57                push di
00000060  9A8307561A        call word 0x1a56:word 0x783
00000065  7464              jz 0xcb
00000067  8DBEFFFD          lea di,[bp-0x201]
0000006B  16                push ss
0000006C  57                push di
0000006D  8D7E04            lea di,[bp+0x4]
00000070  16                push ss
00000071  57                push di
00000072  B80400            mov ax,0x4
00000075  50                push ax
00000076  9AC007561A        call word 0x1a56:word 0x7c0
0000007B  BF3100            mov di,0x31
0000007E  0E                push cs
0000007F  57                push di
00000080  9A8307561A        call word 0x1a56:word 0x783
00000085  7444              jz 0xcb
00000087  8DBEFFFC          lea di,[bp-0x301]
0000008B  16                push ss
0000008C  57                push di
0000008D  8D7E04            lea di,[bp+0x4]
00000090  16                push ss
00000091  57                push di
00000092  B80400            mov ax,0x4
00000095  50                push ax
00000096  9AC007561A        call word 0x1a56:word 0x7c0
0000009B  BF3600            mov di,0x36
0000009E  0E                push cs
0000009F  57                push di
000000A0  9A8307561A        call word 0x1a56:word 0x783
000000A5  7424              jz 0xcb
000000A7  8DBEFFFB          lea di,[bp-0x401]
000000AB  16                push ss
000000AC  57                push di
000000AD  8D7E04            lea di,[bp+0x4]
000000B0  16                push ss
000000B1  57                push di
000000B2  B80400            mov ax,0x4
000000B5  50                push ax
000000B6  9AC007561A        call word 0x1a56:word 0x7c0
000000BB  BF3B00            mov di,0x3b
000000BE  0E                push cs
000000BF  57                push di
000000C0  9A8307561A        call word 0x1a56:word 0x783
000000C5  7404              jz 0xcb
000000C7  B000              mov al,0x0
000000C9  EB02              jmp 0xcd
000000CB  B001              mov al,0x1
000000CD  8846FF            mov [bp-0x1],al
000000D0  8A46FF            mov al,[bp-0x1]
000000D3  89EC              mov sp,bp
000000D5  5D                pop bp
000000D6  C20400            ret word 0x4
000000D9  55                push bp
000000DA  89E5              mov bp,sp
000000DC  C47E0A            les di,word [bp+0xa]
000000DF  31C0              xor ax,ax
000000E1  268905            mov [es:di],ax
000000E4  26894502          mov [es:di+0x2],ax
000000E8  C4460E            les ax,word [bp+0xe]
000000EB  8CC2              mov dx,es
000000ED  C47E06            les di,word [bp+0x6]
000000F0  268905            mov [es:di],ax
000000F3  26895502          mov [es:di+0x2],dx
000000F7  8B4612            mov ax,[bp+0x12]
000000FA  0B4614            or ax,[bp+0x14]
000000FD  743D              jz 0x13c
000000FF  8A4604            mov al,[bp+0x4]
00000102  3C00              cmp al,0x0
00000104  7527              jnz 0x12d
00000106  C47E0A            les di,word [bp+0xa]
00000109  06                push es
0000010A  57                push di
0000010B  FF7610            push word [bp+0x10]
0000010E  FF760E            push word [bp+0xe]
00000111  9A4F03C317        call word 0x17c3:word 0x34f
00000116  C47E12            les di,word [bp+0x12]
00000119  06                push es
0000011A  57                push di
0000011B  C47E0A            les di,word [bp+0xa]
0000011E  26C43D            les di,word [es:di]
00000121  06                push es
00000122  57                push di
00000123  FF760E            push word [bp+0xe]
00000126  9A641B561A        call word 0x1a56:word 0x1b64
0000012B  EB0F              jmp 0x13c
0000012D  C44612            les ax,word [bp+0x12]
00000130  8CC2              mov dx,es
00000132  C47E0A            les di,word [bp+0xa]
00000135  268905            mov [es:di],ax
00000138  26895502          mov [es:di+0x2],dx
0000013C  89EC              mov sp,bp
0000013E  5D                pop bp
0000013F  C21200            ret word 0x12
00000142  55                push bp
00000143  89E5              mov bp,sp
00000145  83EC04            sub sp,0x4
00000148  C47E06            les di,word [bp+0x6]
0000014B  268B05            mov ax,[es:di]
0000014E  260B4502          or ax,[es:di+0x2]
00000152  744B              jz 0x19f
00000154  C47E06            les di,word [bp+0x6]
00000157  26C43D            les di,word [es:di]
0000015A  897EFC            mov [bp-0x4],di
0000015D  8C46FE            mov word [bp-0x2],es
00000160  8A4604            mov al,[bp+0x4]
00000163  3C00              cmp al,0x0
00000165  750E              jnz 0x175
00000167  C47EFC            les di,word [bp-0x4]
0000016A  81C70800          add di,0x8
0000016E  06                push es
0000016F  57                push di
00000170  9AB403C317        call word 0x17c3:word 0x3b4
00000175  C47EFC            les di,word [bp-0x4]
00000178  81C70400          add di,0x4
0000017C  06                push es
0000017D  57                push di
0000017E  8A4604            mov al,[bp+0x4]
00000181  50                push ax
00000182  E8BDFF            call 0x142
00000185  C47E06            les di,word [bp+0x6]
00000188  06                push es
00000189  57                push di
0000018A  B80C00            mov ax,0xc
0000018D  50                push ax
0000018E  9AC003561A        call word 0x1a56:word 0x3c0
00000193  C47E06            les di,word [bp+0x6]
00000196  31C0              xor ax,ax
00000198  268905            mov [es:di],ax
0000019B  26894502          mov [es:di+0x2],ax
0000019F  89EC              mov sp,bp
000001A1  5D                pop bp
000001A2  C20600            ret word 0x6
000001A5  55                push bp
000001A6  89E5              mov bp,sp
000001A8  81EC0402          sub sp,0x204
000001AC  31C0              xor ax,ax
000001AE  8946FC            mov [bp-0x4],ax
000001B1  8946FE            mov [bp-0x2],ax
000001B4  8B4608            mov ax,[bp+0x8]
000001B7  0B460A            or ax,[bp+0xa]
000001BA  744F              jz 0x20b
000001BC  8DBEFCFE          lea di,[bp-0x104]
000001C0  16                push ss
000001C1  57                push di
000001C2  C47E08            les di,word [bp+0x8]
000001C5  06                push es
000001C6  57                push di
000001C7  B80400            mov ax,0x4
000001CA  50                push ax
000001CB  9AC007561A        call word 0x1a56:word 0x7c0
000001D0  8DBEFCFD          lea di,[bp-0x204]
000001D4  16                push ss
000001D5  57                push di
000001D6  8D7E04            lea di,[bp+0x4]
000001D9  16                push ss
000001DA  57                push di
000001DB  B80400            mov ax,0x4
000001DE  50                push ax
000001DF  9AC007561A        call word 0x1a56:word 0x7c0
000001E4  9A8307561A        call word 0x1a56:word 0x783
000001E9  750F              jnz 0x1fa
000001EB  C44608            les ax,word [bp+0x8]
000001EE  8CC2              mov dx,es
000001F0  8946FC            mov [bp-0x4],ax
000001F3  8956FE            mov [bp-0x2],dx
000001F6  EB13              jmp 0x20b
000001F8  EB0F              jmp 0x209
000001FA  C47E08            les di,word [bp+0x8]
000001FD  26C44508          les ax,word [es:di+0x8]
00000201  8CC2              mov dx,es
00000203  894608            mov [bp+0x8],ax
00000206  89560A            mov [bp+0xa],dx
00000209  EBA9              jmp 0x1b4
0000020B  8B46FC            mov ax,[bp-0x4]
0000020E  8B56FE            mov dx,[bp-0x2]
00000211  89EC              mov sp,bp
00000213  5D                pop bp
00000214  C20800            ret word 0x8
00000217  55                push bp
00000218  89E5              mov bp,sp
0000021A  83EC04            sub sp,0x4
0000021D  C47E04            les di,word [bp+0x4]
00000220  268B05            mov ax,[es:di]
00000223  260B4502          or ax,[es:di+0x2]
00000227  745F              jz 0x288
00000229  C47E04            les di,word [bp+0x4]
0000022C  26C43D            les di,word [es:di]
0000022F  897EFC            mov [bp-0x4],di
00000232  8C46FE            mov word [bp-0x2],es
00000235  C47EFC            les di,word [bp-0x4]
00000238  268A4510          mov al,[es:di+0x10]
0000023C  3C00              cmp al,0x0
0000023E  750E              jnz 0x24e
00000240  C47EFC            les di,word [bp-0x4]
00000243  81C71100          add di,0x11
00000247  06                push es
00000248  57                push di
00000249  9AB403C317        call word 0x17c3:word 0x3b4
0000024E  C47EFC            les di,word [bp-0x4]
00000251  81C70400          add di,0x4
00000255  06                push es
00000256  57                push di
00000257  C47EFC            les di,word [bp-0x4]
0000025A  268A4510          mov al,[es:di+0x10]
0000025E  50                push ax
0000025F  E8E0FE            call 0x142
00000262  C47EFC            les di,word [bp-0x4]
00000265  81C70800          add di,0x8
00000269  06                push es
0000026A  57                push di
0000026B  E8A9FF            call 0x217
0000026E  C47E04            les di,word [bp+0x4]
00000271  06                push es
00000272  57                push di
00000273  B81500            mov ax,0x15
00000276  50                push ax
00000277  9AC003561A        call word 0x1a56:word 0x3c0
0000027C  C47E04            les di,word [bp+0x4]
0000027F  31C0              xor ax,ax
00000281  268905            mov [es:di],ax
00000284  26894502          mov [es:di+0x2],ax
00000288  89EC              mov sp,bp
0000028A  5D                pop bp
0000028B  C20400            ret word 0x4
0000028E  55                push bp
0000028F  89E5              mov bp,sp
00000291  81EC0402          sub sp,0x204
00000295  31C0              xor ax,ax
00000297  8946FC            mov [bp-0x4],ax
0000029A  8946FE            mov [bp-0x2],ax
0000029D  8B4608            mov ax,[bp+0x8]
000002A0  0B460A            or ax,[bp+0xa]
000002A3  744F              jz 0x2f4
000002A5  8DBEFCFE          lea di,[bp-0x104]
000002A9  16                push ss
000002AA  57                push di
000002AB  C47E08            les di,word [bp+0x8]
000002AE  06                push es
000002AF  57                push di
000002B0  B80400            mov ax,0x4
000002B3  50                push ax
000002B4  9AC007561A        call word 0x1a56:word 0x7c0
000002B9  8DBEFCFD          lea di,[bp-0x204]
000002BD  16                push ss
000002BE  57                push di
000002BF  8D7E04            lea di,[bp+0x4]
000002C2  16                push ss
000002C3  57                push di
000002C4  B80400            mov ax,0x4
000002C7  50                push ax
000002C8  9AC007561A        call word 0x1a56:word 0x7c0
000002CD  9A8307561A        call word 0x1a56:word 0x783
000002D2  750F              jnz 0x2e3
000002D4  C44608            les ax,word [bp+0x8]
000002D7  8CC2              mov dx,es
000002D9  8946FC            mov [bp-0x4],ax
000002DC  8956FE            mov [bp-0x2],dx
000002DF  EB13              jmp 0x2f4
000002E1  EB0F              jmp 0x2f2
000002E3  C47E08            les di,word [bp+0x8]
000002E6  26C44510          les ax,word [es:di+0x10]
000002EA  8CC2              mov dx,es
000002EC  894608            mov [bp+0x8],ax
000002EF  89560A            mov [bp+0xa],dx
000002F2  EBA9              jmp 0x29d
000002F4  8B46FC            mov ax,[bp-0x4]
000002F7  8B56FE            mov dx,[bp-0x2]
000002FA  89EC              mov sp,bp
000002FC  5D                pop bp
000002FD  C20800            ret word 0x8
00000300  55                push bp
00000301  89E5              mov bp,sp
00000303  83EC04            sub sp,0x4
00000306  C47E04            les di,word [bp+0x4]
00000309  268B05            mov ax,[es:di]
0000030C  260B4502          or ax,[es:di+0x2]
00000310  743E              jz 0x350
00000312  C47E04            les di,word [bp+0x4]
00000315  26C43D            les di,word [es:di]
00000318  897EFC            mov [bp-0x4],di
0000031B  8C46FE            mov word [bp-0x2],es
0000031E  C47EFC            les di,word [bp-0x4]
00000321  81C70400          add di,0x4
00000325  06                push es
00000326  57                push di
00000327  E8EDFE            call 0x217
0000032A  C47EFC            les di,word [bp-0x4]
0000032D  81C71000          add di,0x10
00000331  06                push es
00000332  57                push di
00000333  E8CAFF            call 0x300
00000336  C47E04            les di,word [bp+0x4]
00000339  06                push es
0000033A  57                push di
0000033B  B81400            mov ax,0x14
0000033E  50                push ax
0000033F  9AC003561A        call word 0x1a56:word 0x3c0
00000344  C47E04            les di,word [bp+0x4]
00000347  31C0              xor ax,ax
00000349  268905            mov [es:di],ax
0000034C  26894502          mov [es:di+0x2],ax
00000350  89EC              mov sp,bp
00000352  5D                pop bp
00000353  C20400            ret word 0x4
00000356  55                push bp
00000357  89E5              mov bp,sp
00000359  83EC0C            sub sp,0xc
0000035C  FF760A            push word [bp+0xa]
0000035F  FF7608            push word [bp+0x8]
00000362  FF7606            push word [bp+0x6]
00000365  FF7604            push word [bp+0x4]
00000368  E823FF            call 0x28e
0000036B  894608            mov [bp+0x8],ax
0000036E  89560A            mov [bp+0xa],dx
00000371  8B4608            mov ax,[bp+0x8]
00000374  0B460A            or ax,[bp+0xa]
00000377  7503              jnz 0x37c
00000379  E9E600            jmp 0x462
0000037C  C47E08            les di,word [bp+0x8]
0000037F  26C44504          les ax,word [es:di+0x4]
00000383  8CC2              mov dx,es
00000385  8946FC            mov [bp-0x4],ax
00000388  8956FE            mov [bp-0x2],dx
0000038B  8B46FC            mov ax,[bp-0x4]
0000038E  0B46FE            or ax,[bp-0x2]
00000391  7503              jnz 0x396
00000393  E9CC00            jmp 0x462
00000396  8D7EF8            lea di,[bp-0x8]
00000399  16                push ss
0000039A  57                push di
0000039B  B80C00            mov ax,0xc
0000039E  50                push ax
0000039F  9A8E03561A        call word 0x1a56:word 0x38e
000003A4  C47EF8            les di,word [bp-0x8]
000003A7  897EF4            mov [bp-0xc],di
000003AA  8C46F6            mov word [bp-0xa],es
000003AD  C47EFC            les di,word [bp-0x4]
000003B0  26C44504          les ax,word [es:di+0x4]
000003B4  8CC2              mov dx,es
000003B6  C47EF4            les di,word [bp-0xc]
000003B9  26894504          mov [es:di+0x4],ax
000003BD  26895506          mov [es:di+0x6],dx
000003C1  C47EFC            les di,word [bp-0x4]
000003C4  26C4450C          les ax,word [es:di+0xc]
000003C8  8CC2              mov dx,es
000003CA  C47EF4            les di,word [bp-0xc]
000003CD  268905            mov [es:di],ax
000003D0  26895502          mov [es:di+0x2],dx
000003D4  C47EFC            les di,word [bp-0x4]
000003D7  26C44511          les ax,word [es:di+0x11]
000003DB  8CC2              mov dx,es
000003DD  C47EF4            les di,word [bp-0xc]
000003E0  26894508          mov [es:di+0x8],ax
000003E4  2689550A          mov [es:di+0xa],dx
000003E8  C47EFC            les di,word [bp-0x4]
000003EB  897EF4            mov [bp-0xc],di
000003EE  8C46F6            mov word [bp-0xa],es
000003F1  C446F8            les ax,word [bp-0x8]
000003F4  8CC2              mov dx,es
000003F6  C47EF4            les di,word [bp-0xc]
000003F9  26894504          mov [es:di+0x4],ax
000003FD  26895506          mov [es:di+0x6],dx
00000401  C47EF4            les di,word [bp-0xc]
00000404  268B4511          mov ax,[es:di+0x11]
00000408  260B4513          or ax,[es:di+0x13]
0000040C  7442              jz 0x450
0000040E  C47EF4            les di,word [bp-0xc]
00000411  268A4510          mov al,[es:di+0x10]
00000415  3C00              cmp al,0x0
00000417  7537              jnz 0x450
00000419  C47EF4            les di,word [bp-0xc]
0000041C  81C71100          add di,0x11
00000420  06                push es
00000421  57                push di
00000422  C47EF4            les di,word [bp-0xc]
00000425  26FF750E          push word [es:di+0xe]
00000429  26FF750C          push word [es:di+0xc]
0000042D  9A4F03C317        call word 0x17c3:word 0x34f
00000432  C47EF8            les di,word [bp-0x8]
00000435  26C47D08          les di,word [es:di+0x8]
00000439  06                push es
0000043A  57                push di
0000043B  C47EF4            les di,word [bp-0xc]
0000043E  26C47D11          les di,word [es:di+0x11]
00000442  06                push es
00000443  57                push di
00000444  C47EF4            les di,word [bp-0xc]
00000447  26FF750C          push word [es:di+0xc]
0000044B  9A641B561A        call word 0x1a56:word 0x1b64
00000450  C47EF4            les di,word [bp-0xc]
00000453  26C44508          les ax,word [es:di+0x8]
00000457  8CC2              mov dx,es
00000459  8946FC            mov [bp-0x4],ax
0000045C  8956FE            mov [bp-0x2],dx
0000045F  E929FF            jmp 0x38b
00000462  89EC              mov sp,bp
00000464  5D                pop bp
00000465  C20800            ret word 0x8
00000468  55                push bp
00000469  89E5              mov bp,sp
0000046B  83EC0C            sub sp,0xc
0000046E  FF760A            push word [bp+0xa]
00000471  FF7608            push word [bp+0x8]
00000474  FF7606            push word [bp+0x6]
00000477  FF7604            push word [bp+0x4]
0000047A  E811FE            call 0x28e
0000047D  894608            mov [bp+0x8],ax
00000480  89560A            mov [bp+0xa],dx
00000483  8B4608            mov ax,[bp+0x8]
00000486  0B460A            or ax,[bp+0xa]
00000489  7503              jnz 0x48e
0000048B  E9B200            jmp 0x540
0000048E  C47E08            les di,word [bp+0x8]
00000491  26C44504          les ax,word [es:di+0x4]
00000495  8CC2              mov dx,es
00000497  8946FC            mov [bp-0x4],ax
0000049A  8956FE            mov [bp-0x2],dx
0000049D  8B46FC            mov ax,[bp-0x4]
000004A0  0B46FE            or ax,[bp-0x2]
000004A3  7503              jnz 0x4a8
000004A5  E99800            jmp 0x540
000004A8  C47EFC            les di,word [bp-0x4]
000004AB  897EF4            mov [bp-0xc],di
000004AE  8C46F6            mov word [bp-0xa],es
000004B1  C47EF4            les di,word [bp-0xc]
000004B4  268A4510          mov al,[es:di+0x10]
000004B8  3C00              cmp al,0x0
000004BA  753D              jnz 0x4f9
000004BC  C47EF4            les di,word [bp-0xc]
000004BF  81C71100          add di,0x11
000004C3  06                push es
000004C4  57                push di
000004C5  9AB403C317        call word 0x17c3:word 0x3b4
000004CA  C47EF4            les di,word [bp-0xc]
000004CD  26C47D04          les di,word [es:di+0x4]
000004D1  26C44508          les ax,word [es:di+0x8]
000004D5  8CC2              mov dx,es
000004D7  C47EF4            les di,word [bp-0xc]
000004DA  26894511          mov [es:di+0x11],ax
000004DE  26895513          mov [es:di+0x13],dx
000004E2  C47EF4            les di,word [bp-0xc]
000004E5  26C47D04          les di,word [es:di+0x4]
000004E9  26C405            les ax,word [es:di]
000004EC  8CC2              mov dx,es
000004EE  C47EF4            les di,word [bp-0xc]
000004F1  2689450C          mov [es:di+0xc],ax
000004F5  2689550E          mov [es:di+0xe],dx
000004F9  C47EF4            les di,word [bp-0xc]
000004FC  26C47D04          les di,word [es:di+0x4]
00000500  26C44504          les ax,word [es:di+0x4]
00000504  8CC2              mov dx,es
00000506  8946F8            mov [bp-0x8],ax
00000509  8956FA            mov [bp-0x6],dx
0000050C  C47EF4            les di,word [bp-0xc]
0000050F  81C70400          add di,0x4
00000513  06                push es
00000514  57                push di
00000515  B80C00            mov ax,0xc
00000518  50                push ax
00000519  9AC003561A        call word 0x1a56:word 0x3c0
0000051E  C446F8            les ax,word [bp-0x8]
00000521  8CC2              mov dx,es
00000523  C47EF4            les di,word [bp-0xc]
00000526  26894504          mov [es:di+0x4],ax
0000052A  26895506          mov [es:di+0x6],dx
0000052E  C47EF4            les di,word [bp-0xc]
00000531  26C44508          les ax,word [es:di+0x8]
00000535  8CC2              mov dx,es
00000537  8946FC            mov [bp-0x4],ax
0000053A  8956FE            mov [bp-0x2],dx
0000053D  E95DFF            jmp 0x49d
00000540  89EC              mov sp,bp
00000542  5D                pop bp
00000543  C20800            ret word 0x8
00000546  55                push bp
00000547  89E5              mov bp,sp
00000549  83EC0D            sub sp,0xd
0000054C  C646FF00          mov byte [bp-0x1],0x0
00000550  C47E16            les di,word [bp+0x16]
00000553  26FFB5E508        push word [es:di+0x8e5]
00000558  26FFB5E308        push word [es:di+0x8e3]
0000055D  FF7614            push word [bp+0x14]
00000560  FF7612            push word [bp+0x12]
00000563  E828FD            call 0x28e
00000566  8946FB            mov [bp-0x5],ax
00000569  8956FD            mov [bp-0x3],dx
0000056C  8B46FB            mov ax,[bp-0x5]
0000056F  0B46FD            or ax,[bp-0x3]
00000572  7503              jnz 0x577
00000574  E9B200            jmp 0x629
00000577  C47EFB            les di,word [bp-0x5]
0000057A  26FF7506          push word [es:di+0x6]
0000057E  26FF7504          push word [es:di+0x4]
00000582  FF7610            push word [bp+0x10]
00000585  FF760E            push word [bp+0xe]
00000588  E81AFC            call 0x1a5
0000058B  8946F7            mov [bp-0x9],ax
0000058E  8956F9            mov [bp-0x7],dx
00000591  8B46F7            mov ax,[bp-0x9]
00000594  0B46F9            or ax,[bp-0x7]
00000597  7503              jnz 0x59c
00000599  E98D00            jmp 0x629
0000059C  C47EF7            les di,word [bp-0x9]
0000059F  897EF3            mov [bp-0xd],di
000005A2  8C46F5            mov word [bp-0xb],es
000005A5  C47EF3            les di,word [bp-0xd]
000005A8  268A4510          mov al,[es:di+0x10]
000005AC  3C04              cmp al,0x4
000005AE  753B              jnz 0x5eb
000005B0  C47EF7            les di,word [bp-0x9]
000005B3  26C47D11          les di,word [es:di+0x11]
000005B7  26C405            les ax,word [es:di]
000005BA  8CC2              mov dx,es
000005BC  C47E0A            les di,word [bp+0xa]
000005BF  268905            mov [es:di],ax
000005C2  26895502          mov [es:di+0x2],dx
000005C6  C47EF7            les di,word [bp-0x9]
000005C9  26C4450C          les ax,word [es:di+0xc]
000005CD  8CC2              mov dx,es
000005CF  C47E06            les di,word [bp+0x6]
000005D2  268905            mov [es:di],ax
000005D5  26895502          mov [es:di+0x2],dx
000005D9  C47E0A            les di,word [bp+0xa]
000005DC  268B05            mov ax,[es:di]
000005DF  260B4502          or ax,[es:di+0x2]
000005E3  7404              jz 0x5e9
000005E5  C646FF01          mov byte [bp-0x1],0x1
000005E9  EB3E              jmp 0x629
000005EB  3C03              cmp al,0x3
000005ED  7404              jz 0x5f3
000005EF  3C00              cmp al,0x0
000005F1  7536              jnz 0x629
000005F3  C47EF7            les di,word [bp-0x9]
000005F6  26C44511          les ax,word [es:di+0x11]
000005FA  8CC2              mov dx,es
000005FC  C47E0A            les di,word [bp+0xa]
000005FF  268905            mov [es:di],ax
00000602  26895502          mov [es:di+0x2],dx
00000606  C47EF7            les di,word [bp-0x9]
00000609  26C4450C          les ax,word [es:di+0xc]
0000060D  8CC2              mov dx,es
0000060F  C47E06            les di,word [bp+0x6]
00000612  268905            mov [es:di],ax
00000615  26895502          mov [es:di+0x2],dx
00000619  C47E0A            les di,word [bp+0xa]
0000061C  268B05            mov ax,[es:di]
0000061F  260B4502          or ax,[es:di+0x2]
00000623  7404              jz 0x629
00000625  C646FF01          mov byte [bp-0x1],0x1
00000629  8A46FF            mov al,[bp-0x1]
0000062C  89EC              mov sp,bp
0000062E  5D                pop bp
0000062F  CA1400            retf word 0x14
00000632  55                push bp
00000633  89E5              mov bp,sp
00000635  83EC09            sub sp,0x9
00000638  C47E14            les di,word [bp+0x14]
0000063B  06                push es
0000063C  57                push di
0000063D  FF7612            push word [bp+0x12]
00000640  FF7610            push word [bp+0x10]
00000643  FF760E            push word [bp+0xe]
00000646  FF760C            push word [bp+0xc]
00000649  8D7EF7            lea di,[bp-0x9]
0000064C  16                push ss
0000064D  57                push di
0000064E  8D7EFB            lea di,[bp-0x5]
00000651  16                push ss
00000652  57                push di
00000653  0E                push cs
00000654  E8EFFE            call 0x546
00000657  08C0              or al,al
00000659  740F              jz 0x66a
0000065B  8B4606            mov ax,[bp+0x6]
0000065E  31D2              xor dx,dx
00000660  3B56FD            cmp dx,[bp-0x3]
00000663  7505              jnz 0x66a
00000665  3B46FB            cmp ax,[bp-0x5]
00000668  7406              jz 0x670
0000066A  C646FF00          mov byte [bp-0x1],0x0
0000066E  EB16              jmp 0x686
00000670  C47EF7            les di,word [bp-0x9]
00000673  06                push es
00000674  57                push di
00000675  C47E08            les di,word [bp+0x8]
00000678  06                push es
00000679  57                push di
0000067A  FF7606            push word [bp+0x6]
0000067D  9A641B561A        call word 0x1a56:word 0x1b64
00000682  C646FF01          mov byte [bp-0x1],0x1
00000686  8A46FF            mov al,[bp-0x1]
00000689  89EC              mov sp,bp
0000068B  5D                pop bp
0000068C  CA1200            retf word 0x12
0000068F  55                push bp
00000690  89E5              mov bp,sp
00000692  83EC15            sub sp,0x15
00000695  C47E04            les di,word [bp+0x4]
00000698  06                push es
00000699  57                push di
0000069A  8D7EEF            lea di,[bp-0x11]
0000069D  16                push ss
0000069E  57                push di
0000069F  B81100            mov ax,0x11
000006A2  50                push ax
000006A3  9AC002561A        call word 0x1a56:word 0x2c0
000006A8  8D7EEB            lea di,[bp-0x15]
000006AB  16                push ss
000006AC  57                push di
000006AD  B81500            mov ax,0x15
000006B0  50                push ax
000006B1  9A8E03561A        call word 0x1a56:word 0x38e
000006B6  C47E08            les di,word [bp+0x8]
000006B9  26C405            les ax,word [es:di]
000006BC  8CC2              mov dx,es
000006BE  C47EEB            les di,word [bp-0x15]
000006C1  26894511          mov [es:di+0x11],ax
000006C5  26895513          mov [es:di+0x13],dx
000006C9  8D7EEF            lea di,[bp-0x11]
000006CC  16                push ss
000006CD  57                push di
000006CE  C47EEB            les di,word [bp-0x15]
000006D1  06                push es
000006D2  57                push di
000006D3  B81100            mov ax,0x11
000006D6  50                push ax
000006D7  9AC002561A        call word 0x1a56:word 0x2c0
000006DC  C446EB            les ax,word [bp-0x15]
000006DF  8CC2              mov dx,es
000006E1  C47E08            les di,word [bp+0x8]
000006E4  268905            mov [es:di],ax
000006E7  26895502          mov [es:di+0x2],dx
000006EB  89EC              mov sp,bp
000006ED  5D                pop bp
000006EE  C20800            ret word 0x8
000006F1  55                push bp
000006F2  89E5              mov bp,sp
000006F4  83EC04            sub sp,0x4
000006F7  C47E08            les di,word [bp+0x8]
000006FA  268B05            mov ax,[es:di]
000006FD  260B4502          or ax,[es:di+0x2]
00000701  7445              jz 0x748
00000703  C47E08            les di,word [bp+0x8]
00000706  26C43D            les di,word [es:di]
00000709  06                push es
0000070A  57                push di
0000070B  C47E04            les di,word [bp+0x4]
0000070E  06                push es
0000070F  57                push di
00000710  B81100            mov ax,0x11
00000713  50                push ax
00000714  9AC002561A        call word 0x1a56:word 0x2c0
00000719  C47E08            les di,word [bp+0x8]
0000071C  26C405            les ax,word [es:di]
0000071F  8CC2              mov dx,es
00000721  8946FC            mov [bp-0x4],ax
00000724  8956FE            mov [bp-0x2],dx
00000727  C47E08            les di,word [bp+0x8]
0000072A  06                push es
0000072B  57                push di
0000072C  B81500            mov ax,0x15
0000072F  50                push ax
00000730  9AC003561A        call word 0x1a56:word 0x3c0
00000735  C47EFC            les di,word [bp-0x4]
00000738  26C44511          les ax,word [es:di+0x11]
0000073C  8CC2              mov dx,es
0000073E  C47E08            les di,word [bp+0x8]
00000741  268905            mov [es:di],ax
00000744  26895502          mov [es:di+0x2],dx
00000748  89EC              mov sp,bp
0000074A  5D                pop bp
0000074B  C20800            ret word 0x8
0000074E  55                push bp
0000074F  89E5              mov bp,sp
00000751  83EC04            sub sp,0x4
00000754  C47E04            les di,word [bp+0x4]
00000757  268B05            mov ax,[es:di]
0000075A  260B4502          or ax,[es:di+0x2]
0000075E  7431              jz 0x791
00000760  C47E04            les di,word [bp+0x4]
00000763  26C405            les ax,word [es:di]
00000766  8CC2              mov dx,es
00000768  8946FC            mov [bp-0x4],ax
0000076B  8956FE            mov [bp-0x2],dx
0000076E  C47E04            les di,word [bp+0x4]
00000771  06                push es
00000772  57                push di
00000773  B81500            mov ax,0x15
00000776  50                push ax
00000777  9AC003561A        call word 0x1a56:word 0x3c0
0000077C  C47EFC            les di,word [bp-0x4]
0000077F  26C44511          les ax,word [es:di+0x11]
00000783  8CC2              mov dx,es
00000785  C47E04            les di,word [bp+0x4]
00000788  268905            mov [es:di],ax
0000078B  26895502          mov [es:di+0x2],dx
0000078F  EBC3              jmp 0x754
00000791  89EC              mov sp,bp
00000793  5D                pop bp
00000794  C20400            ret word 0x4
00000797  2020              and [bx+si],ah
00000799  2020              and [bx+si],ah
0000079B  55                push bp
0000079C  89E5              mov bp,sp
0000079E  C47E04            les di,word [bp+0x4]
000007A1  31C0              xor ax,ax
000007A3  268985E308        mov [es:di+0x8e3],ax
000007A8  268985E508        mov [es:di+0x8e5],ax
000007AD  C47E04            les di,word [bp+0x4]
000007B0  26C685CD0802      mov byte [es:di+0x8cd],0x2
000007B6  C47E04            les di,word [bp+0x4]
000007B9  31C0              xor ax,ax
000007BB  268985CE08        mov [es:di+0x8ce],ax
000007C0  268985D008        mov [es:di+0x8d0],ax
000007C5  C47E04            les di,word [bp+0x4]
000007C8  26C785D608FFFF    mov word [es:di+0x8d6],0xffff
000007CF  26C785D808FFFF    mov word [es:di+0x8d8],0xffff
000007D6  2EC4069707        les ax,word [cs:0x797]
000007DB  8CC2              mov dx,es
000007DD  C47E04            les di,word [bp+0x4]
000007E0  268985DA08        mov [es:di+0x8da],ax
000007E5  268995DC08        mov [es:di+0x8dc],dx
000007EA  2EC4069707        les ax,word [cs:0x797]
000007EF  8CC2              mov dx,es
000007F1  C47E04            les di,word [bp+0x4]
000007F4  268985DE08        mov [es:di+0x8de],ax
000007F9  268995E008        mov [es:di+0x8e0],dx
000007FE  C47E04            les di,word [bp+0x4]
00000801  26C685E20807      mov byte [es:di+0x8e2],0x7
00000807  89EC              mov sp,bp
00000809  5D                pop bp
0000080A  C20400            ret word 0x4
0000080D  55                push bp
0000080E  89E5              mov bp,sp
00000810  83EC40            sub sp,0x40
00000813  C47E06            les di,word [bp+0x6]
00000816  06                push es
00000817  57                push di
00000818  8D7EC0            lea di,[bp-0x40]
0000081B  16                push ss
0000081C  57                push di
0000081D  B83F00            mov ax,0x3f
00000820  50                push ax
00000821  9AAD06561A        call word 0x1a56:word 0x6ad
00000826  C47E0A            les di,word [bp+0xa]
00000829  06                push es
0000082A  57                push di
0000082B  E86DFF            call 0x79b
0000082E  C47E0A            les di,word [bp+0xa]
00000831  06                push es
00000832  57                push di
00000833  8D7EC0            lea di,[bp-0x40]
00000836  16                push ss
00000837  57                push di
00000838  9AD6002518        call word 0x1825:word 0xd6
0000083D  C47E0A            les di,word [bp+0xa]
00000840  26C685CD0800      mov byte [es:di+0x8cd],0x0
00000846  C47E0A            les di,word [bp+0xa]
00000849  06                push es
0000084A  57                push di
0000084B  9A31072518        call word 0x1825:word 0x731
00000850  C47E0A            les di,word [bp+0xa]
00000853  268985D208        mov [es:di+0x8d2],ax
00000858  268995D408        mov [es:di+0x8d4],dx
0000085D  89EC              mov sp,bp
0000085F  5D                pop bp
00000860  CA0800            retf word 0x8
00000863  55                push bp
00000864  89E5              mov bp,sp
00000866  C47E06            les di,word [bp+0x6]
00000869  2680BDCD0801      cmp byte [es:di+0x8cd],0x1
0000086F  751A              jnz 0x88b
00000871  C47E06            les di,word [bp+0x6]
00000874  268B85CE08        mov ax,[es:di+0x8ce]
00000879  260B85D008        or ax,[es:di+0x8d0]
0000087E  740B              jz 0x88b
00000880  C47E06            les di,word [bp+0x6]
00000883  06                push es
00000884  57                push di
00000885  0E                push cs
00000886  E80B02            call 0xa94
00000889  EBE6              jmp 0x871
0000088B  C47E06            les di,word [bp+0x6]
0000088E  81C7E308          add di,0x8e3
00000892  06                push es
00000893  57                push di
00000894  E869FA            call 0x300
00000897  C47E06            les di,word [bp+0x6]
0000089A  81C7CE08          add di,0x8ce
0000089E  06                push es
0000089F  57                push di
000008A0  E8ABFE            call 0x74e
000008A3  C47E06            les di,word [bp+0x6]
000008A6  2680BDCD0802      cmp byte [es:di+0x8cd],0x2
000008AC  740A              jz 0x8b8
000008AE  C47E06            les di,word [bp+0x6]
000008B1  06                push es
000008B2  57                push di
000008B3  9A7A012518        call word 0x1825:word 0x17a
000008B8  C47E06            les di,word [bp+0x6]
000008BB  26C685CD0802      mov byte [es:di+0x8cd],0x2
000008C1  89EC              mov sp,bp
000008C3  5D                pop bp
000008C4  CA0400            retf word 0x4
000008C7  55                push bp
000008C8  89E5              mov bp,sp
000008CA  83EC08            sub sp,0x8
000008CD  8D7EFC            lea di,[bp-0x4]
000008D0  16                push ss
000008D1  57                push di
000008D2  B81400            mov ax,0x14
000008D5  50                push ax
000008D6  9A8E03561A        call word 0x1a56:word 0x38e
000008DB  C47EFC            les di,word [bp-0x4]
000008DE  897EF8            mov [bp-0x8],di
000008E1  8C46FA            mov word [bp-0x6],es
000008E4  C4460E            les ax,word [bp+0xe]
000008E7  8CC2              mov dx,es
000008E9  C47EF8            les di,word [bp-0x8]
000008EC  268905            mov [es:di],ax
000008EF  26895502          mov [es:di+0x2],dx
000008F3  C47EF8            les di,word [bp-0x8]
000008F6  31C0              xor ax,ax
000008F8  26894504          mov [es:di+0x4],ax
000008FC  26894506          mov [es:di+0x6],ax
00000900  C4460A            les ax,word [bp+0xa]
00000903  8CC2              mov dx,es
00000905  C47EF8            les di,word [bp-0x8]
00000908  26894508          mov [es:di+0x8],ax
0000090C  2689550A          mov [es:di+0xa],dx
00000910  C44606            les ax,word [bp+0x6]
00000913  8CC2              mov dx,es
00000915  C47EF8            les di,word [bp-0x8]
00000918  2689450C          mov [es:di+0xc],ax
0000091C  2689550E          mov [es:di+0xe],dx
00000920  C47E12            les di,word [bp+0x12]
00000923  26C485E308        les ax,word [es:di+0x8e3]
00000928  8CC2              mov dx,es
0000092A  C47EF8            les di,word [bp-0x8]
0000092D  26894510          mov [es:di+0x10],ax
00000931  26895512          mov [es:di+0x12],dx
00000935  C446FC            les ax,word [bp-0x4]
00000938  8CC2              mov dx,es
0000093A  C47E12            les di,word [bp+0x12]
0000093D  268985E308        mov [es:di+0x8e3],ax
00000942  268995E508        mov [es:di+0x8e5],dx
00000947  89EC              mov sp,bp
00000949  5D                pop bp
0000094A  CA1000            retf word 0x10
0000094D  55                push bp
0000094E  89E5              mov bp,sp
00000950  83EC04            sub sp,0x4
00000953  C47E14            les di,word [bp+0x14]
00000956  268B85E308        mov ax,[es:di+0x8e3]
0000095B  260B85E508        or ax,[es:di+0x8e5]
00000960  7503              jnz 0x965
00000962  E98700            jmp 0x9ec
00000965  8D7EFC            lea di,[bp-0x4]
00000968  16                push ss
00000969  57                push di
0000096A  B81500            mov ax,0x15
0000096D  50                push ax
0000096E  9A8E03561A        call word 0x1a56:word 0x38e
00000973  C44610            les ax,word [bp+0x10]
00000976  8CC2              mov dx,es
00000978  C47EFC            les di,word [bp-0x4]
0000097B  268905            mov [es:di],ax
0000097E  26895502          mov [es:di+0x2],dx
00000982  8A460E            mov al,[bp+0xe]
00000985  C47EFC            les di,word [bp-0x4]
00000988  26884510          mov [es:di+0x10],al
0000098C  FF760C            push word [bp+0xc]
0000098F  FF760A            push word [bp+0xa]
00000992  FF7608            push word [bp+0x8]
00000995  FF7606            push word [bp+0x6]
00000998  C47EFC            les di,word [bp-0x4]
0000099B  81C71100          add di,0x11
0000099F  06                push es
000009A0  57                push di
000009A1  C47EFC            les di,word [bp-0x4]
000009A4  81C70C00          add di,0xc
000009A8  06                push es
000009A9  57                push di
000009AA  8A460E            mov al,[bp+0xe]
000009AD  50                push ax
000009AE  E828F7            call 0xd9
000009B1  C47EFC            les di,word [bp-0x4]
000009B4  31C0              xor ax,ax
000009B6  26894504          mov [es:di+0x4],ax
000009BA  26894506          mov [es:di+0x6],ax
000009BE  C47E14            les di,word [bp+0x14]
000009C1  26C4BDE308        les di,word [es:di+0x8e3]
000009C6  26C44504          les ax,word [es:di+0x4]
000009CA  8CC2              mov dx,es
000009CC  C47EFC            les di,word [bp-0x4]
000009CF  26894508          mov [es:di+0x8],ax
000009D3  2689550A          mov [es:di+0xa],dx
000009D7  C446FC            les ax,word [bp-0x4]
000009DA  8CC2              mov dx,es
000009DC  C47E14            les di,word [bp+0x14]
000009DF  26C4BDE308        les di,word [es:di+0x8e3]
000009E4  26894504          mov [es:di+0x4],ax
000009E8  26895506          mov [es:di+0x6],dx
000009EC  89EC              mov sp,bp
000009EE  5D                pop bp
000009EF  CA1200            retf word 0x12
000009F2  55                push bp
000009F3  89E5              mov bp,sp
000009F5  83EC02            sub sp,0x2
000009F8  C44606            les ax,word [bp+0x6]
000009FB  8CC2              mov dx,es
000009FD  C47E0E            les di,word [bp+0xe]
00000A00  262985D208        sub [es:di+0x8d2],ax
00000A05  261995D408        sbb [es:di+0x8d4],dx
00000A0A  837E0800          cmp word [bp+0x8],0x0
00000A0E  7F08              jg 0xa18
00000A10  7C40              jl 0xa52
00000A12  837E0600          cmp word [bp+0x6],0x0
00000A16  763A              jna 0xa52
00000A18  837E0800          cmp word [bp+0x8],0x0
00000A1C  7C08              jl 0xa26
00000A1E  7F0E              jg 0xa2e
00000A20  837E06FF          cmp word [bp+0x6],0xffffffffffffffff
00000A24  7708              ja 0xa2e
00000A26  8B4606            mov ax,[bp+0x6]
00000A29  8946FE            mov [bp-0x2],ax
00000A2C  EB05              jmp 0xa33
00000A2E  C746FEFFFF        mov word [bp-0x2],0xffff
00000A33  C47E0E            les di,word [bp+0xe]
00000A36  06                push es
00000A37  57                push di
00000A38  C47E0A            les di,word [bp+0xa]
00000A3B  06                push es
00000A3C  57                push di
00000A3D  FF76FE            push word [bp-0x2]
00000A40  9AFF012518        call word 0x1825:word 0x1ff
00000A45  8B46FE            mov ax,[bp-0x2]
00000A48  31D2              xor dx,dx
00000A4A  294606            sub [bp+0x6],ax
00000A4D  195608            sbb [bp+0x8],dx
00000A50  EBB8              jmp 0xa0a
00000A52  89EC              mov sp,bp
00000A54  5D                pop bp
00000A55  CA0C00            retf word 0xc
00000A58  55                push bp
00000A59  89E5              mov bp,sp
00000A5B  FF7608            push word [bp+0x8]
00000A5E  FF7606            push word [bp+0x6]
00000A61  58                pop ax
00000A62  5A                pop dx
00000A63  86E2              xchg ah,dl
00000A65  86C6              xchg al,dh
00000A67  894606            mov [bp+0x6],ax
00000A6A  895608            mov [bp+0x8],dx
00000A6D  C47E0A            les di,word [bp+0xa]
00000A70  06                push es
00000A71  57                push di
00000A72  8D4606            lea ax,[bp+0x6]
00000A75  8CD2              mov dx,ss
00000A77  52                push dx
00000A78  50                push ax
00000A79  B80400            mov ax,0x4
00000A7C  31D2              xor dx,dx
00000A7E  52                push dx
00000A7F  50                push ax
00000A80  0E                push cs
00000A81  E86EFF            call 0x9f2
00000A84  89EC              mov sp,bp
00000A86  5D                pop bp
00000A87  CA0800            retf word 0x8
00000A8A  0446              add al,0x46
00000A8C  4F                dec di
00000A8D  52                push dx
00000A8E  4D                dec bp
00000A8F  044C              add al,0x4c
00000A91  49                dec cx
00000A92  53                push bx
00000A93  54                push sp
00000A94  55                push bp
00000A95  89E5              mov bp,sp
00000A97  81EC0902          sub sp,0x209
00000A9B  C47E06            les di,word [bp+0x6]
00000A9E  26C485D208        les ax,word [es:di+0x8d2]
00000AA3  8CC2              mov dx,es
00000AA5  8946FC            mov [bp-0x4],ax
00000AA8  8956FE            mov [bp-0x2],dx
00000AAB  C47E06            les di,word [bp+0x6]
00000AAE  06                push es
00000AAF  57                push di
00000AB0  9AA0062518        call word 0x1825:word 0x6a0
00000AB5  8946F8            mov [bp-0x8],ax
00000AB8  8956FA            mov [bp-0x6],dx
00000ABB  C446F8            les ax,word [bp-0x8]
00000ABE  8CC2              mov dx,es
00000AC0  C47E06            les di,word [bp+0x6]
00000AC3  262B85D608        sub ax,[es:di+0x8d6]
00000AC8  261B95D808        sbb dx,[es:di+0x8d8]
00000ACD  D0E8              shr al,1
00000ACF  7204              jc 0xad5
00000AD1  B000              mov al,0x0
00000AD3  EB02              jmp 0xad7
00000AD5  B001              mov al,0x1
00000AD7  8846F7            mov [bp-0x9],al
00000ADA  C47E06            les di,word [bp+0x6]
00000ADD  268B85CE08        mov ax,[es:di+0x8ce]
00000AE2  260B85D008        or ax,[es:di+0x8d0]
00000AE7  750C              jnz 0xaf5
00000AE9  C47E06            les di,word [bp+0x6]
00000AEC  06                push es
00000AED  57                push di
00000AEE  B80900            mov ax,0x9
00000AF1  50                push ax
00000AF2  E80BF5            call 0x0
00000AF5  8DBEF7FE          lea di,[bp-0x109]
00000AF9  16                push ss
00000AFA  57                push di
00000AFB  C47E06            les di,word [bp+0x6]
00000AFE  81C7DA08          add di,0x8da
00000B02  06                push es
00000B03  57                push di
00000B04  B80400            mov ax,0x4
00000B07  50                push ax
00000B08  9AC007561A        call word 0x1a56:word 0x7c0
00000B0D  BF8A0A            mov di,0xa8a
00000B10  0E                push cs
00000B11  57                push di
00000B12  9A8307561A        call word 0x1a56:word 0x783
00000B17  7424              jz 0xb3d
00000B19  8DBEF7FD          lea di,[bp-0x209]
00000B1D  16                push ss
00000B1E  57                push di
00000B1F  C47E06            les di,word [bp+0x6]
00000B22  81C7DA08          add di,0x8da
00000B26  06                push es
00000B27  57                push di
00000B28  B80400            mov ax,0x4
00000B2B  50                push ax
00000B2C  9AC007561A        call word 0x1a56:word 0x7c0
00000B31  BF8F0A            mov di,0xa8f
00000B34  0E                push cs
00000B35  57                push di
00000B36  9A8307561A        call word 0x1a56:word 0x783
00000B3B  751D              jnz 0xb5a
00000B3D  C47E06            les di,word [bp+0x6]
00000B40  26FFB5E508        push word [es:di+0x8e5]
00000B45  26FFB5E308        push word [es:di+0x8e3]
00000B4A  C47E06            les di,word [bp+0x6]
00000B4D  26FFB5E008        push word [es:di+0x8e0]
00000B52  26FFB5DE08        push word [es:di+0x8de]
00000B57  E80EF9            call 0x468
00000B5A  8B46FC            mov ax,[bp-0x4]
00000B5D  0B46FE            or ax,[bp-0x2]
00000B60  7449              jz 0xbab
00000B62  C47E06            les di,word [bp+0x6]
00000B65  06                push es
00000B66  57                push di
00000B67  C47E06            les di,word [bp+0x6]
00000B6A  26C485D608        les ax,word [es:di+0x8d6]
00000B6F  8CC2              mov dx,es
00000B71  2D0400            sub ax,0x4
00000B74  83DA00            sbb dx,0x0
00000B77  52                push dx
00000B78  50                push ax
00000B79  9ACF052518        call word 0x1825:word 0x5cf
00000B7E  C47E06            les di,word [bp+0x6]
00000B81  06                push es
00000B82  57                push di
00000B83  C446F8            les ax,word [bp-0x8]
00000B86  8CC2              mov dx,es
00000B88  C47E06            les di,word [bp+0x6]
00000B8B  262B85D608        sub ax,[es:di+0x8d6]
00000B90  261B95D808        sbb dx,[es:di+0x8d8]
00000B95  52                push dx
00000B96  50                push ax
00000B97  0E                push cs
00000B98  E8BDFE            call 0xa58
00000B9B  C47E06            les di,word [bp+0x6]
00000B9E  06                push es
00000B9F  57                push di
00000BA0  FF76FA            push word [bp-0x6]
00000BA3  FF76F8            push word [bp-0x8]
00000BA6  9ACF052518        call word 0x1825:word 0x5cf
00000BAB  C47E06            les di,word [bp+0x6]
00000BAE  81C7CE08          add di,0x8ce
00000BB2  06                push es
00000BB3  57                push di
00000BB4  C47E06            les di,word [bp+0x6]
00000BB7  81C7D208          add di,0x8d2
00000BBB  06                push es
00000BBC  57                push di
00000BBD  E831FB            call 0x6f1
00000BC0  807EF700          cmp byte [bp-0x9],0x0
00000BC4  7417              jz 0xbdd
00000BC6  C47E06            les di,word [bp+0x6]
00000BC9  06                push es
00000BCA  57                push di
00000BCB  B8FE14            mov ax,0x14fe
00000BCE  8CDA              mov dx,ds
00000BD0  52                push dx
00000BD1  50                push ax
00000BD2  B80100            mov ax,0x1
00000BD5  31D2              xor dx,dx
00000BD7  52                push dx
00000BD8  50                push ax
00000BD9  0E                push cs
00000BDA  E815FE            call 0x9f2
00000BDD  C446FC            les ax,word [bp-0x4]
00000BE0  8CC2              mov dx,es
00000BE2  C47E06            les di,word [bp+0x6]
00000BE5  260185D208        add [es:di+0x8d2],ax
00000BEA  261195D408        adc [es:di+0x8d4],dx
00000BEF  C47E06            les di,word [bp+0x6]
00000BF2  268B85CE08        mov ax,[es:di+0x8ce]
00000BF7  260B85D008        or ax,[es:di+0x8d0]
00000BFC  7509              jnz 0xc07
00000BFE  C47E06            les di,word [bp+0x6]
00000C01  26C685E20800      mov byte [es:di+0x8e2],0x0
00000C07  89EC              mov sp,bp
00000C09  5D                pop bp
00000C0A  CA0400            retf word 0x4
00000C0D  55                push bp
00000C0E  89E5              mov bp,sp
00000C10  83EC02            sub sp,0x2
00000C13  C44606            les ax,word [bp+0x6]
00000C16  8CC2              mov dx,es
00000C18  C47E0E            les di,word [bp+0xe]
00000C1B  263B95D408        cmp dx,[es:di+0x8d4]
00000C20  7F09              jg 0xc2b
00000C22  7C13              jl 0xc37
00000C24  263B85D208        cmp ax,[es:di+0x8d2]
00000C29  760C              jna 0xc37
00000C2B  C47E0E            les di,word [bp+0xe]
00000C2E  06                push es
00000C2F  57                push di
00000C30  B80100            mov ax,0x1
00000C33  50                push ax
00000C34  E8C9F3            call 0x0
00000C37  C44606            les ax,word [bp+0x6]
00000C3A  8CC2              mov dx,es
00000C3C  C47E0E            les di,word [bp+0xe]
00000C3F  262985D208        sub [es:di+0x8d2],ax
00000C44  261995D408        sbb [es:di+0x8d4],dx
00000C49  837E0800          cmp word [bp+0x8],0x0
00000C4D  7F08              jg 0xc57
00000C4F  7C40              jl 0xc91
00000C51  837E0600          cmp word [bp+0x6],0x0
00000C55  763A              jna 0xc91
00000C57  837E0800          cmp word [bp+0x8],0x0
00000C5B  7C08              jl 0xc65
00000C5D  7F0E              jg 0xc6d
00000C5F  837E06FF          cmp word [bp+0x6],0xffffffffffffffff
00000C63  7708              ja 0xc6d
00000C65  8B4606            mov ax,[bp+0x6]
00000C68  8946FE            mov [bp-0x2],ax
00000C6B  EB05              jmp 0xc72
00000C6D  C746FEFFFF        mov word [bp-0x2],0xffff
00000C72  C47E0E            les di,word [bp+0xe]
00000C75  06                push es
00000C76  57                push di
00000C77  C47E0A            les di,word [bp+0xa]
00000C7A  06                push es
00000C7B  57                push di
00000C7C  FF76FE            push word [bp-0x2]
00000C7F  9A72032518        call word 0x1825:word 0x372
00000C84  8B46FE            mov ax,[bp-0x2]
00000C87  31D2              xor dx,dx
00000C89  294606            sub [bp+0x6],ax
00000C8C  195608            sbb [bp+0x8],dx
00000C8F  EBB8              jmp 0xc49
00000C91  89EC              mov sp,bp
00000C93  5D                pop bp
00000C94  CA0C00            retf word 0xc
00000C97  55                push bp
00000C98  89E5              mov bp,sp
00000C9A  C47E0A            les di,word [bp+0xa]
00000C9D  06                push es
00000C9E  57                push di
00000C9F  C47E06            les di,word [bp+0x6]
00000CA2  89F8              mov ax,di
00000CA4  8CC2              mov dx,es
00000CA6  52                push dx
00000CA7  50                push ax
00000CA8  B80400            mov ax,0x4
00000CAB  31D2              xor dx,dx
00000CAD  52                push dx
00000CAE  50                push ax
00000CAF  0E                push cs
00000CB0  E85AFF            call 0xc0d
00000CB3  89EC              mov sp,bp
00000CB5  5D                pop bp
00000CB6  CA0800            retf word 0x8
00000CB9  55                push bp
00000CBA  89E5              mov bp,sp
00000CBC  C47E0A            les di,word [bp+0xa]
00000CBF  06                push es
00000CC0  57                push di
00000CC1  C47E06            les di,word [bp+0x6]
00000CC4  89F8              mov ax,di
00000CC6  8CC2              mov dx,es
00000CC8  52                push dx
00000CC9  50                push ax
00000CCA  B80400            mov ax,0x4
00000CCD  31D2              xor dx,dx
00000CCF  52                push dx
00000CD0  50                push ax
00000CD1  0E                push cs
00000CD2  E838FF            call 0xc0d
00000CD5  C47E06            les di,word [bp+0x6]
00000CD8  26FF7502          push word [es:di+0x2]
00000CDC  26FF35            push word [es:di]
00000CDF  58                pop ax
00000CE0  5A                pop dx
00000CE1  86E2              xchg ah,dl
00000CE3  86C6              xchg al,dh
00000CE5  C47E06            les di,word [bp+0x6]
00000CE8  268905            mov [es:di],ax
00000CEB  26895502          mov [es:di+0x2],dx
00000CEF  89EC              mov sp,bp
00000CF1  5D                pop bp
00000CF2  CA0800            retf word 0x8
00000CF5  0443              add al,0x43
00000CF7  41                inc cx
00000CF8  54                push sp
00000CF9  2004              and [si],al
00000CFB  46                inc si
00000CFC  4F                dec di
00000CFD  52                push dx
00000CFE  4D                dec bp
00000CFF  044C              add al,0x4c
00000D01  49                dec cx
00000D02  53                push bx
00000D03  54                push sp
00000D04  0450              add al,0x50
00000D06  52                push dx
00000D07  4F                dec di
00000D08  50                push ax
00000D09  55                push bp
00000D0A  89E5              mov bp,sp
00000D0C  81EC0904          sub sp,0x409
00000D10  C47E06            les di,word [bp+0x6]
00000D13  06                push es
00000D14  57                push di
00000D15  8D7EFC            lea di,[bp-0x4]
00000D18  16                push ss
00000D19  57                push di
00000D1A  0E                push cs
00000D1B  E879FF            call 0xc97
00000D1E  C47E06            les di,word [bp+0x6]
00000D21  06                push es
00000D22  57                push di
00000D23  8D7EF8            lea di,[bp-0x8]
00000D26  16                push ss
00000D27  57                push di
00000D28  0E                push cs
00000D29  E88DFF            call 0xcb9
00000D2C  8DBEF7FE          lea di,[bp-0x109]
00000D30  16                push ss
00000D31  57                push di
00000D32  8D7EFC            lea di,[bp-0x4]
00000D35  16                push ss
00000D36  57                push di
00000D37  B80400            mov ax,0x4
00000D3A  50                push ax
00000D3B  9AC007561A        call word 0x1a56:word 0x7c0
00000D40  BFF50C            mov di,0xcf5
00000D43  0E                push cs
00000D44  57                push di
00000D45  9A8307561A        call word 0x1a56:word 0x783
00000D4A  7521              jnz 0xd6d
00000D4C  C47E06            les di,word [bp+0x6]
00000D4F  268A85E208        mov al,[es:di+0x8e2]
00000D54  2401              and al,0x1
00000D56  08C0              or al,al
00000D58  750C              jnz 0xd66
00000D5A  C47E06            les di,word [bp+0x6]
00000D5D  06                push es
00000D5E  57                push di
00000D5F  B80300            mov ax,0x3
00000D62  50                push ax
00000D63  E89AF2            call 0x0
00000D66  C646F707          mov byte [bp-0x9],0x7
00000D6A  E9FC00            jmp 0xe69
00000D6D  8DBEF7FD          lea di,[bp-0x209]
00000D71  16                push ss
00000D72  57                push di
00000D73  8D7EFC            lea di,[bp-0x4]
00000D76  16                push ss
00000D77  57                push di
00000D78  B80400            mov ax,0x4
00000D7B  50                push ax
00000D7C  9AC007561A        call word 0x1a56:word 0x7c0
00000D81  BFFA0C            mov di,0xcfa
00000D84  0E                push cs
00000D85  57                push di
00000D86  9A8307561A        call word 0x1a56:word 0x783
00000D8B  7521              jnz 0xdae
00000D8D  C47E06            les di,word [bp+0x6]
00000D90  268A85E208        mov al,[es:di+0x8e2]
00000D95  2402              and al,0x2
00000D97  08C0              or al,al
00000D99  750C              jnz 0xda7
00000D9B  C47E06            les di,word [bp+0x6]
00000D9E  06                push es
00000D9F  57                push di
00000DA0  B80400            mov ax,0x4
00000DA3  50                push ax
00000DA4  E859F2            call 0x0
00000DA7  C646F717          mov byte [bp-0x9],0x17
00000DAB  E9BB00            jmp 0xe69
00000DAE  8DBEF7FC          lea di,[bp-0x309]
00000DB2  16                push ss
00000DB3  57                push di
00000DB4  8D7EFC            lea di,[bp-0x4]
00000DB7  16                push ss
00000DB8  57                push di
00000DB9  B80400            mov ax,0x4
00000DBC  50                push ax
00000DBD  9AC007561A        call word 0x1a56:word 0x7c0
00000DC2  BFFF0C            mov di,0xcff
00000DC5  0E                push cs
00000DC6  57                push di
00000DC7  9A8307561A        call word 0x1a56:word 0x783
00000DCC  7520              jnz 0xdee
00000DCE  C47E06            les di,word [bp+0x6]
00000DD1  268A85E208        mov al,[es:di+0x8e2]
00000DD6  2404              and al,0x4
00000DD8  08C0              or al,al
00000DDA  750C              jnz 0xde8
00000DDC  C47E06            les di,word [bp+0x6]
00000DDF  06                push es
00000DE0  57                push di
00000DE1  B80500            mov ax,0x5
00000DE4  50                push ax
00000DE5  E818F2            call 0x0
00000DE8  C646F70F          mov byte [bp-0x9],0xf
00000DEC  EB7B              jmp 0xe69
00000DEE  8DBEF7FB          lea di,[bp-0x409]
00000DF2  16                push ss
00000DF3  57                push di
00000DF4  8D7EFC            lea di,[bp-0x4]
00000DF7  16                push ss
00000DF8  57                push di
00000DF9  B80400            mov ax,0x4
00000DFC  50                push ax
00000DFD  9AC007561A        call word 0x1a56:word 0x7c0
00000E02  BF040D            mov di,0xd04
00000E05  0E                push cs
00000E06  57                push di
00000E07  9A8307561A        call word 0x1a56:word 0x783
00000E0C  7520              jnz 0xe2e
00000E0E  C47E06            les di,word [bp+0x6]
00000E11  268A85E208        mov al,[es:di+0x8e2]
00000E16  2408              and al,0x8
00000E18  08C0              or al,al
00000E1A  750C              jnz 0xe28
00000E1C  C47E06            les di,word [bp+0x6]
00000E1F  06                push es
00000E20  57                push di
00000E21  B80600            mov ax,0x6
00000E24  50                push ax
00000E25  E8D8F1            call 0x0
00000E28  C646F710          mov byte [bp-0x9],0x10
00000E2C  EB3B              jmp 0xe69
00000E2E  C47E06            les di,word [bp+0x6]
00000E31  268A85E208        mov al,[es:di+0x8e2]
00000E36  2410              and al,0x10
00000E38  08C0              or al,al
00000E3A  7529              jnz 0xe65
00000E3C  C47E06            les di,word [bp+0x6]
00000E3F  268B85CE08        mov ax,[es:di+0x8ce]
00000E44  260B85D008        or ax,[es:di+0x8d0]
00000E49  750E              jnz 0xe59
00000E4B  C47E06            les di,word [bp+0x6]
00000E4E  06                push es
00000E4F  57                push di
00000E50  B80700            mov ax,0x7
00000E53  50                push ax
00000E54  E8A9F1            call 0x0
00000E57  EB0C              jmp 0xe65
00000E59  C47E06            les di,word [bp+0x6]
00000E5C  06                push es
00000E5D  57                push di
00000E5E  B80800            mov ax,0x8
00000E61  50                push ax
00000E62  E89BF1            call 0x0
00000E65  C646F700          mov byte [bp-0x9],0x0
00000E69  C446F8            les ax,word [bp-0x8]
00000E6C  8CC2              mov dx,es
00000E6E  C47E06            les di,word [bp+0x6]
00000E71  263B95D408        cmp dx,[es:di+0x8d4]
00000E76  7F09              jg 0xe81
00000E78  7C13              jl 0xe8d
00000E7A  263B85D208        cmp ax,[es:di+0x8d2]
00000E7F  760C              jna 0xe8d
00000E81  C47E06            les di,word [bp+0x6]
00000E84  06                push es
00000E85  57                push di
00000E86  B80200            mov ax,0x2
00000E89  50                push ax
00000E8A  E873F1            call 0x0
00000E8D  8DBEF7FE          lea di,[bp-0x109]
00000E91  16                push ss
00000E92  57                push di
00000E93  C47E06            les di,word [bp+0x6]
00000E96  81C7DA08          add di,0x8da
00000E9A  06                push es
00000E9B  57                push di
00000E9C  B80400            mov ax,0x4
00000E9F  50                push ax
00000EA0  9AC007561A        call word 0x1a56:word 0x7c0
00000EA5  BFFF0C            mov di,0xcff
00000EA8  0E                push cs
00000EA9  57                push di
00000EAA  9A8307561A        call word 0x1a56:word 0x783
00000EAF  7535              jnz 0xee6
00000EB1  8DBEF7FD          lea di,[bp-0x209]
00000EB5  16                push ss
00000EB6  57                push di
00000EB7  8D7EFC            lea di,[bp-0x4]
00000EBA  16                push ss
00000EBB  57                push di
00000EBC  B80400            mov ax,0x4
00000EBF  50                push ax
00000EC0  9AC007561A        call word 0x1a56:word 0x7c0
00000EC5  BF040D            mov di,0xd04
00000EC8  0E                push cs
00000EC9  57                push di
00000ECA  9A8307561A        call word 0x1a56:word 0x783
00000ECF  7415              jz 0xee6
00000ED1  C47E06            les di,word [bp+0x6]
00000ED4  268A85E208        mov al,[es:di+0x8e2]
00000ED9  30E4              xor ah,ah
00000EDB  25F7FF            and ax,0xfff7
00000EDE  C47E06            les di,word [bp+0x6]
00000EE1  268885E208        mov [es:di+0x8e2],al
00000EE6  C446F8            les ax,word [bp-0x8]
00000EE9  8CC2              mov dx,es
00000EEB  C47E06            les di,word [bp+0x6]
00000EEE  262985D208        sub [es:di+0x8d2],ax
00000EF3  261995D408        sbb [es:di+0x8d4],dx
00000EF8  C47E06            les di,word [bp+0x6]
00000EFB  81C7CE08          add di,0x8ce
00000EFF  06                push es
00000F00  57                push di
00000F01  C47E06            les di,word [bp+0x6]
00000F04  81C7D208          add di,0x8d2
00000F08  06                push es
00000F09  57                push di
00000F0A  E882F7            call 0x68f
00000F0D  C446FC            les ax,word [bp-0x4]
00000F10  8CC2              mov dx,es
00000F12  C47E06            les di,word [bp+0x6]
00000F15  268985DA08        mov [es:di+0x8da],ax
00000F1A  268995DC08        mov [es:di+0x8dc],dx
00000F1F  C446F8            les ax,word [bp-0x8]
00000F22  8CC2              mov dx,es
00000F24  C47E06            les di,word [bp+0x6]
00000F27  268985D208        mov [es:di+0x8d2],ax
00000F2C  268995D408        mov [es:di+0x8d4],dx
00000F31  C47E06            les di,word [bp+0x6]
00000F34  06                push es
00000F35  57                push di
00000F36  9AA0062518        call word 0x1825:word 0x6a0
00000F3B  C47E06            les di,word [bp+0x6]
00000F3E  268985D608        mov [es:di+0x8d6],ax
00000F43  268995D808        mov [es:di+0x8d8],dx
00000F48  8A46F7            mov al,[bp-0x9]
00000F4B  C47E06            les di,word [bp+0x6]
00000F4E  268885E208        mov [es:di+0x8e2],al
00000F53  FF76FE            push word [bp-0x2]
00000F56  FF76FC            push word [bp-0x4]
00000F59  E8E4F0            call 0x40
00000F5C  08C0              or al,al
00000F5E  7412              jz 0xf72
00000F60  C47E06            les di,word [bp+0x6]
00000F63  06                push es
00000F64  57                push di
00000F65  C47E06            les di,word [bp+0x6]
00000F68  81C7DE08          add di,0x8de
00000F6C  06                push es
00000F6D  57                push di
00000F6E  0E                push cs
00000F6F  E825FD            call 0xc97
00000F72  8DBEF7FE          lea di,[bp-0x109]
00000F76  16                push ss
00000F77  57                push di
00000F78  C47E06            les di,word [bp+0x6]
00000F7B  81C7DA08          add di,0x8da
00000F7F  06                push es
00000F80  57                push di
00000F81  B80400            mov ax,0x4
00000F84  50                push ax
00000F85  9AC007561A        call word 0x1a56:word 0x7c0
00000F8A  BFFA0C            mov di,0xcfa
00000F8D  0E                push cs
00000F8E  57                push di
00000F8F  9A8307561A        call word 0x1a56:word 0x783
00000F94  7424              jz 0xfba
00000F96  8DBEF7FD          lea di,[bp-0x209]
00000F9A  16                push ss
00000F9B  57                push di
00000F9C  C47E06            les di,word [bp+0x6]
00000F9F  81C7DA08          add di,0x8da
00000FA3  06                push es
00000FA4  57                push di
00000FA5  B80400            mov ax,0x4
00000FA8  50                push ax
00000FA9  9AC007561A        call word 0x1a56:word 0x7c0
00000FAE  BFFF0C            mov di,0xcff
00000FB1  0E                push cs
00000FB2  57                push di
00000FB3  9A8307561A        call word 0x1a56:word 0x783
00000FB8  751D              jnz 0xfd7
00000FBA  C47E06            les di,word [bp+0x6]
00000FBD  26FFB5E508        push word [es:di+0x8e5]
00000FC2  26FFB5E308        push word [es:di+0x8e3]
00000FC7  C47E06            les di,word [bp+0x6]
00000FCA  26FFB5E008        push word [es:di+0x8e0]
00000FCF  26FFB5DE08        push word [es:di+0x8de]
00000FD4  E87FF3            call 0x356
00000FD7  89EC              mov sp,bp
00000FD9  5D                pop bp
00000FDA  CA0400            retf word 0x4
00000FDD  0446              add al,0x46
00000FDF  4F                dec di
00000FE0  52                push dx
00000FE1  4D                dec bp
00000FE2  044C              add al,0x4c
00000FE4  49                dec cx
00000FE5  53                push bx
00000FE6  54                push sp
00000FE7  55                push bp
00000FE8  89E5              mov bp,sp
00000FEA  81EC0202          sub sp,0x202
00000FEE  8DBEFEFE          lea di,[bp-0x102]
00000FF2  16                push ss
00000FF3  57                push di
00000FF4  C47E06            les di,word [bp+0x6]
00000FF7  81C7DA08          add di,0x8da
00000FFB  06                push es
00000FFC  57                push di
00000FFD  B80400            mov ax,0x4
00001000  50                push ax
00001001  9AC007561A        call word 0x1a56:word 0x7c0
00001006  BFDD0F            mov di,0xfdd
00001009  0E                push cs
0000100A  57                push di
0000100B  9A8307561A        call word 0x1a56:word 0x783
00001010  7424              jz 0x1036
00001012  8DBEFEFD          lea di,[bp-0x202]
00001016  16                push ss
00001017  57                push di
00001018  C47E06            les di,word [bp+0x6]
0000101B  81C7DA08          add di,0x8da
0000101F  06                push es
00001020  57                push di
00001021  B80400            mov ax,0x4
00001024  50                push ax
00001025  9AC007561A        call word 0x1a56:word 0x7c0
0000102A  BFE20F            mov di,0xfe2
0000102D  0E                push cs
0000102E  57                push di
0000102F  9A8307561A        call word 0x1a56:word 0x783
00001034  751D              jnz 0x1053
00001036  C47E06            les di,word [bp+0x6]
00001039  26FFB5E508        push word [es:di+0x8e5]
0000103E  26FFB5E308        push word [es:di+0x8e3]
00001043  C47E06            les di,word [bp+0x6]
00001046  26FFB5E008        push word [es:di+0x8e0]
0000104B  26FFB5DE08        push word [es:di+0x8de]
00001050  E815F4            call 0x468
00001053  C47E06            les di,word [bp+0x6]
00001056  06                push es
00001057  57                push di
00001058  0E                push cs
00001059  E87400            call 0x10d0
0000105C  C47E06            les di,word [bp+0x6]
0000105F  06                push es
00001060  57                push di
00001061  9AA0062518        call word 0x1825:word 0x6a0
00001066  C47E06            les di,word [bp+0x6]
00001069  262B85D608        sub ax,[es:di+0x8d6]
0000106E  261B95D808        sbb dx,[es:di+0x8d8]
00001073  D0E8              shr al,1
00001075  7204              jc 0x107b
00001077  B000              mov al,0x0
00001079  EB02              jmp 0x107d
0000107B  B001              mov al,0x1
0000107D  8846FF            mov [bp-0x1],al
00001080  C47E06            les di,word [bp+0x6]
00001083  81C7CE08          add di,0x8ce
00001087  06                push es
00001088  57                push di
00001089  C47E06            les di,word [bp+0x6]
0000108C  81C7D208          add di,0x8d2
00001090  06                push es
00001091  57                push di
00001092  E85CF6            call 0x6f1
00001095  807EFF00          cmp byte [bp-0x1],0x0
00001099  7417              jz 0x10b2
0000109B  C47E06            les di,word [bp+0x6]
0000109E  06                push es
0000109F  57                push di
000010A0  8D46FE            lea ax,[bp-0x2]
000010A3  8CD2              mov dx,ss
000010A5  52                push dx
000010A6  50                push ax
000010A7  B80100            mov ax,0x1
000010AA  31D2              xor dx,dx
000010AC  52                push dx
000010AD  50                push ax
000010AE  0E                push cs
000010AF  E85BFB            call 0xc0d
000010B2  C47E06            les di,word [bp+0x6]
000010B5  268B85CE08        mov ax,[es:di+0x8ce]
000010BA  260B85D008        or ax,[es:di+0x8d0]
000010BF  7509              jnz 0x10ca
000010C1  C47E06            les di,word [bp+0x6]
000010C4  26C685E20800      mov byte [es:di+0x8e2],0x0
000010CA  89EC              mov sp,bp
000010CC  5D                pop bp
000010CD  CA0400            retf word 0x4
000010D0  55                push bp
000010D1  89E5              mov bp,sp
000010D3  C47E06            les di,word [bp+0x6]
000010D6  06                push es
000010D7  57                push di
000010D8  C47E06            les di,word [bp+0x6]
000010DB  06                push es
000010DC  57                push di
000010DD  9AA0062518        call word 0x1825:word 0x6a0
000010E2  C47E06            les di,word [bp+0x6]
000010E5  260385D208        add ax,[es:di+0x8d2]
000010EA  261395D408        adc dx,[es:di+0x8d4]
000010EF  52                push dx
000010F0  50                push ax
000010F1  9ACF052518        call word 0x1825:word 0x5cf
000010F6  C47E06            les di,word [bp+0x6]
000010F9  31C0              xor ax,ax
000010FB  268985D208        mov [es:di+0x8d2],ax
00001100  268985D408        mov [es:di+0x8d4],ax
00001105  89EC              mov sp,bp
00001107  5D                pop bp
00001108  CA0400            retf word 0x4
0000110B  0446              add al,0x46
0000110D  4F                dec di
0000110E  52                push dx
0000110F  4D                dec bp
00001110  044C              add al,0x4c
00001112  49                dec cx
00001113  53                push bx
00001114  54                push sp
00001115  55                push bp
00001116  89E5              mov bp,sp
00001118  81EC0902          sub sp,0x209
0000111C  C47E06            les di,word [bp+0x6]
0000111F  268B85CE08        mov ax,[es:di+0x8ce]
00001124  260B85D008        or ax,[es:di+0x8d0]
00001129  7512              jnz 0x113d
0000112B  C47E06            les di,word [bp+0x6]
0000112E  2680BDE20800      cmp byte [es:di+0x8e2],0x0
00001134  7507              jnz 0x113d
00001136  C646FF03          mov byte [bp-0x1],0x3
0000113A  E92102            jmp 0x135e
0000113D  C47E06            les di,word [bp+0x6]
00001140  268B85D208        mov ax,[es:di+0x8d2]
00001145  260B85D408        or ax,[es:di+0x8d4]
0000114A  7403              jz 0x114f
0000114C  E90701            jmp 0x1256
0000114F  8DBEF7FE          lea di,[bp-0x109]
00001153  16                push ss
00001154  57                push di
00001155  C47E06            les di,word [bp+0x6]
00001158  81C7DA08          add di,0x8da
0000115C  06                push es
0000115D  57                push di
0000115E  B80400            mov ax,0x4
00001161  50                push ax
00001162  9AC007561A        call word 0x1a56:word 0x7c0
00001167  BF0B11            mov di,0x110b
0000116A  0E                push cs
0000116B  57                push di
0000116C  9A8307561A        call word 0x1a56:word 0x783
00001171  7550              jnz 0x11c3
00001173  C47E06            les di,word [bp+0x6]
00001176  26FFB5E508        push word [es:di+0x8e5]
0000117B  26FFB5E308        push word [es:di+0x8e3]
00001180  C47E06            les di,word [bp+0x6]
00001183  26FFB5E008        push word [es:di+0x8e0]
00001188  26FFB5DE08        push word [es:di+0x8de]
0000118D  E8FEF0            call 0x28e
00001190  8946FB            mov [bp-0x5],ax
00001193  8956FD            mov [bp-0x3],dx
00001196  8B46FB            mov ax,[bp-0x5]
00001199  0B46FD            or ax,[bp-0x3]
0000119C  7425              jz 0x11c3
0000119E  C47EFB            les di,word [bp-0x5]
000011A1  268B450C          mov ax,[es:di+0xc]
000011A5  260B450E          or ax,[es:di+0xe]
000011A9  7418              jz 0x11c3
000011AB  C47EFB            les di,word [bp-0x5]
000011AE  26C4450C          les ax,word [es:di+0xc]
000011B2  8CC2              mov dx,es
000011B4  8946F7            mov [bp-0x9],ax
000011B7  8956F9            mov [bp-0x7],dx
000011BA  C47E06            les di,word [bp+0x6]
000011BD  06                push es
000011BE  57                push di
000011BF  FF9EF7FF          call word far [bp-0x9]
000011C3  8DBEF7FE          lea di,[bp-0x109]
000011C7  16                push ss
000011C8  57                push di
000011C9  C47E06            les di,word [bp+0x6]
000011CC  81C7DA08          add di,0x8da
000011D0  06                push es
000011D1  57                push di
000011D2  B80400            mov ax,0x4
000011D5  50                push ax
000011D6  9AC007561A        call word 0x1a56:word 0x7c0
000011DB  BF0B11            mov di,0x110b
000011DE  0E                push cs
000011DF  57                push di
000011E0  9A8307561A        call word 0x1a56:word 0x783
000011E5  7424              jz 0x120b
000011E7  8DBEF7FD          lea di,[bp-0x209]
000011EB  16                push ss
000011EC  57                push di
000011ED  C47E06            les di,word [bp+0x6]
000011F0  81C7DA08          add di,0x8da
000011F4  06                push es
000011F5  57                push di
000011F6  B80400            mov ax,0x4
000011F9  50                push ax
000011FA  9AC007561A        call word 0x1a56:word 0x7c0
000011FF  BF1011            mov di,0x1110
00001202  0E                push cs
00001203  57                push di
00001204  9A8307561A        call word 0x1a56:word 0x783
00001209  751D              jnz 0x1228
0000120B  C47E06            les di,word [bp+0x6]
0000120E  26FFB5E508        push word [es:di+0x8e5]
00001213  26FFB5E308        push word [es:di+0x8e3]
00001218  C47E06            les di,word [bp+0x6]
0000121B  26FFB5E008        push word [es:di+0x8e0]
00001220  26FFB5DE08        push word [es:di+0x8de]
00001225  E840F2            call 0x468
00001228  C47E06            les di,word [bp+0x6]
0000122B  06                push es
0000122C  57                push di
0000122D  0E                push cs
0000122E  E8B6FD            call 0xfe7
00001231  C47E06            les di,word [bp+0x6]
00001234  268B85CE08        mov ax,[es:di+0x8ce]
00001239  260B85D008        or ax,[es:di+0x8d0]
0000123E  750F              jnz 0x124f
00001240  C47E06            les di,word [bp+0x6]
00001243  31C0              xor ax,ax
00001245  268985D208        mov [es:di+0x8d2],ax
0000124A  268985D408        mov [es:di+0x8d4],ax
0000124F  C646FF02          mov byte [bp-0x1],0x2
00001253  E90801            jmp 0x135e
00001256  C47E06            les di,word [bp+0x6]
00001259  06                push es
0000125A  57                push di
0000125B  9AA0062518        call word 0x1825:word 0x6a0
00001260  C47E06            les di,word [bp+0x6]
00001263  263B95D808        cmp dx,[es:di+0x8d8]
00001268  750E              jnz 0x1278
0000126A  263B85D608        cmp ax,[es:di+0x8d6]
0000126F  7507              jnz 0x1278
00001271  C646FF01          mov byte [bp-0x1],0x1
00001275  E9E600            jmp 0x135e
00001278  C47E06            les di,word [bp+0x6]
0000127B  06                push es
0000127C  57                push di
0000127D  0E                push cs
0000127E  E888FA            call 0xd09
00001281  8DBEF7FE          lea di,[bp-0x109]
00001285  16                push ss
00001286  57                push di
00001287  C47E06            les di,word [bp+0x6]
0000128A  81C7DA08          add di,0x8da
0000128E  06                push es
0000128F  57                push di
00001290  B80400            mov ax,0x4
00001293  50                push ax
00001294  9AC007561A        call word 0x1a56:word 0x7c0
00001299  BF0B11            mov di,0x110b
0000129C  0E                push cs
0000129D  57                push di
0000129E  9A8307561A        call word 0x1a56:word 0x783
000012A3  7424              jz 0x12c9
000012A5  8DBEF7FD          lea di,[bp-0x209]
000012A9  16                push ss
000012AA  57                push di
000012AB  C47E06            les di,word [bp+0x6]
000012AE  81C7DA08          add di,0x8da
000012B2  06                push es
000012B3  57                push di
000012B4  B80400            mov ax,0x4
000012B7  50                push ax
000012B8  9AC007561A        call word 0x1a56:word 0x7c0
000012BD  BF1011            mov di,0x1110
000012C0  0E                push cs
000012C1  57                push di
000012C2  9A8307561A        call word 0x1a56:word 0x783
000012C7  751D              jnz 0x12e6
000012C9  C47E06            les di,word [bp+0x6]
000012CC  26FFB5E508        push word [es:di+0x8e5]
000012D1  26FFB5E308        push word [es:di+0x8e3]
000012D6  C47E06            les di,word [bp+0x6]
000012D9  26FFB5E008        push word [es:di+0x8e0]
000012DE  26FFB5DE08        push word [es:di+0x8de]
000012E3  E870F0            call 0x356
000012E6  8DBEF7FE          lea di,[bp-0x109]
000012EA  16                push ss
000012EB  57                push di
000012EC  C47E06            les di,word [bp+0x6]
000012EF  81C7DA08          add di,0x8da
000012F3  06                push es
000012F4  57                push di
000012F5  B80400            mov ax,0x4
000012F8  50                push ax
000012F9  9AC007561A        call word 0x1a56:word 0x7c0
000012FE  BF0B11            mov di,0x110b
00001301  0E                push cs
00001302  57                push di
00001303  9A8307561A        call word 0x1a56:word 0x783
00001308  7550              jnz 0x135a
0000130A  C47E06            les di,word [bp+0x6]
0000130D  26FFB5E508        push word [es:di+0x8e5]
00001312  26FFB5E308        push word [es:di+0x8e3]
00001317  C47E06            les di,word [bp+0x6]
0000131A  26FFB5E008        push word [es:di+0x8e0]
0000131F  26FFB5DE08        push word [es:di+0x8de]
00001324  E867EF            call 0x28e
00001327  8946FB            mov [bp-0x5],ax
0000132A  8956FD            mov [bp-0x3],dx
0000132D  8B46FB            mov ax,[bp-0x5]
00001330  0B46FD            or ax,[bp-0x3]
00001333  7425              jz 0x135a
00001335  C47EFB            les di,word [bp-0x5]
00001338  268B4508          mov ax,[es:di+0x8]
0000133C  260B450A          or ax,[es:di+0xa]
00001340  7418              jz 0x135a
00001342  C47EFB            les di,word [bp-0x5]
00001345  26C44508          les ax,word [es:di+0x8]
00001349  8CC2              mov dx,es
0000134B  8946F7            mov [bp-0x9],ax
0000134E  8956F9            mov [bp-0x7],dx
00001351  C47E06            les di,word [bp+0x6]
00001354  06                push es
00001355  57                push di
00001356  FF9EF7FF          call word far [bp-0x9]
0000135A  C646FF00          mov byte [bp-0x1],0x0
0000135E  8A46FF            mov al,[bp-0x1]
00001361  89EC              mov sp,bp
00001363  5D                pop bp
00001364  CA0400            retf word 0x4
00001367  0450              add al,0x50
00001369  52                push dx
0000136A  4F                dec di
0000136B  50                push ax
0000136C  55                push bp
0000136D  89E5              mov bp,sp
0000136F  81EC0E01          sub sp,0x10e
00001373  C47E06            les di,word [bp+0x6]
00001376  06                push es
00001377  57                push di
00001378  0E                push cs
00001379  E899FD            call 0x1115
0000137C  8846F6            mov [bp-0xa],al
0000137F  8A46F6            mov al,[bp-0xa]
00001382  3C00              cmp al,0x0
00001384  7543              jnz 0x13c9
00001386  C47E06            les di,word [bp+0x6]
00001389  26FFB5DC08        push word [es:di+0x8dc]
0000138E  26FFB5DA08        push word [es:di+0x8da]
00001393  E8AAEC            call 0x40
00001396  08C0              or al,al
00001398  742A              jz 0x13c4
0000139A  8DBEF2FE          lea di,[bp-0x10e]
0000139E  16                push ss
0000139F  57                push di
000013A0  C47E06            les di,word [bp+0x6]
000013A3  81C7DA08          add di,0x8da
000013A7  06                push es
000013A8  57                push di
000013A9  B80400            mov ax,0x4
000013AC  50                push ax
000013AD  9AC007561A        call word 0x1a56:word 0x7c0
000013B2  BF6713            mov di,0x1367
000013B5  0E                push cs
000013B6  57                push di
000013B7  9A8307561A        call word 0x1a56:word 0x783
000013BC  7406              jz 0x13c4
000013BE  C646FF00          mov byte [bp-0x1],0x0
000013C2  EB02              jmp 0x13c6
000013C4  EBAD              jmp 0x1373
000013C6  E90202            jmp 0x15cb
000013C9  3C01              cmp al,0x1
000013CB  7403              jz 0x13d0
000013CD  E9F501            jmp 0x15c5
000013D0  C47E06            les di,word [bp+0x6]
000013D3  26FFB5E508        push word [es:di+0x8e5]
000013D8  26FFB5E308        push word [es:di+0x8e3]
000013DD  C47E06            les di,word [bp+0x6]
000013E0  26FFB5E008        push word [es:di+0x8e0]
000013E5  26FFB5DE08        push word [es:di+0x8de]
000013EA  E8A1EE            call 0x28e
000013ED  8946FB            mov [bp-0x5],ax
000013F0  8956FD            mov [bp-0x3],dx
000013F3  8B46FB            mov ax,[bp-0x5]
000013F6  0B46FD            or ax,[bp-0x3]
000013F9  7503              jnz 0x13fe
000013FB  E9B001            jmp 0x15ae
000013FE  C47EFB            les di,word [bp-0x5]
00001401  26FF7506          push word [es:di+0x6]
00001405  26FF7504          push word [es:di+0x4]
00001409  C47E06            les di,word [bp+0x6]
0000140C  26FFB5DC08        push word [es:di+0x8dc]
00001411  26FFB5DA08        push word [es:di+0x8da]
00001416  E88CED            call 0x1a5
00001419  8946F7            mov [bp-0x9],ax
0000141C  8956F9            mov [bp-0x7],dx
0000141F  8B46F7            mov ax,[bp-0x9]
00001422  0B46F9            or ax,[bp-0x7]
00001425  7503              jnz 0x142a
00001427  E96D01            jmp 0x1597
0000142A  C47EF7            les di,word [bp-0x9]
0000142D  268A4510          mov al,[es:di+0x10]
00001431  3C00              cmp al,0x0
00001433  756C              jnz 0x14a1
00001435  C47EF7            les di,word [bp-0x9]
00001438  81C71100          add di,0x11
0000143C  06                push es
0000143D  57                push di
0000143E  9AB403C317        call word 0x17c3:word 0x3b4
00001443  C47EF7            les di,word [bp-0x9]
00001446  81C71100          add di,0x11
0000144A  06                push es
0000144B  57                push di
0000144C  C47E06            les di,word [bp+0x6]
0000144F  26FFB5D408        push word [es:di+0x8d4]
00001454  26FFB5D208        push word [es:di+0x8d2]
00001459  9A4F03C317        call word 0x17c3:word 0x34f
0000145E  C47E06            les di,word [bp+0x6]
00001461  26C485D208        les ax,word [es:di+0x8d2]
00001466  8CC2              mov dx,es
00001468  C47EF7            les di,word [bp-0x9]
0000146B  2689450C          mov [es:di+0xc],ax
0000146F  2689550E          mov [es:di+0xe],dx
00001473  C47E06            les di,word [bp+0x6]
00001476  06                push es
00001477  57                push di
00001478  C47EF7            les di,word [bp-0x9]
0000147B  26FF7513          push word [es:di+0x13]
0000147F  26FF7511          push word [es:di+0x11]
00001483  C47EF7            les di,word [bp-0x9]
00001486  26FF750E          push word [es:di+0xe]
0000148A  26FF750C          push word [es:di+0xc]
0000148E  0E                push cs
0000148F  E87BF7            call 0xc0d
00001492  C47E06            les di,word [bp+0x6]
00001495  06                push es
00001496  57                push di
00001497  0E                push cs
00001498  E84CFB            call 0xfe7
0000149B  E9D5FE            jmp 0x1373
0000149E  E9F400            jmp 0x1595
000014A1  3C03              cmp al,0x3
000014A3  7555              jnz 0x14fa
000014A5  C47EF7            les di,word [bp-0x9]
000014A8  26C4450C          les ax,word [es:di+0xc]
000014AC  8CC2              mov dx,es
000014AE  C47E06            les di,word [bp+0x6]
000014B1  263B95D408        cmp dx,[es:di+0x8d4]
000014B6  7507              jnz 0x14bf
000014B8  263B85D208        cmp ax,[es:di+0x8d2]
000014BD  740D              jz 0x14cc
000014BF  B002              mov al,0x2
000014C1  50                push ax
000014C2  B00A              mov al,0xa
000014C4  50                push ax
000014C5  9A9B009C18        call word 0x189c:word 0x9b
000014CA  EB2B              jmp 0x14f7
000014CC  C47E06            les di,word [bp+0x6]
000014CF  06                push es
000014D0  57                push di
000014D1  C47EF7            les di,word [bp-0x9]
000014D4  26FF7513          push word [es:di+0x13]
000014D8  26FF7511          push word [es:di+0x11]
000014DC  C47EF7            les di,word [bp-0x9]
000014DF  26FF750E          push word [es:di+0xe]
000014E3  26FF750C          push word [es:di+0xc]
000014E7  0E                push cs
000014E8  E822F7            call 0xc0d
000014EB  C47E06            les di,word [bp+0x6]
000014EE  06                push es
000014EF  57                push di
000014F0  0E                push cs
000014F1  E8F3FA            call 0xfe7
000014F4  E97CFE            jmp 0x1373
000014F7  E99B00            jmp 0x1595
000014FA  3C04              cmp al,0x4
000014FC  756E              jnz 0x156c
000014FE  C47EF7            les di,word [bp-0x9]
00001501  26C47D11          les di,word [es:di+0x11]
00001505  06                push es
00001506  57                push di
00001507  9AB403C317        call word 0x17c3:word 0x3b4
0000150C  C47EF7            les di,word [bp-0x9]
0000150F  26C47D11          les di,word [es:di+0x11]
00001513  06                push es
00001514  57                push di
00001515  C47E06            les di,word [bp+0x6]
00001518  26FFB5D408        push word [es:di+0x8d4]
0000151D  26FFB5D208        push word [es:di+0x8d2]
00001522  9A4F03C317        call word 0x17c3:word 0x34f
00001527  C47E06            les di,word [bp+0x6]
0000152A  26C485D208        les ax,word [es:di+0x8d2]
0000152F  8CC2              mov dx,es
00001531  C47EF7            les di,word [bp-0x9]
00001534  2689450C          mov [es:di+0xc],ax
00001538  2689550E          mov [es:di+0xe],dx
0000153C  C47E06            les di,word [bp+0x6]
0000153F  06                push es
00001540  57                push di
00001541  C47EF7            les di,word [bp-0x9]
00001544  26C47D11          les di,word [es:di+0x11]
00001548  26FF7502          push word [es:di+0x2]
0000154C  26FF35            push word [es:di]
0000154F  C47EF7            les di,word [bp-0x9]
00001552  26FF750E          push word [es:di+0xe]
00001556  26FF750C          push word [es:di+0xc]
0000155A  0E                push cs
0000155B  E8AFF6            call 0xc0d
0000155E  C47E06            les di,word [bp+0x6]
00001561  06                push es
00001562  57                push di
00001563  0E                push cs
00001564  E880FA            call 0xfe7
00001567  E909FE            jmp 0x1373
0000156A  EB29              jmp 0x1595
0000156C  3C01              cmp al,0x1
0000156E  7506              jnz 0x1576
00001570  C646FF01          mov byte [bp-0x1],0x1
00001574  EB1F              jmp 0x1595
00001576  3C02              cmp al,0x2
00001578  751B              jnz 0x1595
0000157A  C47EF7            les di,word [bp-0x9]
0000157D  26C44511          les ax,word [es:di+0x11]
00001581  8CC2              mov dx,es
00001583  8946F2            mov [bp-0xe],ax
00001586  8956F4            mov [bp-0xc],dx
00001589  C47E06            les di,word [bp+0x6]
0000158C  06                push es
0000158D  57                push di
0000158E  FF9EF2FF          call word far [bp-0xe]
00001592  E9DEFD            jmp 0x1373
00001595  EB15              jmp 0x15ac
00001597  C47E06            les di,word [bp+0x6]
0000159A  06                push es
0000159B  57                push di
0000159C  0E                push cs
0000159D  E830FB            call 0x10d0
000015A0  C47E06            les di,word [bp+0x6]
000015A3  06                push es
000015A4  57                push di
000015A5  0E                push cs
000015A6  E83EFA            call 0xfe7
000015A9  E9C7FD            jmp 0x1373
000015AC  EB15              jmp 0x15c3
000015AE  C47E06            les di,word [bp+0x6]
000015B1  06                push es
000015B2  57                push di
000015B3  0E                push cs
000015B4  E819FB            call 0x10d0
000015B7  C47E06            les di,word [bp+0x6]
000015BA  06                push es
000015BB  57                push di
000015BC  0E                push cs
000015BD  E827FA            call 0xfe7
000015C0  E9B0FD            jmp 0x1373
000015C3  EB06              jmp 0x15cb
000015C5  8A46F6            mov al,[bp-0xa]
000015C8  8846FF            mov [bp-0x1],al
000015CB  8A46FF            mov al,[bp-0x1]
000015CE  89EC              mov sp,bp
000015D0  5D                pop bp
000015D1  CA0400            retf word 0x4
000015D4  89E5              mov bp,sp
000015D6  B8FF14            mov ax,0x14ff
000015D9  8CDA              mov dx,ds
000015DB  A38C8B            mov [0x8b8c],ax
000015DE  89168E8B          mov [0x8b8e],dx
000015E2  89EC              mov sp,bp
000015E4  CB                retf
000015E5  0000              add [bx+si],al
000015E7  0000              add [bx+si],al
000015E9  0000              add [bx+si],al
000015EB  0000              add [bx+si],al
000015ED  0000              add [bx+si],al
000015EF  00                db 0x00
