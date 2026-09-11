00000000  0123              add [bp+di],sp
00000002  55                push bp
00000003  89E5              mov bp,sp
00000005  81EC0505          sub sp,0x505
00000009  C47E06            les di,word [bp+0x6]
0000000C  06                push es
0000000D  57                push di
0000000E  8DBE00FF          lea di,[bp-0x100]
00000012  16                push ss
00000013  57                push di
00000014  B8FF00            mov ax,0xff
00000017  50                push ax
00000018  9AAD06561A        call word 0x1a56:word 0x6ad
0000001D  C68600FE00        mov byte [bp-0x200],0x0
00000022  BF0000            mov di,0x0
00000025  0E                push cs
00000026  57                push di
00000027  8DBE00FF          lea di,[bp-0x100]
0000002B  16                push ss
0000002C  57                push di
0000002D  9A4C07561A        call word 0x1a56:word 0x74c
00000032  8886FFFD          mov [bp-0x201],al
00000036  80BEFFFD00        cmp byte [bp-0x201],0x0
0000003B  7503              jnz 0x40
0000003D  E98C01            jmp 0x1cc
00000040  8DBEFBFA          lea di,[bp-0x505]
00000044  16                push ss
00000045  57                push di
00000046  8DBE00FE          lea di,[bp-0x200]
0000004A  16                push ss
0000004B  57                push di
0000004C  9A9306561A        call word 0x1a56:word 0x693
00000051  8DBEFBFB          lea di,[bp-0x405]
00000055  16                push ss
00000056  57                push di
00000057  8DBE00FF          lea di,[bp-0x100]
0000005B  16                push ss
0000005C  57                push di
0000005D  B80100            mov ax,0x1
00000060  50                push ax
00000061  8A86FFFD          mov al,[bp-0x201]
00000065  30E4              xor ah,ah
00000067  48                dec ax
00000068  50                push ax
00000069  9ADF06561A        call word 0x1a56:word 0x6df
0000006E  9A2007561A        call word 0x1a56:word 0x720
00000073  8DBE00FE          lea di,[bp-0x200]
00000077  16                push ss
00000078  57                push di
00000079  B8FF00            mov ax,0xff
0000007C  50                push ax
0000007D  9AAD06561A        call word 0x1a56:word 0x6ad
00000082  8DBE00FF          lea di,[bp-0x100]
00000086  16                push ss
00000087  57                push di
00000088  B80100            mov ax,0x1
0000008B  50                push ax
0000008C  8A86FFFD          mov al,[bp-0x201]
00000090  30E4              xor ah,ah
00000092  50                push ax
00000093  9A2F08561A        call word 0x1a56:word 0x82f
00000098  C686FFFC00        mov byte [bp-0x301],0x0
0000009D  80BE00FF00        cmp byte [bp-0x100],0x0
000000A2  7658              jna 0xfc
000000A4  80BE01FF30        cmp byte [bp-0xff],0x30
000000A9  7251              jc 0xfc
000000AB  80BE01FF39        cmp byte [bp-0xff],0x39
000000B0  774A              ja 0xfc
000000B2  8DBEFBFA          lea di,[bp-0x505]
000000B6  16                push ss
000000B7  57                push di
000000B8  8DBEFFFC          lea di,[bp-0x301]
000000BC  16                push ss
000000BD  57                push di
000000BE  9A9306561A        call word 0x1a56:word 0x693
000000C3  8DBEFBFB          lea di,[bp-0x405]
000000C7  16                push ss
000000C8  57                push di
000000C9  8A8601FF          mov al,[bp-0xff]
000000CD  50                push ax
000000CE  9AAE07561A        call word 0x1a56:word 0x7ae
000000D3  9A2007561A        call word 0x1a56:word 0x720
000000D8  8DBEFFFC          lea di,[bp-0x301]
000000DC  16                push ss
000000DD  57                push di
000000DE  B8FF00            mov ax,0xff
000000E1  50                push ax
000000E2  9AAD06561A        call word 0x1a56:word 0x6ad
000000E7  8DBE00FF          lea di,[bp-0x100]
000000EB  16                push ss
000000EC  57                push di
000000ED  B80100            mov ax,0x1
000000F0  50                push ax
000000F1  B80100            mov ax,0x1
000000F4  50                push ax
000000F5  9A2F08561A        call word 0x1a56:word 0x82f
000000FA  EBA1              jmp 0x9d
000000FC  80BEFFFC00        cmp byte [bp-0x301],0x0
00000101  7673              jna 0x176
00000103  8DBEFFFC          lea di,[bp-0x301]
00000107  16                push ss
00000108  57                push di
00000109  8DBEFBFC          lea di,[bp-0x305]
0000010D  16                push ss
0000010E  57                push di
0000010F  9A5213561A        call word 0x1a56:word 0x1352
00000114  8986FDFC          mov [bp-0x303],ax
00000118  83BEFDFC01        cmp word [bp-0x303],0x1
0000011D  7C2B              jl 0x14a
0000011F  8B86FDFC          mov ax,[bp-0x303]
00000123  3B063C59          cmp ax,[0x593c]
00000127  7F21              jg 0x14a
00000129  8BBEFDFC          mov di,[bp-0x303]
0000012D  D1E7              shl di,1
0000012F  8B85E636          mov ax,[di+0x36e6]
00000133  99                cwd
00000134  52                push dx
00000135  50                push ax
00000136  31C0              xor ax,ax
00000138  50                push ax
00000139  8DBEFFFC          lea di,[bp-0x301]
0000013D  16                push ss
0000013E  57                push di
0000013F  B8FF00            mov ax,0xff
00000142  50                push ax
00000143  9A0713561A        call word 0x1a56:word 0x1307
00000148  EB2A              jmp 0x174
0000014A  8DBEFBFB          lea di,[bp-0x405]
0000014E  16                push ss
0000014F  57                push di
00000150  BF0000            mov di,0x0
00000153  0E                push cs
00000154  57                push di
00000155  9A9306561A        call word 0x1a56:word 0x693
0000015A  8DBEFFFC          lea di,[bp-0x301]
0000015E  16                push ss
0000015F  57                push di
00000160  9A2007561A        call word 0x1a56:word 0x720
00000165  8DBEFFFC          lea di,[bp-0x301]
00000169  16                push ss
0000016A  57                push di
0000016B  B8FF00            mov ax,0xff
0000016E  50                push ax
0000016F  9AAD06561A        call word 0x1a56:word 0x6ad
00000174  EB14              jmp 0x18a
00000176  BF0000            mov di,0x0
00000179  0E                push cs
0000017A  57                push di
0000017B  8DBEFFFC          lea di,[bp-0x301]
0000017F  16                push ss
00000180  57                push di
00000181  B8FF00            mov ax,0xff
00000184  50                push ax
00000185  9AAD06561A        call word 0x1a56:word 0x6ad
0000018A  8DBEFBFB          lea di,[bp-0x405]
0000018E  16                push ss
0000018F  57                push di
00000190  8DBE00FE          lea di,[bp-0x200]
00000194  16                push ss
00000195  57                push di
00000196  9A9306561A        call word 0x1a56:word 0x693
0000019B  8DBEFFFC          lea di,[bp-0x301]
0000019F  16                push ss
000001A0  57                push di
000001A1  9A2007561A        call word 0x1a56:word 0x720
000001A6  8DBE00FE          lea di,[bp-0x200]
000001AA  16                push ss
000001AB  57                push di
000001AC  B8FF00            mov ax,0xff
000001AF  50                push ax
000001B0  9AAD06561A        call word 0x1a56:word 0x6ad
000001B5  BF0000            mov di,0x0
000001B8  0E                push cs
000001B9  57                push di
000001BA  8DBE00FF          lea di,[bp-0x100]
000001BE  16                push ss
000001BF  57                push di
000001C0  9A4C07561A        call word 0x1a56:word 0x74c
000001C5  8886FFFD          mov [bp-0x201],al
000001C9  E96AFE            jmp 0x36
000001CC  8DBEFBFB          lea di,[bp-0x405]
000001D0  16                push ss
000001D1  57                push di
000001D2  8DBE00FE          lea di,[bp-0x200]
000001D6  16                push ss
000001D7  57                push di
000001D8  9A9306561A        call word 0x1a56:word 0x693
000001DD  8DBE00FF          lea di,[bp-0x100]
000001E1  16                push ss
000001E2  57                push di
000001E3  9A2007561A        call word 0x1a56:word 0x720
000001E8  C47E0A            les di,word [bp+0xa]
000001EB  06                push es
000001EC  57                push di
000001ED  B8FF00            mov ax,0xff
000001F0  50                push ax
000001F1  9AAD06561A        call word 0x1a56:word 0x6ad
000001F6  89EC              mov sp,bp
000001F8  5D                pop bp
000001F9  CA0400            retf word 0x4
000001FC  55                push bp
000001FD  89E5              mov bp,sp
000001FF  83EC0E            sub sp,0xe
00000202  8B3E5E1F          mov di,[0x1f5e]
00000206  D1E7              shl di,1
00000208  D1E7              shl di,1
0000020A  C4BD661F          les di,word [di+0x1f66]
0000020E  26807D1800        cmp byte [es:di+0x18],0x0
00000213  7507              jnz 0x21c
00000215  C646FF01          mov byte [bp-0x1],0x1
00000219  E9CE00            jmp 0x2ea
0000021C  C646FE00          mov byte [bp-0x2],0x0
00000220  A14259            mov ax,[0x5942]
00000223  8946F6            mov [bp-0xa],ax
00000226  B80100            mov ax,0x1
00000229  3B46F6            cmp ax,[bp-0xa]
0000022C  7F43              jg 0x271
0000022E  8946F8            mov [bp-0x8],ax
00000231  EB03              jmp 0x236
00000233  FF46F8            inc word [bp-0x8]
00000236  8B7EF8            mov di,[bp-0x8]
00000239  D1E7              shl di,1
0000023B  8BBD381F          mov di,[di+0x1f38]
0000023F  D1E7              shl di,1
00000241  D1E7              shl di,1
00000243  C4BD3A27          les di,word [di+0x273a]
00000247  897EF2            mov [bp-0xe],di
0000024A  8C46F4            mov word [bp-0xc],es
0000024D  C47EF2            les di,word [bp-0xe]
00000250  268B4512          mov ax,[es:di+0x12]
00000254  BA5200            mov dx,0x52
00000257  F7E2              mul dx
00000259  C47EF2            les di,word [bp-0xe]
0000025C  03F8              add di,ax
0000025E  26807D1300        cmp byte [es:di+0x13],0x0
00000263  7404              jz 0x269
00000265  C646FE01          mov byte [bp-0x2],0x1
00000269  8B46F8            mov ax,[bp-0x8]
0000026C  3B46F6            cmp ax,[bp-0xa]
0000026F  75C2              jnz 0x233
00000271  807EFE00          cmp byte [bp-0x2],0x0
00000275  756D              jnz 0x2e4
00000277  8B3E5E1F          mov di,[0x1f5e]
0000027B  D1E7              shl di,1
0000027D  D1E7              shl di,1
0000027F  C4BD661F          les di,word [di+0x1f66]
00000283  26C44512          les ax,word [es:di+0x12]
00000287  8CC2              mov dx,es
00000289  8946FA            mov [bp-0x6],ax
0000028C  8956FC            mov [bp-0x4],dx
0000028F  8B46FA            mov ax,[bp-0x6]
00000292  0B46FC            or ax,[bp-0x4]
00000295  744D              jz 0x2e4
00000297  807EFE00          cmp byte [bp-0x2],0x0
0000029B  7547              jnz 0x2e4
0000029D  C47EFA            les di,word [bp-0x6]
000002A0  268B3D            mov di,[es:di]
000002A3  D1E7              shl di,1
000002A5  D1E7              shl di,1
000002A7  C4BD3A27          les di,word [di+0x273a]
000002AB  897EF4            mov [bp-0xc],di
000002AE  8C46F6            mov word [bp-0xa],es
000002B1  C47EF4            les di,word [bp-0xc]
000002B4  268B4512          mov ax,[es:di+0x12]
000002B8  BA5200            mov dx,0x52
000002BB  F7E2              mul dx
000002BD  C47EF4            les di,word [bp-0xc]
000002C0  03F8              add di,ax
000002C2  26807D1300        cmp byte [es:di+0x13],0x0
000002C7  7404              jz 0x2cd
000002C9  C646FE01          mov byte [bp-0x2],0x1
000002CD  807EFE00          cmp byte [bp-0x2],0x0
000002D1  750F              jnz 0x2e2
000002D3  C47EFA            les di,word [bp-0x6]
000002D6  26C44502          les ax,word [es:di+0x2]
000002DA  8CC2              mov dx,es
000002DC  8946FA            mov [bp-0x6],ax
000002DF  8956FC            mov [bp-0x4],dx
000002E2  EBAB              jmp 0x28f
000002E4  8A46FE            mov al,[bp-0x2]
000002E7  8846FF            mov [bp-0x1],al
000002EA  8A46FF            mov al,[bp-0x1]
000002ED  89EC              mov sp,bp
000002EF  5D                pop bp
000002F0  CB                retf
000002F1  55                push bp
000002F2  89E5              mov bp,sp
000002F4  A13019            mov ax,[0x1930]
000002F7  0B063219          or ax,[0x1932]
000002FB  741D              jz 0x31a
000002FD  BF3019            mov di,0x1930
00000300  1E                push ds
00000301  57                push di
00000302  B81D00            mov ax,0x1d
00000305  50                push ax
00000306  B83200            mov ax,0x32
00000309  50                push ax
0000030A  B001              mov al,0x1
0000030C  50                push ax
0000030D  9AAF20430E        call word 0xe43:word 0x20af
00000312  31C0              xor ax,ax
00000314  A33019            mov [0x1930],ax
00000317  A33219            mov [0x1932],ax
0000031A  A13419            mov ax,[0x1934]
0000031D  0B063619          or ax,[0x1936]
00000321  741D              jz 0x340
00000323  BF3419            mov di,0x1934
00000326  1E                push ds
00000327  57                push di
00000328  B88100            mov ax,0x81
0000032B  50                push ax
0000032C  B86400            mov ax,0x64
0000032F  50                push ax
00000330  B001              mov al,0x1
00000332  50                push ax
00000333  9AAF20430E        call word 0xe43:word 0x20af
00000338  31C0              xor ax,ax
0000033A  A33419            mov [0x1934],ax
0000033D  A33619            mov [0x1936],ax
00000340  89EC              mov sp,bp
00000342  5D                pop bp
00000343  CB                retf
00000344  55                push bp
00000345  89E5              mov bp,sp
00000347  81EC1201          sub sp,0x112
0000034B  A13019            mov ax,[0x1930]
0000034E  0B063219          or ax,[0x1932]
00000352  7412              jz 0x366
00000354  BF3019            mov di,0x1930
00000357  1E                push ds
00000358  57                push di
00000359  9A67012A15        call word 0x152a:word 0x167
0000035E  31C0              xor ax,ax
00000360  A33019            mov [0x1930],ax
00000363  A33219            mov [0x1932],ax
00000366  A13419            mov ax,[0x1934]
00000369  0B063619          or ax,[0x1936]
0000036D  7412              jz 0x381
0000036F  BF3419            mov di,0x1934
00000372  1E                push ds
00000373  57                push di
00000374  9A67012A15        call word 0x152a:word 0x167
00000379  31C0              xor ax,ax
0000037B  A33419            mov [0x1934],ax
0000037E  A33619            mov [0x1936],ax
00000381  31C0              xor ax,ax
00000383  50                push ax
00000384  B8FFFF            mov ax,0xffff
00000387  50                push ax
00000388  B000              mov al,0x0
0000038A  50                push ax
0000038B  9A5000210A        call word 0xa21:word 0x50
00000390  807E0601          cmp byte [bp+0x6],0x1
00000394  7518              jnz 0x3ae
00000396  B81600            mov ax,0x16
00000399  50                push ax
0000039A  B82C00            mov ax,0x2c
0000039D  50                push ax
0000039E  B86801            mov ax,0x168
000003A1  50                push ax
000003A2  B8C800            mov ax,0xc8
000003A5  50                push ax
000003A6  9A0124430E        call word 0xe43:word 0x2401
000003AB  E94402            jmp 0x5f2
000003AE  8B3E5E1F          mov di,[0x1f5e]
000003B2  D1E7              shl di,1
000003B4  D1E7              shl di,1
000003B6  C4BD661F          les di,word [di+0x1f66]
000003BA  897EF2            mov [bp-0xe],di
000003BD  8C46F4            mov word [bp-0xc],es
000003C0  8B3E5E1F          mov di,[0x1f5e]
000003C4  D1E7              shl di,1
000003C6  D1E7              shl di,1
000003C8  C4BD661F          les di,word [di+0x1f66]
000003CC  81C71B00          add di,0x1b
000003D0  06                push es
000003D1  57                push di
000003D2  9AEF01450D        call word 0xd45:word 0x1ef
000003D7  8B3E5E1F          mov di,[0x1f5e]
000003DB  D1E7              shl di,1
000003DD  D1E7              shl di,1
000003DF  C4BD661F          les di,word [di+0x1f66]
000003E3  26C44520          les ax,word [es:di+0x20]
000003E7  8CC2              mov dx,es
000003E9  8946F6            mov [bp-0xa],ax
000003EC  8956F8            mov [bp-0x8],dx
000003EF  C47EF2            les di,word [bp-0xe]
000003F2  268B4510          mov ax,[es:di+0x10]
000003F6  BA8D00            mov dx,0x8d
000003F9  F7E2              mul dx
000003FB  C47EF6            les di,word [bp-0xa]
000003FE  03F8              add di,ax
00000400  26837DEE00        cmp word [es:di-0x12],0x0
00000405  743B              jz 0x442
00000407  C47EF2            les di,word [bp-0xe]
0000040A  268B4510          mov ax,[es:di+0x10]
0000040E  BA8D00            mov dx,0x8d
00000411  F7E2              mul dx
00000413  C47EF6            les di,word [bp-0xa]
00000416  03F8              add di,ax
00000418  26FF75EE          push word [es:di-0x12]
0000041C  B000              mov al,0x0
0000041E  50                push ax
0000041F  9A7102E305        call word 0x5e3:word 0x271
00000424  8946FC            mov [bp-0x4],ax
00000427  8956FE            mov [bp-0x2],dx
0000042A  8D7EFC            lea di,[bp-0x4]
0000042D  16                push ss
0000042E  57                push di
0000042F  B81600            mov ax,0x16
00000432  50                push ax
00000433  B82C00            mov ax,0x2c
00000436  50                push ax
00000437  B001              mov al,0x1
00000439  50                push ax
0000043A  9AAF20430E        call word 0xe43:word 0x20af
0000043F  E98700            jmp 0x4c9
00000442  C47EF2            les di,word [bp-0xe]
00000445  268B4510          mov ax,[es:di+0x10]
00000449  BA8D00            mov dx,0x8d
0000044C  F7E2              mul dx
0000044E  C47EF6            les di,word [bp-0xa]
00000451  03F8              add di,ax
00000453  81C773FF          add di,0xff73
00000457  897EEE            mov [bp-0x12],di
0000045A  8C46F0            mov word [bp-0x10],es
0000045D  B81600            mov ax,0x16
00000460  50                push ax
00000461  B82C00            mov ax,0x2c
00000464  50                push ax
00000465  B86801            mov ax,0x168
00000468  50                push ax
00000469  B8C800            mov ax,0xc8
0000046C  50                push ax
0000046D  9A0124430E        call word 0xe43:word 0x2401
00000472  B80F00            mov ax,0xf
00000475  50                push ax
00000476  B8FFFF            mov ax,0xffff
00000479  50                push ax
0000047A  B001              mov al,0x1
0000047C  50                push ax
0000047D  9A5000210A        call word 0xa21:word 0x50
00000482  C746FA0100        mov word [bp-0x6],0x1
00000487  EB03              jmp 0x48c
00000489  FF46FA            inc word [bp-0x6]
0000048C  B82000            mov ax,0x20
0000048F  50                push ax
00000490  8B46FA            mov ax,[bp-0x6]
00000493  B90400            mov cx,0x4
00000496  D3E0              shl ax,cl
00000498  053200            add ax,0x32
0000049B  50                push ax
0000049C  9A8A1B430E        call word 0xe43:word 0x1b8a
000004A1  8DBEEEFE          lea di,[bp-0x112]
000004A5  16                push ss
000004A6  57                push di
000004A7  8B46FA            mov ax,[bp-0x6]
000004AA  BA2900            mov dx,0x29
000004AD  F7E2              mul dx
000004AF  C47EEE            les di,word [bp-0x12]
000004B2  03F8              add di,ax
000004B4  81C7D7FF          add di,0xffd7
000004B8  06                push es
000004B9  57                push di
000004BA  0E                push cs
000004BB  E844FB            call 0x2
000004BE  9AE010430E        call word 0xe43:word 0x10e0
000004C3  837EFA03          cmp word [bp-0x6],0x3
000004C7  75C0              jnz 0x489
000004C9  C47EF2            les di,word [bp-0xe]
000004CC  26837D1600        cmp word [es:di+0x16],0x0
000004D1  7503              jnz 0x4d6
000004D3  E91C01            jmp 0x5f2
000004D6  C47EF2            les di,word [bp-0xe]
000004D9  268B7D16          mov di,[es:di+0x16]
000004DD  D1E7              shl di,1
000004DF  D1E7              shl di,1
000004E1  C4BD0E2F          les di,word [di+0x2f0e]
000004E5  268B4510          mov ax,[es:di+0x10]
000004E9  3B065E1F          cmp ax,[0x1f5e]
000004ED  7403              jz 0x4f2
000004EF  E90001            jmp 0x5f2
000004F2  C47EF2            les di,word [bp-0xe]
000004F5  268B7D16          mov di,[es:di+0x16]
000004F9  D1E7              shl di,1
000004FB  D1E7              shl di,1
000004FD  C4BD0E2F          les di,word [di+0x2f0e]
00000501  897EEE            mov [bp-0x12],di
00000504  8C46F0            mov word [bp-0x10],es
00000507  C47EEE            les di,word [bp-0x12]
0000050A  268B4512          mov ax,[es:di+0x12]
0000050E  BA0C01            mov dx,0x10c
00000511  F7E2              mul dx
00000513  C47EEE            les di,word [bp-0x12]
00000516  03F8              add di,ax
00000518  2683BD08FF00      cmp word [es:di-0xf8],0x0
0000051E  7F03              jg 0x523
00000520  E9B900            jmp 0x5dc
00000523  C47EEE            les di,word [bp-0x12]
00000526  268B4512          mov ax,[es:di+0x12]
0000052A  BA0C01            mov dx,0x10c
0000052D  F7E2              mul dx
0000052F  C47EEE            les di,word [bp-0x12]
00000532  03F8              add di,ax
00000534  26FFB508FF        push word [es:di-0xf8]
00000539  B001              mov al,0x1
0000053B  50                push ax
0000053C  9A7102E305        call word 0x5e3:word 0x271
00000541  8946FC            mov [bp-0x4],ax
00000544  8956FE            mov [bp-0x2],dx
00000547  BF0208            mov di,0x802
0000054A  1E                push ds
0000054B  57                push di
0000054C  9AA008E10B        call word 0xbe1:word 0x8a0
00000551  C47EEE            les di,word [bp-0x12]
00000554  268B4512          mov ax,[es:di+0x12]
00000558  BA0C01            mov dx,0x10c
0000055B  F7E2              mul dx
0000055D  C47EEE            les di,word [bp-0x12]
00000560  03F8              add di,ax
00000562  26FFB50AFF        push word [es:di-0xf6]
00000567  9AD91A430E        call word 0xe43:word 0x1ad9
0000056C  C47EEE            les di,word [bp-0x12]
0000056F  268B4512          mov ax,[es:di+0x12]
00000573  BA0C01            mov dx,0x10c
00000576  F7E2              mul dx
00000578  C47EEE            les di,word [bp-0x12]
0000057B  03F8              add di,ax
0000057D  26FFB50AFF        push word [es:di-0xf6]
00000582  9A7F1A430E        call word 0xe43:word 0x1a7f
00000587  B001              mov al,0x1
00000589  50                push ax
0000058A  9A3A1B430E        call word 0xe43:word 0x1b3a
0000058F  8D7EFC            lea di,[bp-0x4]
00000592  16                push ss
00000593  57                push di
00000594  C47EEE            les di,word [bp-0x12]
00000597  268B4512          mov ax,[es:di+0x12]
0000059B  BA0C01            mov dx,0x10c
0000059E  F7E2              mul dx
000005A0  C47EEE            les di,word [bp-0x12]
000005A3  03F8              add di,ax
000005A5  268B850CFF        mov ax,[es:di-0xf4]
000005AA  051600            add ax,0x16
000005AD  50                push ax
000005AE  C47EEE            les di,word [bp-0x12]
000005B1  268B4512          mov ax,[es:di+0x12]
000005B5  BA0C01            mov dx,0x10c
000005B8  F7E2              mul dx
000005BA  C47EEE            les di,word [bp-0x12]
000005BD  03F8              add di,ax
000005BF  268B850EFF        mov ax,[es:di-0xf2]
000005C4  052C00            add ax,0x2c
000005C7  50                push ax
000005C8  B001              mov al,0x1
000005CA  50                push ax
000005CB  9AAF20430E        call word 0xe43:word 0x20af
000005D0  BFEA07            mov di,0x7ea
000005D3  1E                push ds
000005D4  57                push di
000005D5  9AA008E10B        call word 0xbe1:word 0x8a0
000005DA  EB16              jmp 0x5f2
000005DC  B80F00            mov ax,0xf
000005DF  50                push ax
000005E0  9A7F1A430E        call word 0xe43:word 0x1a7f
000005E5  B82000            mov ax,0x20
000005E8  50                push ax
000005E9  B87800            mov ax,0x78
000005EC  50                push ax
000005ED  9A8A1B430E        call word 0xe43:word 0x1b8a
000005F2  89EC              mov sp,bp
000005F4  5D                pop bp
000005F5  CA0200            retf word 0x2
000005F8  55                push bp
000005F9  89E5              mov bp,sp
000005FB  81EC0C01          sub sp,0x10c
000005FF  31C0              xor ax,ax
00000601  8946FC            mov [bp-0x4],ax
00000604  EB03              jmp 0x609
00000606  FF46FC            inc word [bp-0x4]
00000609  C746FE0100        mov word [bp-0x2],0x1
0000060E  EB03              jmp 0x613
00000610  FF46FE            inc word [bp-0x2]
00000613  8B46FC            mov ax,[bp-0x4]
00000616  B90300            mov cx,0x3
00000619  F7E9              imul cx
0000061B  0346FE            add ax,[bp-0x2]
0000061E  8BF8              mov di,ax
00000620  D1E7              shl di,1
00000622  8B9D3619          mov bx,[di+0x1936]
00000626  8B46FC            mov ax,[bp-0x4]
00000629  B90300            mov cx,0x3
0000062C  F7E9              imul cx
0000062E  0346FE            add ax,[bp-0x2]
00000631  8BF8              mov di,ax
00000633  D1E7              shl di,1
00000635  8B85381F          mov ax,[di+0x1f38]
00000639  3BC3              cmp ax,bx
0000063B  7539              jnz 0x676
0000063D  8B46FC            mov ax,[bp-0x4]
00000640  B90300            mov cx,0x3
00000643  F7E9              imul cx
00000645  0346FE            add ax,[bp-0x2]
00000648  8BF8              mov di,ax
0000064A  D1E7              shl di,1
0000064C  8B9D4819          mov bx,[di+0x1948]
00000650  8B46FC            mov ax,[bp-0x4]
00000653  B90300            mov cx,0x3
00000656  F7E9              imul cx
00000658  0346FE            add ax,[bp-0x2]
0000065B  8BF8              mov di,ax
0000065D  D1E7              shl di,1
0000065F  8BBD381F          mov di,[di+0x1f38]
00000663  D1E7              shl di,1
00000665  D1E7              shl di,1
00000667  C4BD3A27          les di,word [di+0x273a]
0000066B  268B4512          mov ax,[es:di+0x12]
0000066F  3BC3              cmp ax,bx
00000671  7503              jnz 0x676
00000673  E9CF01            jmp 0x845
00000676  B000              mov al,0x0
00000678  50                push ax
00000679  9A3A1B430E        call word 0xe43:word 0x1b3a
0000067E  8B46FC            mov ax,[bp-0x4]
00000681  B90300            mov cx,0x3
00000684  F7E9              imul cx
00000686  0346FE            add ax,[bp-0x2]
00000689  8BF8              mov di,ax
0000068B  D1E7              shl di,1
0000068D  D1E7              shl di,1
0000068F  81C70E59          add di,0x590e
00000693  1E                push ds
00000694  57                push di
00000695  8B46FE            mov ax,[bp-0x2]
00000698  B94200            mov cx,0x42
0000069B  F7E9              imul cx
0000069D  056601            add ax,0x166
000006A0  50                push ax
000006A1  8B46FC            mov ax,[bp-0x4]
000006A4  B93200            mov cx,0x32
000006A7  F7E9              imul cx
000006A9  055600            add ax,0x56
000006AC  50                push ax
000006AD  B000              mov al,0x0
000006AF  50                push ax
000006B0  9AAF20430E        call word 0xe43:word 0x20af
000006B5  8B46FC            mov ax,[bp-0x4]
000006B8  B90300            mov cx,0x3
000006BB  F7E9              imul cx
000006BD  0346FE            add ax,[bp-0x2]
000006C0  8BF8              mov di,ax
000006C2  D1E7              shl di,1
000006C4  83BD381F00        cmp word [di+0x1f38],0x0
000006C9  7503              jnz 0x6ce
000006CB  E97701            jmp 0x845
000006CE  8B46FC            mov ax,[bp-0x4]
000006D1  B90300            mov cx,0x3
000006D4  F7E9              imul cx
000006D6  0346FE            add ax,[bp-0x2]
000006D9  8BF8              mov di,ax
000006DB  D1E7              shl di,1
000006DD  8BBD381F          mov di,[di+0x1f38]
000006E1  D1E7              shl di,1
000006E3  D1E7              shl di,1
000006E5  C4BD3A27          les di,word [di+0x273a]
000006E9  897EF4            mov [bp-0xc],di
000006EC  8C46F6            mov word [bp-0xa],es
000006EF  B000              mov al,0x0
000006F1  50                push ax
000006F2  9A3A1B430E        call word 0xe43:word 0x1b3a
000006F7  C47EF4            les di,word [bp-0xc]
000006FA  268B4512          mov ax,[es:di+0x12]
000006FE  BA5200            mov dx,0x52
00000701  F7E2              mul dx
00000703  C47EF4            les di,word [bp-0xc]
00000706  03F8              add di,ax
00000708  26837D1000        cmp word [es:di+0x10],0x0
0000070D  7477              jz 0x786
0000070F  C47EF4            les di,word [bp-0xc]
00000712  268B4512          mov ax,[es:di+0x12]
00000716  BA5200            mov dx,0x52
00000719  F7E2              mul dx
0000071B  C47EF4            les di,word [bp-0xc]
0000071E  03F8              add di,ax
00000720  268B4510          mov ax,[es:di+0x10]
00000724  BA0900            mov dx,0x9
00000727  F7E2              mul dx
00000729  8BF8              mov di,ax
0000072B  81C77547          add di,0x4775
0000072F  1E                push ds
00000730  57                push di
00000731  9AEF01450D        call word 0xd45:word 0x1ef
00000736  C47EF4            les di,word [bp-0xc]
00000739  268B4512          mov ax,[es:di+0x12]
0000073D  BA5200            mov dx,0x52
00000740  F7E2              mul dx
00000742  C47EF4            les di,word [bp-0xc]
00000745  03F8              add di,ax
00000747  268B4510          mov ax,[es:di+0x10]
0000074B  BA0900            mov dx,0x9
0000074E  F7E2              mul dx
00000750  8BF8              mov di,ax
00000752  C4857A47          les ax,word [di+0x477a]
00000756  8CC2              mov dx,es
00000758  8946F8            mov [bp-0x8],ax
0000075B  8956FA            mov [bp-0x6],dx
0000075E  8D7EF8            lea di,[bp-0x8]
00000761  16                push ss
00000762  57                push di
00000763  8B46FE            mov ax,[bp-0x2]
00000766  B94200            mov cx,0x42
00000769  F7E9              imul cx
0000076B  056601            add ax,0x166
0000076E  50                push ax
0000076F  8B46FC            mov ax,[bp-0x4]
00000772  B93200            mov cx,0x32
00000775  F7E9              imul cx
00000777  055600            add ax,0x56
0000077A  50                push ax
0000077B  B000              mov al,0x0
0000077D  50                push ax
0000077E  9AAF20430E        call word 0xe43:word 0x20af
00000783  E9BF00            jmp 0x845
00000786  B001              mov al,0x1
00000788  50                push ax
00000789  9A3A1B430E        call word 0xe43:word 0x1b3a
0000078E  B80F00            mov ax,0xf
00000791  50                push ax
00000792  9A7F1A430E        call word 0xe43:word 0x1a7f
00000797  8B46FE            mov ax,[bp-0x2]
0000079A  B94200            mov cx,0x42
0000079D  F7E9              imul cx
0000079F  056E01            add ax,0x16e
000007A2  50                push ax
000007A3  8B46FC            mov ax,[bp-0x4]
000007A6  B93200            mov cx,0x32
000007A9  F7E9              imul cx
000007AB  056300            add ax,0x63
000007AE  50                push ax
000007AF  9A8A1B430E        call word 0xe43:word 0x1b8a
000007B4  8DBEF4FE          lea di,[bp-0x10c]
000007B8  16                push ss
000007B9  57                push di
000007BA  C47EF4            les di,word [bp-0xc]
000007BD  06                push es
000007BE  57                push di
000007BF  B80100            mov ax,0x1
000007C2  50                push ax
000007C3  B80500            mov ax,0x5
000007C6  50                push ax
000007C7  9ADF06561A        call word 0x1a56:word 0x6df
000007CC  9AE010430E        call word 0xe43:word 0x10e0
000007D1  8B46FE            mov ax,[bp-0x2]
000007D4  B94200            mov cx,0x42
000007D7  F7E9              imul cx
000007D9  056E01            add ax,0x16e
000007DC  50                push ax
000007DD  8B46FC            mov ax,[bp-0x4]
000007E0  B93200            mov cx,0x32
000007E3  F7E9              imul cx
000007E5  057000            add ax,0x70
000007E8  50                push ax
000007E9  9A8A1B430E        call word 0xe43:word 0x1b8a
000007EE  8DBEF4FE          lea di,[bp-0x10c]
000007F2  16                push ss
000007F3  57                push di
000007F4  C47EF4            les di,word [bp-0xc]
000007F7  06                push es
000007F8  57                push di
000007F9  B80600            mov ax,0x6
000007FC  50                push ax
000007FD  B80500            mov ax,0x5
00000800  50                push ax
00000801  9ADF06561A        call word 0x1a56:word 0x6df
00000806  9AE010430E        call word 0xe43:word 0x10e0
0000080B  8B46FE            mov ax,[bp-0x2]
0000080E  B94200            mov cx,0x42
00000811  F7E9              imul cx
00000813  056E01            add ax,0x16e
00000816  50                push ax
00000817  8B46FC            mov ax,[bp-0x4]
0000081A  B93200            mov cx,0x32
0000081D  F7E9              imul cx
0000081F  057D00            add ax,0x7d
00000822  50                push ax
00000823  9A8A1B430E        call word 0xe43:word 0x1b8a
00000828  8DBEF4FE          lea di,[bp-0x10c]
0000082C  16                push ss
0000082D  57                push di
0000082E  C47EF4            les di,word [bp-0xc]
00000831  06                push es
00000832  57                push di
00000833  B80B00            mov ax,0xb
00000836  50                push ax
00000837  B80500            mov ax,0x5
0000083A  50                push ax
0000083B  9ADF06561A        call word 0x1a56:word 0x6df
00000840  9AE010430E        call word 0xe43:word 0x10e0
00000845  837EFE03          cmp word [bp-0x2],0x3
00000849  7403              jz 0x84e
0000084B  E9C2FD            jmp 0x610
0000084E  837EFC02          cmp word [bp-0x4],0x2
00000852  7403              jz 0x857
00000854  E9AFFD            jmp 0x606
00000857  BF3A1F            mov di,0x1f3a
0000085A  1E                push ds
0000085B  57                push di
0000085C  BF3819            mov di,0x1938
0000085F  1E                push ds
00000860  57                push di
00000861  B81200            mov ax,0x12
00000864  50                push ax
00000865  9AC002561A        call word 0x1a56:word 0x2c0
0000086A  C746FC0100        mov word [bp-0x4],0x1
0000086F  EB03              jmp 0x874
00000871  FF46FC            inc word [bp-0x4]
00000874  8B7EFC            mov di,[bp-0x4]
00000877  D1E7              shl di,1
00000879  83BD361900        cmp word [di+0x1936],0x0
0000087E  741E              jz 0x89e
00000880  8B7EFC            mov di,[bp-0x4]
00000883  D1E7              shl di,1
00000885  8BBD3619          mov di,[di+0x1936]
00000889  D1E7              shl di,1
0000088B  D1E7              shl di,1
0000088D  C4BD3A27          les di,word [di+0x273a]
00000891  268B4512          mov ax,[es:di+0x12]
00000895  8B7EFC            mov di,[bp-0x4]
00000898  D1E7              shl di,1
0000089A  89854819          mov [di+0x1948],ax
0000089E  837EFC09          cmp word [bp-0x4],0x9
000008A2  75CD              jnz 0x871
000008A4  89EC              mov sp,bp
000008A6  5D                pop bp
000008A7  CB                retf
000008A8  55                push bp
000008A9  89E5              mov bp,sp
000008AB  803E2E1900        cmp byte [0x192e],0x0
000008B0  741D              jz 0x8cf
000008B2  0E                push cs
000008B3  E846F9            call 0x1fc
000008B6  08C0              or al,al
000008B8  7409              jz 0x8c3
000008BA  B000              mov al,0x0
000008BC  50                push ax
000008BD  0E                push cs
000008BE  E883FA            call 0x344
000008C1  EB07              jmp 0x8ca
000008C3  B001              mov al,0x1
000008C5  50                push ax
000008C6  0E                push cs
000008C7  E87AFA            call 0x344
000008CA  C6062E1900        mov byte [0x192e],0x0
000008CF  803E2F1900        cmp byte [0x192f],0x0
000008D4  7409              jz 0x8df
000008D6  0E                push cs
000008D7  E81EFD            call 0x5f8
000008DA  C6062F1900        mov byte [0x192f],0x0
000008DF  89EC              mov sp,bp
000008E1  5D                pop bp
000008E2  CB                retf
000008E3  55                push bp
000008E4  89E5              mov bp,sp
000008E6  83EC02            sub sp,0x2
000008E9  C746FE0100        mov word [bp-0x2],0x1
000008EE  EB03              jmp 0x8f3
000008F0  FF46FE            inc word [bp-0x2]
000008F3  8B7EFE            mov di,[bp-0x2]
000008F6  D1E7              shl di,1
000008F8  31C0              xor ax,ax
000008FA  89853619          mov [di+0x1936],ax
000008FE  8B7EFE            mov di,[bp-0x2]
00000901  D1E7              shl di,1
00000903  31C0              xor ax,ax
00000905  89854819          mov [di+0x1948],ax
00000909  837EFE09          cmp word [bp-0x2],0x9
0000090D  75E1              jnz 0x8f0
0000090F  C6062E1901        mov byte [0x192e],0x1
00000914  C6062F1901        mov byte [0x192f],0x1
00000919  31C0              xor ax,ax
0000091B  A33019            mov [0x1930],ax
0000091E  A33219            mov [0x1932],ax
00000921  31C0              xor ax,ax
00000923  A33419            mov [0x1934],ax
00000926  A33619            mov [0x1936],ax
00000929  0E                push cs
0000092A  E87BFF            call 0x8a8
0000092D  89EC              mov sp,bp
0000092F  5D                pop bp
00000930  CB                retf
00000931  55                push bp
00000932  89E5              mov bp,sp
00000934  81EC3401          sub sp,0x134
00000938  C47E08            les di,word [bp+0x8]
0000093B  06                push es
0000093C  57                push di
0000093D  8D7ECC            lea di,[bp-0x34]
00000940  16                push ss
00000941  57                push di
00000942  B83400            mov ax,0x34
00000945  50                push ax
00000946  9AC002561A        call word 0x1a56:word 0x2c0
0000094B  B80F00            mov ax,0xf
0000094E  50                push ax
0000094F  B80F00            mov ax,0xf
00000952  50                push ax
00000953  B000              mov al,0x0
00000955  50                push ax
00000956  9A5000210A        call word 0xa21:word 0x50
0000095B  807E0601          cmp byte [bp+0x6],0x1
0000095F  7403              jz 0x964
00000961  E9BE00            jmp 0xa22
00000964  A13019            mov ax,[0x1930]
00000967  0B063219          or ax,[0x1932]
0000096B  740A              jz 0x977
0000096D  BF3019            mov di,0x1930
00000970  1E                push ds
00000971  57                push di
00000972  9A67012A15        call word 0x152a:word 0x167
00000977  BF3019            mov di,0x1930
0000097A  1E                push ds
0000097B  57                push di
0000097C  B81D00            mov ax,0x1d
0000097F  50                push ax
00000980  B83200            mov ax,0x32
00000983  50                push ax
00000984  B8F200            mov ax,0xf2
00000987  50                push ax
00000988  B82400            mov ax,0x24
0000098B  50                push ax
0000098C  B001              mov al,0x1
0000098E  50                push ax
0000098F  9A091D430E        call word 0xe43:word 0x1d09
00000994  B83200            mov ax,0x32
00000997  50                push ax
00000998  B83200            mov ax,0x32
0000099B  50                push ax
0000099C  B8C800            mov ax,0xc8
0000099F  50                push ax
000009A0  B82400            mov ax,0x24
000009A3  50                push ax
000009A4  9A0124430E        call word 0xe43:word 0x2401
000009A9  B83200            mov ax,0x32
000009AC  50                push ax
000009AD  B84400            mov ax,0x44
000009B0  50                push ax
000009B1  9A8A1B430E        call word 0xe43:word 0x1b8a
000009B6  B81400            mov ax,0x14
000009B9  50                push ax
000009BA  9ADB25430E        call word 0xe43:word 0x25db
000009BF  B8FA00            mov ax,0xfa
000009C2  50                push ax
000009C3  B84400            mov ax,0x44
000009C6  50                push ax
000009C7  9A8A1B430E        call word 0xe43:word 0x1b8a
000009CC  B81400            mov ax,0x14
000009CF  50                push ax
000009D0  9ADB25430E        call word 0xe43:word 0x25db
000009D5  31C0              xor ax,ax
000009D7  50                push ax
000009D8  9A7F1A430E        call word 0xe43:word 0x1a7f
000009DD  B83200            mov ax,0x32
000009E0  50                push ax
000009E1  B84300            mov ax,0x43
000009E4  50                push ax
000009E5  9A8A1B430E        call word 0xe43:word 0x1b8a
000009EA  8DBECCFE          lea di,[bp-0x134]
000009EE  16                push ss
000009EF  57                push di
000009F0  8D7ECC            lea di,[bp-0x34]
000009F3  16                push ss
000009F4  57                push di
000009F5  0E                push cs
000009F6  E809F6            call 0x2
000009F9  9AE010430E        call word 0xe43:word 0x10e0
000009FE  B83200            mov ax,0x32
00000A01  50                push ax
00000A02  B85200            mov ax,0x52
00000A05  50                push ax
00000A06  9A8A1B430E        call word 0xe43:word 0x1b8a
00000A0B  8DBECCFE          lea di,[bp-0x134]
00000A0F  16                push ss
00000A10  57                push di
00000A11  8D7EE6            lea di,[bp-0x1a]
00000A14  16                push ss
00000A15  57                push di
00000A16  0E                push cs
00000A17  E8E8F5            call 0x2
00000A1A  9AE010430E        call word 0xe43:word 0x10e0
00000A1F  E9BB00            jmp 0xadd
00000A22  A13419            mov ax,[0x1934]
00000A25  0B063619          or ax,[0x1936]
00000A29  740A              jz 0xa35
00000A2B  BF3419            mov di,0x1934
00000A2E  1E                push ds
00000A2F  57                push di
00000A30  9A67012A15        call word 0x152a:word 0x167
00000A35  BF3419            mov di,0x1934
00000A38  1E                push ds
00000A39  57                push di
00000A3A  B88100            mov ax,0x81
00000A3D  50                push ax
00000A3E  B86400            mov ax,0x64
00000A41  50                push ax
00000A42  B8F200            mov ax,0xf2
00000A45  50                push ax
00000A46  B82400            mov ax,0x24
00000A49  50                push ax
00000A4A  B001              mov al,0x1
00000A4C  50                push ax
00000A4D  9A091D430E        call word 0xe43:word 0x1d09
00000A52  B89600            mov ax,0x96
00000A55  50                push ax
00000A56  B86400            mov ax,0x64
00000A59  50                push ax
00000A5A  B8C800            mov ax,0xc8
00000A5D  50                push ax
00000A5E  B82400            mov ax,0x24
00000A61  50                push ax
00000A62  9A0124430E        call word 0xe43:word 0x2401
00000A67  B89600            mov ax,0x96
00000A6A  50                push ax
00000A6B  B87600            mov ax,0x76
00000A6E  50                push ax
00000A6F  9A8A1B430E        call word 0xe43:word 0x1b8a
00000A74  B81400            mov ax,0x14
00000A77  50                push ax
00000A78  9ADB25430E        call word 0xe43:word 0x25db
00000A7D  B85E01            mov ax,0x15e
00000A80  50                push ax
00000A81  B87600            mov ax,0x76
00000A84  50                push ax
00000A85  9A8A1B430E        call word 0xe43:word 0x1b8a
00000A8A  B81400            mov ax,0x14
00000A8D  50                push ax
00000A8E  9ADB25430E        call word 0xe43:word 0x25db
00000A93  31C0              xor ax,ax
00000A95  50                push ax
00000A96  9A7F1A430E        call word 0xe43:word 0x1a7f
00000A9B  B89600            mov ax,0x96
00000A9E  50                push ax
00000A9F  B87500            mov ax,0x75
00000AA2  50                push ax
00000AA3  9A8A1B430E        call word 0xe43:word 0x1b8a
00000AA8  8DBECCFE          lea di,[bp-0x134]
00000AAC  16                push ss
00000AAD  57                push di
00000AAE  8D7ECC            lea di,[bp-0x34]
00000AB1  16                push ss
00000AB2  57                push di
00000AB3  0E                push cs
00000AB4  E84BF5            call 0x2
00000AB7  9AE010430E        call word 0xe43:word 0x10e0
00000ABC  B89600            mov ax,0x96
00000ABF  50                push ax
00000AC0  B88400            mov ax,0x84
00000AC3  50                push ax
00000AC4  9A8A1B430E        call word 0xe43:word 0x1b8a
00000AC9  8DBECCFE          lea di,[bp-0x134]
00000ACD  16                push ss
00000ACE  57                push di
00000ACF  8D7EE6            lea di,[bp-0x1a]
00000AD2  16                push ss
00000AD3  57                push di
00000AD4  0E                push cs
00000AD5  E82AF5            call 0x2
00000AD8  9AE010430E        call word 0xe43:word 0x10e0
00000ADD  89EC              mov sp,bp
00000ADF  5D                pop bp
00000AE0  CA0600            retf word 0x6
00000AE3  55                push bp
00000AE4  89E5              mov bp,sp
00000AE6  81EC8003          sub sp,0x380
00000AEA  8D469E            lea ax,[bp-0x62]
00000AED  8CD2              mov dx,ss
00000AEF  52                push dx
00000AF0  50                push ax
00000AF1  8D46BE            lea ax,[bp-0x42]
00000AF4  8CD2              mov dx,ss
00000AF6  52                push dx
00000AF7  50                push ax
00000AF8  B83C00            mov ax,0x3c
00000AFB  50                push ax
00000AFC  B80800            mov ax,0x8
00000AFF  50                push ax
00000B00  B8D800            mov ax,0xd8
00000B03  50                push ax
00000B04  B82C00            mov ax,0x2c
00000B07  50                push ax
00000B08  B80100            mov ax,0x1
00000B0B  50                push ax
00000B0C  B80F00            mov ax,0xf
00000B0F  50                push ax
00000B10  B80100            mov ax,0x1
00000B13  50                push ax
00000B14  31C0              xor ax,ax
00000B16  50                push ax
00000B17  9A6E1A210A        call word 0xa21:word 0x1a6e
00000B1C  8DBE80FC          lea di,[bp-0x380]
00000B20  16                push ss
00000B21  57                push di
00000B22  8B7E0A            mov di,[bp+0xa]
00000B25  D1E7              shl di,1
00000B27  D1E7              shl di,1
00000B29  C4BDBA3E          les di,word [di+0x3eba]
00000B2D  06                push es
00000B2E  57                push di
00000B2F  0E                push cs
00000B30  E8CFF4            call 0x2
00000B33  8DBE80FD          lea di,[bp-0x280]
00000B37  16                push ss
00000B38  57                push di
00000B39  B8FF00            mov ax,0xff
00000B3C  50                push ax
00000B3D  9AAD06561A        call word 0x1a56:word 0x6ad
00000B42  8D4682            lea ax,[bp-0x7e]
00000B45  8CD2              mov dx,ss
00000B47  52                push dx
00000B48  50                push ax
00000B49  8D4690            lea ax,[bp-0x70]
00000B4C  8CD2              mov dx,ss
00000B4E  52                push dx
00000B4F  50                push ax
00000B50  B80800            mov ax,0x8
00000B53  50                push ax
00000B54  8B46A8            mov ax,[bp-0x58]
00000B57  99                cwd
00000B58  B90200            mov cx,0x2
00000B5B  F7F9              idiv cx
00000B5D  48                dec ax
00000B5E  50                push ax
00000B5F  B80F00            mov ax,0xf
00000B62  50                push ax
00000B63  8D8680FD          lea ax,[bp-0x280]
00000B67  8CD2              mov dx,ss
00000B69  52                push dx
00000B6A  50                push ax
00000B6B  9AA71B210A        call word 0xa21:word 0x1ba7
00000B70  8DBE80FC          lea di,[bp-0x380]
00000B74  16                push ss
00000B75  57                push di
00000B76  8B7E0A            mov di,[bp+0xa]
00000B79  D1E7              shl di,1
00000B7B  D1E7              shl di,1
00000B7D  C4BDBA3E          les di,word [di+0x3eba]
00000B81  81C71A00          add di,0x1a
00000B85  06                push es
00000B86  57                push di
00000B87  0E                push cs
00000B88  E877F4            call 0x2
00000B8B  8DBE80FE          lea di,[bp-0x180]
00000B8F  16                push ss
00000B90  57                push di
00000B91  B8FF00            mov ax,0xff
00000B94  50                push ax
00000B95  9AAD06561A        call word 0x1a56:word 0x6ad
00000B9A  8D4690            lea ax,[bp-0x70]
00000B9D  8CD2              mov dx,ss
00000B9F  52                push dx
00000BA0  50                push ax
00000BA1  31C0              xor ax,ax
00000BA3  31D2              xor dx,dx
00000BA5  52                push dx
00000BA6  50                push ax
00000BA7  B80800            mov ax,0x8
00000BAA  50                push ax
00000BAB  8B46A8            mov ax,[bp-0x58]
00000BAE  99                cwd
00000BAF  B90200            mov cx,0x2
00000BB2  F7F9              idiv cx
00000BB4  050F00            add ax,0xf
00000BB7  50                push ax
00000BB8  B80F00            mov ax,0xf
00000BBB  50                push ax
00000BBC  8D8680FE          lea ax,[bp-0x180]
00000BC0  8CD2              mov dx,ss
00000BC2  52                push dx
00000BC3  50                push ax
00000BC4  9AA71B210A        call word 0xa21:word 0x1ba7
00000BC9  8D4682            lea ax,[bp-0x7e]
00000BCC  8CD2              mov dx,ss
00000BCE  8946B0            mov [bp-0x50],ax
00000BD1  8956B2            mov [bp-0x4e],dx
00000BD4  8D46DE            lea ax,[bp-0x22]
00000BD7  8CD2              mov dx,ss
00000BD9  52                push dx
00000BDA  50                push ax
00000BDB  FF7608            push word [bp+0x8]
00000BDE  FF7606            push word [bp+0x6]
00000BE1  B81E01            mov ax,0x11e
00000BE4  50                push ax
00000BE5  B83C00            mov ax,0x3c
00000BE8  50                push ax
00000BE9  B80100            mov ax,0x1
00000BEC  50                push ax
00000BED  B80F00            mov ax,0xf
00000BF0  50                push ax
00000BF1  B80900            mov ax,0x9
00000BF4  50                push ax
00000BF5  8D469E            lea ax,[bp-0x62]
00000BF8  8CD2              mov dx,ss
00000BFA  52                push dx
00000BFB  50                push ax
00000BFC  9A091B210A        call word 0xa21:word 0x1b09
00000C01  BF271C            mov di,0x1c27
00000C04  1E                push ds
00000C05  57                push di
00000C06  8D7EBE            lea di,[bp-0x42]
00000C09  16                push ss
00000C0A  57                push di
00000C0B  B82000            mov ax,0x20
00000C0E  50                push ax
00000C0F  9AC002561A        call word 0x1a56:word 0x2c0
00000C14  8B46E4            mov ax,[bp-0x1c]
00000C17  2D2100            sub ax,0x21
00000C1A  8946C4            mov [bp-0x3c],ax
00000C1D  B8D81B            mov ax,0x1bd8
00000C20  8CDA              mov dx,ds
00000C22  52                push dx
00000C23  50                push ax
00000C24  8D46DE            lea ax,[bp-0x22]
00000C27  8CD2              mov dx,ss
00000C29  52                push dx
00000C2A  50                push ax
00000C2B  9A3916210A        call word 0xa21:word 0x1639
00000C30  894680            mov [bp-0x80],ax
00000C33  89EC              mov sp,bp
00000C35  5D                pop bp
00000C36  CA0600            retf word 0x6
00000C39  55                push bp
00000C3A  89E5              mov bp,sp
00000C3C  81EC9604          sub sp,0x496
00000C40  8D469E            lea ax,[bp-0x62]
00000C43  8CD2              mov dx,ss
00000C45  52                push dx
00000C46  50                push ax
00000C47  8D46BE            lea ax,[bp-0x42]
00000C4A  8CD2              mov dx,ss
00000C4C  52                push dx
00000C4D  50                push ax
00000C4E  B83C00            mov ax,0x3c
00000C51  50                push ax
00000C52  B80800            mov ax,0x8
00000C55  50                push ax
00000C56  B85001            mov ax,0x150
00000C59  50                push ax
00000C5A  B83800            mov ax,0x38
00000C5D  50                push ax
00000C5E  B80100            mov ax,0x1
00000C61  50                push ax
00000C62  B80F00            mov ax,0xf
00000C65  50                push ax
00000C66  B80100            mov ax,0x1
00000C69  50                push ax
00000C6A  31C0              xor ax,ax
00000C6C  50                push ax
00000C6D  9A6E1A210A        call word 0xa21:word 0x1a6e
00000C72  8B3E5E1F          mov di,[0x1f5e]
00000C76  D1E7              shl di,1
00000C78  D1E7              shl di,1
00000C7A  C4BD661F          les di,word [di+0x1f66]
00000C7E  81C71B00          add di,0x1b
00000C82  06                push es
00000C83  57                push di
00000C84  9AEF01450D        call word 0xd45:word 0x1ef
00000C89  8B3E5E1F          mov di,[0x1f5e]
00000C8D  D1E7              shl di,1
00000C8F  D1E7              shl di,1
00000C91  C4BD661F          les di,word [di+0x1f66]
00000C95  26C44520          les ax,word [es:di+0x20]
00000C99  8CC2              mov dx,es
00000C9B  89866EFC          mov [bp-0x392],ax
00000C9F  899670FC          mov [bp-0x390],dx
00000CA3  8B3E5E1F          mov di,[0x1f5e]
00000CA7  D1E7              shl di,1
00000CA9  D1E7              shl di,1
00000CAB  C4BD661F          les di,word [di+0x1f66]
00000CAF  268B4510          mov ax,[es:di+0x10]
00000CB3  BA8D00            mov dx,0x8d
00000CB6  F7E2              mul dx
00000CB8  C4BE6EFC          les di,word [bp-0x392]
00000CBC  03F8              add di,ax
00000CBE  81C773FF          add di,0xff73
00000CC2  89BE6AFC          mov [bp-0x396],di
00000CC6  8C866CFC          mov word [bp-0x394],es
00000CCA  8DBE6AFB          lea di,[bp-0x496]
00000CCE  16                push ss
00000CCF  57                push di
00000CD0  C4BE6AFC          les di,word [bp-0x396]
00000CD4  06                push es
00000CD5  57                push di
00000CD6  0E                push cs
00000CD7  E828F3            call 0x2
00000CDA  8DBE72FC          lea di,[bp-0x38e]
00000CDE  16                push ss
00000CDF  57                push di
00000CE0  B8FF00            mov ax,0xff
00000CE3  50                push ax
00000CE4  9AAD06561A        call word 0x1a56:word 0x6ad
00000CE9  8D8674FF          lea ax,[bp-0x8c]
00000CED  8CD2              mov dx,ss
00000CEF  52                push dx
00000CF0  50                push ax
00000CF1  8D4682            lea ax,[bp-0x7e]
00000CF4  8CD2              mov dx,ss
00000CF6  52                push dx
00000CF7  50                push ax
00000CF8  B80800            mov ax,0x8
00000CFB  50                push ax
00000CFC  8B46A8            mov ax,[bp-0x58]
00000CFF  99                cwd
00000D00  B90200            mov cx,0x2
00000D03  F7F9              idiv cx
00000D05  2D0900            sub ax,0x9
00000D08  50                push ax
00000D09  B80F00            mov ax,0xf
00000D0C  50                push ax
00000D0D  8D8672FC          lea ax,[bp-0x38e]
00000D11  8CD2              mov dx,ss
00000D13  52                push dx
00000D14  50                push ax
00000D15  9AA71B210A        call word 0xa21:word 0x1ba7
00000D1A  8DBE6AFB          lea di,[bp-0x496]
00000D1E  16                push ss
00000D1F  57                push di
00000D20  C4BE6AFC          les di,word [bp-0x396]
00000D24  81C72900          add di,0x29
00000D28  06                push es
00000D29  57                push di
00000D2A  0E                push cs
00000D2B  E8D4F2            call 0x2
00000D2E  8DBE72FD          lea di,[bp-0x28e]
00000D32  16                push ss
00000D33  57                push di
00000D34  B8FF00            mov ax,0xff
00000D37  50                push ax
00000D38  9AAD06561A        call word 0x1a56:word 0x6ad
00000D3D  8D4682            lea ax,[bp-0x7e]
00000D40  8CD2              mov dx,ss
00000D42  52                push dx
00000D43  50                push ax
00000D44  8D4690            lea ax,[bp-0x70]
00000D47  8CD2              mov dx,ss
00000D49  52                push dx
00000D4A  50                push ax
00000D4B  B80800            mov ax,0x8
00000D4E  50                push ax
00000D4F  8B46A8            mov ax,[bp-0x58]
00000D52  99                cwd
00000D53  B90200            mov cx,0x2
00000D56  F7F9              idiv cx
00000D58  050700            add ax,0x7
00000D5B  50                push ax
00000D5C  B80F00            mov ax,0xf
00000D5F  50                push ax
00000D60  8D8672FD          lea ax,[bp-0x28e]
00000D64  8CD2              mov dx,ss
00000D66  52                push dx
00000D67  50                push ax
00000D68  9AA71B210A        call word 0xa21:word 0x1ba7
00000D6D  8DBE6AFB          lea di,[bp-0x496]
00000D71  16                push ss
00000D72  57                push di
00000D73  C4BE6AFC          les di,word [bp-0x396]
00000D77  81C75200          add di,0x52
00000D7B  06                push es
00000D7C  57                push di
00000D7D  0E                push cs
00000D7E  E881F2            call 0x2
00000D81  8DBE72FE          lea di,[bp-0x18e]
00000D85  16                push ss
00000D86  57                push di
00000D87  B8FF00            mov ax,0xff
00000D8A  50                push ax
00000D8B  9AAD06561A        call word 0x1a56:word 0x6ad
00000D90  8D4690            lea ax,[bp-0x70]
00000D93  8CD2              mov dx,ss
00000D95  52                push dx
00000D96  50                push ax
00000D97  31C0              xor ax,ax
00000D99  31D2              xor dx,dx
00000D9B  52                push dx
00000D9C  50                push ax
00000D9D  B80800            mov ax,0x8
00000DA0  50                push ax
00000DA1  8B46A8            mov ax,[bp-0x58]
00000DA4  99                cwd
00000DA5  B90200            mov cx,0x2
00000DA8  F7F9              idiv cx
00000DAA  051700            add ax,0x17
00000DAD  50                push ax
00000DAE  B80F00            mov ax,0xf
00000DB1  50                push ax
00000DB2  8D8672FE          lea ax,[bp-0x18e]
00000DB6  8CD2              mov dx,ss
00000DB8  52                push dx
00000DB9  50                push ax
00000DBA  9AA71B210A        call word 0xa21:word 0x1ba7
00000DBF  8D8674FF          lea ax,[bp-0x8c]
00000DC3  8CD2              mov dx,ss
00000DC5  8946B0            mov [bp-0x50],ax
00000DC8  8956B2            mov [bp-0x4e],dx
00000DCB  8D46DE            lea ax,[bp-0x22]
00000DCE  8CD2              mov dx,ss
00000DD0  52                push dx
00000DD1  50                push ax
00000DD2  B8AA00            mov ax,0xaa
00000DD5  50                push ax
00000DD6  B88C00            mov ax,0x8c
00000DD9  50                push ax
00000DDA  B89601            mov ax,0x196
00000DDD  50                push ax
00000DDE  B84800            mov ax,0x48
00000DE1  50                push ax
00000DE2  B80100            mov ax,0x1
00000DE5  50                push ax
00000DE6  B80F00            mov ax,0xf
00000DE9  50                push ax
00000DEA  B80900            mov ax,0x9
00000DED  50                push ax
00000DEE  8D469E            lea ax,[bp-0x62]
00000DF1  8CD2              mov dx,ss
00000DF3  52                push dx
00000DF4  50                push ax
00000DF5  9A091B210A        call word 0xa21:word 0x1b09
00000DFA  BF271C            mov di,0x1c27
00000DFD  1E                push ds
00000DFE  57                push di
00000DFF  8D7EBE            lea di,[bp-0x42]
00000E02  16                push ss
00000E03  57                push di
00000E04  B82000            mov ax,0x20
00000E07  50                push ax
00000E08  9AC002561A        call word 0x1a56:word 0x2c0
00000E0D  8B46E4            mov ax,[bp-0x1c]
00000E10  2D2100            sub ax,0x21
00000E13  8946C4            mov [bp-0x3c],ax
00000E16  B8D81B            mov ax,0x1bd8
00000E19  8CDA              mov dx,ds
00000E1B  52                push dx
00000E1C  50                push ax
00000E1D  8D46DE            lea ax,[bp-0x22]
00000E20  8CD2              mov dx,ss
00000E22  52                push dx
00000E23  50                push ax
00000E24  9A3916210A        call word 0xa21:word 0x1639
00000E29  898672FF          mov [bp-0x8e],ax
00000E2D  89EC              mov sp,bp
00000E2F  5D                pop bp
00000E30  CB                retf
00000E31  55                push bp
00000E32  89E5              mov bp,sp
00000E34  81ECF804          sub sp,0x4f8
00000E38  8D867EFF          lea ax,[bp-0x82]
00000E3C  8CD2              mov dx,ss
00000E3E  52                push dx
00000E3F  50                push ax
00000E40  8D469E            lea ax,[bp-0x62]
00000E43  8CD2              mov dx,ss
00000E45  52                push dx
00000E46  50                push ax
00000E47  B80A00            mov ax,0xa
00000E4A  50                push ax
00000E4B  B80800            mov ax,0x8
00000E4E  50                push ax
00000E4F  B83800            mov ax,0x38
00000E52  50                push ax
00000E53  B82800            mov ax,0x28
00000E56  50                push ax
00000E57  B80100            mov ax,0x1
00000E5A  50                push ax
00000E5B  B80F00            mov ax,0xf
00000E5E  50                push ax
00000E5F  B80900            mov ax,0x9
00000E62  50                push ax
00000E63  31C0              xor ax,ax
00000E65  50                push ax
00000E66  9A6E1A210A        call word 0xa21:word 0x1a6e
00000E6B  8B7E06            mov di,[bp+0x6]
00000E6E  D1E7              shl di,1
00000E70  D1E7              shl di,1
00000E72  C4BD3A27          les di,word [di+0x273a]
00000E76  268B4512          mov ax,[es:di+0x12]
00000E7A  BA5200            mov dx,0x52
00000E7D  F7E2              mul dx
00000E7F  8B7E06            mov di,[bp+0x6]
00000E82  D1E7              shl di,1
00000E84  D1E7              shl di,1
00000E86  C4BD3A27          les di,word [di+0x273a]
00000E8A  03F8              add di,ax
00000E8C  268B4510          mov ax,[es:di+0x10]
00000E90  89860EFF          mov [bp-0xf2],ax
00000E94  83BE0EFF00        cmp word [bp-0xf2],0x0
00000E99  7E4A              jng 0xee5
00000E9B  31C0              xor ax,ax
00000E9D  898610FF          mov [bp-0xf0],ax
00000EA1  31C0              xor ax,ax
00000EA3  898612FF          mov [bp-0xee],ax
00000EA7  8B860EFF          mov ax,[bp-0xf2]
00000EAB  BA0900            mov dx,0x9
00000EAE  F7E2              mul dx
00000EB0  8BF8              mov di,ax
00000EB2  81C77547          add di,0x4775
00000EB6  1E                push ds
00000EB7  57                push di
00000EB8  9AEF01450D        call word 0xd45:word 0x1ef
00000EBD  8B860EFF          mov ax,[bp-0xf2]
00000EC1  BA0900            mov dx,0x9
00000EC4  F7E2              mul dx
00000EC6  8BF8              mov di,ax
00000EC8  C4857A47          les ax,word [di+0x477a]
00000ECC  8CC2              mov dx,es
00000ECE  898614FF          mov [bp-0xec],ax
00000ED2  899616FF          mov [bp-0xea],dx
00000ED6  8D8610FF          lea ax,[bp-0xf0]
00000EDA  8CD2              mov dx,ss
00000EDC  894694            mov [bp-0x6c],ax
00000EDF  895696            mov [bp-0x6a],dx
00000EE2  E91201            jmp 0xff7
00000EE5  8DBE0CFB          lea di,[bp-0x4f4]
00000EE9  16                push ss
00000EEA  57                push di
00000EEB  8B7E06            mov di,[bp+0x6]
00000EEE  D1E7              shl di,1
00000EF0  D1E7              shl di,1
00000EF2  C4BD3A27          les di,word [di+0x273a]
00000EF6  06                push es
00000EF7  57                push di
00000EF8  B80100            mov ax,0x1
00000EFB  50                push ax
00000EFC  B80500            mov ax,0x5
00000EFF  50                push ax
00000F00  9ADF06561A        call word 0x1a56:word 0x6df
00000F05  8DBE18FF          lea di,[bp-0xe8]
00000F09  16                push ss
00000F0A  57                push di
00000F0B  B80500            mov ax,0x5
00000F0E  50                push ax
00000F0F  9AAD06561A        call word 0x1a56:word 0x6ad
00000F14  8DBE0CFB          lea di,[bp-0x4f4]
00000F18  16                push ss
00000F19  57                push di
00000F1A  8B7E06            mov di,[bp+0x6]
00000F1D  D1E7              shl di,1
00000F1F  D1E7              shl di,1
00000F21  C4BD3A27          les di,word [di+0x273a]
00000F25  06                push es
00000F26  57                push di
00000F27  B80600            mov ax,0x6
00000F2A  50                push ax
00000F2B  B80500            mov ax,0x5
00000F2E  50                push ax
00000F2F  9ADF06561A        call word 0x1a56:word 0x6df
00000F34  8DBE1EFF          lea di,[bp-0xe2]
00000F38  16                push ss
00000F39  57                push di
00000F3A  B80500            mov ax,0x5
00000F3D  50                push ax
00000F3E  9AAD06561A        call word 0x1a56:word 0x6ad
00000F43  8DBE0CFB          lea di,[bp-0x4f4]
00000F47  16                push ss
00000F48  57                push di
00000F49  8B7E06            mov di,[bp+0x6]
00000F4C  D1E7              shl di,1
00000F4E  D1E7              shl di,1
00000F50  C4BD3A27          les di,word [di+0x273a]
00000F54  06                push es
00000F55  57                push di
00000F56  B80B00            mov ax,0xb
00000F59  50                push ax
00000F5A  B80500            mov ax,0x5
00000F5D  50                push ax
00000F5E  9ADF06561A        call word 0x1a56:word 0x6df
00000F63  8DBE24FF          lea di,[bp-0xdc]
00000F67  16                push ss
00000F68  57                push di
00000F69  B80500            mov ax,0x5
00000F6C  50                push ax
00000F6D  9AAD06561A        call word 0x1a56:word 0x6ad
00000F72  8D862AFF          lea ax,[bp-0xd6]
00000F76  8CD2              mov dx,ss
00000F78  52                push dx
00000F79  50                push ax
00000F7A  8D8638FF          lea ax,[bp-0xc8]
00000F7E  8CD2              mov dx,ss
00000F80  52                push dx
00000F81  50                push ax
00000F82  B80800            mov ax,0x8
00000F85  50                push ax
00000F86  B80D00            mov ax,0xd
00000F89  50                push ax
00000F8A  B80F00            mov ax,0xf
00000F8D  50                push ax
00000F8E  8D8618FF          lea ax,[bp-0xe8]
00000F92  8CD2              mov dx,ss
00000F94  52                push dx
00000F95  50                push ax
00000F96  9AA71B210A        call word 0xa21:word 0x1ba7
00000F9B  8D8638FF          lea ax,[bp-0xc8]
00000F9F  8CD2              mov dx,ss
00000FA1  52                push dx
00000FA2  50                push ax
00000FA3  8D8646FF          lea ax,[bp-0xba]
00000FA7  8CD2              mov dx,ss
00000FA9  52                push dx
00000FAA  50                push ax
00000FAB  B80800            mov ax,0x8
00000FAE  50                push ax
00000FAF  B81A00            mov ax,0x1a
00000FB2  50                push ax
00000FB3  B80F00            mov ax,0xf
00000FB6  50                push ax
00000FB7  8D861EFF          lea ax,[bp-0xe2]
00000FBB  8CD2              mov dx,ss
00000FBD  52                push dx
00000FBE  50                push ax
00000FBF  9AA71B210A        call word 0xa21:word 0x1ba7
00000FC4  8D8646FF          lea ax,[bp-0xba]
00000FC8  8CD2              mov dx,ss
00000FCA  52                push dx
00000FCB  50                push ax
00000FCC  31C0              xor ax,ax
00000FCE  31D2              xor dx,dx
00000FD0  52                push dx
00000FD1  50                push ax
00000FD2  B80800            mov ax,0x8
00000FD5  50                push ax
00000FD6  B82700            mov ax,0x27
00000FD9  50                push ax
00000FDA  B80F00            mov ax,0xf
00000FDD  50                push ax
00000FDE  8D8624FF          lea ax,[bp-0xdc]
00000FE2  8CD2              mov dx,ss
00000FE4  52                push dx
00000FE5  50                push ax
00000FE6  9AA71B210A        call word 0xa21:word 0x1ba7
00000FEB  8D862AFF          lea ax,[bp-0xd6]
00000FEF  8CD2              mov dx,ss
00000FF1  894690            mov [bp-0x70],ax
00000FF4  895692            mov [bp-0x6e],dx
00000FF7  8D469E            lea ax,[bp-0x62]
00000FFA  8CD2              mov dx,ss
00000FFC  52                push dx
00000FFD  50                push ax
00000FFE  8D46BE            lea ax,[bp-0x42]
00001001  8CD2              mov dx,ss
00001003  52                push dx
00001004  50                push ax
00001005  B85100            mov ax,0x51
00001008  50                push ax
00001009  B80800            mov ax,0x8
0000100C  50                push ax
0000100D  B8D800            mov ax,0xd8
00001010  50                push ax
00001011  B84600            mov ax,0x46
00001014  50                push ax
00001015  B80100            mov ax,0x1
00001018  50                push ax
00001019  B80F00            mov ax,0xf
0000101C  50                push ax
0000101D  B80100            mov ax,0x1
00001020  50                push ax
00001021  31C0              xor ax,ax
00001023  50                push ax
00001024  9A6E1A210A        call word 0xa21:word 0x1a6e
00001029  8B7E06            mov di,[bp+0x6]
0000102C  D1E7              shl di,1
0000102E  D1E7              shl di,1
00001030  C4BD3A27          les di,word [di+0x273a]
00001034  268B4512          mov ax,[es:di+0x12]
00001038  BA5200            mov dx,0x52
0000103B  F7E2              mul dx
0000103D  8B7E06            mov di,[bp+0x6]
00001040  D1E7              shl di,1
00001042  D1E7              shl di,1
00001044  C4BD3A27          les di,word [di+0x273a]
00001048  03F8              add di,ax
0000104A  81C7C2FF          add di,0xffc2
0000104E  89BE08FC          mov [bp-0x3f8],di
00001052  8C860AFC          mov word [bp-0x3f6],es
00001056  8DBE08FB          lea di,[bp-0x4f8]
0000105A  16                push ss
0000105B  57                push di
0000105C  C4BE08FC          les di,word [bp-0x3f8]
00001060  06                push es
00001061  57                push di
00001062  0E                push cs
00001063  E89CEF            call 0x2
00001066  8DBE0CFC          lea di,[bp-0x3f4]
0000106A  16                push ss
0000106B  57                push di
0000106C  B8FF00            mov ax,0xff
0000106F  50                push ax
00001070  9AAD06561A        call word 0x1a56:word 0x6ad
00001075  8D8654FF          lea ax,[bp-0xac]
00001079  8CD2              mov dx,ss
0000107B  52                push dx
0000107C  50                push ax
0000107D  8D8662FF          lea ax,[bp-0x9e]
00001081  8CD2              mov dx,ss
00001083  52                push dx
00001084  50                push ax
00001085  B80800            mov ax,0x8
00001088  50                push ax
00001089  8B46A8            mov ax,[bp-0x58]
0000108C  99                cwd
0000108D  B90200            mov cx,0x2
00001090  F7F9              idiv cx
00001092  2D0900            sub ax,0x9
00001095  50                push ax
00001096  B80F00            mov ax,0xf
00001099  50                push ax
0000109A  8D860CFC          lea ax,[bp-0x3f4]
0000109E  8CD2              mov dx,ss
000010A0  52                push dx
000010A1  50                push ax
000010A2  9AA71B210A        call word 0xa21:word 0x1ba7
000010A7  8DBE08FB          lea di,[bp-0x4f8]
000010AB  16                push ss
000010AC  57                push di
000010AD  C4BE08FC          les di,word [bp-0x3f8]
000010B1  81C71A00          add di,0x1a
000010B5  06                push es
000010B6  57                push di
000010B7  0E                push cs
000010B8  E847EF            call 0x2
000010BB  8DBE0CFD          lea di,[bp-0x2f4]
000010BF  16                push ss
000010C0  57                push di
000010C1  B8FF00            mov ax,0xff
000010C4  50                push ax
000010C5  9AAD06561A        call word 0x1a56:word 0x6ad
000010CA  8D8662FF          lea ax,[bp-0x9e]
000010CE  8CD2              mov dx,ss
000010D0  52                push dx
000010D1  50                push ax
000010D2  8D8670FF          lea ax,[bp-0x90]
000010D6  8CD2              mov dx,ss
000010D8  52                push dx
000010D9  50                push ax
000010DA  B80800            mov ax,0x8
000010DD  50                push ax
000010DE  8B46A8            mov ax,[bp-0x58]
000010E1  99                cwd
000010E2  B90200            mov cx,0x2
000010E5  F7F9              idiv cx
000010E7  050700            add ax,0x7
000010EA  50                push ax
000010EB  B80F00            mov ax,0xf
000010EE  50                push ax
000010EF  8D860CFD          lea ax,[bp-0x2f4]
000010F3  8CD2              mov dx,ss
000010F5  52                push dx
000010F6  50                push ax
000010F7  9AA71B210A        call word 0xa21:word 0x1ba7
000010FC  8DBE08FB          lea di,[bp-0x4f8]
00001100  16                push ss
00001101  57                push di
00001102  C4BE08FC          les di,word [bp-0x3f8]
00001106  81C73400          add di,0x34
0000110A  06                push es
0000110B  57                push di
0000110C  0E                push cs
0000110D  E8F2EE            call 0x2
00001110  8DBE0CFE          lea di,[bp-0x1f4]
00001114  16                push ss
00001115  57                push di
00001116  B8FF00            mov ax,0xff
00001119  50                push ax
0000111A  9AAD06561A        call word 0x1a56:word 0x6ad
0000111F  8D8670FF          lea ax,[bp-0x90]
00001123  8CD2              mov dx,ss
00001125  52                push dx
00001126  50                push ax
00001127  31C0              xor ax,ax
00001129  31D2              xor dx,dx
0000112B  52                push dx
0000112C  50                push ax
0000112D  B80800            mov ax,0x8
00001130  50                push ax
00001131  8B46A8            mov ax,[bp-0x58]
00001134  99                cwd
00001135  B90200            mov cx,0x2
00001138  F7F9              idiv cx
0000113A  051700            add ax,0x17
0000113D  50                push ax
0000113E  B80F00            mov ax,0xf
00001141  50                push ax
00001142  8D860CFE          lea ax,[bp-0x1f4]
00001146  8CD2              mov dx,ss
00001148  52                push dx
00001149  50                push ax
0000114A  9AA71B210A        call word 0xa21:word 0x1ba7
0000114F  8D8654FF          lea ax,[bp-0xac]
00001153  8CD2              mov dx,ss
00001155  8946B0            mov [bp-0x50],ax
00001158  8956B2            mov [bp-0x4e],dx
0000115B  8D46DE            lea ax,[bp-0x22]
0000115E  8CD2              mov dx,ss
00001160  52                push dx
00001161  50                push ax
00001162  B8FA00            mov ax,0xfa
00001165  50                push ax
00001166  B88C00            mov ax,0x8c
00001169  50                push ax
0000116A  B83301            mov ax,0x133
0000116D  50                push ax
0000116E  B85600            mov ax,0x56
00001171  50                push ax
00001172  B80100            mov ax,0x1
00001175  50                push ax
00001176  B80F00            mov ax,0xf
00001179  50                push ax
0000117A  B80900            mov ax,0x9
0000117D  50                push ax
0000117E  8D867EFF          lea ax,[bp-0x82]
00001182  8CD2              mov dx,ss
00001184  52                push dx
00001185  50                push ax
00001186  9A091B210A        call word 0xa21:word 0x1b09
0000118B  BF271C            mov di,0x1c27
0000118E  1E                push ds
0000118F  57                push di
00001190  8D7EBE            lea di,[bp-0x42]
00001193  16                push ss
00001194  57                push di
00001195  B82000            mov ax,0x20
00001198  50                push ax
00001199  9AC002561A        call word 0x1a56:word 0x2c0
0000119E  8B46E4            mov ax,[bp-0x1c]
000011A1  2D2100            sub ax,0x21
000011A4  8946C4            mov [bp-0x3c],ax
000011A7  B8D81B            mov ax,0x1bd8
000011AA  8CDA              mov dx,ds
000011AC  52                push dx
000011AD  50                push ax
000011AE  8D46DE            lea ax,[bp-0x22]
000011B1  8CD2              mov dx,ss
000011B3  52                push dx
000011B4  50                push ax
000011B5  9A3916210A        call word 0xa21:word 0x1639
000011BA  89860CFF          mov [bp-0xf4],ax
000011BE  89EC              mov sp,bp
000011C0  5D                pop bp
000011C1  CA0200            retf word 0x2
000011C4  55                push bp
000011C5  89E5              mov bp,sp
000011C7  81EC9204          sub sp,0x492
000011CB  8D469E            lea ax,[bp-0x62]
000011CE  8CD2              mov dx,ss
000011D0  52                push dx
000011D1  50                push ax
000011D2  8D46BE            lea ax,[bp-0x42]
000011D5  8CD2              mov dx,ss
000011D7  52                push dx
000011D8  50                push ax
000011D9  B83C00            mov ax,0x3c
000011DC  50                push ax
000011DD  B80800            mov ax,0x8
000011E0  50                push ax
000011E1  B8D800            mov ax,0xd8
000011E4  50                push ax
000011E5  B83800            mov ax,0x38
000011E8  50                push ax
000011E9  B80100            mov ax,0x1
000011EC  50                push ax
000011ED  B80F00            mov ax,0xf
000011F0  50                push ax
000011F1  B80100            mov ax,0x1
000011F4  50                push ax
000011F5  31C0              xor ax,ax
000011F7  50                push ax
000011F8  9A6E1A210A        call word 0xa21:word 0x1a6e
000011FD  8B3E5E1F          mov di,[0x1f5e]
00001201  D1E7              shl di,1
00001203  D1E7              shl di,1
00001205  C4BD661F          les di,word [di+0x1f66]
00001209  89BE6EFC          mov [bp-0x392],di
0000120D  8C8670FC          mov word [bp-0x390],es
00001211  8DBE6EFB          lea di,[bp-0x492]
00001215  16                push ss
00001216  57                push di
00001217  C4BE6EFC          les di,word [bp-0x392]
0000121B  268B7D19          mov di,[es:di+0x19]
0000121F  D1E7              shl di,1
00001221  D1E7              shl di,1
00001223  C4BD8A46          les di,word [di+0x468a]
00001227  06                push es
00001228  57                push di
00001229  0E                push cs
0000122A  E8D5ED            call 0x2
0000122D  8DBE72FC          lea di,[bp-0x38e]
00001231  16                push ss
00001232  57                push di
00001233  B8FF00            mov ax,0xff
00001236  50                push ax
00001237  9AAD06561A        call word 0x1a56:word 0x6ad
0000123C  8D8674FF          lea ax,[bp-0x8c]
00001240  8CD2              mov dx,ss
00001242  52                push dx
00001243  50                push ax
00001244  8D4682            lea ax,[bp-0x7e]
00001247  8CD2              mov dx,ss
00001249  52                push dx
0000124A  50                push ax
0000124B  B80800            mov ax,0x8
0000124E  50                push ax
0000124F  8B46A8            mov ax,[bp-0x58]
00001252  99                cwd
00001253  B90200            mov cx,0x2
00001256  F7F9              idiv cx
00001258  2D0900            sub ax,0x9
0000125B  50                push ax
0000125C  B80F00            mov ax,0xf
0000125F  50                push ax
00001260  8D8672FC          lea ax,[bp-0x38e]
00001264  8CD2              mov dx,ss
00001266  52                push dx
00001267  50                push ax
00001268  9AA71B210A        call word 0xa21:word 0x1ba7
0000126D  8DBE6EFB          lea di,[bp-0x492]
00001271  16                push ss
00001272  57                push di
00001273  C4BE6EFC          les di,word [bp-0x392]
00001277  268B7D19          mov di,[es:di+0x19]
0000127B  D1E7              shl di,1
0000127D  D1E7              shl di,1
0000127F  C4BD8A46          les di,word [di+0x468a]
00001283  81C71A00          add di,0x1a
00001287  06                push es
00001288  57                push di
00001289  0E                push cs
0000128A  E875ED            call 0x2
0000128D  8DBE72FD          lea di,[bp-0x28e]
00001291  16                push ss
00001292  57                push di
00001293  B8FF00            mov ax,0xff
00001296  50                push ax
00001297  9AAD06561A        call word 0x1a56:word 0x6ad
0000129C  8D4682            lea ax,[bp-0x7e]
0000129F  8CD2              mov dx,ss
000012A1  52                push dx
000012A2  50                push ax
000012A3  8D4690            lea ax,[bp-0x70]
000012A6  8CD2              mov dx,ss
000012A8  52                push dx
000012A9  50                push ax
000012AA  B80800            mov ax,0x8
000012AD  50                push ax
000012AE  8B46A8            mov ax,[bp-0x58]
000012B1  99                cwd
000012B2  B90200            mov cx,0x2
000012B5  F7F9              idiv cx
000012B7  050700            add ax,0x7
000012BA  50                push ax
000012BB  B80F00            mov ax,0xf
000012BE  50                push ax
000012BF  8D8672FD          lea ax,[bp-0x28e]
000012C3  8CD2              mov dx,ss
000012C5  52                push dx
000012C6  50                push ax
000012C7  9AA71B210A        call word 0xa21:word 0x1ba7
000012CC  8DBE6EFB          lea di,[bp-0x492]
000012D0  16                push ss
000012D1  57                push di
000012D2  C4BE6EFC          les di,word [bp-0x392]
000012D6  268B7D19          mov di,[es:di+0x19]
000012DA  D1E7              shl di,1
000012DC  D1E7              shl di,1
000012DE  C4BD8A46          les di,word [di+0x468a]
000012E2  81C73400          add di,0x34
000012E6  06                push es
000012E7  57                push di
000012E8  0E                push cs
000012E9  E816ED            call 0x2
000012EC  8DBE72FE          lea di,[bp-0x18e]
000012F0  16                push ss
000012F1  57                push di
000012F2  B8FF00            mov ax,0xff
000012F5  50                push ax
000012F6  9AAD06561A        call word 0x1a56:word 0x6ad
000012FB  8D4690            lea ax,[bp-0x70]
000012FE  8CD2              mov dx,ss
00001300  52                push dx
00001301  50                push ax
00001302  31C0              xor ax,ax
00001304  31D2              xor dx,dx
00001306  52                push dx
00001307  50                push ax
00001308  B80800            mov ax,0x8
0000130B  50                push ax
0000130C  8B46A8            mov ax,[bp-0x58]
0000130F  99                cwd
00001310  B90200            mov cx,0x2
00001313  F7F9              idiv cx
00001315  051700            add ax,0x17
00001318  50                push ax
00001319  B80F00            mov ax,0xf
0000131C  50                push ax
0000131D  8D8672FE          lea ax,[bp-0x18e]
00001321  8CD2              mov dx,ss
00001323  52                push dx
00001324  50                push ax
00001325  9AA71B210A        call word 0xa21:word 0x1ba7
0000132A  8D8674FF          lea ax,[bp-0x8c]
0000132E  8CD2              mov dx,ss
00001330  8946B0            mov [bp-0x50],ax
00001333  8956B2            mov [bp-0x4e],dx
00001336  8D46DE            lea ax,[bp-0x22]
00001339  8CD2              mov dx,ss
0000133B  52                push dx
0000133C  50                push ax
0000133D  B8FA00            mov ax,0xfa
00001340  50                push ax
00001341  B8A000            mov ax,0xa0
00001344  50                push ax
00001345  B81E01            mov ax,0x11e
00001348  50                push ax
00001349  B84800            mov ax,0x48
0000134C  50                push ax
0000134D  B80100            mov ax,0x1
00001350  50                push ax
00001351  B80F00            mov ax,0xf
00001354  50                push ax
00001355  B80900            mov ax,0x9
00001358  50                push ax
00001359  8D469E            lea ax,[bp-0x62]
0000135C  8CD2              mov dx,ss
0000135E  52                push dx
0000135F  50                push ax
00001360  9A091B210A        call word 0xa21:word 0x1b09
00001365  BF271C            mov di,0x1c27
00001368  1E                push ds
00001369  57                push di
0000136A  8D7EBE            lea di,[bp-0x42]
0000136D  16                push ss
0000136E  57                push di
0000136F  B82000            mov ax,0x20
00001372  50                push ax
00001373  9AC002561A        call word 0x1a56:word 0x2c0
00001378  8B46E4            mov ax,[bp-0x1c]
0000137B  2D2100            sub ax,0x21
0000137E  8946C4            mov [bp-0x3c],ax
00001381  B8D81B            mov ax,0x1bd8
00001384  8CDA              mov dx,ds
00001386  52                push dx
00001387  50                push ax
00001388  8D46DE            lea ax,[bp-0x22]
0000138B  8CD2              mov dx,ss
0000138D  52                push dx
0000138E  50                push ax
0000138F  9A3916210A        call word 0xa21:word 0x1639
00001394  898672FF          mov [bp-0x8e],ax
00001398  89EC              mov sp,bp
0000139A  5D                pop bp
0000139B  CB                retf
0000139C  134475            adc ax,[si+0x75]
0000139F  206861            and [bx+si+0x61],ch
000013A2  7220              jc 0x13c4
000013A4  7469              jz 0x140f
000013A6  6C                insb
000013A7  206E86            and [bp-0x7a],ch
000013AA  206686            and [bp-0x7a],ah
000013AD  7474              jz 0x1423
000013AF  2009              and [bx+di],cl
000013B1  706F              jo 0x1422
000013B3  656E              gs outsb
000013B5  67206176          and [ecx+0x76],ah
000013B9  2008              and [bx+si],cl
000013BB  206D75            and [di+0x75],ch
000013BE  6C                insb
000013BF  6967652E55        imul sp,[bx+0x65],0x552e
000013C4  89E5              mov bp,sp
000013C6  81ECB901          sub sp,0x1b9
000013CA  8D469E            lea ax,[bp-0x62]
000013CD  8CD2              mov dx,ss
000013CF  52                push dx
000013D0  50                push ax
000013D1  8D46BE            lea ax,[bp-0x42]
000013D4  8CD2              mov dx,ss
000013D6  52                push dx
000013D7  50                push ax
000013D8  B83C00            mov ax,0x3c
000013DB  50                push ax
000013DC  B80800            mov ax,0x8
000013DF  50                push ax
000013E0  B8D800            mov ax,0xd8
000013E3  50                push ax
000013E4  B82C00            mov ax,0x2c
000013E7  50                push ax
000013E8  B80100            mov ax,0x1
000013EB  50                push ax
000013EC  B80F00            mov ax,0xf
000013EF  50                push ax
000013F0  B80100            mov ax,0x1
000013F3  50                push ax
000013F4  31C0              xor ax,ax
000013F6  50                push ax
000013F7  9A6E1A210A        call word 0xa21:word 0x1a6e
000013FC  A1621F            mov ax,[0x1f62]
000013FF  99                cwd
00001400  52                push dx
00001401  50                push ax
00001402  31C0              xor ax,ax
00001404  50                push ax
00001405  8DBE47FF          lea di,[bp-0xb9]
00001409  16                push ss
0000140A  57                push di
0000140B  B80400            mov ax,0x4
0000140E  50                push ax
0000140F  9A0713561A        call word 0x1a56:word 0x1307
00001414  8DBE47FE          lea di,[bp-0x1b9]
00001418  16                push ss
00001419  57                push di
0000141A  BF9C13            mov di,0x139c
0000141D  0E                push cs
0000141E  57                push di
0000141F  9A9306561A        call word 0x1a56:word 0x693
00001424  8DBE47FF          lea di,[bp-0xb9]
00001428  16                push ss
00001429  57                push di
0000142A  9A2007561A        call word 0x1a56:word 0x720
0000142F  8DBE4CFF          lea di,[bp-0xb4]
00001433  16                push ss
00001434  57                push di
00001435  B81900            mov ax,0x19
00001438  50                push ax
00001439  9AAD06561A        call word 0x1a56:word 0x6ad
0000143E  A1641F            mov ax,[0x1f64]
00001441  99                cwd
00001442  52                push dx
00001443  50                push ax
00001444  31C0              xor ax,ax
00001446  50                push ax
00001447  8DBE47FF          lea di,[bp-0xb9]
0000144B  16                push ss
0000144C  57                push di
0000144D  B80400            mov ax,0x4
00001450  50                push ax
00001451  9A0713561A        call word 0x1a56:word 0x1307
00001456  8DBE47FE          lea di,[bp-0x1b9]
0000145A  16                push ss
0000145B  57                push di
0000145C  BFB013            mov di,0x13b0
0000145F  0E                push cs
00001460  57                push di
00001461  9A9306561A        call word 0x1a56:word 0x693
00001466  8DBE47FF          lea di,[bp-0xb9]
0000146A  16                push ss
0000146B  57                push di
0000146C  9A2007561A        call word 0x1a56:word 0x720
00001471  BFBA13            mov di,0x13ba
00001474  0E                push cs
00001475  57                push di
00001476  9A2007561A        call word 0x1a56:word 0x720
0000147B  8DBE66FF          lea di,[bp-0x9a]
0000147F  16                push ss
00001480  57                push di
00001481  B81900            mov ax,0x19
00001484  50                push ax
00001485  9AAD06561A        call word 0x1a56:word 0x6ad
0000148A  8D4682            lea ax,[bp-0x7e]
0000148D  8CD2              mov dx,ss
0000148F  52                push dx
00001490  50                push ax
00001491  8D4690            lea ax,[bp-0x70]
00001494  8CD2              mov dx,ss
00001496  52                push dx
00001497  50                push ax
00001498  B80800            mov ax,0x8
0000149B  50                push ax
0000149C  8B46A8            mov ax,[bp-0x58]
0000149F  99                cwd
000014A0  B90200            mov cx,0x2
000014A3  F7F9              idiv cx
000014A5  48                dec ax
000014A6  50                push ax
000014A7  B80F00            mov ax,0xf
000014AA  50                push ax
000014AB  8D864CFF          lea ax,[bp-0xb4]
000014AF  8CD2              mov dx,ss
000014B1  52                push dx
000014B2  50                push ax
000014B3  9AA71B210A        call word 0xa21:word 0x1ba7
000014B8  8D4690            lea ax,[bp-0x70]
000014BB  8CD2              mov dx,ss
000014BD  52                push dx
000014BE  50                push ax
000014BF  31C0              xor ax,ax
000014C1  31D2              xor dx,dx
000014C3  52                push dx
000014C4  50                push ax
000014C5  B80800            mov ax,0x8
000014C8  50                push ax
000014C9  8B46A8            mov ax,[bp-0x58]
000014CC  99                cwd
000014CD  B90200            mov cx,0x2
000014D0  F7F9              idiv cx
000014D2  050F00            add ax,0xf
000014D5  50                push ax
000014D6  B80F00            mov ax,0xf
000014D9  50                push ax
000014DA  8D8666FF          lea ax,[bp-0x9a]
000014DE  8CD2              mov dx,ss
000014E0  52                push dx
000014E1  50                push ax
000014E2  9AA71B210A        call word 0xa21:word 0x1ba7
000014E7  8D4682            lea ax,[bp-0x7e]
000014EA  8CD2              mov dx,ss
000014EC  8946B0            mov [bp-0x50],ax
000014EF  8956B2            mov [bp-0x4e],dx
000014F2  8D46DE            lea ax,[bp-0x22]
000014F5  8CD2              mov dx,ss
000014F7  52                push dx
000014F8  50                push ax
000014F9  B8FA00            mov ax,0xfa
000014FC  50                push ax
000014FD  B8AA00            mov ax,0xaa
00001500  50                push ax
00001501  B81E01            mov ax,0x11e
00001504  50                push ax
00001505  B83C00            mov ax,0x3c
00001508  50                push ax
00001509  B80100            mov ax,0x1
0000150C  50                push ax
0000150D  B80F00            mov ax,0xf
00001510  50                push ax
00001511  B80900            mov ax,0x9
00001514  50                push ax
00001515  8D469E            lea ax,[bp-0x62]
00001518  8CD2              mov dx,ss
0000151A  52                push dx
0000151B  50                push ax
0000151C  9A091B210A        call word 0xa21:word 0x1b09
00001521  BF271C            mov di,0x1c27
00001524  1E                push ds
00001525  57                push di
00001526  8D7EBE            lea di,[bp-0x42]
00001529  16                push ss
0000152A  57                push di
0000152B  B82000            mov ax,0x20
0000152E  50                push ax
0000152F  9AC002561A        call word 0x1a56:word 0x2c0
00001534  8B46E4            mov ax,[bp-0x1c]
00001537  2D2100            sub ax,0x21
0000153A  8946C4            mov [bp-0x3c],ax
0000153D  B8D81B            mov ax,0x1bd8
00001540  8CDA              mov dx,ds
00001542  52                push dx
00001543  50                push ax
00001544  8D46DE            lea ax,[bp-0x22]
00001547  8CD2              mov dx,ss
00001549  52                push dx
0000154A  50                push ax
0000154B  9A3916210A        call word 0xa21:word 0x1639
00001550  894680            mov [bp-0x80],ax
00001553  89EC              mov sp,bp
00001555  5D                pop bp
00001556  CB                retf
00001557  55                push bp
00001558  89E5              mov bp,sp
0000155A  81EC9200          sub sp,0x92
0000155E  B000              mov al,0x0
00001560  50                push ax
00001561  9A3A1B430E        call word 0xe43:word 0x1b3a
00001566  31C0              xor ax,ax
00001568  50                push ax
00001569  B003              mov al,0x3
0000156B  50                push ax
0000156C  9A7102E305        call word 0x5e3:word 0x271
00001571  8946FC            mov [bp-0x4],ax
00001574  8956FE            mov [bp-0x2],dx
00001577  8B46FC            mov ax,[bp-0x4]
0000157A  0B46FE            or ax,[bp-0x2]
0000157D  7415              jz 0x1594
0000157F  8D7EFC            lea di,[bp-0x4]
00001582  16                push ss
00001583  57                push di
00001584  B81600            mov ax,0x16
00001587  50                push ax
00001588  B82C00            mov ax,0x2c
0000158B  50                push ax
0000158C  B001              mov al,0x1
0000158E  50                push ax
0000158F  9AAF20430E        call word 0xe43:word 0x20af
00001594  8D469A            lea ax,[bp-0x66]
00001597  8CD2              mov dx,ss
00001599  52                push dx
0000159A  50                push ax
0000159B  8D46BA            lea ax,[bp-0x46]
0000159E  8CD2              mov dx,ss
000015A0  52                push dx
000015A1  50                push ax
000015A2  B83200            mov ax,0x32
000015A5  50                push ax
000015A6  B83200            mov ax,0x32
000015A9  50                push ax
000015AA  B83C00            mov ax,0x3c
000015AD  50                push ax
000015AE  B81800            mov ax,0x18
000015B1  50                push ax
000015B2  B80100            mov ax,0x1
000015B5  50                push ax
000015B6  B80F00            mov ax,0xf
000015B9  50                push ax
000015BA  B80100            mov ax,0x1
000015BD  50                push ax
000015BE  B80100            mov ax,0x1
000015C1  50                push ax
000015C2  9A6E1A210A        call word 0xa21:word 0x1a6e
000015C7  8D8670FF          lea ax,[bp-0x90]
000015CB  8CD2              mov dx,ss
000015CD  52                push dx
000015CE  50                push ax
000015CF  31C0              xor ax,ax
000015D1  31D2              xor dx,dx
000015D3  52                push dx
000015D4  50                push ax
000015D5  A05202            mov al,[0x252]
000015D8  30E4              xor ah,ah
000015DA  B90200            mov cx,0x2
000015DD  D3E0              shl ax,cl
000015DF  8BD8              mov bx,ax
000015E1  8B46A2            mov ax,[bp-0x5e]
000015E4  99                cwd
000015E5  B90200            mov cx,0x2
000015E8  F7F9              idiv cx
000015EA  2BC3              sub ax,bx
000015EC  50                push ax
000015ED  8B46A4            mov ax,[bp-0x5c]
000015F0  99                cwd
000015F1  B90200            mov cx,0x2
000015F4  F7F9              idiv cx
000015F6  050700            add ax,0x7
000015F9  50                push ax
000015FA  B80F00            mov ax,0xf
000015FD  50                push ax
000015FE  B85202            mov ax,0x252
00001601  8CDA              mov dx,ds
00001603  52                push dx
00001604  50                push ax
00001605  9AA71B210A        call word 0xa21:word 0x1ba7
0000160A  8D8670FF          lea ax,[bp-0x90]
0000160E  8CD2              mov dx,ss
00001610  8946AC            mov [bp-0x54],ax
00001613  8956AE            mov [bp-0x52],dx
00001616  8D46BA            lea ax,[bp-0x46]
00001619  8CD2              mov dx,ss
0000161B  52                push dx
0000161C  50                push ax
0000161D  31C0              xor ax,ax
0000161F  31D2              xor dx,dx
00001621  52                push dx
00001622  50                push ax
00001623  B88200            mov ax,0x82
00001626  50                push ax
00001627  B83200            mov ax,0x32
0000162A  50                push ax
0000162B  B83C00            mov ax,0x3c
0000162E  50                push ax
0000162F  B81800            mov ax,0x18
00001632  50                push ax
00001633  B80100            mov ax,0x1
00001636  50                push ax
00001637  B80F00            mov ax,0xf
0000163A  50                push ax
0000163B  B80100            mov ax,0x1
0000163E  50                push ax
0000163F  B80200            mov ax,0x2
00001642  50                push ax
00001643  9A6E1A210A        call word 0xa21:word 0x1a6e
00001648  8D867EFF          lea ax,[bp-0x82]
0000164C  8CD2              mov dx,ss
0000164E  52                push dx
0000164F  50                push ax
00001650  31C0              xor ax,ax
00001652  31D2              xor dx,dx
00001654  52                push dx
00001655  50                push ax
00001656  A07102            mov al,[0x271]
00001659  30E4              xor ah,ah
0000165B  B90200            mov cx,0x2
0000165E  D3E0              shl ax,cl
00001660  8BD8              mov bx,ax
00001662  8B46C2            mov ax,[bp-0x3e]
00001665  99                cwd
00001666  B90200            mov cx,0x2
00001669  F7F9              idiv cx
0000166B  2BC3              sub ax,bx
0000166D  50                push ax
0000166E  8B46C4            mov ax,[bp-0x3c]
00001671  99                cwd
00001672  B90200            mov cx,0x2
00001675  F7F9              idiv cx
00001677  050700            add ax,0x7
0000167A  50                push ax
0000167B  B80F00            mov ax,0xf
0000167E  50                push ax
0000167F  B87102            mov ax,0x271
00001682  8CDA              mov dx,ds
00001684  52                push dx
00001685  50                push ax
00001686  9AA71B210A        call word 0xa21:word 0x1ba7
0000168B  8D867EFF          lea ax,[bp-0x82]
0000168F  8CD2              mov dx,ss
00001691  8946CC            mov [bp-0x34],ax
00001694  8956CE            mov [bp-0x32],dx
00001697  8D46DA            lea ax,[bp-0x26]
0000169A  8CD2              mov dx,ss
0000169C  52                push dx
0000169D  50                push ax
0000169E  B89001            mov ax,0x190
000016A1  50                push ax
000016A2  B86400            mov ax,0x64
000016A5  50                push ax
000016A6  B8EC00            mov ax,0xec
000016A9  50                push ax
000016AA  B85500            mov ax,0x55
000016AD  50                push ax
000016AE  B80100            mov ax,0x1
000016B1  50                push ax
000016B2  B80F00            mov ax,0xf
000016B5  50                push ax
000016B6  B80900            mov ax,0x9
000016B9  50                push ax
000016BA  8D469A            lea ax,[bp-0x66]
000016BD  8CD2              mov dx,ss
000016BF  52                push dx
000016C0  50                push ax
000016C1  9A091B210A        call word 0xa21:word 0x1b09
000016C6  8D468C            lea ax,[bp-0x74]
000016C9  8CD2              mov dx,ss
000016CB  52                push dx
000016CC  50                push ax
000016CD  31C0              xor ax,ax
000016CF  31D2              xor dx,dx
000016D1  52                push dx
000016D2  50                push ax
000016D3  A09002            mov al,[0x290]
000016D6  30E4              xor ah,ah
000016D8  B90200            mov cx,0x2
000016DB  D3E0              shl ax,cl
000016DD  8BD8              mov bx,ax
000016DF  8B46DE            mov ax,[bp-0x22]
000016E2  99                cwd
000016E3  B90200            mov cx,0x2
000016E6  F7F9              idiv cx
000016E8  2BC3              sub ax,bx
000016EA  50                push ax
000016EB  B81900            mov ax,0x19
000016EE  50                push ax
000016EF  B80F00            mov ax,0xf
000016F2  50                push ax
000016F3  B89002            mov ax,0x290
000016F6  8CDA              mov dx,ds
000016F8  52                push dx
000016F9  50                push ax
000016FA  9AA71B210A        call word 0xa21:word 0x1ba7
000016FF  8D468C            lea ax,[bp-0x74]
00001702  8CD2              mov dx,ss
00001704  8946EC            mov [bp-0x14],ax
00001707  8956EE            mov [bp-0x12],dx
0000170A  B8D81B            mov ax,0x1bd8
0000170D  8CDA              mov dx,ds
0000170F  52                push dx
00001710  50                push ax
00001711  8D46DA            lea ax,[bp-0x26]
00001714  8CD2              mov dx,ss
00001716  52                push dx
00001717  50                push ax
00001718  9A3916210A        call word 0xa21:word 0x1639
0000171D  89866EFF          mov [bp-0x92],ax
00001721  83BE6EFF01        cmp word [bp-0x92],0x1
00001726  7509              jnz 0x1731
00001728  C47E06            les di,word [bp+0x6]
0000172B  26C60501          mov byte [es:di],0x1
0000172F  EB07              jmp 0x1738
00001731  C47E06            les di,word [bp+0x6]
00001734  26C60502          mov byte [es:di],0x2
00001738  89EC              mov sp,bp
0000173A  5D                pop bp
0000173B  CA0400            retf word 0x4
0000173E  0000              add [bx+si],al
