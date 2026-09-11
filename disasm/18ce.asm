00000000  55                push bp
00000001  1E                push ds
00000002  8BEC              mov bp,sp
00000004  FF7608            push word [bp+0x8]
00000007  FF760C            push word [bp+0xc]
0000000A  FF760A            push word [bp+0xa]
0000000D  FF7610            push word [bp+0x10]
00000010  FF760E            push word [bp+0xe]
00000013  FF7614            push word [bp+0x14]
00000016  FF7612            push word [bp+0x12]
00000019  FF7618            push word [bp+0x18]
0000001C  FF7616            push word [bp+0x16]
0000001F  FF761C            push word [bp+0x1c]
00000022  FF761A            push word [bp+0x1a]
00000025  BBBA01            mov bx,0x1ba
00000028  2BC0              sub ax,ax
0000002A  8ED8              mov ds,ax
0000002C  FF1EF001          call word far [0x1f0]
00000030  8BE5              mov sp,bp
00000032  1F                pop ds
00000033  5D                pop bp
00000034  CA1600            retf word 0x16
00000037  55                push bp
00000038  1E                push ds
00000039  8BEC              mov bp,sp
0000003B  FF760A            push word [bp+0xa]
0000003E  FF7608            push word [bp+0x8]
00000041  FF760C            push word [bp+0xc]
00000044  FF760E            push word [bp+0xe]
00000047  BBB601            mov bx,0x1b6
0000004A  2BC0              sub ax,ax
0000004C  8ED8              mov ds,ax
0000004E  FF1EF001          call word far [0x1f0]
00000052  8BE5              mov sp,bp
00000054  1F                pop ds
00000055  5D                pop bp
00000056  CA0800            retf word 0x8
00000059  55                push bp
0000005A  1E                push ds
0000005B  8BEC              mov bp,sp
0000005D  FF760A            push word [bp+0xa]
00000060  FF7608            push word [bp+0x8]
00000063  FF760C            push word [bp+0xc]
00000066  FF760E            push word [bp+0xe]
00000069  FF7612            push word [bp+0x12]
0000006C  FF7610            push word [bp+0x10]
0000006F  FF7616            push word [bp+0x16]
00000072  FF7614            push word [bp+0x14]
00000075  BBB401            mov bx,0x1b4
00000078  2BC0              sub ax,ax
0000007A  8ED8              mov ds,ax
0000007C  FF1EF001          call word far [0x1f0]
00000080  8BE5              mov sp,bp
00000082  1F                pop ds
00000083  5D                pop bp
00000084  CA1000            retf word 0x10
00000087  55                push bp
00000088  1E                push ds
00000089  8BEC              mov bp,sp
0000008B  FF760A            push word [bp+0xa]
0000008E  FF7608            push word [bp+0x8]
00000091  FF760E            push word [bp+0xe]
00000094  FF760C            push word [bp+0xc]
00000097  BBB001            mov bx,0x1b0
0000009A  2BC0              sub ax,ax
0000009C  8ED8              mov ds,ax
0000009E  FF1EF001          call word far [0x1f0]
000000A2  8BE5              mov sp,bp
000000A4  1F                pop ds
000000A5  5D                pop bp
000000A6  CA0800            retf word 0x8
000000A9  55                push bp
000000AA  1E                push ds
000000AB  8BEC              mov bp,sp
000000AD  FF760A            push word [bp+0xa]
000000B0  FF7608            push word [bp+0x8]
000000B3  BBAC01            mov bx,0x1ac
000000B6  2BC0              sub ax,ax
000000B8  8ED8              mov ds,ax
000000BA  FF1EF001          call word far [0x1f0]
000000BE  8BE5              mov sp,bp
000000C0  1F                pop ds
000000C1  5D                pop bp
000000C2  CA0400            retf word 0x4
000000C5  55                push bp
000000C6  1E                push ds
000000C7  8BEC              mov bp,sp
000000C9  FF760A            push word [bp+0xa]
000000CC  FF7608            push word [bp+0x8]
000000CF  BBAA01            mov bx,0x1aa
000000D2  2BC0              sub ax,ax
000000D4  8ED8              mov ds,ax
000000D6  FF1EF001          call word far [0x1f0]
000000DA  8BE5              mov sp,bp
000000DC  1F                pop ds
000000DD  5D                pop bp
000000DE  CA0400            retf word 0x4
000000E1  55                push bp
000000E2  1E                push ds
000000E3  8BEC              mov bp,sp
000000E5  FF760A            push word [bp+0xa]
000000E8  FF7608            push word [bp+0x8]
000000EB  BBA801            mov bx,0x1a8
000000EE  2BC0              sub ax,ax
000000F0  8ED8              mov ds,ax
000000F2  FF1EF001          call word far [0x1f0]
000000F6  8BE5              mov sp,bp
000000F8  1F                pop ds
000000F9  5D                pop bp
000000FA  CA0400            retf word 0x4
000000FD  55                push bp
000000FE  1E                push ds
000000FF  8BEC              mov bp,sp
00000101  FF760A            push word [bp+0xa]
00000104  FF7608            push word [bp+0x8]
00000107  BBA601            mov bx,0x1a6
0000010A  2BC0              sub ax,ax
0000010C  8ED8              mov ds,ax
0000010E  FF1EF001          call word far [0x1f0]
00000112  8BE5              mov sp,bp
00000114  1F                pop ds
00000115  5D                pop bp
00000116  CA0400            retf word 0x4
00000119  55                push bp
0000011A  1E                push ds
0000011B  8BEC              mov bp,sp
0000011D  FF760A            push word [bp+0xa]
00000120  FF7608            push word [bp+0x8]
00000123  BBA401            mov bx,0x1a4
00000126  2BC0              sub ax,ax
00000128  8ED8              mov ds,ax
0000012A  FF1EF001          call word far [0x1f0]
0000012E  8BE5              mov sp,bp
00000130  1F                pop ds
00000131  5D                pop bp
00000132  CA0400            retf word 0x4
00000135  55                push bp
00000136  1E                push ds
00000137  8BEC              mov bp,sp
00000139  FF760A            push word [bp+0xa]
0000013C  FF7608            push word [bp+0x8]
0000013F  FF760E            push word [bp+0xe]
00000142  FF760C            push word [bp+0xc]
00000145  FF7612            push word [bp+0x12]
00000148  FF7610            push word [bp+0x10]
0000014B  BB9E01            mov bx,0x19e
0000014E  2BC0              sub ax,ax
00000150  8ED8              mov ds,ax
00000152  FF1EF001          call word far [0x1f0]
00000156  8BE5              mov sp,bp
00000158  1F                pop ds
00000159  5D                pop bp
0000015A  CA0C00            retf word 0xc
0000015D  55                push bp
0000015E  1E                push ds
0000015F  8BEC              mov bp,sp
00000161  FF7608            push word [bp+0x8]
00000164  BB9C01            mov bx,0x19c
00000167  2BC0              sub ax,ax
00000169  8ED8              mov ds,ax
0000016B  FF1EF001          call word far [0x1f0]
0000016F  8BE5              mov sp,bp
00000171  1F                pop ds
00000172  5D                pop bp
00000173  CA0200            retf word 0x2
00000176  55                push bp
00000177  1E                push ds
00000178  8BEC              mov bp,sp
0000017A  FF7608            push word [bp+0x8]
0000017D  FF760A            push word [bp+0xa]
00000180  FC                cld
00000181  C5760C            lds si,word [bp+0xc]
00000184  2BC0              sub ax,ax
00000186  AC                lodsb
00000187  50                push ax
00000188  1E                push ds
00000189  56                push si
0000018A  BB9A01            mov bx,0x19a
0000018D  2BC0              sub ax,ax
0000018F  8ED8              mov ds,ax
00000191  FF1EF001          call word far [0x1f0]
00000195  8BE5              mov sp,bp
00000197  1F                pop ds
00000198  5D                pop bp
00000199  CA0800            retf word 0x8
0000019C  55                push bp
0000019D  1E                push ds
0000019E  8BEC              mov bp,sp
000001A0  FF7608            push word [bp+0x8]
000001A3  BB9801            mov bx,0x198
000001A6  2BC0              sub ax,ax
000001A8  8ED8              mov ds,ax
000001AA  FF1EF001          call word far [0x1f0]
000001AE  8BE5              mov sp,bp
000001B0  1F                pop ds
000001B1  5D                pop bp
000001B2  CA0200            retf word 0x2
000001B5  55                push bp
000001B6  1E                push ds
000001B7  8BEC              mov bp,sp
000001B9  FF7608            push word [bp+0x8]
000001BC  BB9601            mov bx,0x196
000001BF  2BC0              sub ax,ax
000001C1  8ED8              mov ds,ax
000001C3  FF1EF001          call word far [0x1f0]
000001C7  8BE5              mov sp,bp
000001C9  1F                pop ds
000001CA  5D                pop bp
000001CB  CA0200            retf word 0x2
000001CE  55                push bp
000001CF  1E                push ds
000001D0  8BEC              mov bp,sp
000001D2  FF7608            push word [bp+0x8]
000001D5  BB9401            mov bx,0x194
000001D8  2BC0              sub ax,ax
000001DA  8ED8              mov ds,ax
000001DC  FF1EF001          call word far [0x1f0]
000001E0  8BE5              mov sp,bp
000001E2  1F                pop ds
000001E3  5D                pop bp
000001E4  CA0200            retf word 0x2
000001E7  55                push bp
000001E8  1E                push ds
000001E9  8BEC              mov bp,sp
000001EB  FF7608            push word [bp+0x8]
000001EE  FF760A            push word [bp+0xa]
000001F1  BB9201            mov bx,0x192
000001F4  2BC0              sub ax,ax
000001F6  8ED8              mov ds,ax
000001F8  FF1EF001          call word far [0x1f0]
000001FC  8BE5              mov sp,bp
000001FE  1F                pop ds
000001FF  5D                pop bp
00000200  CA0400            retf word 0x4
00000203  55                push bp
00000204  1E                push ds
00000205  8BEC              mov bp,sp
00000207  FF7608            push word [bp+0x8]
0000020A  BB9001            mov bx,0x190
0000020D  2BC0              sub ax,ax
0000020F  8ED8              mov ds,ax
00000211  FF1EF001          call word far [0x1f0]
00000215  8BE5              mov sp,bp
00000217  1F                pop ds
00000218  5D                pop bp
00000219  CA0200            retf word 0x2
0000021C  55                push bp
0000021D  1E                push ds
0000021E  8BEC              mov bp,sp
00000220  FF7608            push word [bp+0x8]
00000223  BB8E01            mov bx,0x18e
00000226  2BC0              sub ax,ax
00000228  8ED8              mov ds,ax
0000022A  FF1EF001          call word far [0x1f0]
0000022E  8BE5              mov sp,bp
00000230  1F                pop ds
00000231  5D                pop bp
00000232  CA0200            retf word 0x2
00000235  55                push bp
00000236  1E                push ds
00000237  8BEC              mov bp,sp
00000239  FF7608            push word [bp+0x8]
0000023C  BB8C01            mov bx,0x18c
0000023F  2BC0              sub ax,ax
00000241  8ED8              mov ds,ax
00000243  FF1EF001          call word far [0x1f0]
00000247  8BE5              mov sp,bp
00000249  1F                pop ds
0000024A  5D                pop bp
0000024B  CA0200            retf word 0x2
0000024E  55                push bp
0000024F  1E                push ds
00000250  8BEC              mov bp,sp
00000252  FF7608            push word [bp+0x8]
00000255  BB8801            mov bx,0x188
00000258  2BC0              sub ax,ax
0000025A  8ED8              mov ds,ax
0000025C  FF1EF001          call word far [0x1f0]
00000260  8BE5              mov sp,bp
00000262  1F                pop ds
00000263  5D                pop bp
00000264  CA0200            retf word 0x2
00000267  55                push bp
00000268  1E                push ds
00000269  8BEC              mov bp,sp
0000026B  FF7608            push word [bp+0x8]
0000026E  BB8601            mov bx,0x186
00000271  2BC0              sub ax,ax
00000273  8ED8              mov ds,ax
00000275  FF1EF001          call word far [0x1f0]
00000279  8BE5              mov sp,bp
0000027B  1F                pop ds
0000027C  5D                pop bp
0000027D  CA0200            retf word 0x2
00000280  55                push bp
00000281  1E                push ds
00000282  8BEC              mov bp,sp
00000284  FF7608            push word [bp+0x8]
00000287  BB8401            mov bx,0x184
0000028A  2BC0              sub ax,ax
0000028C  8ED8              mov ds,ax
0000028E  FF1EF001          call word far [0x1f0]
00000292  8BE5              mov sp,bp
00000294  1F                pop ds
00000295  5D                pop bp
00000296  CA0200            retf word 0x2
00000299  55                push bp
0000029A  1E                push ds
0000029B  8BEC              mov bp,sp
0000029D  FF7608            push word [bp+0x8]
000002A0  FF760A            push word [bp+0xa]
000002A3  BB8201            mov bx,0x182
000002A6  2BC0              sub ax,ax
000002A8  8ED8              mov ds,ax
000002AA  FF1EF001          call word far [0x1f0]
000002AE  8BE5              mov sp,bp
000002B0  1F                pop ds
000002B1  5D                pop bp
000002B2  CA0400            retf word 0x4
000002B5  55                push bp
000002B6  1E                push ds
000002B7  8BEC              mov bp,sp
000002B9  FF7608            push word [bp+0x8]
000002BC  BB8001            mov bx,0x180
000002BF  2BC0              sub ax,ax
000002C1  8ED8              mov ds,ax
000002C3  FF1EF001          call word far [0x1f0]
000002C7  8BE5              mov sp,bp
000002C9  1F                pop ds
000002CA  5D                pop bp
000002CB  CA0200            retf word 0x2
000002CE  55                push bp
000002CF  1E                push ds
000002D0  8BEC              mov bp,sp
000002D2  FF760A            push word [bp+0xa]
000002D5  FF7608            push word [bp+0x8]
000002D8  FF760E            push word [bp+0xe]
000002DB  FF760C            push word [bp+0xc]
000002DE  BB7E01            mov bx,0x17e
000002E1  2BC0              sub ax,ax
000002E3  8ED8              mov ds,ax
000002E5  FF1EF001          call word far [0x1f0]
000002E9  8BE5              mov sp,bp
000002EB  1F                pop ds
000002EC  5D                pop bp
000002ED  CA0800            retf word 0x8
000002F0  55                push bp
000002F1  1E                push ds
000002F2  8BEC              mov bp,sp
000002F4  FC                cld
000002F5  C57608            lds si,word [bp+0x8]
000002F8  2BC0              sub ax,ax
000002FA  AC                lodsb
000002FB  50                push ax
000002FC  1E                push ds
000002FD  56                push si
000002FE  BB7C01            mov bx,0x17c
00000301  2BC0              sub ax,ax
00000303  8ED8              mov ds,ax
00000305  FF1EF001          call word far [0x1f0]
00000309  8BE5              mov sp,bp
0000030B  1F                pop ds
0000030C  5D                pop bp
0000030D  CA0400            retf word 0x4
00000310  55                push bp
00000311  1E                push ds
00000312  8BEC              mov bp,sp
00000314  FF760A            push word [bp+0xa]
00000317  FF7608            push word [bp+0x8]
0000031A  BB7A01            mov bx,0x17a
0000031D  2BC0              sub ax,ax
0000031F  8ED8              mov ds,ax
00000321  FF1EF001          call word far [0x1f0]
00000325  8BE5              mov sp,bp
00000327  1F                pop ds
00000328  5D                pop bp
00000329  CA0400            retf word 0x4
0000032C  55                push bp
0000032D  1E                push ds
0000032E  8BEC              mov bp,sp
00000330  BB7601            mov bx,0x176
00000333  2BC0              sub ax,ax
00000335  8ED8              mov ds,ax
00000337  FF1EF001          call word far [0x1f0]
0000033B  8BE5              mov sp,bp
0000033D  1F                pop ds
0000033E  5D                pop bp
0000033F  CB                retf
00000340  55                push bp
00000341  1E                push ds
00000342  8BEC              mov bp,sp
00000344  BB7401            mov bx,0x174
00000347  2BC0              sub ax,ax
00000349  8ED8              mov ds,ax
0000034B  FF1EF001          call word far [0x1f0]
0000034F  8BE5              mov sp,bp
00000351  1F                pop ds
00000352  5D                pop bp
00000353  CB                retf
00000354  55                push bp
00000355  1E                push ds
00000356  8BEC              mov bp,sp
00000358  8CD0              mov ax,ss
0000035A  1F                pop ds
0000035B  5D                pop bp
0000035C  CB                retf
0000035D  55                push bp
0000035E  1E                push ds
0000035F  8BEC              mov bp,sp
00000361  8BC4              mov ax,sp
00000363  1F                pop ds
00000364  5D                pop bp
00000365  CB                retf
00000366  55                push bp
00000367  1E                push ds
00000368  8BEC              mov bp,sp
0000036A  BB6E01            mov bx,0x16e
0000036D  2BC0              sub ax,ax
0000036F  8ED8              mov ds,ax
00000371  FF1EF001          call word far [0x1f0]
00000375  8BE5              mov sp,bp
00000377  1F                pop ds
00000378  5D                pop bp
00000379  CB                retf
0000037A  55                push bp
0000037B  1E                push ds
0000037C  8BEC              mov bp,sp
0000037E  BB6C01            mov bx,0x16c
00000381  2BC0              sub ax,ax
00000383  8ED8              mov ds,ax
00000385  FF1EF001          call word far [0x1f0]
00000389  8BE5              mov sp,bp
0000038B  1F                pop ds
0000038C  5D                pop bp
0000038D  CB                retf
0000038E  55                push bp
0000038F  1E                push ds
00000390  8BEC              mov bp,sp
00000392  FF760A            push word [bp+0xa]
00000395  FF7608            push word [bp+0x8]
00000398  FF760E            push word [bp+0xe]
0000039B  FF760C            push word [bp+0xc]
0000039E  FF7610            push word [bp+0x10]
000003A1  FF7612            push word [bp+0x12]
000003A4  FF7616            push word [bp+0x16]
000003A7  FF7614            push word [bp+0x14]
000003AA  BB6A01            mov bx,0x16a
000003AD  2BC0              sub ax,ax
000003AF  8ED8              mov ds,ax
000003B1  FF1EF001          call word far [0x1f0]
000003B5  8BE5              mov sp,bp
000003B7  1F                pop ds
000003B8  5D                pop bp
000003B9  CA1000            retf word 0x10
000003BC  55                push bp
000003BD  1E                push ds
000003BE  8BEC              mov bp,sp
000003C0  BB6801            mov bx,0x168
000003C3  2BC0              sub ax,ax
000003C5  8ED8              mov ds,ax
000003C7  FF1EF001          call word far [0x1f0]
000003CB  8BE5              mov sp,bp
000003CD  1F                pop ds
000003CE  5D                pop bp
000003CF  CB                retf
000003D0  55                push bp
000003D1  1E                push ds
000003D2  8BEC              mov bp,sp
000003D4  FF7608            push word [bp+0x8]
000003D7  FF760A            push word [bp+0xa]
000003DA  FF760C            push word [bp+0xc]
000003DD  FF760E            push word [bp+0xe]
000003E0  FF7612            push word [bp+0x12]
000003E3  FF7610            push word [bp+0x10]
000003E6  BB6601            mov bx,0x166
000003E9  2BC0              sub ax,ax
000003EB  8ED8              mov ds,ax
000003ED  FF1EF001          call word far [0x1f0]
000003F1  8BE5              mov sp,bp
000003F3  1F                pop ds
000003F4  5D                pop bp
000003F5  CA0C00            retf word 0xc
000003F8  55                push bp
000003F9  1E                push ds
000003FA  8BEC              mov bp,sp
000003FC  FF7608            push word [bp+0x8]
000003FF  FF760A            push word [bp+0xa]
00000402  FF760E            push word [bp+0xe]
00000405  FF760C            push word [bp+0xc]
00000408  BB6401            mov bx,0x164
0000040B  2BC0              sub ax,ax
0000040D  8ED8              mov ds,ax
0000040F  FF1EF001          call word far [0x1f0]
00000413  8BE5              mov sp,bp
00000415  1F                pop ds
00000416  5D                pop bp
00000417  CA0800            retf word 0x8
0000041A  55                push bp
0000041B  1E                push ds
0000041C  8BEC              mov bp,sp
0000041E  FF760A            push word [bp+0xa]
00000421  FF7608            push word [bp+0x8]
00000424  BB6201            mov bx,0x162
00000427  2BC0              sub ax,ax
00000429  8ED8              mov ds,ax
0000042B  FF1EF001          call word far [0x1f0]
0000042F  8BE5              mov sp,bp
00000431  1F                pop ds
00000432  5D                pop bp
00000433  CA0400            retf word 0x4
00000436  55                push bp
00000437  1E                push ds
00000438  8BEC              mov bp,sp
0000043A  FF7608            push word [bp+0x8]
0000043D  FF760A            push word [bp+0xa]
00000440  BB6001            mov bx,0x160
00000443  2BC0              sub ax,ax
00000445  8ED8              mov ds,ax
00000447  FF1EF001          call word far [0x1f0]
0000044B  8BE5              mov sp,bp
0000044D  1F                pop ds
0000044E  5D                pop bp
0000044F  CA0400            retf word 0x4
00000452  55                push bp
00000453  1E                push ds
00000454  8BEC              mov bp,sp
00000456  FF760A            push word [bp+0xa]
00000459  FF7608            push word [bp+0x8]
0000045C  BB5E01            mov bx,0x15e
0000045F  2BC0              sub ax,ax
00000461  8ED8              mov ds,ax
00000463  FF1EF001          call word far [0x1f0]
00000467  8BE5              mov sp,bp
00000469  1F                pop ds
0000046A  5D                pop bp
0000046B  CA0400            retf word 0x4
0000046E  55                push bp
0000046F  1E                push ds
00000470  8BEC              mov bp,sp
00000472  FF7608            push word [bp+0x8]
00000475  FF760A            push word [bp+0xa]
00000478  BB5C01            mov bx,0x15c
0000047B  2BC0              sub ax,ax
0000047D  8ED8              mov ds,ax
0000047F  FF1EF001          call word far [0x1f0]
00000483  8BE5              mov sp,bp
00000485  1F                pop ds
00000486  5D                pop bp
00000487  CA0400            retf word 0x4
0000048A  55                push bp
0000048B  1E                push ds
0000048C  8BEC              mov bp,sp
0000048E  FF7608            push word [bp+0x8]
00000491  FF760A            push word [bp+0xa]
00000494  BB5A01            mov bx,0x15a
00000497  2BC0              sub ax,ax
00000499  8ED8              mov ds,ax
0000049B  FF1EF001          call word far [0x1f0]
0000049F  8BE5              mov sp,bp
000004A1  1F                pop ds
000004A2  5D                pop bp
000004A3  CA0400            retf word 0x4
000004A6  55                push bp
000004A7  1E                push ds
000004A8  8BEC              mov bp,sp
000004AA  BB5801            mov bx,0x158
000004AD  2BC0              sub ax,ax
000004AF  8ED8              mov ds,ax
000004B1  FF1EF001          call word far [0x1f0]
000004B5  8BE5              mov sp,bp
000004B7  1F                pop ds
000004B8  5D                pop bp
000004B9  CB                retf
000004BA  55                push bp
000004BB  1E                push ds
000004BC  8BEC              mov bp,sp
000004BE  BB5601            mov bx,0x156
000004C1  2BC0              sub ax,ax
000004C3  8ED8              mov ds,ax
000004C5  FF1EF001          call word far [0x1f0]
000004C9  8BE5              mov sp,bp
000004CB  1F                pop ds
000004CC  5D                pop bp
000004CD  CB                retf
000004CE  55                push bp
000004CF  1E                push ds
000004D0  8BEC              mov bp,sp
000004D2  FF760A            push word [bp+0xa]
000004D5  FF7608            push word [bp+0x8]
000004D8  BB5401            mov bx,0x154
000004DB  2BC0              sub ax,ax
000004DD  8ED8              mov ds,ax
000004DF  FF1EF001          call word far [0x1f0]
000004E3  8BE5              mov sp,bp
000004E5  1F                pop ds
000004E6  5D                pop bp
000004E7  CA0400            retf word 0x4
000004EA  55                push bp
000004EB  1E                push ds
000004EC  8BEC              mov bp,sp
000004EE  FF7608            push word [bp+0x8]
000004F1  BB5201            mov bx,0x152
000004F4  2BC0              sub ax,ax
000004F6  8ED8              mov ds,ax
000004F8  FF1EF001          call word far [0x1f0]
000004FC  8BE5              mov sp,bp
000004FE  1F                pop ds
000004FF  5D                pop bp
00000500  CA0200            retf word 0x2
00000503  55                push bp
00000504  1E                push ds
00000505  8BEC              mov bp,sp
00000507  FF7608            push word [bp+0x8]
0000050A  BB5001            mov bx,0x150
0000050D  2BC0              sub ax,ax
0000050F  8ED8              mov ds,ax
00000511  FF1EF001          call word far [0x1f0]
00000515  8BE5              mov sp,bp
00000517  1F                pop ds
00000518  5D                pop bp
00000519  CA0200            retf word 0x2
0000051C  55                push bp
0000051D  1E                push ds
0000051E  8BEC              mov bp,sp
00000520  FF7608            push word [bp+0x8]
00000523  FF760A            push word [bp+0xa]
00000526  FF760E            push word [bp+0xe]
00000529  FF760C            push word [bp+0xc]
0000052C  BB4E01            mov bx,0x14e
0000052F  2BC0              sub ax,ax
00000531  8ED8              mov ds,ax
00000533  FF1EF001          call word far [0x1f0]
00000537  8BE5              mov sp,bp
00000539  1F                pop ds
0000053A  5D                pop bp
0000053B  CA0800            retf word 0x8
0000053E  55                push bp
0000053F  1E                push ds
00000540  8BEC              mov bp,sp
00000542  FF760A            push word [bp+0xa]
00000545  FF7608            push word [bp+0x8]
00000548  FF760E            push word [bp+0xe]
0000054B  FF760C            push word [bp+0xc]
0000054E  BB4C01            mov bx,0x14c
00000551  2BC0              sub ax,ax
00000553  8ED8              mov ds,ax
00000555  FF1EF001          call word far [0x1f0]
00000559  8BE5              mov sp,bp
0000055B  1F                pop ds
0000055C  5D                pop bp
0000055D  CA0800            retf word 0x8
00000560  55                push bp
00000561  1E                push ds
00000562  8BEC              mov bp,sp
00000564  FF760A            push word [bp+0xa]
00000567  FF7608            push word [bp+0x8]
0000056A  BB4A01            mov bx,0x14a
0000056D  2BC0              sub ax,ax
0000056F  8ED8              mov ds,ax
00000571  FF1EF001          call word far [0x1f0]
00000575  8BE5              mov sp,bp
00000577  1F                pop ds
00000578  5D                pop bp
00000579  CA0400            retf word 0x4
0000057C  55                push bp
0000057D  1E                push ds
0000057E  8BEC              mov bp,sp
00000580  FF760A            push word [bp+0xa]
00000583  FF7608            push word [bp+0x8]
00000586  FF760E            push word [bp+0xe]
00000589  FF760C            push word [bp+0xc]
0000058C  FF7612            push word [bp+0x12]
0000058F  FF7610            push word [bp+0x10]
00000592  BB4601            mov bx,0x146
00000595  2BC0              sub ax,ax
00000597  8ED8              mov ds,ax
00000599  FF1EF001          call word far [0x1f0]
0000059D  8BE5              mov sp,bp
0000059F  1F                pop ds
000005A0  5D                pop bp
000005A1  CA0C00            retf word 0xc
000005A4  55                push bp
000005A5  1E                push ds
000005A6  8BEC              mov bp,sp
000005A8  FF7608            push word [bp+0x8]
000005AB  FF760A            push word [bp+0xa]
000005AE  BB4401            mov bx,0x144
000005B1  2BC0              sub ax,ax
000005B3  8ED8              mov ds,ax
000005B5  FF1EF001          call word far [0x1f0]
000005B9  8BE5              mov sp,bp
000005BB  1F                pop ds
000005BC  5D                pop bp
000005BD  CA0400            retf word 0x4
000005C0  55                push bp
000005C1  1E                push ds
000005C2  8BEC              mov bp,sp
000005C4  FF760A            push word [bp+0xa]
000005C7  FF7608            push word [bp+0x8]
000005CA  FF760E            push word [bp+0xe]
000005CD  FF760C            push word [bp+0xc]
000005D0  FF7612            push word [bp+0x12]
000005D3  FF7610            push word [bp+0x10]
000005D6  BB4201            mov bx,0x142
000005D9  2BC0              sub ax,ax
000005DB  8ED8              mov ds,ax
000005DD  FF1EF001          call word far [0x1f0]
000005E1  8BE5              mov sp,bp
000005E3  1F                pop ds
000005E4  5D                pop bp
000005E5  CA0C00            retf word 0xc
000005E8  55                push bp
000005E9  1E                push ds
000005EA  8BEC              mov bp,sp
000005EC  FF760A            push word [bp+0xa]
000005EF  FF7608            push word [bp+0x8]
000005F2  FF760E            push word [bp+0xe]
000005F5  FF760C            push word [bp+0xc]
000005F8  BB4001            mov bx,0x140
000005FB  2BC0              sub ax,ax
000005FD  8ED8              mov ds,ax
000005FF  FF1EF001          call word far [0x1f0]
00000603  8BE5              mov sp,bp
00000605  1F                pop ds
00000606  5D                pop bp
00000607  CA0800            retf word 0x8
0000060A  55                push bp
0000060B  1E                push ds
0000060C  8BEC              mov bp,sp
0000060E  FF7608            push word [bp+0x8]
00000611  BB3E01            mov bx,0x13e
00000614  2BC0              sub ax,ax
00000616  8ED8              mov ds,ax
00000618  FF1EF001          call word far [0x1f0]
0000061C  8BE5              mov sp,bp
0000061E  1F                pop ds
0000061F  5D                pop bp
00000620  CA0200            retf word 0x2
00000623  55                push bp
00000624  1E                push ds
00000625  8BEC              mov bp,sp
00000627  BB3C01            mov bx,0x13c
0000062A  2BC0              sub ax,ax
0000062C  8ED8              mov ds,ax
0000062E  FF1EF001          call word far [0x1f0]
00000632  8BE5              mov sp,bp
00000634  1F                pop ds
00000635  5D                pop bp
00000636  CB                retf
00000637  55                push bp
00000638  1E                push ds
00000639  8BEC              mov bp,sp
0000063B  BB3A01            mov bx,0x13a
0000063E  2BC0              sub ax,ax
00000640  8ED8              mov ds,ax
00000642  FF1EF001          call word far [0x1f0]
00000646  8BE5              mov sp,bp
00000648  1F                pop ds
00000649  5D                pop bp
0000064A  CB                retf
0000064B  55                push bp
0000064C  1E                push ds
0000064D  8BEC              mov bp,sp
0000064F  FF760A            push word [bp+0xa]
00000652  FF7608            push word [bp+0x8]
00000655  FF760E            push word [bp+0xe]
00000658  FF760C            push word [bp+0xc]
0000065B  BB3801            mov bx,0x138
0000065E  2BC0              sub ax,ax
00000660  8ED8              mov ds,ax
00000662  FF1EF001          call word far [0x1f0]
00000666  8BE5              mov sp,bp
00000668  1F                pop ds
00000669  5D                pop bp
0000066A  CA0800            retf word 0x8
0000066D  55                push bp
0000066E  1E                push ds
0000066F  8BEC              mov bp,sp
00000671  FF760A            push word [bp+0xa]
00000674  FF7608            push word [bp+0x8]
00000677  FF760E            push word [bp+0xe]
0000067A  FF760C            push word [bp+0xc]
0000067D  BB3601            mov bx,0x136
00000680  2BC0              sub ax,ax
00000682  8ED8              mov ds,ax
00000684  FF1EF001          call word far [0x1f0]
00000688  8BE5              mov sp,bp
0000068A  1F                pop ds
0000068B  5D                pop bp
0000068C  CA0800            retf word 0x8
0000068F  55                push bp
00000690  1E                push ds
00000691  8BEC              mov bp,sp
00000693  BB3401            mov bx,0x134
00000696  2BC0              sub ax,ax
00000698  8ED8              mov ds,ax
0000069A  06                push es
0000069B  48                dec ax
0000069C  C43EF001          les di,word [0x1f0]
000006A0  26817DFEDEFA      cmp word [es:di-0x2],0xfade
000006A6  07                pop es
000006A7  7504              jnz 0x6ad
000006A9  FF1EF001          call word far [0x1f0]
000006AD  8BE5              mov sp,bp
000006AF  1F                pop ds
000006B0  5D                pop bp
000006B1  CB                retf
000006B2  55                push bp
000006B3  1E                push ds
000006B4  8BEC              mov bp,sp
000006B6  BB3201            mov bx,0x132
000006B9  2BC0              sub ax,ax
000006BB  8ED8              mov ds,ax
000006BD  FF1EF001          call word far [0x1f0]
000006C1  8BE5              mov sp,bp
000006C3  1F                pop ds
000006C4  5D                pop bp
000006C5  CB                retf
000006C6  55                push bp
000006C7  1E                push ds
000006C8  8BEC              mov bp,sp
000006CA  FF760A            push word [bp+0xa]
000006CD  FF7608            push word [bp+0x8]
000006D0  FF760E            push word [bp+0xe]
000006D3  FF760C            push word [bp+0xc]
000006D6  FF7612            push word [bp+0x12]
000006D9  FF7610            push word [bp+0x10]
000006DC  FF7616            push word [bp+0x16]
000006DF  FF7614            push word [bp+0x14]
000006E2  BB3001            mov bx,0x130
000006E5  2BC0              sub ax,ax
000006E7  8ED8              mov ds,ax
000006E9  FF1EF001          call word far [0x1f0]
000006ED  8BE5              mov sp,bp
000006EF  1F                pop ds
000006F0  5D                pop bp
000006F1  CA1000            retf word 0x10
000006F4  55                push bp
000006F5  1E                push ds
000006F6  8BEC              mov bp,sp
000006F8  BB2E01            mov bx,0x12e
000006FB  2BC0              sub ax,ax
000006FD  8ED8              mov ds,ax
000006FF  06                push es
00000700  48                dec ax
00000701  C43EF001          les di,word [0x1f0]
00000705  26817DFEDEFA      cmp word [es:di-0x2],0xfade
0000070B  07                pop es
0000070C  7504              jnz 0x712
0000070E  FF1EF001          call word far [0x1f0]
00000712  8BE5              mov sp,bp
00000714  1F                pop ds
00000715  5D                pop bp
00000716  CB                retf
00000717  55                push bp
00000718  1E                push ds
00000719  8BEC              mov bp,sp
0000071B  BB2C01            mov bx,0x12c
0000071E  2BC0              sub ax,ax
00000720  8ED8              mov ds,ax
00000722  FF1EF001          call word far [0x1f0]
00000726  8BE5              mov sp,bp
00000728  1F                pop ds
00000729  5D                pop bp
0000072A  CB                retf
0000072B  55                push bp
0000072C  1E                push ds
0000072D  8BEC              mov bp,sp
0000072F  FF760A            push word [bp+0xa]
00000732  FF7608            push word [bp+0x8]
00000735  BB2A01            mov bx,0x12a
00000738  2BC0              sub ax,ax
0000073A  8ED8              mov ds,ax
0000073C  FF1EF001          call word far [0x1f0]
00000740  8BE5              mov sp,bp
00000742  1F                pop ds
00000743  5D                pop bp
00000744  CA0400            retf word 0x4
00000747  55                push bp
00000748  1E                push ds
00000749  8BEC              mov bp,sp
0000074B  FF760A            push word [bp+0xa]
0000074E  FF7608            push word [bp+0x8]
00000751  FF760E            push word [bp+0xe]
00000754  FF760C            push word [bp+0xc]
00000757  BB2801            mov bx,0x128
0000075A  2BC0              sub ax,ax
0000075C  8ED8              mov ds,ax
0000075E  FF1EF001          call word far [0x1f0]
00000762  8BE5              mov sp,bp
00000764  1F                pop ds
00000765  5D                pop bp
00000766  CA0800            retf word 0x8
00000769  55                push bp
0000076A  1E                push ds
0000076B  8BEC              mov bp,sp
0000076D  FF7608            push word [bp+0x8]
00000770  FF760A            push word [bp+0xa]
00000773  FF760C            push word [bp+0xc]
00000776  FF760E            push word [bp+0xe]
00000779  FF7612            push word [bp+0x12]
0000077C  FF7610            push word [bp+0x10]
0000077F  FF7616            push word [bp+0x16]
00000782  FF7614            push word [bp+0x14]
00000785  BB2601            mov bx,0x126
00000788  2BC0              sub ax,ax
0000078A  8ED8              mov ds,ax
0000078C  FF1EF001          call word far [0x1f0]
00000790  8BE5              mov sp,bp
00000792  1F                pop ds
00000793  5D                pop bp
00000794  CA1000            retf word 0x10
00000797  55                push bp
00000798  1E                push ds
00000799  8BEC              mov bp,sp
0000079B  FF7608            push word [bp+0x8]
0000079E  FF760A            push word [bp+0xa]
000007A1  FF760E            push word [bp+0xe]
000007A4  FF760C            push word [bp+0xc]
000007A7  FF7612            push word [bp+0x12]
000007AA  FF7610            push word [bp+0x10]
000007AD  BB2401            mov bx,0x124
000007B0  2BC0              sub ax,ax
000007B2  8ED8              mov ds,ax
000007B4  FF1EF001          call word far [0x1f0]
000007B8  8BE5              mov sp,bp
000007BA  1F                pop ds
000007BB  5D                pop bp
000007BC  CA0C00            retf word 0xc
000007BF  55                push bp
000007C0  1E                push ds
000007C1  8BEC              mov bp,sp
000007C3  FF7608            push word [bp+0x8]
000007C6  FF760A            push word [bp+0xa]
000007C9  FF760E            push word [bp+0xe]
000007CC  FF760C            push word [bp+0xc]
000007CF  FF7612            push word [bp+0x12]
000007D2  FF7610            push word [bp+0x10]
000007D5  FF7614            push word [bp+0x14]
000007D8  FF7618            push word [bp+0x18]
000007DB  FF7616            push word [bp+0x16]
000007DE  BBC601            mov bx,0x1c6
000007E1  2BC0              sub ax,ax
000007E3  8ED8              mov ds,ax
000007E5  FF1EF001          call word far [0x1f0]
000007E9  8BE5              mov sp,bp
000007EB  1F                pop ds
000007EC  5D                pop bp
000007ED  CA1200            retf word 0x12
000007F0  55                push bp
000007F1  1E                push ds
000007F2  8BEC              mov bp,sp
000007F4  FF7608            push word [bp+0x8]
000007F7  FF760A            push word [bp+0xa]
000007FA  FF760E            push word [bp+0xe]
000007FD  FF760C            push word [bp+0xc]
00000800  FF7612            push word [bp+0x12]
00000803  FF7610            push word [bp+0x10]
00000806  BB2201            mov bx,0x122
00000809  2BC0              sub ax,ax
0000080B  8ED8              mov ds,ax
0000080D  FF1EF001          call word far [0x1f0]
00000811  8BE5              mov sp,bp
00000813  1F                pop ds
00000814  5D                pop bp
00000815  CA0C00            retf word 0xc
00000818  55                push bp
00000819  1E                push ds
0000081A  8BEC              mov bp,sp
0000081C  FF7608            push word [bp+0x8]
0000081F  FF760A            push word [bp+0xa]
00000822  FF760E            push word [bp+0xe]
00000825  FF760C            push word [bp+0xc]
00000828  FF7612            push word [bp+0x12]
0000082B  FF7610            push word [bp+0x10]
0000082E  FF7616            push word [bp+0x16]
00000831  FF7614            push word [bp+0x14]
00000834  BB2001            mov bx,0x120
00000837  2BC0              sub ax,ax
00000839  8ED8              mov ds,ax
0000083B  FF1EF001          call word far [0x1f0]
0000083F  8BE5              mov sp,bp
00000841  1F                pop ds
00000842  5D                pop bp
00000843  CA1000            retf word 0x10
00000846  55                push bp
00000847  1E                push ds
00000848  8BEC              mov bp,sp
0000084A  FF7608            push word [bp+0x8]
0000084D  FF760A            push word [bp+0xa]
00000850  FF760C            push word [bp+0xc]
00000853  FF760E            push word [bp+0xe]
00000856  FF7612            push word [bp+0x12]
00000859  FF7610            push word [bp+0x10]
0000085C  FF7616            push word [bp+0x16]
0000085F  FF7614            push word [bp+0x14]
00000862  BB1E01            mov bx,0x11e
00000865  2BC0              sub ax,ax
00000867  8ED8              mov ds,ax
00000869  FF1EF001          call word far [0x1f0]
0000086D  8BE5              mov sp,bp
0000086F  1F                pop ds
00000870  5D                pop bp
00000871  CA1000            retf word 0x10
00000874  55                push bp
00000875  1E                push ds
00000876  8BEC              mov bp,sp
00000878  FF7608            push word [bp+0x8]
0000087B  FF760A            push word [bp+0xa]
0000087E  FF760E            push word [bp+0xe]
00000881  FF760C            push word [bp+0xc]
00000884  FF7612            push word [bp+0x12]
00000887  FF7610            push word [bp+0x10]
0000088A  BB1C01            mov bx,0x11c
0000088D  2BC0              sub ax,ax
0000088F  8ED8              mov ds,ax
00000891  FF1EF001          call word far [0x1f0]
00000895  8BE5              mov sp,bp
00000897  1F                pop ds
00000898  5D                pop bp
00000899  CA0C00            retf word 0xc
0000089C  55                push bp
0000089D  1E                push ds
0000089E  8BEC              mov bp,sp
000008A0  FF760A            push word [bp+0xa]
000008A3  FF7608            push word [bp+0x8]
000008A6  FF760E            push word [bp+0xe]
000008A9  FF760C            push word [bp+0xc]
000008AC  BB1A01            mov bx,0x11a
000008AF  2BC0              sub ax,ax
000008B1  8ED8              mov ds,ax
000008B3  FF1EF001          call word far [0x1f0]
000008B7  8BE5              mov sp,bp
000008B9  1F                pop ds
000008BA  5D                pop bp
000008BB  CA0800            retf word 0x8
000008BE  55                push bp
000008BF  1E                push ds
000008C0  8BEC              mov bp,sp
000008C2  FF760A            push word [bp+0xa]
000008C5  FF7608            push word [bp+0x8]
000008C8  FF760E            push word [bp+0xe]
000008CB  FF760C            push word [bp+0xc]
000008CE  FF7610            push word [bp+0x10]
000008D1  FF7614            push word [bp+0x14]
000008D4  FF7612            push word [bp+0x12]
000008D7  BBC401            mov bx,0x1c4
000008DA  2BC0              sub ax,ax
000008DC  8ED8              mov ds,ax
000008DE  FF1EF001          call word far [0x1f0]
000008E2  8BE5              mov sp,bp
000008E4  1F                pop ds
000008E5  5D                pop bp
000008E6  CA0E00            retf word 0xe
000008E9  55                push bp
000008EA  1E                push ds
000008EB  8BEC              mov bp,sp
000008ED  FF760A            push word [bp+0xa]
000008F0  FF7608            push word [bp+0x8]
000008F3  FF760E            push word [bp+0xe]
000008F6  FF760C            push word [bp+0xc]
000008F9  BB1801            mov bx,0x118
000008FC  2BC0              sub ax,ax
000008FE  8ED8              mov ds,ax
00000900  FF1EF001          call word far [0x1f0]
00000904  8BE5              mov sp,bp
00000906  1F                pop ds
00000907  5D                pop bp
00000908  CA0800            retf word 0x8
0000090B  55                push bp
0000090C  1E                push ds
0000090D  8BEC              mov bp,sp
0000090F  FF7608            push word [bp+0x8]
00000912  FF760A            push word [bp+0xa]
00000915  FF760E            push word [bp+0xe]
00000918  FF760C            push word [bp+0xc]
0000091B  FF7612            push word [bp+0x12]
0000091E  FF7610            push word [bp+0x10]
00000921  BB1601            mov bx,0x116
00000924  2BC0              sub ax,ax
00000926  8ED8              mov ds,ax
00000928  FF1EF001          call word far [0x1f0]
0000092C  8BE5              mov sp,bp
0000092E  1F                pop ds
0000092F  5D                pop bp
00000930  CA0C00            retf word 0xc
00000933  55                push bp
00000934  1E                push ds
00000935  8BEC              mov bp,sp
00000937  FF760A            push word [bp+0xa]
0000093A  FF7608            push word [bp+0x8]
0000093D  FF760E            push word [bp+0xe]
00000940  FF760C            push word [bp+0xc]
00000943  FF7612            push word [bp+0x12]
00000946  FF7610            push word [bp+0x10]
00000949  BB1401            mov bx,0x114
0000094C  2BC0              sub ax,ax
0000094E  8ED8              mov ds,ax
00000950  FF1EF001          call word far [0x1f0]
00000954  8BE5              mov sp,bp
00000956  1F                pop ds
00000957  5D                pop bp
00000958  CA0C00            retf word 0xc
0000095B  55                push bp
0000095C  1E                push ds
0000095D  8BEC              mov bp,sp
0000095F  FF760A            push word [bp+0xa]
00000962  FF7608            push word [bp+0x8]
00000965  BB1201            mov bx,0x112
00000968  2BC0              sub ax,ax
0000096A  8ED8              mov ds,ax
0000096C  FF1EF001          call word far [0x1f0]
00000970  8BE5              mov sp,bp
00000972  1F                pop ds
00000973  5D                pop bp
00000974  CA0400            retf word 0x4
00000977  55                push bp
00000978  1E                push ds
00000979  8BEC              mov bp,sp
0000097B  FF7608            push word [bp+0x8]
0000097E  FF760A            push word [bp+0xa]
00000981  FF760C            push word [bp+0xc]
00000984  FF760E            push word [bp+0xe]
00000987  BB1001            mov bx,0x110
0000098A  2BC0              sub ax,ax
0000098C  8ED8              mov ds,ax
0000098E  FF1EF001          call word far [0x1f0]
00000992  8BE5              mov sp,bp
00000994  1F                pop ds
00000995  5D                pop bp
00000996  CA0800            retf word 0x8
00000999  55                push bp
0000099A  1E                push ds
0000099B  8BEC              mov bp,sp
0000099D  BB0E01            mov bx,0x10e
000009A0  2BC0              sub ax,ax
000009A2  8ED8              mov ds,ax
000009A4  FF1EF001          call word far [0x1f0]
000009A8  8BE5              mov sp,bp
000009AA  1F                pop ds
000009AB  5D                pop bp
000009AC  CB                retf
000009AD  55                push bp
000009AE  1E                push ds
000009AF  8BEC              mov bp,sp
000009B1  FF7608            push word [bp+0x8]
000009B4  FF760A            push word [bp+0xa]
000009B7  BB0C01            mov bx,0x10c
000009BA  2BC0              sub ax,ax
000009BC  8ED8              mov ds,ax
000009BE  FF1EF001          call word far [0x1f0]
000009C2  8BE5              mov sp,bp
000009C4  1F                pop ds
000009C5  5D                pop bp
000009C6  CA0400            retf word 0x4
000009C9  55                push bp
000009CA  1E                push ds
000009CB  8BEC              mov bp,sp
000009CD  FF7608            push word [bp+0x8]
000009D0  BB0A01            mov bx,0x10a
000009D3  2BC0              sub ax,ax
000009D5  8ED8              mov ds,ax
000009D7  FF1EF001          call word far [0x1f0]
000009DB  8BE5              mov sp,bp
000009DD  1F                pop ds
000009DE  5D                pop bp
000009DF  CA0200            retf word 0x2
000009E2  55                push bp
000009E3  1E                push ds
000009E4  8BEC              mov bp,sp
000009E6  FF760A            push word [bp+0xa]
000009E9  FF7608            push word [bp+0x8]
000009EC  BB0801            mov bx,0x108
000009EF  2BC0              sub ax,ax
000009F1  8ED8              mov ds,ax
000009F3  FF1EF001          call word far [0x1f0]
000009F7  8BE5              mov sp,bp
000009F9  1F                pop ds
000009FA  5D                pop bp
000009FB  CA0400            retf word 0x4
000009FE  55                push bp
000009FF  1E                push ds
00000A00  8BEC              mov bp,sp
00000A02  FF760A            push word [bp+0xa]
00000A05  FF7608            push word [bp+0x8]
00000A08  BB0601            mov bx,0x106
00000A0B  2BC0              sub ax,ax
00000A0D  8ED8              mov ds,ax
00000A0F  FF1EF001          call word far [0x1f0]
00000A13  8BE5              mov sp,bp
00000A15  1F                pop ds
00000A16  5D                pop bp
00000A17  CA0400            retf word 0x4
00000A1A  55                push bp
00000A1B  1E                push ds
00000A1C  8BEC              mov bp,sp
00000A1E  FF760A            push word [bp+0xa]
00000A21  FF7608            push word [bp+0x8]
00000A24  FF760C            push word [bp+0xc]
00000A27  BB0401            mov bx,0x104
00000A2A  2BC0              sub ax,ax
00000A2C  8ED8              mov ds,ax
00000A2E  FF1EF001          call word far [0x1f0]
00000A32  8BE5              mov sp,bp
00000A34  1F                pop ds
00000A35  5D                pop bp
00000A36  CA0600            retf word 0x6
00000A39  55                push bp
00000A3A  1E                push ds
00000A3B  8BEC              mov bp,sp
00000A3D  FF760A            push word [bp+0xa]
00000A40  FF7608            push word [bp+0x8]
00000A43  FF760C            push word [bp+0xc]
00000A46  BB0201            mov bx,0x102
00000A49  2BC0              sub ax,ax
00000A4B  8ED8              mov ds,ax
00000A4D  FF1EF001          call word far [0x1f0]
00000A51  8BE5              mov sp,bp
00000A53  1F                pop ds
00000A54  5D                pop bp
00000A55  CA0600            retf word 0x6
00000A58  55                push bp
00000A59  1E                push ds
00000A5A  8BEC              mov bp,sp
00000A5C  FF7608            push word [bp+0x8]
00000A5F  FF760A            push word [bp+0xa]
00000A62  BB0001            mov bx,0x100
00000A65  2BC0              sub ax,ax
00000A67  8ED8              mov ds,ax
00000A69  FF1EF001          call word far [0x1f0]
00000A6D  8BE5              mov sp,bp
00000A6F  1F                pop ds
00000A70  5D                pop bp
00000A71  CA0400            retf word 0x4
00000A74  55                push bp
00000A75  1E                push ds
00000A76  8BEC              mov bp,sp
00000A78  FF7608            push word [bp+0x8]
00000A7B  BBFC00            mov bx,0xfc
00000A7E  2BC0              sub ax,ax
00000A80  8ED8              mov ds,ax
00000A82  FF1EF001          call word far [0x1f0]
00000A86  8BE5              mov sp,bp
00000A88  1F                pop ds
00000A89  5D                pop bp
00000A8A  CA0200            retf word 0x2
00000A8D  55                push bp
00000A8E  1E                push ds
00000A8F  8BEC              mov bp,sp
00000A91  FF7608            push word [bp+0x8]
00000A94  BBFE00            mov bx,0xfe
00000A97  2BC0              sub ax,ax
00000A99  8ED8              mov ds,ax
00000A9B  FF1EF001          call word far [0x1f0]
00000A9F  8BE5              mov sp,bp
00000AA1  1F                pop ds
00000AA2  5D                pop bp
00000AA3  CA0200            retf word 0x2
00000AA6  55                push bp
00000AA7  1E                push ds
00000AA8  8BEC              mov bp,sp
00000AAA  BBFA00            mov bx,0xfa
00000AAD  2BC0              sub ax,ax
00000AAF  8ED8              mov ds,ax
00000AB1  FF1EF001          call word far [0x1f0]
00000AB5  8BE5              mov sp,bp
00000AB7  1F                pop ds
00000AB8  5D                pop bp
00000AB9  CB                retf
00000ABA  55                push bp
00000ABB  1E                push ds
00000ABC  8BEC              mov bp,sp
00000ABE  FF7608            push word [bp+0x8]
00000AC1  BBF800            mov bx,0xf8
00000AC4  2BC0              sub ax,ax
00000AC6  8ED8              mov ds,ax
00000AC8  FF1EF001          call word far [0x1f0]
00000ACC  8BE5              mov sp,bp
00000ACE  1F                pop ds
00000ACF  5D                pop bp
00000AD0  CA0200            retf word 0x2
00000AD3  55                push bp
00000AD4  1E                push ds
00000AD5  8BEC              mov bp,sp
00000AD7  FF7608            push word [bp+0x8]
00000ADA  BBF600            mov bx,0xf6
00000ADD  2BC0              sub ax,ax
00000ADF  8ED8              mov ds,ax
00000AE1  FF1EF001          call word far [0x1f0]
00000AE5  8BE5              mov sp,bp
00000AE7  1F                pop ds
00000AE8  5D                pop bp
00000AE9  CA0200            retf word 0x2
00000AEC  55                push bp
00000AED  1E                push ds
00000AEE  8BEC              mov bp,sp
00000AF0  FF760A            push word [bp+0xa]
00000AF3  FF7608            push word [bp+0x8]
00000AF6  BBC201            mov bx,0x1c2
00000AF9  2BC0              sub ax,ax
00000AFB  8ED8              mov ds,ax
00000AFD  FF1EF001          call word far [0x1f0]
00000B01  8BE5              mov sp,bp
00000B03  1F                pop ds
00000B04  5D                pop bp
00000B05  CA0400            retf word 0x4
00000B08  55                push bp
00000B09  1E                push ds
00000B0A  8BEC              mov bp,sp
00000B0C  FF7608            push word [bp+0x8]
00000B0F  BBF400            mov bx,0xf4
00000B12  2BC0              sub ax,ax
00000B14  8ED8              mov ds,ax
00000B16  FF1EF001          call word far [0x1f0]
00000B1A  8BE5              mov sp,bp
00000B1C  1F                pop ds
00000B1D  5D                pop bp
00000B1E  CA0200            retf word 0x2
00000B21  55                push bp
00000B22  1E                push ds
00000B23  8BEC              mov bp,sp
00000B25  FF7608            push word [bp+0x8]
00000B28  BBF200            mov bx,0xf2
00000B2B  2BC0              sub ax,ax
00000B2D  8ED8              mov ds,ax
00000B2F  FF1EF001          call word far [0x1f0]
00000B33  8BE5              mov sp,bp
00000B35  1F                pop ds
00000B36  5D                pop bp
00000B37  CA0200            retf word 0x2
00000B3A  55                push bp
00000B3B  1E                push ds
00000B3C  8BEC              mov bp,sp
00000B3E  FF7608            push word [bp+0x8]
00000B41  BBF000            mov bx,0xf0
00000B44  2BC0              sub ax,ax
00000B46  8ED8              mov ds,ax
00000B48  FF1EF001          call word far [0x1f0]
00000B4C  8BE5              mov sp,bp
00000B4E  1F                pop ds
00000B4F  5D                pop bp
00000B50  CA0200            retf word 0x2
00000B53  55                push bp
00000B54  1E                push ds
00000B55  8BEC              mov bp,sp
00000B57  FF760A            push word [bp+0xa]
00000B5A  FF7608            push word [bp+0x8]
00000B5D  FF760C            push word [bp+0xc]
00000B60  BBEE00            mov bx,0xee
00000B63  2BC0              sub ax,ax
00000B65  8ED8              mov ds,ax
00000B67  FF1EF001          call word far [0x1f0]
00000B6B  8BE5              mov sp,bp
00000B6D  1F                pop ds
00000B6E  5D                pop bp
00000B6F  CA0600            retf word 0x6
00000B72  55                push bp
00000B73  1E                push ds
00000B74  8BEC              mov bp,sp
00000B76  FF7608            push word [bp+0x8]
00000B79  FF760A            push word [bp+0xa]
00000B7C  FF760E            push word [bp+0xe]
00000B7F  FF760C            push word [bp+0xc]
00000B82  BBEC00            mov bx,0xec
00000B85  2BC0              sub ax,ax
00000B87  8ED8              mov ds,ax
00000B89  FF1EF001          call word far [0x1f0]
00000B8D  8BE5              mov sp,bp
00000B8F  1F                pop ds
00000B90  5D                pop bp
00000B91  CA0800            retf word 0x8
00000B94  55                push bp
00000B95  1E                push ds
00000B96  8BEC              mov bp,sp
00000B98  FF760A            push word [bp+0xa]
00000B9B  FF7608            push word [bp+0x8]
00000B9E  BBEA00            mov bx,0xea
00000BA1  2BC0              sub ax,ax
00000BA3  8ED8              mov ds,ax
00000BA5  FF1EF001          call word far [0x1f0]
00000BA9  8BE5              mov sp,bp
00000BAB  1F                pop ds
00000BAC  5D                pop bp
00000BAD  CA0400            retf word 0x4
00000BB0  55                push bp
00000BB1  1E                push ds
00000BB2  8BEC              mov bp,sp
00000BB4  FF760A            push word [bp+0xa]
00000BB7  FF7608            push word [bp+0x8]
00000BBA  FF760E            push word [bp+0xe]
00000BBD  FF760C            push word [bp+0xc]
00000BC0  FF7610            push word [bp+0x10]
00000BC3  BBE800            mov bx,0xe8
00000BC6  2BC0              sub ax,ax
00000BC8  8ED8              mov ds,ax
00000BCA  FF1EF001          call word far [0x1f0]
00000BCE  8BE5              mov sp,bp
00000BD0  1F                pop ds
00000BD1  5D                pop bp
00000BD2  CA0A00            retf word 0xa
00000BD5  55                push bp
00000BD6  1E                push ds
00000BD7  8BEC              mov bp,sp
00000BD9  FF760A            push word [bp+0xa]
00000BDC  FF7608            push word [bp+0x8]
00000BDF  BBE600            mov bx,0xe6
00000BE2  2BC0              sub ax,ax
00000BE4  8ED8              mov ds,ax
00000BE6  FF1EF001          call word far [0x1f0]
00000BEA  8BE5              mov sp,bp
00000BEC  1F                pop ds
00000BED  5D                pop bp
00000BEE  CA0400            retf word 0x4
00000BF1  55                push bp
00000BF2  1E                push ds
00000BF3  8BEC              mov bp,sp
00000BF5  FF7608            push word [bp+0x8]
00000BF8  FF760A            push word [bp+0xa]
00000BFB  FF760E            push word [bp+0xe]
00000BFE  FF760C            push word [bp+0xc]
00000C01  BBE400            mov bx,0xe4
00000C04  2BC0              sub ax,ax
00000C06  8ED8              mov ds,ax
00000C08  FF1EF001          call word far [0x1f0]
00000C0C  8BE5              mov sp,bp
00000C0E  1F                pop ds
00000C0F  5D                pop bp
00000C10  CA0800            retf word 0x8
00000C13  55                push bp
00000C14  1E                push ds
00000C15  8BEC              mov bp,sp
00000C17  FF760A            push word [bp+0xa]
00000C1A  FF7608            push word [bp+0x8]
00000C1D  FF760C            push word [bp+0xc]
00000C20  FF7610            push word [bp+0x10]
00000C23  FF760E            push word [bp+0xe]
00000C26  BBE200            mov bx,0xe2
00000C29  2BC0              sub ax,ax
00000C2B  8ED8              mov ds,ax
00000C2D  FF1EF001          call word far [0x1f0]
00000C31  8BE5              mov sp,bp
00000C33  1F                pop ds
00000C34  5D                pop bp
00000C35  CA0A00            retf word 0xa
00000C38  55                push bp
00000C39  1E                push ds
00000C3A  8BEC              mov bp,sp
00000C3C  FF7608            push word [bp+0x8]
00000C3F  FF760A            push word [bp+0xa]
00000C42  FF760E            push word [bp+0xe]
00000C45  FF760C            push word [bp+0xc]
00000C48  BBE000            mov bx,0xe0
00000C4B  2BC0              sub ax,ax
00000C4D  8ED8              mov ds,ax
00000C4F  FF1EF001          call word far [0x1f0]
00000C53  8BE5              mov sp,bp
00000C55  1F                pop ds
00000C56  5D                pop bp
00000C57  CA0800            retf word 0x8
00000C5A  55                push bp
00000C5B  1E                push ds
00000C5C  8BEC              mov bp,sp
00000C5E  FF7608            push word [bp+0x8]
00000C61  FF760A            push word [bp+0xa]
00000C64  FF760E            push word [bp+0xe]
00000C67  FF760C            push word [bp+0xc]
00000C6A  FF7612            push word [bp+0x12]
00000C6D  FF7610            push word [bp+0x10]
00000C70  FF7614            push word [bp+0x14]
00000C73  BBDE00            mov bx,0xde
00000C76  2BC0              sub ax,ax
00000C78  8ED8              mov ds,ax
00000C7A  FF1EF001          call word far [0x1f0]
00000C7E  8BE5              mov sp,bp
00000C80  1F                pop ds
00000C81  5D                pop bp
00000C82  CA0E00            retf word 0xe
00000C85  55                push bp
00000C86  1E                push ds
00000C87  8BEC              mov bp,sp
00000C89  FF7608            push word [bp+0x8]
00000C8C  FF760A            push word [bp+0xa]
00000C8F  BBDC00            mov bx,0xdc
00000C92  2BC0              sub ax,ax
00000C94  8ED8              mov ds,ax
00000C96  FF1EF001          call word far [0x1f0]
00000C9A  8BE5              mov sp,bp
00000C9C  1F                pop ds
00000C9D  5D                pop bp
00000C9E  CA0400            retf word 0x4
00000CA1  55                push bp
00000CA2  1E                push ds
00000CA3  8BEC              mov bp,sp
00000CA5  FF7608            push word [bp+0x8]
00000CA8  FF760A            push word [bp+0xa]
00000CAB  BBDA00            mov bx,0xda
00000CAE  2BC0              sub ax,ax
00000CB0  8ED8              mov ds,ax
00000CB2  FF1EF001          call word far [0x1f0]
00000CB6  8BE5              mov sp,bp
00000CB8  1F                pop ds
00000CB9  5D                pop bp
00000CBA  CA0400            retf word 0x4
00000CBD  55                push bp
00000CBE  1E                push ds
00000CBF  8BEC              mov bp,sp
00000CC1  FF7608            push word [bp+0x8]
00000CC4  FF760A            push word [bp+0xa]
00000CC7  BBD800            mov bx,0xd8
00000CCA  2BC0              sub ax,ax
00000CCC  8ED8              mov ds,ax
00000CCE  FF1EF001          call word far [0x1f0]
00000CD2  8BE5              mov sp,bp
00000CD4  1F                pop ds
00000CD5  5D                pop bp
00000CD6  CA0400            retf word 0x4
00000CD9  55                push bp
00000CDA  1E                push ds
00000CDB  8BEC              mov bp,sp
00000CDD  FF7608            push word [bp+0x8]
00000CE0  FF760A            push word [bp+0xa]
00000CE3  BBD600            mov bx,0xd6
00000CE6  2BC0              sub ax,ax
00000CE8  8ED8              mov ds,ax
00000CEA  FF1EF001          call word far [0x1f0]
00000CEE  8BE5              mov sp,bp
00000CF0  1F                pop ds
00000CF1  5D                pop bp
00000CF2  CA0400            retf word 0x4
00000CF5  55                push bp
00000CF6  1E                push ds
00000CF7  8BEC              mov bp,sp
00000CF9  FF7608            push word [bp+0x8]
00000CFC  BBCA00            mov bx,0xca
00000CFF  2BC0              sub ax,ax
00000D01  8ED8              mov ds,ax
00000D03  FF1EF001          call word far [0x1f0]
00000D07  8BE5              mov sp,bp
00000D09  1F                pop ds
00000D0A  5D                pop bp
00000D0B  CA0200            retf word 0x2
00000D0E  55                push bp
00000D0F  1E                push ds
00000D10  8BEC              mov bp,sp
00000D12  FF7608            push word [bp+0x8]
00000D15  BBC800            mov bx,0xc8
00000D18  2BC0              sub ax,ax
00000D1A  8ED8              mov ds,ax
00000D1C  FF1EF001          call word far [0x1f0]
00000D20  8BE5              mov sp,bp
00000D22  1F                pop ds
00000D23  5D                pop bp
00000D24  CA0200            retf word 0x2
00000D27  55                push bp
00000D28  1E                push ds
00000D29  8BEC              mov bp,sp
00000D2B  FF7608            push word [bp+0x8]
00000D2E  FF760A            push word [bp+0xa]
00000D31  BBC600            mov bx,0xc6
00000D34  2BC0              sub ax,ax
00000D36  8ED8              mov ds,ax
00000D38  FF1EF001          call word far [0x1f0]
00000D3C  8BE5              mov sp,bp
00000D3E  1F                pop ds
00000D3F  5D                pop bp
00000D40  CA0400            retf word 0x4
00000D43  55                push bp
00000D44  1E                push ds
00000D45  8BEC              mov bp,sp
00000D47  FF7608            push word [bp+0x8]
00000D4A  BBC400            mov bx,0xc4
00000D4D  2BC0              sub ax,ax
00000D4F  8ED8              mov ds,ax
00000D51  FF1EF001          call word far [0x1f0]
00000D55  8BE5              mov sp,bp
00000D57  1F                pop ds
00000D58  5D                pop bp
00000D59  CA0200            retf word 0x2
00000D5C  55                push bp
00000D5D  1E                push ds
00000D5E  8BEC              mov bp,sp
00000D60  FF760A            push word [bp+0xa]
00000D63  FF7608            push word [bp+0x8]
00000D66  FF760E            push word [bp+0xe]
00000D69  FF760C            push word [bp+0xc]
00000D6C  FF7612            push word [bp+0x12]
00000D6F  FF7610            push word [bp+0x10]
00000D72  BBC200            mov bx,0xc2
00000D75  2BC0              sub ax,ax
00000D77  8ED8              mov ds,ax
00000D79  FF1EF001          call word far [0x1f0]
00000D7D  8BE5              mov sp,bp
00000D7F  1F                pop ds
00000D80  5D                pop bp
00000D81  CA0C00            retf word 0xc
00000D84  55                push bp
00000D85  1E                push ds
00000D86  8BEC              mov bp,sp
00000D88  FF760A            push word [bp+0xa]
00000D8B  FF7608            push word [bp+0x8]
00000D8E  FF760E            push word [bp+0xe]
00000D91  FF760C            push word [bp+0xc]
00000D94  FF7612            push word [bp+0x12]
00000D97  FF7610            push word [bp+0x10]
00000D9A  BBC000            mov bx,0xc0
00000D9D  2BC0              sub ax,ax
00000D9F  8ED8              mov ds,ax
00000DA1  FF1EF001          call word far [0x1f0]
00000DA5  8BE5              mov sp,bp
00000DA7  1F                pop ds
00000DA8  5D                pop bp
00000DA9  CA0C00            retf word 0xc
00000DAC  55                push bp
00000DAD  1E                push ds
00000DAE  8BEC              mov bp,sp
00000DB0  FF760A            push word [bp+0xa]
00000DB3  FF7608            push word [bp+0x8]
00000DB6  FF760E            push word [bp+0xe]
00000DB9  FF760C            push word [bp+0xc]
00000DBC  FF7612            push word [bp+0x12]
00000DBF  FF7610            push word [bp+0x10]
00000DC2  FF7616            push word [bp+0x16]
00000DC5  FF7614            push word [bp+0x14]
00000DC8  FF7618            push word [bp+0x18]
00000DCB  BBBE00            mov bx,0xbe
00000DCE  2BC0              sub ax,ax
00000DD0  8ED8              mov ds,ax
00000DD2  FF1EF001          call word far [0x1f0]
00000DD6  8BE5              mov sp,bp
00000DD8  1F                pop ds
00000DD9  5D                pop bp
00000DDA  CA1200            retf word 0x12
00000DDD  55                push bp
00000DDE  1E                push ds
00000DDF  8BEC              mov bp,sp
00000DE1  FF760A            push word [bp+0xa]
00000DE4  FF7608            push word [bp+0x8]
00000DE7  FF760C            push word [bp+0xc]
00000DEA  FF760E            push word [bp+0xe]
00000DED  BBBC00            mov bx,0xbc
00000DF0  2BC0              sub ax,ax
00000DF2  8ED8              mov ds,ax
00000DF4  FF1EF001          call word far [0x1f0]
00000DF8  8BE5              mov sp,bp
00000DFA  1F                pop ds
00000DFB  5D                pop bp
00000DFC  CA0800            retf word 0x8
00000DFF  55                push bp
00000E00  1E                push ds
00000E01  8BEC              mov bp,sp
00000E03  FC                cld
00000E04  C57608            lds si,word [bp+0x8]
00000E07  2BC0              sub ax,ax
00000E09  AC                lodsb
00000E0A  50                push ax
00000E0B  1E                push ds
00000E0C  56                push si
00000E0D  BBBA00            mov bx,0xba
00000E10  2BC0              sub ax,ax
00000E12  8ED8              mov ds,ax
00000E14  FF1EF001          call word far [0x1f0]
00000E18  8BE5              mov sp,bp
00000E1A  1F                pop ds
00000E1B  5D                pop bp
00000E1C  CA0400            retf word 0x4
00000E1F  55                push bp
00000E20  1E                push ds
00000E21  8BEC              mov bp,sp
00000E23  FF7608            push word [bp+0x8]
00000E26  FF760A            push word [bp+0xa]
00000E29  BBB800            mov bx,0xb8
00000E2C  2BC0              sub ax,ax
00000E2E  8ED8              mov ds,ax
00000E30  FF1EF001          call word far [0x1f0]
00000E34  8BE5              mov sp,bp
00000E36  1F                pop ds
00000E37  5D                pop bp
00000E38  CA0400            retf word 0x4
00000E3B  55                push bp
00000E3C  1E                push ds
00000E3D  8BEC              mov bp,sp
00000E3F  FF7608            push word [bp+0x8]
00000E42  FF760A            push word [bp+0xa]
00000E45  BBB600            mov bx,0xb6
00000E48  2BC0              sub ax,ax
00000E4A  8ED8              mov ds,ax
00000E4C  FF1EF001          call word far [0x1f0]
00000E50  8BE5              mov sp,bp
00000E52  1F                pop ds
00000E53  5D                pop bp
00000E54  CA0400            retf word 0x4
00000E57  55                push bp
00000E58  1E                push ds
00000E59  8BEC              mov bp,sp
00000E5B  FF7608            push word [bp+0x8]
00000E5E  FF760A            push word [bp+0xa]
00000E61  FF760C            push word [bp+0xc]
00000E64  FF760E            push word [bp+0xe]
00000E67  BBB400            mov bx,0xb4
00000E6A  2BC0              sub ax,ax
00000E6C  8ED8              mov ds,ax
00000E6E  FF1EF001          call word far [0x1f0]
00000E72  8BE5              mov sp,bp
00000E74  1F                pop ds
00000E75  5D                pop bp
00000E76  CA0800            retf word 0x8
00000E79  55                push bp
00000E7A  1E                push ds
00000E7B  8BEC              mov bp,sp
00000E7D  FF760A            push word [bp+0xa]
00000E80  FF7608            push word [bp+0x8]
00000E83  BBB000            mov bx,0xb0
00000E86  2BC0              sub ax,ax
00000E88  8ED8              mov ds,ax
00000E8A  FF1EF001          call word far [0x1f0]
00000E8E  8BE5              mov sp,bp
00000E90  1F                pop ds
00000E91  5D                pop bp
00000E92  CA0400            retf word 0x4
00000E95  55                push bp
00000E96  1E                push ds
00000E97  8BEC              mov bp,sp
00000E99  FF760A            push word [bp+0xa]
00000E9C  FF7608            push word [bp+0x8]
00000E9F  BBAE00            mov bx,0xae
00000EA2  2BC0              sub ax,ax
00000EA4  8ED8              mov ds,ax
00000EA6  FF1EF001          call word far [0x1f0]
00000EAA  8BE5              mov sp,bp
00000EAC  1F                pop ds
00000EAD  5D                pop bp
00000EAE  CA0400            retf word 0x4
00000EB1  55                push bp
00000EB2  1E                push ds
00000EB3  8BEC              mov bp,sp
00000EB5  FF760A            push word [bp+0xa]
00000EB8  FF7608            push word [bp+0x8]
00000EBB  BBAC00            mov bx,0xac
00000EBE  2BC0              sub ax,ax
00000EC0  8ED8              mov ds,ax
00000EC2  FF1EF001          call word far [0x1f0]
00000EC6  8BE5              mov sp,bp
00000EC8  1F                pop ds
00000EC9  5D                pop bp
00000ECA  CA0400            retf word 0x4
00000ECD  55                push bp
00000ECE  1E                push ds
00000ECF  8BEC              mov bp,sp
00000ED1  FF760A            push word [bp+0xa]
00000ED4  FF7608            push word [bp+0x8]
00000ED7  BBAA00            mov bx,0xaa
00000EDA  2BC0              sub ax,ax
00000EDC  8ED8              mov ds,ax
00000EDE  FF1EF001          call word far [0x1f0]
00000EE2  8BE5              mov sp,bp
00000EE4  1F                pop ds
00000EE5  5D                pop bp
00000EE6  CA0400            retf word 0x4
00000EE9  55                push bp
00000EEA  1E                push ds
00000EEB  8BEC              mov bp,sp
00000EED  FF760A            push word [bp+0xa]
00000EF0  FF7608            push word [bp+0x8]
00000EF3  FF760C            push word [bp+0xc]
00000EF6  BBA800            mov bx,0xa8
00000EF9  2BC0              sub ax,ax
00000EFB  8ED8              mov ds,ax
00000EFD  FF1EF001          call word far [0x1f0]
00000F01  8BE5              mov sp,bp
00000F03  1F                pop ds
00000F04  5D                pop bp
00000F05  CA0600            retf word 0x6
00000F08  55                push bp
00000F09  1E                push ds
00000F0A  8BEC              mov bp,sp
00000F0C  FF7608            push word [bp+0x8]
00000F0F  FF760A            push word [bp+0xa]
00000F12  FF760E            push word [bp+0xe]
00000F15  FF760C            push word [bp+0xc]
00000F18  BBA600            mov bx,0xa6
00000F1B  2BC0              sub ax,ax
00000F1D  8ED8              mov ds,ax
00000F1F  FF1EF001          call word far [0x1f0]
00000F23  8BE5              mov sp,bp
00000F25  1F                pop ds
00000F26  5D                pop bp
00000F27  CA0800            retf word 0x8
00000F2A  55                push bp
00000F2B  1E                push ds
00000F2C  8BEC              mov bp,sp
00000F2E  FF760A            push word [bp+0xa]
00000F31  FF7608            push word [bp+0x8]
00000F34  BBA400            mov bx,0xa4
00000F37  2BC0              sub ax,ax
00000F39  8ED8              mov ds,ax
00000F3B  FF1EF001          call word far [0x1f0]
00000F3F  8BE5              mov sp,bp
00000F41  1F                pop ds
00000F42  5D                pop bp
00000F43  CA0400            retf word 0x4
00000F46  55                push bp
00000F47  1E                push ds
00000F48  8BEC              mov bp,sp
00000F4A  FF760A            push word [bp+0xa]
00000F4D  FF7608            push word [bp+0x8]
00000F50  FF760E            push word [bp+0xe]
00000F53  FF760C            push word [bp+0xc]
00000F56  FF7610            push word [bp+0x10]
00000F59  BBA200            mov bx,0xa2
00000F5C  2BC0              sub ax,ax
00000F5E  8ED8              mov ds,ax
00000F60  FF1EF001          call word far [0x1f0]
00000F64  8BE5              mov sp,bp
00000F66  1F                pop ds
00000F67  5D                pop bp
00000F68  CA0A00            retf word 0xa
00000F6B  55                push bp
00000F6C  1E                push ds
00000F6D  8BEC              mov bp,sp
00000F6F  FF760A            push word [bp+0xa]
00000F72  FF7608            push word [bp+0x8]
00000F75  BBA000            mov bx,0xa0
00000F78  2BC0              sub ax,ax
00000F7A  8ED8              mov ds,ax
00000F7C  FF1EF001          call word far [0x1f0]
00000F80  8BE5              mov sp,bp
00000F82  1F                pop ds
00000F83  5D                pop bp
00000F84  CA0400            retf word 0x4
00000F87  55                push bp
00000F88  1E                push ds
00000F89  8BEC              mov bp,sp
00000F8B  FF7608            push word [bp+0x8]
00000F8E  FF760A            push word [bp+0xa]
00000F91  FF760E            push word [bp+0xe]
00000F94  FF760C            push word [bp+0xc]
00000F97  BB9E00            mov bx,0x9e
00000F9A  2BC0              sub ax,ax
00000F9C  8ED8              mov ds,ax
00000F9E  FF1EF001          call word far [0x1f0]
00000FA2  8BE5              mov sp,bp
00000FA4  1F                pop ds
00000FA5  5D                pop bp
00000FA6  CA0800            retf word 0x8
00000FA9  55                push bp
00000FAA  1E                push ds
00000FAB  8BEC              mov bp,sp
00000FAD  FF7608            push word [bp+0x8]
00000FB0  FF760A            push word [bp+0xa]
00000FB3  FF760E            push word [bp+0xe]
00000FB6  FF760C            push word [bp+0xc]
00000FB9  BB9C00            mov bx,0x9c
00000FBC  2BC0              sub ax,ax
00000FBE  8ED8              mov ds,ax
00000FC0  FF1EF001          call word far [0x1f0]
00000FC4  8BE5              mov sp,bp
00000FC6  1F                pop ds
00000FC7  5D                pop bp
00000FC8  CA0800            retf word 0x8
00000FCB  55                push bp
00000FCC  1E                push ds
00000FCD  8BEC              mov bp,sp
00000FCF  FF760A            push word [bp+0xa]
00000FD2  FF7608            push word [bp+0x8]
00000FD5  BB9800            mov bx,0x98
00000FD8  2BC0              sub ax,ax
00000FDA  8ED8              mov ds,ax
00000FDC  FF1EF001          call word far [0x1f0]
00000FE0  8BE5              mov sp,bp
00000FE2  1F                pop ds
00000FE3  5D                pop bp
00000FE4  CA0400            retf word 0x4
00000FE7  55                push bp
00000FE8  1E                push ds
00000FE9  8BEC              mov bp,sp
00000FEB  FF7608            push word [bp+0x8]
00000FEE  BB9600            mov bx,0x96
00000FF1  2BC0              sub ax,ax
00000FF3  8ED8              mov ds,ax
00000FF5  FF1EF001          call word far [0x1f0]
00000FF9  8BE5              mov sp,bp
00000FFB  1F                pop ds
00000FFC  5D                pop bp
00000FFD  CA0200            retf word 0x2
00001000  55                push bp
00001001  1E                push ds
00001002  8BEC              mov bp,sp
00001004  FF7608            push word [bp+0x8]
00001007  BB9400            mov bx,0x94
0000100A  2BC0              sub ax,ax
0000100C  8ED8              mov ds,ax
0000100E  06                push es
0000100F  48                dec ax
00001010  C43EF001          les di,word [0x1f0]
00001014  26817DFEDEFA      cmp word [es:di-0x2],0xfade
0000101A  07                pop es
0000101B  7504              jnz 0x1021
0000101D  FF1EF001          call word far [0x1f0]
00001021  8BE5              mov sp,bp
00001023  1F                pop ds
00001024  5D                pop bp
00001025  CA0200            retf word 0x2
00001028  55                push bp
00001029  1E                push ds
0000102A  8BEC              mov bp,sp
0000102C  FF7608            push word [bp+0x8]
0000102F  FF760A            push word [bp+0xa]
00001032  FF760C            push word [bp+0xc]
00001035  FF7610            push word [bp+0x10]
00001038  FF760E            push word [bp+0xe]
0000103B  BB9A00            mov bx,0x9a
0000103E  2BC0              sub ax,ax
00001040  8ED8              mov ds,ax
00001042  FF1EF001          call word far [0x1f0]
00001046  8BE5              mov sp,bp
00001048  1F                pop ds
00001049  5D                pop bp
0000104A  CA0A00            retf word 0xa
0000104D  55                push bp
0000104E  1E                push ds
0000104F  8BEC              mov bp,sp
00001051  FF760A            push word [bp+0xa]
00001054  FF7608            push word [bp+0x8]
00001057  FF760E            push word [bp+0xe]
0000105A  FF760C            push word [bp+0xc]
0000105D  FF7612            push word [bp+0x12]
00001060  FF7610            push word [bp+0x10]
00001063  BB9000            mov bx,0x90
00001066  2BC0              sub ax,ax
00001068  8ED8              mov ds,ax
0000106A  FF1EF001          call word far [0x1f0]
0000106E  8BE5              mov sp,bp
00001070  1F                pop ds
00001071  5D                pop bp
00001072  CA0C00            retf word 0xc
00001075  55                push bp
00001076  1E                push ds
00001077  8BEC              mov bp,sp
00001079  FF760A            push word [bp+0xa]
0000107C  FF7608            push word [bp+0x8]
0000107F  BB8E00            mov bx,0x8e
00001082  2BC0              sub ax,ax
00001084  8ED8              mov ds,ax
00001086  FF1EF001          call word far [0x1f0]
0000108A  8BE5              mov sp,bp
0000108C  1F                pop ds
0000108D  5D                pop bp
0000108E  CA0400            retf word 0x4
00001091  55                push bp
00001092  1E                push ds
00001093  8BEC              mov bp,sp
00001095  FF760A            push word [bp+0xa]
00001098  FF7608            push word [bp+0x8]
0000109B  BBC001            mov bx,0x1c0
0000109E  2BC0              sub ax,ax
000010A0  8ED8              mov ds,ax
000010A2  FF1EF001          call word far [0x1f0]
000010A6  8BE5              mov sp,bp
000010A8  1F                pop ds
000010A9  5D                pop bp
000010AA  CA0400            retf word 0x4
000010AD  55                push bp
000010AE  1E                push ds
000010AF  8BEC              mov bp,sp
000010B1  BB8A00            mov bx,0x8a
000010B4  2BC0              sub ax,ax
000010B6  8ED8              mov ds,ax
000010B8  FF1EF001          call word far [0x1f0]
000010BC  8BE5              mov sp,bp
000010BE  1F                pop ds
000010BF  5D                pop bp
000010C0  CB                retf
000010C1  55                push bp
000010C2  1E                push ds
000010C3  8BEC              mov bp,sp
000010C5  BB8800            mov bx,0x88
000010C8  2BC0              sub ax,ax
000010CA  8ED8              mov ds,ax
000010CC  FF1EF001          call word far [0x1f0]
000010D0  8BE5              mov sp,bp
000010D2  1F                pop ds
000010D3  5D                pop bp
000010D4  CB                retf
000010D5  55                push bp
000010D6  1E                push ds
000010D7  8BEC              mov bp,sp
000010D9  BBBE01            mov bx,0x1be
000010DC  2BC0              sub ax,ax
000010DE  8ED8              mov ds,ax
000010E0  FF1EF001          call word far [0x1f0]
000010E4  8BE5              mov sp,bp
000010E6  1F                pop ds
000010E7  5D                pop bp
000010E8  CB                retf
000010E9  55                push bp
000010EA  1E                push ds
000010EB  8BEC              mov bp,sp
000010ED  FF7608            push word [bp+0x8]
000010F0  BB8600            mov bx,0x86
000010F3  2BC0              sub ax,ax
000010F5  8ED8              mov ds,ax
000010F7  FF1EF001          call word far [0x1f0]
000010FB  8BE5              mov sp,bp
000010FD  1F                pop ds
000010FE  5D                pop bp
000010FF  CA0200            retf word 0x2
00001102  55                push bp
00001103  1E                push ds
00001104  8BEC              mov bp,sp
00001106  FF760A            push word [bp+0xa]
00001109  FF7608            push word [bp+0x8]
0000110C  BB8400            mov bx,0x84
0000110F  2BC0              sub ax,ax
00001111  8ED8              mov ds,ax
00001113  FF1EF001          call word far [0x1f0]
00001117  8BE5              mov sp,bp
00001119  1F                pop ds
0000111A  5D                pop bp
0000111B  CA0400            retf word 0x4
0000111E  55                push bp
0000111F  1E                push ds
00001120  8BEC              mov bp,sp
00001122  FF7608            push word [bp+0x8]
00001125  FF760A            push word [bp+0xa]
00001128  BB8200            mov bx,0x82
0000112B  2BC0              sub ax,ax
0000112D  8ED8              mov ds,ax
0000112F  FF1EF001          call word far [0x1f0]
00001133  8BE5              mov sp,bp
00001135  1F                pop ds
00001136  5D                pop bp
00001137  CA0400            retf word 0x4
0000113A  55                push bp
0000113B  1E                push ds
0000113C  8BEC              mov bp,sp
0000113E  FF760A            push word [bp+0xa]
00001141  FF7608            push word [bp+0x8]
00001144  BB8000            mov bx,0x80
00001147  2BC0              sub ax,ax
00001149  8ED8              mov ds,ax
0000114B  FF1EF001          call word far [0x1f0]
0000114F  8BE5              mov sp,bp
00001151  1F                pop ds
00001152  5D                pop bp
00001153  CA0400            retf word 0x4
00001156  55                push bp
00001157  1E                push ds
00001158  8BEC              mov bp,sp
0000115A  FF760A            push word [bp+0xa]
0000115D  FF7608            push word [bp+0x8]
00001160  FF760C            push word [bp+0xc]
00001163  FF760E            push word [bp+0xe]
00001166  BBBC01            mov bx,0x1bc
00001169  2BC0              sub ax,ax
0000116B  8ED8              mov ds,ax
0000116D  FF1EF001          call word far [0x1f0]
00001171  8BE5              mov sp,bp
00001173  1F                pop ds
00001174  5D                pop bp
00001175  CA0800            retf word 0x8
00001178  55                push bp
00001179  1E                push ds
0000117A  8BEC              mov bp,sp
0000117C  FF7608            push word [bp+0x8]
0000117F  BB7C00            mov bx,0x7c
00001182  2BC0              sub ax,ax
00001184  8ED8              mov ds,ax
00001186  FF1EF001          call word far [0x1f0]
0000118A  8BE5              mov sp,bp
0000118C  1F                pop ds
0000118D  5D                pop bp
0000118E  CA0200            retf word 0x2
00001191  55                push bp
00001192  1E                push ds
00001193  8BEC              mov bp,sp
00001195  06                push es
00001196  C47E08            les di,word [bp+0x8]
00001199  8B4606            mov ax,[bp+0x6]
0000119C  2D0800            sub ax,0x8
0000119F  8ED8              mov ds,ax
000011A1  2BF6              sub si,si
000011A3  2BC9              sub cx,cx
000011A5  8A0C              mov cl,[si]
000011A7  FC                cld
000011A8  41                inc cx
000011A9  F3A4              rep movsb
000011AB  07                pop es
000011AC  1F                pop ds
000011AD  5D                pop bp
000011AE  CA0400            retf word 0x4
000011B1  55                push bp
000011B2  1E                push ds
000011B3  8BEC              mov bp,sp
000011B5  FF7608            push word [bp+0x8]
000011B8  BB7800            mov bx,0x78
000011BB  2BC0              sub ax,ax
000011BD  8ED8              mov ds,ax
000011BF  FF1EF001          call word far [0x1f0]
000011C3  8BE5              mov sp,bp
000011C5  1F                pop ds
000011C6  5D                pop bp
000011C7  CA0200            retf word 0x2
000011CA  55                push bp
000011CB  1E                push ds
000011CC  8BEC              mov bp,sp
000011CE  FF760A            push word [bp+0xa]
000011D1  FF7608            push word [bp+0x8]
000011D4  FF760E            push word [bp+0xe]
000011D7  FF760C            push word [bp+0xc]
000011DA  FF7612            push word [bp+0x12]
000011DD  FF7610            push word [bp+0x10]
000011E0  BB7600            mov bx,0x76
000011E3  2BC0              sub ax,ax
000011E5  8ED8              mov ds,ax
000011E7  FF1EF001          call word far [0x1f0]
000011EB  8BE5              mov sp,bp
000011ED  1F                pop ds
000011EE  5D                pop bp
000011EF  CA0C00            retf word 0xc
000011F2  55                push bp
000011F3  1E                push ds
000011F4  8BEC              mov bp,sp
000011F6  FF760A            push word [bp+0xa]
000011F9  FF7608            push word [bp+0x8]
000011FC  BB7000            mov bx,0x70
000011FF  2BC0              sub ax,ax
00001201  8ED8              mov ds,ax
00001203  FF1EF001          call word far [0x1f0]
00001207  8BE5              mov sp,bp
00001209  1F                pop ds
0000120A  5D                pop bp
0000120B  CA0400            retf word 0x4
0000120E  55                push bp
0000120F  1E                push ds
00001210  8BEC              mov bp,sp
00001212  FF760A            push word [bp+0xa]
00001215  FF7608            push word [bp+0x8]
00001218  BB6E00            mov bx,0x6e
0000121B  2BC0              sub ax,ax
0000121D  8ED8              mov ds,ax
0000121F  FF1EF001          call word far [0x1f0]
00001223  8BE5              mov sp,bp
00001225  1F                pop ds
00001226  5D                pop bp
00001227  CA0400            retf word 0x4
0000122A  55                push bp
0000122B  1E                push ds
0000122C  8BEC              mov bp,sp
0000122E  FF760A            push word [bp+0xa]
00001231  FF7608            push word [bp+0x8]
00001234  BB6C00            mov bx,0x6c
00001237  2BC0              sub ax,ax
00001239  8ED8              mov ds,ax
0000123B  FF1EF001          call word far [0x1f0]
0000123F  8BE5              mov sp,bp
00001241  1F                pop ds
00001242  5D                pop bp
00001243  CA0400            retf word 0x4
00001246  55                push bp
00001247  1E                push ds
00001248  8BEC              mov bp,sp
0000124A  FF760A            push word [bp+0xa]
0000124D  FF7608            push word [bp+0x8]
00001250  BB6A00            mov bx,0x6a
00001253  2BC0              sub ax,ax
00001255  8ED8              mov ds,ax
00001257  FF1EF001          call word far [0x1f0]
0000125B  8BE5              mov sp,bp
0000125D  1F                pop ds
0000125E  5D                pop bp
0000125F  CA0400            retf word 0x4
00001262  55                push bp
00001263  1E                push ds
00001264  8BEC              mov bp,sp
00001266  FF7608            push word [bp+0x8]
00001269  FF760A            push word [bp+0xa]
0000126C  FF760E            push word [bp+0xe]
0000126F  FF760C            push word [bp+0xc]
00001272  BB6800            mov bx,0x68
00001275  2BC0              sub ax,ax
00001277  8ED8              mov ds,ax
00001279  FF1EF001          call word far [0x1f0]
0000127D  8BE5              mov sp,bp
0000127F  1F                pop ds
00001280  5D                pop bp
00001281  CA0800            retf word 0x8
00001284  55                push bp
00001285  1E                push ds
00001286  8BEC              mov bp,sp
00001288  FF760A            push word [bp+0xa]
0000128B  FF7608            push word [bp+0x8]
0000128E  BB6600            mov bx,0x66
00001291  2BC0              sub ax,ax
00001293  8ED8              mov ds,ax
00001295  FF1EF001          call word far [0x1f0]
00001299  8BE5              mov sp,bp
0000129B  1F                pop ds
0000129C  5D                pop bp
0000129D  CA0400            retf word 0x4
000012A0  55                push bp
000012A1  1E                push ds
000012A2  8BEC              mov bp,sp
000012A4  FF760A            push word [bp+0xa]
000012A7  FF7608            push word [bp+0x8]
000012AA  FF760E            push word [bp+0xe]
000012AD  FF760C            push word [bp+0xc]
000012B0  FF7610            push word [bp+0x10]
000012B3  BB6400            mov bx,0x64
000012B6  2BC0              sub ax,ax
000012B8  8ED8              mov ds,ax
000012BA  FF1EF001          call word far [0x1f0]
000012BE  8BE5              mov sp,bp
000012C0  1F                pop ds
000012C1  5D                pop bp
000012C2  CA0A00            retf word 0xa
000012C5  55                push bp
000012C6  1E                push ds
000012C7  8BEC              mov bp,sp
000012C9  FF760A            push word [bp+0xa]
000012CC  FF7608            push word [bp+0x8]
000012CF  BB6200            mov bx,0x62
000012D2  2BC0              sub ax,ax
000012D4  8ED8              mov ds,ax
000012D6  FF1EF001          call word far [0x1f0]
000012DA  8BE5              mov sp,bp
000012DC  1F                pop ds
000012DD  5D                pop bp
000012DE  CA0400            retf word 0x4
000012E1  55                push bp
000012E2  1E                push ds
000012E3  8BEC              mov bp,sp
000012E5  FF7608            push word [bp+0x8]
000012E8  FF760A            push word [bp+0xa]
000012EB  FF760E            push word [bp+0xe]
000012EE  FF760C            push word [bp+0xc]
000012F1  BB6000            mov bx,0x60
000012F4  2BC0              sub ax,ax
000012F6  8ED8              mov ds,ax
000012F8  FF1EF001          call word far [0x1f0]
000012FC  8BE5              mov sp,bp
000012FE  1F                pop ds
000012FF  5D                pop bp
00001300  CA0800            retf word 0x8
00001303  55                push bp
00001304  1E                push ds
00001305  8BEC              mov bp,sp
00001307  FF7608            push word [bp+0x8]
0000130A  FF760A            push word [bp+0xa]
0000130D  FF760C            push word [bp+0xc]
00001310  FF7610            push word [bp+0x10]
00001313  FF760E            push word [bp+0xe]
00001316  BB5C00            mov bx,0x5c
00001319  2BC0              sub ax,ax
0000131B  8ED8              mov ds,ax
0000131D  FF1EF001          call word far [0x1f0]
00001321  8BE5              mov sp,bp
00001323  1F                pop ds
00001324  5D                pop bp
00001325  CA0A00            retf word 0xa
00001328  55                push bp
00001329  1E                push ds
0000132A  8BEC              mov bp,sp
0000132C  FF7608            push word [bp+0x8]
0000132F  FF760C            push word [bp+0xc]
00001332  FF760A            push word [bp+0xa]
00001335  BB5A00            mov bx,0x5a
00001338  2BC0              sub ax,ax
0000133A  8ED8              mov ds,ax
0000133C  FF1EF001          call word far [0x1f0]
00001340  8BE5              mov sp,bp
00001342  1F                pop ds
00001343  5D                pop bp
00001344  CA0600            retf word 0x6
00001347  55                push bp
00001348  1E                push ds
00001349  8BEC              mov bp,sp
0000134B  FF7608            push word [bp+0x8]
0000134E  FF760C            push word [bp+0xc]
00001351  FF760A            push word [bp+0xa]
00001354  FF7610            push word [bp+0x10]
00001357  FF760E            push word [bp+0xe]
0000135A  FF7612            push word [bp+0x12]
0000135D  BB5800            mov bx,0x58
00001360  2BC0              sub ax,ax
00001362  8ED8              mov ds,ax
00001364  FF1EF001          call word far [0x1f0]
00001368  8BE5              mov sp,bp
0000136A  1F                pop ds
0000136B  5D                pop bp
0000136C  CA0C00            retf word 0xc
0000136F  55                push bp
00001370  1E                push ds
00001371  8BEC              mov bp,sp
00001373  FF7608            push word [bp+0x8]
00001376  FF760C            push word [bp+0xc]
00001379  FF760A            push word [bp+0xa]
0000137C  BB5600            mov bx,0x56
0000137F  2BC0              sub ax,ax
00001381  8ED8              mov ds,ax
00001383  FF1EF001          call word far [0x1f0]
00001387  8BE5              mov sp,bp
00001389  1F                pop ds
0000138A  5D                pop bp
0000138B  CA0600            retf word 0x6
0000138E  55                push bp
0000138F  1E                push ds
00001390  8BEC              mov bp,sp
00001392  FF7608            push word [bp+0x8]
00001395  FF760A            push word [bp+0xa]
00001398  FF760C            push word [bp+0xc]
0000139B  FF7610            push word [bp+0x10]
0000139E  FF760E            push word [bp+0xe]
000013A1  BB5400            mov bx,0x54
000013A4  2BC0              sub ax,ax
000013A6  8ED8              mov ds,ax
000013A8  FF1EF001          call word far [0x1f0]
000013AC  8BE5              mov sp,bp
000013AE  1F                pop ds
000013AF  5D                pop bp
000013B0  CA0A00            retf word 0xa
000013B3  55                push bp
000013B4  1E                push ds
000013B5  8BEC              mov bp,sp
000013B7  FF7608            push word [bp+0x8]
000013BA  FF760C            push word [bp+0xc]
000013BD  FF760A            push word [bp+0xa]
000013C0  FC                cld
000013C1  C5760E            lds si,word [bp+0xe]
000013C4  2BC0              sub ax,ax
000013C6  AC                lodsb
000013C7  50                push ax
000013C8  1E                push ds
000013C9  56                push si
000013CA  BB5200            mov bx,0x52
000013CD  2BC0              sub ax,ax
000013CF  8ED8              mov ds,ax
000013D1  FF1EF001          call word far [0x1f0]
000013D5  8BE5              mov sp,bp
000013D7  1F                pop ds
000013D8  5D                pop bp
000013D9  CA0A00            retf word 0xa
000013DC  55                push bp
000013DD  1E                push ds
000013DE  8BEC              mov bp,sp
000013E0  FC                cld
000013E1  C57608            lds si,word [bp+0x8]
000013E4  2BC0              sub ax,ax
000013E6  AC                lodsb
000013E7  50                push ax
000013E8  1E                push ds
000013E9  56                push si
000013EA  FC                cld
000013EB  C5760C            lds si,word [bp+0xc]
000013EE  2BC0              sub ax,ax
000013F0  AC                lodsb
000013F1  50                push ax
000013F2  1E                push ds
000013F3  56                push si
000013F4  BB5000            mov bx,0x50
000013F7  2BC0              sub ax,ax
000013F9  8ED8              mov ds,ax
000013FB  FF1EF001          call word far [0x1f0]
000013FF  8BE5              mov sp,bp
00001401  1F                pop ds
00001402  5D                pop bp
00001403  CA0800            retf word 0x8
00001406  55                push bp
00001407  1E                push ds
00001408  8BEC              mov bp,sp
0000140A  FF7608            push word [bp+0x8]
0000140D  FF760C            push word [bp+0xc]
00001410  FF760A            push word [bp+0xa]
00001413  FC                cld
00001414  C5760E            lds si,word [bp+0xe]
00001417  2BC0              sub ax,ax
00001419  AC                lodsb
0000141A  50                push ax
0000141B  1E                push ds
0000141C  56                push si
0000141D  BB4E00            mov bx,0x4e
00001420  2BC0              sub ax,ax
00001422  8ED8              mov ds,ax
00001424  FF1EF001          call word far [0x1f0]
00001428  8BE5              mov sp,bp
0000142A  1F                pop ds
0000142B  5D                pop bp
0000142C  CA0A00            retf word 0xa
0000142F  55                push bp
00001430  1E                push ds
00001431  8BEC              mov bp,sp
00001433  FF7608            push word [bp+0x8]
00001436  FF760C            push word [bp+0xc]
00001439  FF760A            push word [bp+0xa]
0000143C  FC                cld
0000143D  C5760E            lds si,word [bp+0xe]
00001440  2BC0              sub ax,ax
00001442  AC                lodsb
00001443  50                push ax
00001444  1E                push ds
00001445  56                push si
00001446  BB4C00            mov bx,0x4c
00001449  2BC0              sub ax,ax
0000144B  8ED8              mov ds,ax
0000144D  FF1EF001          call word far [0x1f0]
00001451  8BE5              mov sp,bp
00001453  1F                pop ds
00001454  5D                pop bp
00001455  CA0A00            retf word 0xa
00001458  55                push bp
00001459  1E                push ds
0000145A  8BEC              mov bp,sp
0000145C  FC                cld
0000145D  C57608            lds si,word [bp+0x8]
00001460  2BC0              sub ax,ax
00001462  AC                lodsb
00001463  50                push ax
00001464  1E                push ds
00001465  56                push si
00001466  BB4A00            mov bx,0x4a
00001469  2BC0              sub ax,ax
0000146B  8ED8              mov ds,ax
0000146D  FF1EF001          call word far [0x1f0]
00001471  8BE5              mov sp,bp
00001473  1F                pop ds
00001474  5D                pop bp
00001475  CA0400            retf word 0x4
00001478  55                push bp
00001479  1E                push ds
0000147A  8BEC              mov bp,sp
0000147C  FF7608            push word [bp+0x8]
0000147F  FC                cld
00001480  C5760A            lds si,word [bp+0xa]
00001483  2BC0              sub ax,ax
00001485  AC                lodsb
00001486  50                push ax
00001487  1E                push ds
00001488  56                push si
00001489  BB4800            mov bx,0x48
0000148C  2BC0              sub ax,ax
0000148E  8ED8              mov ds,ax
00001490  FF1EF001          call word far [0x1f0]
00001494  8BE5              mov sp,bp
00001496  1F                pop ds
00001497  5D                pop bp
00001498  CA0600            retf word 0x6
0000149B  55                push bp
0000149C  1E                push ds
0000149D  8BEC              mov bp,sp
0000149F  8CC0              mov ax,es
000014A1  1F                pop ds
000014A2  5D                pop bp
000014A3  CB                retf
000014A4  55                push bp
000014A5  1E                push ds
000014A6  8BEC              mov bp,sp
000014A8  FF7608            push word [bp+0x8]
000014AB  BB4400            mov bx,0x44
000014AE  2BC0              sub ax,ax
000014B0  8ED8              mov ds,ax
000014B2  FF1EF001          call word far [0x1f0]
000014B6  8BE5              mov sp,bp
000014B8  1F                pop ds
000014B9  5D                pop bp
000014BA  CA0200            retf word 0x2
000014BD  55                push bp
000014BE  1E                push ds
000014BF  8BEC              mov bp,sp
000014C1  FF7608            push word [bp+0x8]
000014C4  FF760A            push word [bp+0xa]
000014C7  FF760E            push word [bp+0xe]
000014CA  FF760C            push word [bp+0xc]
000014CD  BB4200            mov bx,0x42
000014D0  2BC0              sub ax,ax
000014D2  8ED8              mov ds,ax
000014D4  FF1EF001          call word far [0x1f0]
000014D8  8BE5              mov sp,bp
000014DA  1F                pop ds
000014DB  5D                pop bp
000014DC  CA0800            retf word 0x8
000014DF  55                push bp
000014E0  1E                push ds
000014E1  8BEC              mov bp,sp
000014E3  FF760A            push word [bp+0xa]
000014E6  FF7608            push word [bp+0x8]
000014E9  BB4000            mov bx,0x40
000014EC  2BC0              sub ax,ax
000014EE  8ED8              mov ds,ax
000014F0  FF1EF001          call word far [0x1f0]
000014F4  8BE5              mov sp,bp
000014F6  1F                pop ds
000014F7  5D                pop bp
000014F8  CA0400            retf word 0x4
000014FB  55                push bp
000014FC  1E                push ds
000014FD  8BEC              mov bp,sp
000014FF  FF760A            push word [bp+0xa]
00001502  FF7608            push word [bp+0x8]
00001505  FF760E            push word [bp+0xe]
00001508  FF760C            push word [bp+0xc]
0000150B  FF7610            push word [bp+0x10]
0000150E  BB3E00            mov bx,0x3e
00001511  2BC0              sub ax,ax
00001513  8ED8              mov ds,ax
00001515  FF1EF001          call word far [0x1f0]
00001519  8BE5              mov sp,bp
0000151B  1F                pop ds
0000151C  5D                pop bp
0000151D  CA0A00            retf word 0xa
00001520  55                push bp
00001521  1E                push ds
00001522  8BEC              mov bp,sp
00001524  FF760A            push word [bp+0xa]
00001527  FF7608            push word [bp+0x8]
0000152A  BB3C00            mov bx,0x3c
0000152D  2BC0              sub ax,ax
0000152F  8ED8              mov ds,ax
00001531  FF1EF001          call word far [0x1f0]
00001535  8BE5              mov sp,bp
00001537  1F                pop ds
00001538  5D                pop bp
00001539  CA0400            retf word 0x4
0000153C  55                push bp
0000153D  1E                push ds
0000153E  8BEC              mov bp,sp
00001540  FF7608            push word [bp+0x8]
00001543  FF760A            push word [bp+0xa]
00001546  FF760E            push word [bp+0xe]
00001549  FF760C            push word [bp+0xc]
0000154C  BB3A00            mov bx,0x3a
0000154F  2BC0              sub ax,ax
00001551  8ED8              mov ds,ax
00001553  FF1EF001          call word far [0x1f0]
00001557  8BE5              mov sp,bp
00001559  1F                pop ds
0000155A  5D                pop bp
0000155B  CA0800            retf word 0x8
0000155E  55                push bp
0000155F  1E                push ds
00001560  8BEC              mov bp,sp
00001562  FF760A            push word [bp+0xa]
00001565  FF7608            push word [bp+0x8]
00001568  FF760E            push word [bp+0xe]
0000156B  FF760C            push word [bp+0xc]
0000156E  BB3800            mov bx,0x38
00001571  2BC0              sub ax,ax
00001573  8ED8              mov ds,ax
00001575  FF1EF001          call word far [0x1f0]
00001579  8BE5              mov sp,bp
0000157B  1F                pop ds
0000157C  5D                pop bp
0000157D  CA0800            retf word 0x8
00001580  55                push bp
00001581  1E                push ds
00001582  8BEC              mov bp,sp
00001584  FF760A            push word [bp+0xa]
00001587  FF7608            push word [bp+0x8]
0000158A  FF760E            push word [bp+0xe]
0000158D  FF760C            push word [bp+0xc]
00001590  BB3600            mov bx,0x36
00001593  2BC0              sub ax,ax
00001595  8ED8              mov ds,ax
00001597  FF1EF001          call word far [0x1f0]
0000159B  8BE5              mov sp,bp
0000159D  1F                pop ds
0000159E  5D                pop bp
0000159F  CA0800            retf word 0x8
000015A2  55                push bp
000015A3  1E                push ds
000015A4  8BEC              mov bp,sp
000015A6  FF760A            push word [bp+0xa]
000015A9  FF7608            push word [bp+0x8]
000015AC  FF760E            push word [bp+0xe]
000015AF  FF760C            push word [bp+0xc]
000015B2  BB3400            mov bx,0x34
000015B5  2BC0              sub ax,ax
000015B7  8ED8              mov ds,ax
000015B9  FF1EF001          call word far [0x1f0]
000015BD  8BE5              mov sp,bp
000015BF  1F                pop ds
000015C0  5D                pop bp
000015C1  CA0800            retf word 0x8
000015C4  55                push bp
000015C5  1E                push ds
000015C6  8BEC              mov bp,sp
000015C8  FF760A            push word [bp+0xa]
000015CB  FF7608            push word [bp+0x8]
000015CE  FF760E            push word [bp+0xe]
000015D1  FF760C            push word [bp+0xc]
000015D4  BB3200            mov bx,0x32
000015D7  2BC0              sub ax,ax
000015D9  8ED8              mov ds,ax
000015DB  FF1EF001          call word far [0x1f0]
000015DF  8BE5              mov sp,bp
000015E1  1F                pop ds
000015E2  5D                pop bp
000015E3  CA0800            retf word 0x8
000015E6  55                push bp
000015E7  1E                push ds
000015E8  8BEC              mov bp,sp
000015EA  FF7608            push word [bp+0x8]
000015ED  FF760A            push word [bp+0xa]
000015F0  FC                cld
000015F1  C5760C            lds si,word [bp+0xc]
000015F4  2BC0              sub ax,ax
000015F6  AC                lodsb
000015F7  50                push ax
000015F8  1E                push ds
000015F9  56                push si
000015FA  BB3000            mov bx,0x30
000015FD  2BC0              sub ax,ax
000015FF  8ED8              mov ds,ax
00001601  FF1EF001          call word far [0x1f0]
00001605  8BE5              mov sp,bp
00001607  1F                pop ds
00001608  5D                pop bp
00001609  CA0800            retf word 0x8
0000160C  55                push bp
0000160D  1E                push ds
0000160E  8BEC              mov bp,sp
00001610  FC                cld
00001611  C57608            lds si,word [bp+0x8]
00001614  2BC0              sub ax,ax
00001616  AC                lodsb
00001617  50                push ax
00001618  1E                push ds
00001619  56                push si
0000161A  BB2E00            mov bx,0x2e
0000161D  2BC0              sub ax,ax
0000161F  8ED8              mov ds,ax
00001621  FF1EF001          call word far [0x1f0]
00001625  8BE5              mov sp,bp
00001627  1F                pop ds
00001628  5D                pop bp
00001629  CA0400            retf word 0x4
0000162C  55                push bp
0000162D  1E                push ds
0000162E  8BEC              mov bp,sp
00001630  FF7608            push word [bp+0x8]
00001633  BB2C00            mov bx,0x2c
00001636  2BC0              sub ax,ax
00001638  8ED8              mov ds,ax
0000163A  FF1EF001          call word far [0x1f0]
0000163E  8BE5              mov sp,bp
00001640  1F                pop ds
00001641  5D                pop bp
00001642  CA0200            retf word 0x2
00001645  55                push bp
00001646  1E                push ds
00001647  8BEC              mov bp,sp
00001649  FF760A            push word [bp+0xa]
0000164C  FF7608            push word [bp+0x8]
0000164F  FF760C            push word [bp+0xc]
00001652  BB2A00            mov bx,0x2a
00001655  2BC0              sub ax,ax
00001657  8ED8              mov ds,ax
00001659  FF1EF001          call word far [0x1f0]
0000165D  8BE5              mov sp,bp
0000165F  1F                pop ds
00001660  5D                pop bp
00001661  CA0600            retf word 0x6
00001664  55                push bp
00001665  1E                push ds
00001666  8BEC              mov bp,sp
00001668  FF760A            push word [bp+0xa]
0000166B  FF7608            push word [bp+0x8]
0000166E  FF760C            push word [bp+0xc]
00001671  BB2600            mov bx,0x26
00001674  2BC0              sub ax,ax
00001676  8ED8              mov ds,ax
00001678  FF1EF001          call word far [0x1f0]
0000167C  8BE5              mov sp,bp
0000167E  1F                pop ds
0000167F  5D                pop bp
00001680  CA0600            retf word 0x6
00001683  55                push bp
00001684  1E                push ds
00001685  8BEC              mov bp,sp
00001687  FF760A            push word [bp+0xa]
0000168A  FF7608            push word [bp+0x8]
0000168D  FF760E            push word [bp+0xe]
00001690  FF760C            push word [bp+0xc]
00001693  FF7610            push word [bp+0x10]
00001696  FF7612            push word [bp+0x12]
00001699  FF7614            push word [bp+0x14]
0000169C  BB2400            mov bx,0x24
0000169F  2BC0              sub ax,ax
000016A1  8ED8              mov ds,ax
000016A3  FF1EF001          call word far [0x1f0]
000016A7  8BE5              mov sp,bp
000016A9  1F                pop ds
000016AA  5D                pop bp
000016AB  CA0E00            retf word 0xe
000016AE  55                push bp
000016AF  1E                push ds
000016B0  8BEC              mov bp,sp
000016B2  8CD8              mov ax,ds
000016B4  1F                pop ds
000016B5  5D                pop bp
000016B6  CB                retf
000016B7  55                push bp
000016B8  1E                push ds
000016B9  8BEC              mov bp,sp
000016BB  FF7608            push word [bp+0x8]
000016BE  BB2000            mov bx,0x20
000016C1  2BC0              sub ax,ax
000016C3  8ED8              mov ds,ax
000016C5  FF1EF001          call word far [0x1f0]
000016C9  8BE5              mov sp,bp
000016CB  1F                pop ds
000016CC  5D                pop bp
000016CD  CA0200            retf word 0x2
000016D0  55                push bp
000016D1  1E                push ds
000016D2  8BEC              mov bp,sp
000016D4  FF760A            push word [bp+0xa]
000016D7  FF7608            push word [bp+0x8]
000016DA  BB1C00            mov bx,0x1c
000016DD  2BC0              sub ax,ax
000016DF  8ED8              mov ds,ax
000016E1  FF1EF001          call word far [0x1f0]
000016E5  8BE5              mov sp,bp
000016E7  1F                pop ds
000016E8  5D                pop bp
000016E9  CA0400            retf word 0x4
000016EC  55                push bp
000016ED  1E                push ds
000016EE  8BEC              mov bp,sp
000016F0  FF760A            push word [bp+0xa]
000016F3  FF7608            push word [bp+0x8]
000016F6  BB1A00            mov bx,0x1a
000016F9  2BC0              sub ax,ax
000016FB  8ED8              mov ds,ax
000016FD  FF1EF001          call word far [0x1f0]
00001701  8BE5              mov sp,bp
00001703  1F                pop ds
00001704  5D                pop bp
00001705  CA0400            retf word 0x4
00001708  55                push bp
00001709  1E                push ds
0000170A  8BEC              mov bp,sp
0000170C  FF7608            push word [bp+0x8]
0000170F  FF760C            push word [bp+0xc]
00001712  FF760A            push word [bp+0xa]
00001715  FF7610            push word [bp+0x10]
00001718  FF760E            push word [bp+0xe]
0000171B  FF7614            push word [bp+0x14]
0000171E  FF7612            push word [bp+0x12]
00001721  FF7618            push word [bp+0x18]
00001724  FF7616            push word [bp+0x16]
00001727  FF761C            push word [bp+0x1c]
0000172A  FF761A            push word [bp+0x1a]
0000172D  BB1800            mov bx,0x18
00001730  2BC0              sub ax,ax
00001732  8ED8              mov ds,ax
00001734  FF1EF001          call word far [0x1f0]
00001738  8BE5              mov sp,bp
0000173A  1F                pop ds
0000173B  5D                pop bp
0000173C  CA1600            retf word 0x16
0000173F  55                push bp
00001740  1E                push ds
00001741  8BEC              mov bp,sp
00001743  8B4606            mov ax,[bp+0x6]
00001746  1F                pop ds
00001747  5D                pop bp
00001748  CB                retf
00001749  55                push bp
0000174A  1E                push ds
0000174B  8BEC              mov bp,sp
0000174D  BB1400            mov bx,0x14
00001750  2BC0              sub ax,ax
00001752  8ED8              mov ds,ax
00001754  FF1EF001          call word far [0x1f0]
00001758  8BE5              mov sp,bp
0000175A  1F                pop ds
0000175B  5D                pop bp
0000175C  CB                retf
0000175D  55                push bp
0000175E  1E                push ds
0000175F  8BEC              mov bp,sp
00001761  FF760A            push word [bp+0xa]
00001764  FF7608            push word [bp+0x8]
00001767  BB1200            mov bx,0x12
0000176A  2BC0              sub ax,ax
0000176C  8ED8              mov ds,ax
0000176E  FF1EF001          call word far [0x1f0]
00001772  8BE5              mov sp,bp
00001774  1F                pop ds
00001775  5D                pop bp
00001776  CA0400            retf word 0x4
00001779  55                push bp
0000177A  1E                push ds
0000177B  8BEC              mov bp,sp
0000177D  BB1000            mov bx,0x10
00001780  2BC0              sub ax,ax
00001782  8ED8              mov ds,ax
00001784  FF1EF001          call word far [0x1f0]
00001788  8BE5              mov sp,bp
0000178A  1F                pop ds
0000178B  5D                pop bp
0000178C  CB                retf
0000178D  55                push bp
0000178E  1E                push ds
0000178F  8BEC              mov bp,sp
00001791  FF7608            push word [bp+0x8]
00001794  BB0E00            mov bx,0xe
00001797  2BC0              sub ax,ax
00001799  8ED8              mov ds,ax
0000179B  FF1EF001          call word far [0x1f0]
0000179F  8BE5              mov sp,bp
000017A1  1F                pop ds
000017A2  5D                pop bp
000017A3  CA0200            retf word 0x2
000017A6  55                push bp
000017A7  1E                push ds
000017A8  8BEC              mov bp,sp
000017AA  FF760A            push word [bp+0xa]
000017AD  FF7608            push word [bp+0x8]
000017B0  FF760C            push word [bp+0xc]
000017B3  FF760E            push word [bp+0xe]
000017B6  FF7612            push word [bp+0x12]
000017B9  FF7610            push word [bp+0x10]
000017BC  BB0C00            mov bx,0xc
000017BF  2BC0              sub ax,ax
000017C1  8ED8              mov ds,ax
000017C3  FF1EF001          call word far [0x1f0]
000017C7  8BE5              mov sp,bp
000017C9  1F                pop ds
000017CA  5D                pop bp
000017CB  CA0C00            retf word 0xc
000017CE  55                push bp
000017CF  1E                push ds
000017D0  8BEC              mov bp,sp
000017D2  FF7608            push word [bp+0x8]
000017D5  BB0A00            mov bx,0xa
000017D8  2BC0              sub ax,ax
000017DA  8ED8              mov ds,ax
000017DC  FF1EF001          call word far [0x1f0]
000017E0  8BE5              mov sp,bp
000017E2  1F                pop ds
000017E3  5D                pop bp
000017E4  CA0200            retf word 0x2
000017E7  55                push bp
000017E8  1E                push ds
000017E9  8BEC              mov bp,sp
000017EB  FF7608            push word [bp+0x8]
000017EE  BB0800            mov bx,0x8
000017F1  2BC0              sub ax,ax
000017F3  8ED8              mov ds,ax
000017F5  FF1EF001          call word far [0x1f0]
000017F9  8BE5              mov sp,bp
000017FB  1F                pop ds
000017FC  5D                pop bp
000017FD  CA0200            retf word 0x2
00001800  55                push bp
00001801  1E                push ds
00001802  8BEC              mov bp,sp
00001804  FF760A            push word [bp+0xa]
00001807  FF7608            push word [bp+0x8]
0000180A  BBC801            mov bx,0x1c8
0000180D  2BC0              sub ax,ax
0000180F  8ED8              mov ds,ax
00001811  FF1EF001          call word far [0x1f0]
00001815  8BE5              mov sp,bp
00001817  1F                pop ds
00001818  5D                pop bp
00001819  CA0400            retf word 0x4
0000181C  55                push bp
0000181D  1E                push ds
0000181E  8BEC              mov bp,sp
00001820  FF7608            push word [bp+0x8]
00001823  BB0600            mov bx,0x6
00001826  2BC0              sub ax,ax
00001828  8ED8              mov ds,ax
0000182A  FF1EF001          call word far [0x1f0]
0000182E  8BE5              mov sp,bp
00001830  1F                pop ds
00001831  5D                pop bp
00001832  CA0200            retf word 0x2
00001835  55                push bp
00001836  1E                push ds
00001837  8BEC              mov bp,sp
00001839  FF7608            push word [bp+0x8]
0000183C  FF760A            push word [bp+0xa]
0000183F  FF760C            push word [bp+0xc]
00001842  BB0400            mov bx,0x4
00001845  2BC0              sub ax,ax
00001847  8ED8              mov ds,ax
00001849  FF1EF001          call word far [0x1f0]
0000184D  8BE5              mov sp,bp
0000184F  1F                pop ds
00001850  5D                pop bp
00001851  CA0600            retf word 0x6
00001854  55                push bp
00001855  1E                push ds
00001856  8BEC              mov bp,sp
00001858  FF760A            push word [bp+0xa]
0000185B  FF7608            push word [bp+0x8]
0000185E  FF760E            push word [bp+0xe]
00001861  FF760C            push word [bp+0xc]
00001864  BB0200            mov bx,0x2
00001867  2BC0              sub ax,ax
00001869  8ED8              mov ds,ax
0000186B  FF1EF001          call word far [0x1f0]
0000186F  8BE5              mov sp,bp
00001871  1F                pop ds
00001872  5D                pop bp
00001873  CA0800            retf word 0x8
00001876  0000              add [bx+si],al
00001878  0000              add [bx+si],al
0000187A  0000              add [bx+si],al
0000187C  0000              add [bx+si],al
0000187E  0000              add [bx+si],al
