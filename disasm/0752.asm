00000000  55                push bp
00000001  89E5              mov bp,sp
00000003  83EC0A            sub sp,0xa
00000006  9AB202E10B        call word 0xbe1:word 0x2b2
0000000B  50                push ax
0000000C  9A6702E10B        call word 0xbe1:word 0x267
00000011  89EC              mov sp,bp
00000013  5D                pop bp
00000014  C3                ret
00000015  55                push bp
00000016  89E5              mov bp,sp
00000018  8B4608            mov ax,[bp+0x8]
0000001B  48                dec ax
0000001C  8B7E04            mov di,[bp+0x4]
0000001F  36F76D0E          imul word [ss:di+0xe]
00000023  8B7E04            mov di,[bp+0x4]
00000026  36034512          add ax,[ss:di+0x12]
0000002A  50                push ax
0000002B  8B4606            mov ax,[bp+0x6]
0000002E  8B7E04            mov di,[bp+0x4]
00000031  36F76D0C          imul word [ss:di+0xc]
00000035  8B7E04            mov di,[bp+0x4]
00000038  36034510          add ax,[ss:di+0x10]
0000003C  50                push ax
0000003D  9A8A1B430E        call word 0xe43:word 0x1b8a
00000042  B002              mov al,0x2
00000044  50                push ax
00000045  9A3A1B430E        call word 0xe43:word 0x1b3a
0000004A  B020              mov al,0x20
0000004C  50                push ax
0000004D  9A5010430E        call word 0xe43:word 0x1050
00000052  8B4608            mov ax,[bp+0x8]
00000055  48                dec ax
00000056  8B7E04            mov di,[bp+0x4]
00000059  36F76D0E          imul word [ss:di+0xe]
0000005D  8B7E04            mov di,[bp+0x4]
00000060  36034512          add ax,[ss:di+0x12]
00000064  50                push ax
00000065  8B4606            mov ax,[bp+0x6]
00000068  8B7E04            mov di,[bp+0x4]
0000006B  36F76D0C          imul word [ss:di+0xc]
0000006F  8B7E04            mov di,[bp+0x4]
00000072  36034510          add ax,[ss:di+0x10]
00000076  50                push ax
00000077  9A8A1B430E        call word 0xe43:word 0x1b8a
0000007C  8B4608            mov ax,[bp+0x8]
0000007F  8B7E04            mov di,[bp+0x4]
00000082  368945FE          mov [ss:di-0x2],ax
00000086  8B4606            mov ax,[bp+0x6]
00000089  8B7E04            mov di,[bp+0x4]
0000008C  368945FC          mov [ss:di-0x4],ax
00000090  89EC              mov sp,bp
00000092  5D                pop bp
00000093  C20600            ret word 0x6
00000096  55                push bp
00000097  89E5              mov bp,sp
00000099  8B7E04            mov di,[bp+0x4]
0000009C  368B45FE          mov ax,[ss:di-0x2]
000000A0  48                dec ax
000000A1  8B7E04            mov di,[bp+0x4]
000000A4  36F76D0E          imul word [ss:di+0xe]
000000A8  8B7E04            mov di,[bp+0x4]
000000AB  36034512          add ax,[ss:di+0x12]
000000AF  50                push ax
000000B0  8B7E04            mov di,[bp+0x4]
000000B3  368B45FC          mov ax,[ss:di-0x4]
000000B7  8B7E04            mov di,[bp+0x4]
000000BA  36F76D0C          imul word [ss:di+0xc]
000000BE  8B7E04            mov di,[bp+0x4]
000000C1  36034510          add ax,[ss:di+0x10]
000000C5  50                push ax
000000C6  9A8A1B430E        call word 0xe43:word 0x1b8a
000000CB  B002              mov al,0x2
000000CD  50                push ax
000000CE  9A3A1B430E        call word 0xe43:word 0x1b3a
000000D3  B020              mov al,0x20
000000D5  50                push ax
000000D6  9A5010430E        call word 0xe43:word 0x1050
000000DB  FF7608            push word [bp+0x8]
000000DE  FF7606            push word [bp+0x6]
000000E1  FF7604            push word [bp+0x4]
000000E4  E82EFF            call 0x15
000000E7  89EC              mov sp,bp
000000E9  5D                pop bp
000000EA  C20600            ret word 0x6
000000ED  55                push bp
000000EE  89E5              mov bp,sp
000000F0  83EC04            sub sp,0x4
000000F3  B000              mov al,0x0
000000F5  50                push ax
000000F6  9A3A1B430E        call word 0xe43:word 0x1b3a
000000FB  8B7E04            mov di,[bp+0x4]
000000FE  368B4514          mov ax,[ss:di+0x14]
00000102  8946FC            mov [bp-0x4],ax
00000105  B80100            mov ax,0x1
00000108  3B46FC            cmp ax,[bp-0x4]
0000010B  7F49              jg 0x156
0000010D  8946FE            mov [bp-0x2],ax
00000110  EB03              jmp 0x115
00000112  FF46FE            inc word [bp-0x2]
00000115  8B7E04            mov di,[bp+0x4]
00000118  36FF7512          push word [ss:di+0x12]
0000011C  8B7E04            mov di,[bp+0x4]
0000011F  368B450C          mov ax,[ss:di+0xc]
00000123  F76EFE            imul word [bp-0x2]
00000126  8B7E04            mov di,[bp+0x4]
00000129  36034510          add ax,[ss:di+0x10]
0000012D  50                push ax
0000012E  9A8A1B430E        call word 0xe43:word 0x1b8a
00000133  8B46FE            mov ax,[bp-0x2]
00000136  B108              mov cl,0x8
00000138  D3E0              shl ax,cl
0000013A  8B7E04            mov di,[bp+0x4]
0000013D  36C47D18          les di,word [ss:di+0x18]
00000141  03F8              add di,ax
00000143  81C700FF          add di,0xff00
00000147  06                push es
00000148  57                push di
00000149  9AE010430E        call word 0xe43:word 0x10e0
0000014E  8B46FE            mov ax,[bp-0x2]
00000151  3B46FC            cmp ax,[bp-0x4]
00000154  75BC              jnz 0x112
00000156  89EC              mov sp,bp
00000158  5D                pop bp
00000159  C20200            ret word 0x2
0000015C  55                push bp
0000015D  89E5              mov bp,sp
0000015F  81EC1302          sub sp,0x213
00000163  8D7ECD            lea di,[bp-0x33]
00000166  16                push ss
00000167  57                push di
00000168  9AAF08561A        call word 0x1a56:word 0x8af
0000016D  B007              mov al,0x7
0000016F  50                push ax
00000170  9ABE08561A        call word 0x1a56:word 0x8be
00000175  B001              mov al,0x1
00000177  50                push ax
00000178  9ABE08561A        call word 0x1a56:word 0x8be
0000017D  B003              mov al,0x3
0000017F  50                push ax
00000180  9ABE08561A        call word 0x1a56:word 0x8be
00000185  B005              mov al,0x5
00000187  50                push ax
00000188  9ABE08561A        call word 0x1a56:word 0x8be
0000018D  9A1A02E10B        call word 0xbe1:word 0x21a
00000192  9A7408E10B        call word 0xbe1:word 0x874
00000197  E866FE            call 0x0
0000019A  807E0600          cmp byte [bp+0x6],0x0
0000019E  7404              jz 0x1a4
000001A0  55                push bp
000001A1  E849FF            call 0xed
000001A4  8B460A            mov ax,[bp+0xa]
000001A7  3B4616            cmp ax,[bp+0x16]
000001AA  7E06              jng 0x1b2
000001AC  8B4616            mov ax,[bp+0x16]
000001AF  89460A            mov [bp+0xa],ax
000001B2  8B4608            mov ax,[bp+0x8]
000001B5  3B4614            cmp ax,[bp+0x14]
000001B8  7E06              jng 0x1c0
000001BA  8B4614            mov ax,[bp+0x14]
000001BD  894608            mov [bp+0x8],ax
000001C0  FF760A            push word [bp+0xa]
000001C3  FF7608            push word [bp+0x8]
000001C6  55                push bp
000001C7  E84BFE            call 0x15
000001CA  C646F700          mov byte [bp-0x9],0x0
000001CE  8D7EED            lea di,[bp-0x13]
000001D1  16                push ss
000001D2  57                push di
000001D3  9AE302E10B        call word 0xbe1:word 0x2e3
000001D8  807EEF07          cmp byte [bp-0x11],0x7
000001DC  7403              jz 0x1e1
000001DE  E95204            jmp 0x633
000001E1  8B46F5            mov ax,[bp-0xb]
000001E4  8946FA            mov [bp-0x6],ax
000001E7  8B46FA            mov ax,[bp-0x6]
000001EA  3D1801            cmp ax,0x118
000001ED  755D              jnz 0x24c
000001EF  8B46FE            mov ax,[bp-0x2]
000001F2  3B4616            cmp ax,[bp+0x16]
000001F5  7D26              jnl 0x21d
000001F7  8B46FC            mov ax,[bp-0x4]
000001FA  B108              mov cl,0x8
000001FC  D3E0              shl ax,cl
000001FE  C47E18            les di,word [bp+0x18]
00000201  03F8              add di,ax
00000203  268A8500FF        mov al,[es:di-0x100]
00000208  30E4              xor ah,ah
0000020A  3B46FE            cmp ax,[bp-0x2]
0000020D  7C0E              jl 0x21d
0000020F  8B46FE            mov ax,[bp-0x2]
00000212  40                inc ax
00000213  50                push ax
00000214  FF76FC            push word [bp-0x4]
00000217  55                push bp
00000218  E87BFE            call 0x96
0000021B  EB2C              jmp 0x249
0000021D  8B46FC            mov ax,[bp-0x4]
00000220  3B4614            cmp ax,[bp+0x14]
00000223  7D0F              jnl 0x234
00000225  B80100            mov ax,0x1
00000228  50                push ax
00000229  8B46FC            mov ax,[bp-0x4]
0000022C  40                inc ax
0000022D  50                push ax
0000022E  55                push bp
0000022F  E864FE            call 0x96
00000232  EB15              jmp 0x249
00000234  BF1E8E            mov di,0x8e1e
00000237  1E                push ds
00000238  57                push di
00000239  B007              mov al,0x7
0000023B  50                push ax
0000023C  31C0              xor ax,ax
0000023E  50                push ax
0000023F  9A9917561A        call word 0x1a56:word 0x1799
00000244  9A5517561A        call word 0x1a56:word 0x1755
00000249  E9E503            jmp 0x631
0000024C  3D1401            cmp ax,0x114
0000024F  757A              jnz 0x2cb
00000251  837EFE01          cmp word [bp-0x2],0x1
00000255  7E0E              jng 0x265
00000257  8B46FE            mov ax,[bp-0x2]
0000025A  48                dec ax
0000025B  50                push ax
0000025C  FF76FC            push word [bp-0x4]
0000025F  55                push bp
00000260  E833FE            call 0x96
00000263  EB63              jmp 0x2c8
00000265  837EFC01          cmp word [bp-0x4],0x1
00000269  7E48              jng 0x2b3
0000026B  8B46FC            mov ax,[bp-0x4]
0000026E  48                dec ax
0000026F  B108              mov cl,0x8
00000271  D3E0              shl ax,cl
00000273  C47E18            les di,word [bp+0x18]
00000276  03F8              add di,ax
00000278  268A8500FF        mov al,[es:di-0x100]
0000027D  30E4              xor ah,ah
0000027F  3B4616            cmp ax,[bp+0x16]
00000282  7D21              jnl 0x2a5
00000284  8B46FC            mov ax,[bp-0x4]
00000287  48                dec ax
00000288  B108              mov cl,0x8
0000028A  D3E0              shl ax,cl
0000028C  C47E18            les di,word [bp+0x18]
0000028F  03F8              add di,ax
00000291  268A8500FF        mov al,[es:di-0x100]
00000296  30E4              xor ah,ah
00000298  40                inc ax
00000299  50                push ax
0000029A  8B46FC            mov ax,[bp-0x4]
0000029D  48                dec ax
0000029E  50                push ax
0000029F  55                push bp
000002A0  E8F3FD            call 0x96
000002A3  EB0C              jmp 0x2b1
000002A5  FF7616            push word [bp+0x16]
000002A8  8B46FC            mov ax,[bp-0x4]
000002AB  48                dec ax
000002AC  50                push ax
000002AD  55                push bp
000002AE  E8E5FD            call 0x96
000002B1  EB15              jmp 0x2c8
000002B3  BF1E8E            mov di,0x8e1e
000002B6  1E                push ds
000002B7  57                push di
000002B8  B007              mov al,0x7
000002BA  50                push ax
000002BB  31C0              xor ax,ax
000002BD  50                push ax
000002BE  9A9917561A        call word 0x1a56:word 0x1799
000002C3  9A5517561A        call word 0x1a56:word 0x1755
000002C8  E96603            jmp 0x631
000002CB  3D1A01            cmp ax,0x11a
000002CE  7568              jnz 0x338
000002D0  8B46FC            mov ax,[bp-0x4]
000002D3  3B4614            cmp ax,[bp+0x14]
000002D6  7D48              jnl 0x320
000002D8  8B46FC            mov ax,[bp-0x4]
000002DB  40                inc ax
000002DC  B108              mov cl,0x8
000002DE  D3E0              shl ax,cl
000002E0  C47E18            les di,word [bp+0x18]
000002E3  03F8              add di,ax
000002E5  268A8500FF        mov al,[es:di-0x100]
000002EA  30E4              xor ah,ah
000002EC  3B46FE            cmp ax,[bp-0x2]
000002EF  7C0E              jl 0x2ff
000002F1  FF76FE            push word [bp-0x2]
000002F4  8B46FC            mov ax,[bp-0x4]
000002F7  40                inc ax
000002F8  50                push ax
000002F9  55                push bp
000002FA  E899FD            call 0x96
000002FD  EB1F              jmp 0x31e
000002FF  8B46FC            mov ax,[bp-0x4]
00000302  40                inc ax
00000303  B108              mov cl,0x8
00000305  D3E0              shl ax,cl
00000307  C47E18            les di,word [bp+0x18]
0000030A  03F8              add di,ax
0000030C  268A8500FF        mov al,[es:di-0x100]
00000311  30E4              xor ah,ah
00000313  40                inc ax
00000314  50                push ax
00000315  8B46FC            mov ax,[bp-0x4]
00000318  40                inc ax
00000319  50                push ax
0000031A  55                push bp
0000031B  E878FD            call 0x96
0000031E  EB15              jmp 0x335
00000320  BF1E8E            mov di,0x8e1e
00000323  1E                push ds
00000324  57                push di
00000325  B007              mov al,0x7
00000327  50                push ax
00000328  31C0              xor ax,ax
0000032A  50                push ax
0000032B  9A9917561A        call word 0x1a56:word 0x1799
00000330  9A5517561A        call word 0x1a56:word 0x1755
00000335  E9F902            jmp 0x631
00000338  3D1601            cmp ax,0x116
0000033B  7566              jnz 0x3a3
0000033D  837EFC01          cmp word [bp-0x4],0x1
00000341  7E48              jng 0x38b
00000343  8B46FC            mov ax,[bp-0x4]
00000346  48                dec ax
00000347  B108              mov cl,0x8
00000349  D3E0              shl ax,cl
0000034B  C47E18            les di,word [bp+0x18]
0000034E  03F8              add di,ax
00000350  268A8500FF        mov al,[es:di-0x100]
00000355  30E4              xor ah,ah
00000357  3B46FE            cmp ax,[bp-0x2]
0000035A  7C0E              jl 0x36a
0000035C  FF76FE            push word [bp-0x2]
0000035F  8B46FC            mov ax,[bp-0x4]
00000362  48                dec ax
00000363  50                push ax
00000364  55                push bp
00000365  E82EFD            call 0x96
00000368  EB1F              jmp 0x389
0000036A  8B46FC            mov ax,[bp-0x4]
0000036D  48                dec ax
0000036E  B108              mov cl,0x8
00000370  D3E0              shl ax,cl
00000372  C47E18            les di,word [bp+0x18]
00000375  03F8              add di,ax
00000377  268A8500FF        mov al,[es:di-0x100]
0000037C  30E4              xor ah,ah
0000037E  40                inc ax
0000037F  50                push ax
00000380  8B46FC            mov ax,[bp-0x4]
00000383  48                dec ax
00000384  50                push ax
00000385  55                push bp
00000386  E80DFD            call 0x96
00000389  EB15              jmp 0x3a0
0000038B  BF1E8E            mov di,0x8e1e
0000038E  1E                push ds
0000038F  57                push di
00000390  B007              mov al,0x7
00000392  50                push ax
00000393  31C0              xor ax,ax
00000395  50                push ax
00000396  9A9917561A        call word 0x1a56:word 0x1799
0000039B  9A5517561A        call word 0x1a56:word 0x1755
000003A0  E98E02            jmp 0x631
000003A3  3D2000            cmp ax,0x20
000003A6  7D03              jnl 0x3ab
000003A8  E90401            jmp 0x4af
000003AB  3DFF00            cmp ax,0xff
000003AE  7E03              jng 0x3b3
000003B0  E9FC00            jmp 0x4af
000003B3  8B46FC            mov ax,[bp-0x4]
000003B6  B108              mov cl,0x8
000003B8  D3E0              shl ax,cl
000003BA  C47E18            les di,word [bp+0x18]
000003BD  03F8              add di,ax
000003BF  268A8500FF        mov al,[es:di-0x100]
000003C4  30E4              xor ah,ah
000003C6  3B46FE            cmp ax,[bp-0x2]
000003C9  7D4E              jnl 0x419
000003CB  8DBEEDFE          lea di,[bp-0x113]
000003CF  16                push ss
000003D0  57                push di
000003D1  8B46FC            mov ax,[bp-0x4]
000003D4  B108              mov cl,0x8
000003D6  D3E0              shl ax,cl
000003D8  C47E18            les di,word [bp+0x18]
000003DB  03F8              add di,ax
000003DD  81C700FF          add di,0xff00
000003E1  06                push es
000003E2  57                push di
000003E3  9A9306561A        call word 0x1a56:word 0x693
000003E8  8DBEEDFD          lea di,[bp-0x213]
000003EC  16                push ss
000003ED  57                push di
000003EE  8A46FA            mov al,[bp-0x6]
000003F1  50                push ax
000003F2  9AAE07561A        call word 0x1a56:word 0x7ae
000003F7  9A2007561A        call word 0x1a56:word 0x720
000003FC  8B46FC            mov ax,[bp-0x4]
000003FF  B108              mov cl,0x8
00000401  D3E0              shl ax,cl
00000403  C47E18            les di,word [bp+0x18]
00000406  03F8              add di,ax
00000408  81C700FF          add di,0xff00
0000040C  06                push es
0000040D  57                push di
0000040E  B8FF00            mov ax,0xff
00000411  50                push ax
00000412  9AAD06561A        call word 0x1a56:word 0x6ad
00000417  EB4B              jmp 0x464
00000419  8B46FC            mov ax,[bp-0x4]
0000041C  B108              mov cl,0x8
0000041E  D3E0              shl ax,cl
00000420  C47E18            les di,word [bp+0x18]
00000423  03F8              add di,ax
00000425  81C700FF          add di,0xff00
00000429  06                push es
0000042A  57                push di
0000042B  FF76FE            push word [bp-0x2]
0000042E  B80100            mov ax,0x1
00000431  50                push ax
00000432  9A2F08561A        call word 0x1a56:word 0x82f
00000437  8DBEEDFE          lea di,[bp-0x113]
0000043B  16                push ss
0000043C  57                push di
0000043D  8A46FA            mov al,[bp-0x6]
00000440  50                push ax
00000441  9AAE07561A        call word 0x1a56:word 0x7ae
00000446  8B46FC            mov ax,[bp-0x4]
00000449  B108              mov cl,0x8
0000044B  D3E0              shl ax,cl
0000044D  C47E18            les di,word [bp+0x18]
00000450  03F8              add di,ax
00000452  81C700FF          add di,0xff00
00000456  06                push es
00000457  57                push di
00000458  B8FF00            mov ax,0xff
0000045B  50                push ax
0000045C  FF76FE            push word [bp-0x2]
0000045F  9ADB07561A        call word 0x1a56:word 0x7db
00000464  B000              mov al,0x0
00000466  50                push ax
00000467  9A3A1B430E        call word 0xe43:word 0x1b3a
0000046C  8A46FA            mov al,[bp-0x6]
0000046F  50                push ax
00000470  9A5010430E        call word 0xe43:word 0x1050
00000475  8B46FE            mov ax,[bp-0x2]
00000478  3B4616            cmp ax,[bp+0x16]
0000047B  7523              jnz 0x4a0
0000047D  8B46FC            mov ax,[bp-0x4]
00000480  3B4614            cmp ax,[bp+0x14]
00000483  750C              jnz 0x491
00000485  FF76FE            push word [bp-0x2]
00000488  FF76FC            push word [bp-0x4]
0000048B  55                push bp
0000048C  E886FB            call 0x15
0000048F  EB0D              jmp 0x49e
00000491  B80100            mov ax,0x1
00000494  50                push ax
00000495  8B46FC            mov ax,[bp-0x4]
00000498  40                inc ax
00000499  50                push ax
0000049A  55                push bp
0000049B  E877FB            call 0x15
0000049E  EB0C              jmp 0x4ac
000004A0  8B46FE            mov ax,[bp-0x2]
000004A3  40                inc ax
000004A4  50                push ax
000004A5  FF76FC            push word [bp-0x4]
000004A8  55                push bp
000004A9  E869FB            call 0x15
000004AC  E98201            jmp 0x631
000004AF  3D0601            cmp ax,0x106
000004B2  7403              jz 0x4b7
000004B4  E91801            jmp 0x5cf
000004B7  837EFE01          cmp word [bp-0x2],0x1
000004BB  7F03              jg 0x4c0
000004BD  E98600            jmp 0x546
000004C0  8B46FC            mov ax,[bp-0x4]
000004C3  B108              mov cl,0x8
000004C5  D3E0              shl ax,cl
000004C7  C47E18            les di,word [bp+0x18]
000004CA  03F8              add di,ax
000004CC  81C700FF          add di,0xff00
000004D0  06                push es
000004D1  57                push di
000004D2  8B46FE            mov ax,[bp-0x2]
000004D5  48                dec ax
000004D6  50                push ax
000004D7  B80100            mov ax,0x1
000004DA  50                push ax
000004DB  9A2F08561A        call word 0x1a56:word 0x82f
000004E0  8B46FE            mov ax,[bp-0x2]
000004E3  48                dec ax
000004E4  50                push ax
000004E5  FF76FC            push word [bp-0x4]
000004E8  55                push bp
000004E9  E8AAFB            call 0x96
000004EC  B000              mov al,0x0
000004EE  50                push ax
000004EF  9A3A1B430E        call word 0xe43:word 0x1b3a
000004F4  8DBEEDFE          lea di,[bp-0x113]
000004F8  16                push ss
000004F9  57                push di
000004FA  8B46FC            mov ax,[bp-0x4]
000004FD  B108              mov cl,0x8
000004FF  D3E0              shl ax,cl
00000501  C47E18            les di,word [bp+0x18]
00000504  03F8              add di,ax
00000506  81C700FF          add di,0xff00
0000050A  06                push es
0000050B  57                push di
0000050C  FF76FE            push word [bp-0x2]
0000050F  8B46FC            mov ax,[bp-0x4]
00000512  B108              mov cl,0x8
00000514  D3E0              shl ax,cl
00000516  C47E18            les di,word [bp+0x18]
00000519  03F8              add di,ax
0000051B  268A8500FF        mov al,[es:di-0x100]
00000520  30E4              xor ah,ah
00000522  2B46FE            sub ax,[bp-0x2]
00000525  40                inc ax
00000526  50                push ax
00000527  9ADF06561A        call word 0x1a56:word 0x6df
0000052C  9AE010430E        call word 0xe43:word 0x10e0
00000531  B020              mov al,0x20
00000533  50                push ax
00000534  9A5010430E        call word 0xe43:word 0x1050
00000539  FF76FE            push word [bp-0x2]
0000053C  FF76FC            push word [bp-0x4]
0000053F  55                push bp
00000540  E8D2FA            call 0x15
00000543  E98700            jmp 0x5cd
00000546  837EFC01          cmp word [bp-0x4],0x1
0000054A  7E6C              jng 0x5b8
0000054C  8B46FC            mov ax,[bp-0x4]
0000054F  48                dec ax
00000550  B108              mov cl,0x8
00000552  D3E0              shl ax,cl
00000554  C47E18            les di,word [bp+0x18]
00000557  03F8              add di,ax
00000559  81C700FF          add di,0xff00
0000055D  06                push es
0000055E  57                push di
0000055F  8B46FC            mov ax,[bp-0x4]
00000562  48                dec ax
00000563  B108              mov cl,0x8
00000565  D3E0              shl ax,cl
00000567  C47E18            les di,word [bp+0x18]
0000056A  03F8              add di,ax
0000056C  268A8500FF        mov al,[es:di-0x100]
00000571  30E4              xor ah,ah
00000573  50                push ax
00000574  B80100            mov ax,0x1
00000577  50                push ax
00000578  9A2F08561A        call word 0x1a56:word 0x82f
0000057D  8B46FC            mov ax,[bp-0x4]
00000580  48                dec ax
00000581  B108              mov cl,0x8
00000583  D3E0              shl ax,cl
00000585  C47E18            les di,word [bp+0x18]
00000588  03F8              add di,ax
0000058A  268A8500FF        mov al,[es:di-0x100]
0000058F  30E4              xor ah,ah
00000591  40                inc ax
00000592  50                push ax
00000593  8B46FC            mov ax,[bp-0x4]
00000596  48                dec ax
00000597  50                push ax
00000598  55                push bp
00000599  E8FAFA            call 0x96
0000059C  B000              mov al,0x0
0000059E  50                push ax
0000059F  9A3A1B430E        call word 0xe43:word 0x1b3a
000005A4  B020              mov al,0x20
000005A6  50                push ax
000005A7  9A5010430E        call word 0xe43:word 0x1050
000005AC  FF76FE            push word [bp-0x2]
000005AF  FF76FC            push word [bp-0x4]
000005B2  55                push bp
000005B3  E85FFA            call 0x15
000005B6  EB15              jmp 0x5cd
000005B8  BF1E8E            mov di,0x8e1e
000005BB  1E                push ds
000005BC  57                push di
000005BD  B007              mov al,0x7
000005BF  50                push ax
000005C0  31C0              xor ax,ax
000005C2  50                push ax
000005C3  9A9917561A        call word 0x1a56:word 0x1799
000005C8  9A5517561A        call word 0x1a56:word 0x1755
000005CD  EB62              jmp 0x631
000005CF  3D0D00            cmp ax,0xd
000005D2  752D              jnz 0x601
000005D4  8B46FC            mov ax,[bp-0x4]
000005D7  3B4614            cmp ax,[bp+0x14]
000005DA  7D0F              jnl 0x5eb
000005DC  B80100            mov ax,0x1
000005DF  50                push ax
000005E0  8B46FC            mov ax,[bp-0x4]
000005E3  40                inc ax
000005E4  50                push ax
000005E5  55                push bp
000005E6  E8ADFA            call 0x96
000005E9  EB14              jmp 0x5ff
000005EB  B002              mov al,0x2
000005ED  50                push ax
000005EE  9A3A1B430E        call word 0xe43:word 0x1b3a
000005F3  B020              mov al,0x20
000005F5  50                push ax
000005F6  9A5010430E        call word 0xe43:word 0x1050
000005FB  C646F701          mov byte [bp-0x9],0x1
000005FF  EB30              jmp 0x631
00000601  3D0201            cmp ax,0x102
00000604  7516              jnz 0x61c
00000606  B002              mov al,0x2
00000608  50                push ax
00000609  9A3A1B430E        call word 0xe43:word 0x1b3a
0000060E  B020              mov al,0x20
00000610  50                push ax
00000611  9A5010430E        call word 0xe43:word 0x1050
00000616  C646F701          mov byte [bp-0x9],0x1
0000061A  EB15              jmp 0x631
0000061C  BF1E8E            mov di,0x8e1e
0000061F  1E                push ds
00000620  57                push di
00000621  B007              mov al,0x7
00000623  50                push ax
00000624  31C0              xor ax,ax
00000626  50                push ax
00000627  9A9917561A        call word 0x1a56:word 0x1799
0000062C  9A5517561A        call word 0x1a56:word 0x1755
00000631  EB14              jmp 0x647
00000633  B002              mov al,0x2
00000635  50                push ax
00000636  9A3A1B430E        call word 0xe43:word 0x1b3a
0000063B  B020              mov al,0x20
0000063D  50                push ax
0000063E  9A5010430E        call word 0xe43:word 0x1050
00000643  C646F701          mov byte [bp-0x9],0x1
00000647  807EF700          cmp byte [bp-0x9],0x0
0000064B  7503              jnz 0x650
0000064D  E97EFB            jmp 0x1ce
00000650  8D7ECD            lea di,[bp-0x33]
00000653  16                push ss
00000654  57                push di
00000655  9AAF08561A        call word 0x1a56:word 0x8af
0000065A  B001              mov al,0x1
0000065C  50                push ax
0000065D  9ABE08561A        call word 0x1a56:word 0x8be
00000662  B003              mov al,0x3
00000664  50                push ax
00000665  9ABE08561A        call word 0x1a56:word 0x8be
0000066A  B005              mov al,0x5
0000066C  50                push ax
0000066D  9ABE08561A        call word 0x1a56:word 0x8be
00000672  9A1A02E10B        call word 0xbe1:word 0x21a
00000677  9A4808E10B        call word 0xbe1:word 0x848
0000067C  89EC              mov sp,bp
0000067E  5D                pop bp
0000067F  CA1600            retf word 0x16
00000682  0000              add [bx+si],al
00000684  0000              add [bx+si],al
00000686  0000              add [bx+si],al
00000688  0000              add [bx+si],al
0000068A  0000              add [bx+si],al
0000068C  0000              add [bx+si],al
0000068E  0000              add [bx+si],al
