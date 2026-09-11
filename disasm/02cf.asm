00000000  55                push bp
00000001  89E5              mov bp,sp
00000003  83EC24            sub sp,0x24
00000006  31C0              xor ax,ax
00000008  50                push ax
00000009  B85D01            mov ax,0x15d
0000000C  50                push ax
0000000D  B88002            mov ax,0x280
00000010  50                push ax
00000011  B8A2FE            mov ax,0xfea2
00000014  50                push ax
00000015  9AE404430E        call word 0xe43:word 0x4e4
0000001A  8D7EDC            lea di,[bp-0x24]
0000001D  16                push ss
0000001E  57                push di
0000001F  9AAF08561A        call word 0x1a56:word 0x8af
00000024  B001              mov al,0x1
00000026  50                push ax
00000027  9ABE08561A        call word 0x1a56:word 0x8be
0000002C  B003              mov al,0x3
0000002E  50                push ax
0000002F  9ABE08561A        call word 0x1a56:word 0x8be
00000034  B005              mov al,0x5
00000036  50                push ax
00000037  9ABE08561A        call word 0x1a56:word 0x8be
0000003C  9A1A02E10B        call word 0xbe1:word 0x21a
00000041  BFEA07            mov di,0x7ea
00000044  1E                push ds
00000045  57                push di
00000046  9AA008E10B        call word 0xbe1:word 0x8a0
0000004B  9A4808E10B        call word 0xbe1:word 0x848
00000050  89EC              mov sp,bp
00000052  5D                pop bp
00000053  CB                retf
00000054  55                push bp
00000055  89E5              mov bp,sp
00000057  B89816            mov ax,0x1698
0000005A  8CDA              mov dx,ds
0000005C  52                push dx
0000005D  50                push ax
0000005E  31C0              xor ax,ax
00000060  31D2              xor dx,dx
00000062  52                push dx
00000063  50                push ax
00000064  B80C00            mov ax,0xc
00000067  50                push ax
00000068  B81400            mov ax,0x14
0000006B  50                push ax
0000006C  B80F00            mov ax,0xf
0000006F  50                push ax
00000070  B84A01            mov ax,0x14a
00000073  8CDA              mov dx,ds
00000075  52                push dx
00000076  50                push ax
00000077  9AA71B210A        call word 0xa21:word 0x1ba7
0000007C  B8271C            mov ax,0x1c27
0000007F  8CDA              mov dx,ds
00000081  52                push dx
00000082  50                push ax
00000083  31C0              xor ax,ax
00000085  31D2              xor dx,dx
00000087  52                push dx
00000088  50                push ax
00000089  B80A00            mov ax,0xa
0000008C  50                push ax
0000008D  B87300            mov ax,0x73
00000090  50                push ax
00000091  B82800            mov ax,0x28
00000094  50                push ax
00000095  B81900            mov ax,0x19
00000098  50                push ax
00000099  B80100            mov ax,0x1
0000009C  50                push ax
0000009D  B80F00            mov ax,0xf
000000A0  50                push ax
000000A1  B80100            mov ax,0x1
000000A4  50                push ax
000000A5  B8FFFF            mov ax,0xffff
000000A8  50                push ax
000000A9  9A6E1A210A        call word 0xa21:word 0x1a6e
000000AE  B89816            mov ax,0x1698
000000B1  8CDA              mov dx,ds
000000B3  A3391C            mov [0x1c39],ax
000000B6  89163B1C          mov [0x1c3b],dx
000000BA  89EC              mov sp,bp
000000BC  5D                pop bp
000000BD  CB                retf
000000BE  05496E            add ax,0x6e49
000000C1  666F              outsd
000000C3  2E06              cs push es
000000C5  53                push bx
000000C6  7461              jz 0x129
000000C8  7274              jc 0x13e
000000CA  2E06              cs push es
000000CC  48                dec ax
000000CD  656E              gs outsb
000000CF  7465              jz 0x136
000000D1  2E192D            sbb [cs:di],bp
000000D4  20656E            and [di+0x6e],ah
000000D7  205265            and [bp+si+0x65],dl
000000DA  676973739B72      imul si,[ebx+0x73],0x729b
000000E0  2D6170            sub ax,0x7061
000000E3  706C              jo 0x151
000000E5  696B61736A        imul bp,[bp+di+0x61],0x6a73
000000EA  6F                outsw
000000EB  6E                outsb
000000EC  55                push bp
000000ED  89E5              mov bp,sp
000000EF  83EC06            sub sp,0x6
000000F2  B80100            mov ax,0x1
000000F5  50                push ax
000000F6  B80300            mov ax,0x3
000000F9  50                push ax
000000FA  B001              mov al,0x1
000000FC  50                push ax
000000FD  9A5000210A        call word 0xa21:word 0x50
00000102  9AFE2A430E        call word 0xe43:word 0x2afe
00000107  B80400            mov ax,0x4
0000010A  50                push ax
0000010B  9AA32B430E        call word 0xe43:word 0x2ba3
00000110  A06E1E            mov al,[0x1e6e]
00000113  30E4              xor ah,ah
00000115  B90400            mov cx,0x4
00000118  D3E0              shl ax,cl
0000011A  8BD0              mov dx,ax
0000011C  B84001            mov ax,0x140
0000011F  2BC2              sub ax,dx
00000121  50                push ax
00000122  B85000            mov ax,0x50
00000125  50                push ax
00000126  9A8A1B430E        call word 0xe43:word 0x1b8a
0000012B  BF6E1E            mov di,0x1e6e
0000012E  1E                push ds
0000012F  57                push di
00000130  9AE010430E        call word 0xe43:word 0x10e0
00000135  B80200            mov ax,0x2
00000138  50                push ax
00000139  9AA32B430E        call word 0xe43:word 0x2ba3
0000013E  B85F00            mov ax,0x5f
00000141  50                push ax
00000142  B89A00            mov ax,0x9a
00000145  50                push ax
00000146  9A8A1B430E        call word 0xe43:word 0x1b8a
0000014B  BFBE00            mov di,0xbe
0000014E  0E                push cs
0000014F  57                push di
00000150  9AE010430E        call word 0xe43:word 0x10e0
00000155  B85F00            mov ax,0x5f
00000158  50                push ax
00000159  B8D600            mov ax,0xd6
0000015C  50                push ax
0000015D  9A8A1B430E        call word 0xe43:word 0x1b8a
00000162  BFC400            mov di,0xc4
00000165  0E                push cs
00000166  57                push di
00000167  9AE010430E        call word 0xe43:word 0x10e0
0000016C  B85F00            mov ax,0x5f
0000016F  50                push ax
00000170  B81201            mov ax,0x112
00000173  50                push ax
00000174  9A8A1B430E        call word 0xe43:word 0x1b8a
00000179  BFCB00            mov di,0xcb
0000017C  0E                push cs
0000017D  57                push di
0000017E  9AE010430E        call word 0xe43:word 0x10e0
00000183  B8F500            mov ax,0xf5
00000186  50                push ax
00000187  B87800            mov ax,0x78
0000018A  50                push ax
0000018B  B88001            mov ax,0x180
0000018E  50                push ax
0000018F  B8D800            mov ax,0xd8
00000192  50                push ax
00000193  9A3B23430E        call word 0xe43:word 0x233b
00000198  B80100            mov ax,0x1
0000019B  50                push ax
0000019C  9AA32B430E        call word 0xe43:word 0x2ba3
000001A1  B81400            mov ax,0x14
000001A4  50                push ax
000001A5  B85101            mov ax,0x151
000001A8  50                push ax
000001A9  9A8A1B430E        call word 0xe43:word 0x1b8a
000001AE  BFD200            mov di,0xd2
000001B1  0E                push cs
000001B2  57                push di
000001B3  9AE010430E        call word 0xe43:word 0x10e0
000001B8  B000              mov al,0x0
000001BA  50                push ax
000001BB  9A3A1B430E        call word 0xe43:word 0x1b3a
000001C0  31C0              xor ax,ax
000001C2  50                push ax
000001C3  B002              mov al,0x2
000001C5  50                push ax
000001C6  9A7102E305        call word 0x5e3:word 0x271
000001CB  8946FA            mov [bp-0x6],ax
000001CE  8956FC            mov [bp-0x4],dx
000001D1  8B46FA            mov ax,[bp-0x6]
000001D4  0B46FC            or ax,[bp-0x4]
000001D7  7415              jz 0x1ee
000001D9  8D7EFA            lea di,[bp-0x6]
000001DC  16                push ss
000001DD  57                push di
000001DE  B80101            mov ax,0x101
000001E1  50                push ax
000001E2  B88000            mov ax,0x80
000001E5  50                push ax
000001E6  B001              mov al,0x1
000001E8  50                push ax
000001E9  9AAF20430E        call word 0xe43:word 0x20af
000001EE  B8A616            mov ax,0x16a6
000001F1  8CDA              mov dx,ds
000001F3  52                push dx
000001F4  50                push ax
000001F5  B8C616            mov ax,0x16c6
000001F8  8CDA              mov dx,ds
000001FA  52                push dx
000001FB  50                push ax
000001FC  B81400            mov ax,0x14
000001FF  50                push ax
00000200  B87800            mov ax,0x78
00000203  50                push ax
00000204  B83800            mov ax,0x38
00000207  50                push ax
00000208  B82800            mov ax,0x28
0000020B  50                push ax
0000020C  B80100            mov ax,0x1
0000020F  50                push ax
00000210  B80F00            mov ax,0xf
00000213  50                push ax
00000214  B80100            mov ax,0x1
00000217  50                push ax
00000218  B80100            mov ax,0x1
0000021B  50                push ax
0000021C  9A6E1A210A        call word 0xa21:word 0x1a6e
00000221  B8C616            mov ax,0x16c6
00000224  8CDA              mov dx,ds
00000226  52                push dx
00000227  50                push ax
00000228  B8E616            mov ax,0x16e6
0000022B  8CDA              mov dx,ds
0000022D  52                push dx
0000022E  50                push ax
0000022F  B81400            mov ax,0x14
00000232  50                push ax
00000233  B8B400            mov ax,0xb4
00000236  50                push ax
00000237  B83800            mov ax,0x38
0000023A  50                push ax
0000023B  B82800            mov ax,0x28
0000023E  50                push ax
0000023F  B80100            mov ax,0x1
00000242  50                push ax
00000243  B80F00            mov ax,0xf
00000246  50                push ax
00000247  B80100            mov ax,0x1
0000024A  50                push ax
0000024B  B80200            mov ax,0x2
0000024E  50                push ax
0000024F  9A6E1A210A        call word 0xa21:word 0x1a6e
00000254  B8E616            mov ax,0x16e6
00000257  8CDA              mov dx,ds
00000259  52                push dx
0000025A  50                push ax
0000025B  31C0              xor ax,ax
0000025D  31D2              xor dx,dx
0000025F  52                push dx
00000260  50                push ax
00000261  B81400            mov ax,0x14
00000264  50                push ax
00000265  B8F000            mov ax,0xf0
00000268  50                push ax
00000269  B83800            mov ax,0x38
0000026C  50                push ax
0000026D  B82800            mov ax,0x28
00000270  50                push ax
00000271  B80100            mov ax,0x1
00000274  50                push ax
00000275  B80F00            mov ax,0xf
00000278  50                push ax
00000279  B80100            mov ax,0x1
0000027C  50                push ax
0000027D  B80300            mov ax,0x3
00000280  50                push ax
00000281  9A6E1A210A        call word 0xa21:word 0x1a6e
00000286  C4067247          les ax,word [0x4772]
0000028A  8CC2              mov dx,es
0000028C  A30A17            mov [0x170a],ax
0000028F  89160C17          mov [0x170c],dx
00000293  C4065647          les ax,word [0x4756]
00000297  8CC2              mov dx,es
00000299  A31217            mov [0x1712],ax
0000029C  89161417          mov [0x1714],dx
000002A0  C4067647          les ax,word [0x4776]
000002A4  8CC2              mov dx,es
000002A6  A31A17            mov [0x171a],ax
000002A9  89161C17          mov [0x171c],dx
000002AD  C746FE0100        mov word [bp-0x2],0x1
000002B2  EB03              jmp 0x2b7
000002B4  FF46FE            inc word [bp-0x2]
000002B7  8B7EFE            mov di,[bp-0x2]
000002BA  B103              mov cl,0x3
000002BC  D3E7              shl di,cl
000002BE  31C0              xor ax,ax
000002C0  8985FE16          mov [di+0x16fe],ax
000002C4  8B7EFE            mov di,[bp-0x2]
000002C7  B103              mov cl,0x3
000002C9  D3E7              shl di,cl
000002CB  31C0              xor ax,ax
000002CD  89850017          mov [di+0x1700],ax
000002D1  8B7EFE            mov di,[bp-0x2]
000002D4  B103              mov cl,0x3
000002D6  D3E7              shl di,cl
000002D8  8D85FE16          lea ax,[di+0x16fe]
000002DC  8CDA              mov dx,ds
000002DE  8B7EFE            mov di,[bp-0x2]
000002E1  B105              mov cl,0x5
000002E3  D3E7              shl di,cl
000002E5  89859C16          mov [di+0x169c],ax
000002E9  89959E16          mov [di+0x169e],dx
000002ED  837EFE03          cmp word [bp-0x2],0x3
000002F1  75C1              jnz 0x2b4
000002F3  C706141C0200      mov word [0x1c14],0x2
000002F9  C706161C0100      mov word [0x1c16],0x1
000002FF  C706181C0300      mov word [0x1c18],0x3
00000305  C6061A1C00        mov byte [0x1c1a],0x0
0000030A  B8A616            mov ax,0x16a6
0000030D  8CDA              mov dx,ds
0000030F  A31B1C            mov [0x1c1b],ax
00000312  89161D1C          mov [0x1c1d],dx
00000316  31C0              xor ax,ax
00000318  A31F1C            mov [0x1c1f],ax
0000031B  A3211C            mov [0x1c21],ax
0000031E  31C0              xor ax,ax
00000320  A3231C            mov [0x1c23],ax
00000323  A3251C            mov [0x1c25],ax
00000326  B8D81B            mov ax,0x1bd8
00000329  8CDA              mov dx,ds
0000032B  52                push dx
0000032C  50                push ax
0000032D  31C0              xor ax,ax
0000032F  50                push ax
00000330  31C0              xor ax,ax
00000332  50                push ax
00000333  B88002            mov ax,0x280
00000336  50                push ax
00000337  B85E01            mov ax,0x15e
0000033A  50                push ax
0000033B  9A060D210A        call word 0xa21:word 0xd06
00000340  0E                push cs
00000341  E810FD            call 0x54
00000344  9AF815210A        call word 0xa21:word 0x15f8
00000349  89EC              mov sp,bp
0000034B  5D                pop bp
0000034C  CB                retf
0000034D  55                push bp
0000034E  89E5              mov bp,sp
00000350  83EC5C            sub sp,0x5c
00000353  C746DC0100        mov word [bp-0x24],0x1
00000358  EB03              jmp 0x35d
0000035A  FF46DC            inc word [bp-0x24]
0000035D  8B46DC            mov ax,[bp-0x24]
00000360  BA0E00            mov dx,0xe
00000363  F7E2              mul dx
00000365  8BF8              mov di,ax
00000367  8D4396            lea ax,[bp+di-0x6a]
0000036A  8CD2              mov dx,ss
0000036C  52                push dx
0000036D  50                push ax
0000036E  8B46DC            mov ax,[bp-0x24]
00000371  40                inc ax
00000372  BA0E00            mov dx,0xe
00000375  F7E2              mul dx
00000377  8BF8              mov di,ax
00000379  8D4396            lea ax,[bp+di-0x6a]
0000037C  8CD2              mov dx,ss
0000037E  52                push dx
0000037F  50                push ax
00000380  B80A00            mov ax,0xa
00000383  50                push ax
00000384  8B46DC            mov ax,[bp-0x24]
00000387  B91400            mov cx,0x14
0000038A  F7E9              imul cx
0000038C  050A00            add ax,0xa
0000038F  50                push ax
00000390  B80F00            mov ax,0xf
00000393  50                push ax
00000394  8B46DC            mov ax,[bp-0x24]
00000397  BA2E00            mov dx,0x2e
0000039A  F7E2              mul dx
0000039C  8BF8              mov di,ax
0000039E  8D85541E          lea ax,[di+0x1e54]
000003A2  8CDA              mov dx,ds
000003A4  52                push dx
000003A5  50                push ax
000003A6  9AA71B210A        call word 0xa21:word 0x1ba7
000003AB  837EDC03          cmp word [bp-0x24],0x3
000003AF  75A9              jnz 0x35a
000003B1  8D46CE            lea ax,[bp-0x32]
000003B4  8CD2              mov dx,ss
000003B6  52                push dx
000003B7  50                push ax
000003B8  31C0              xor ax,ax
000003BA  31D2              xor dx,dx
000003BC  52                push dx
000003BD  50                push ax
000003BE  B80A00            mov ax,0xa
000003C1  50                push ax
000003C2  B85A00            mov ax,0x5a
000003C5  50                push ax
000003C6  B80F00            mov ax,0xf
000003C9  50                push ax
000003CA  B80C1F            mov ax,0x1f0c
000003CD  8CDA              mov dx,ds
000003CF  52                push dx
000003D0  50                push ax
000003D1  9AA71B210A        call word 0xa21:word 0x1ba7
000003D6  C7062D1C7300      mov word [0x1c2d],0x73
000003DC  8D46DE            lea ax,[bp-0x22]
000003DF  8CD2              mov dx,ss
000003E1  52                push dx
000003E2  50                push ax
000003E3  B89600            mov ax,0x96
000003E6  50                push ax
000003E7  B88200            mov ax,0x82
000003EA  50                push ax
000003EB  B87C01            mov ax,0x17c
000003EE  50                push ax
000003EF  B89600            mov ax,0x96
000003F2  50                push ax
000003F3  B80100            mov ax,0x1
000003F6  50                push ax
000003F7  B80F00            mov ax,0xf
000003FA  50                push ax
000003FB  B80800            mov ax,0x8
000003FE  50                push ax
000003FF  B8271C            mov ax,0x1c27
00000402  8CDA              mov dx,ds
00000404  52                push dx
00000405  50                push ax
00000406  9A091B210A        call word 0xa21:word 0x1b09
0000040B  8D46A4            lea ax,[bp-0x5c]
0000040E  8CD2              mov dx,ss
00000410  8946F0            mov [bp-0x10],ax
00000413  8956F2            mov [bp-0xe],dx
00000416  B8D81B            mov ax,0x1bd8
00000419  8CDA              mov dx,ds
0000041B  52                push dx
0000041C  50                push ax
0000041D  8D46DE            lea ax,[bp-0x22]
00000420  8CD2              mov dx,ss
00000422  52                push dx
00000423  50                push ax
00000424  9A3916210A        call word 0xa21:word 0x1639
00000429  8946DC            mov [bp-0x24],ax
0000042C  89EC              mov sp,bp
0000042E  5D                pop bp
0000042F  CB                retf
00000430  55                push bp
00000431  89E5              mov bp,sp
00000433  83EC02            sub sp,0x2
00000436  C746FE0100        mov word [bp-0x2],0x1
0000043B  EB03              jmp 0x440
0000043D  FF46FE            inc word [bp-0x2]
00000440  8B7EFE            mov di,[bp-0x2]
00000443  B105              mov cl,0x5
00000445  D3E7              shl di,cl
00000447  8D85271C          lea ax,[di+0x1c27]
0000044B  8CDA              mov dx,ds
0000044D  52                push dx
0000044E  50                push ax
0000044F  31C0              xor ax,ax
00000451  31D2              xor dx,dx
00000453  52                push dx
00000454  50                push ax
00000455  8B46FE            mov ax,[bp-0x2]
00000458  B93C00            mov cx,0x3c
0000045B  F7E9              imul cx
0000045D  2D2600            sub ax,0x26
00000460  50                push ax
00000461  B80D01            mov ax,0x10d
00000464  50                push ax
00000465  B83800            mov ax,0x38
00000468  50                push ax
00000469  B82800            mov ax,0x28
0000046C  50                push ax
0000046D  B80100            mov ax,0x1
00000470  50                push ax
00000471  B80F00            mov ax,0xf
00000474  50                push ax
00000475  B80900            mov ax,0x9
00000478  50                push ax
00000479  FF76FE            push word [bp-0x2]
0000047C  9A6E1A210A        call word 0xa21:word 0x1a6e
00000481  8B7EFE            mov di,[bp-0x2]
00000484  B103              mov cl,0x3
00000486  D3E7              shl di,cl
00000488  31C0              xor ax,ax
0000048A  8985A217          mov [di+0x17a2],ax
0000048E  8B7EFE            mov di,[bp-0x2]
00000491  B103              mov cl,0x3
00000493  D3E7              shl di,cl
00000495  31C0              xor ax,ax
00000497  8985A417          mov [di+0x17a4],ax
0000049B  8B7EFE            mov di,[bp-0x2]
0000049E  D1E7              shl di,1
000004A0  D1E7              shl di,1
000004A2  C4855247          les ax,word [di+0x4752]
000004A6  8CC2              mov dx,es
000004A8  8B7EFE            mov di,[bp-0x2]
000004AB  B103              mov cl,0x3
000004AD  D3E7              shl di,cl
000004AF  8985A617          mov [di+0x17a6],ax
000004B3  8995A817          mov [di+0x17a8],dx
000004B7  8B7EFE            mov di,[bp-0x2]
000004BA  B103              mov cl,0x3
000004BC  D3E7              shl di,cl
000004BE  8D85A217          lea ax,[di+0x17a2]
000004C2  8CDA              mov dx,ds
000004C4  8B7EFE            mov di,[bp-0x2]
000004C7  B105              mov cl,0x5
000004C9  D3E7              shl di,cl
000004CB  89853D1C          mov [di+0x1c3d],ax
000004CF  89953F1C          mov [di+0x1c3f],dx
000004D3  837EFE0A          cmp word [bp-0x2],0xa
000004D7  7403              jz 0x4dc
000004D9  E961FF            jmp 0x43d
000004DC  B8871D            mov ax,0x1d87
000004DF  8CDA              mov dx,ds
000004E1  52                push dx
000004E2  50                push ax
000004E3  31C0              xor ax,ax
000004E5  31D2              xor dx,dx
000004E7  52                push dx
000004E8  50                push ax
000004E9  B82900            mov ax,0x29
000004EC  50                push ax
000004ED  B80D01            mov ax,0x10d
000004F0  50                push ax
000004F1  B81200            mov ax,0x12
000004F4  50                push ax
000004F5  B80D00            mov ax,0xd
000004F8  50                push ax
000004F9  31C0              xor ax,ax
000004FB  50                push ax
000004FC  B80F00            mov ax,0xf
000004FF  50                push ax
00000500  B8FFFF            mov ax,0xffff
00000503  50                push ax
00000504  B80B00            mov ax,0xb
00000507  50                push ax
00000508  9A6E1A210A        call word 0xa21:word 0x1a6e
0000050D  B8A71D            mov ax,0x1da7
00000510  8CDA              mov dx,ds
00000512  52                push dx
00000513  50                push ax
00000514  31C0              xor ax,ax
00000516  31D2              xor dx,dx
00000518  52                push dx
00000519  50                push ax
0000051A  B82900            mov ax,0x29
0000051D  50                push ax
0000051E  B82801            mov ax,0x128
00000521  50                push ax
00000522  B81200            mov ax,0x12
00000525  50                push ax
00000526  B80D00            mov ax,0xd
00000529  50                push ax
0000052A  31C0              xor ax,ax
0000052C  50                push ax
0000052D  B80F00            mov ax,0xf
00000530  50                push ax
00000531  B8FFFF            mov ax,0xffff
00000534  50                push ax
00000535  B80C00            mov ax,0xc
00000538  50                push ax
00000539  9A6E1A210A        call word 0xa21:word 0x1a6e
0000053E  B8C71D            mov ax,0x1dc7
00000541  8CDA              mov dx,ds
00000543  52                push dx
00000544  50                push ax
00000545  31C0              xor ax,ax
00000547  31D2              xor dx,dx
00000549  52                push dx
0000054A  50                push ax
0000054B  B83C00            mov ax,0x3c
0000054E  50                push ax
0000054F  B81B01            mov ax,0x11b
00000552  50                push ax
00000553  B81200            mov ax,0x12
00000556  50                push ax
00000557  B80C00            mov ax,0xc
0000055A  50                push ax
0000055B  31C0              xor ax,ax
0000055D  50                push ax
0000055E  B80F00            mov ax,0xf
00000561  50                push ax
00000562  B8FFFF            mov ax,0xffff
00000565  50                push ax
00000566  B80D00            mov ax,0xd
00000569  50                push ax
0000056A  9A6E1A210A        call word 0xa21:word 0x1a6e
0000056F  B8E71D            mov ax,0x1de7
00000572  8CDA              mov dx,ds
00000574  52                push dx
00000575  50                push ax
00000576  31C0              xor ax,ax
00000578  31D2              xor dx,dx
0000057A  52                push dx
0000057B  50                push ax
0000057C  B81600            mov ax,0x16
0000057F  50                push ax
00000580  B81B01            mov ax,0x11b
00000583  50                push ax
00000584  B81200            mov ax,0x12
00000587  50                push ax
00000588  B80C00            mov ax,0xc
0000058B  50                push ax
0000058C  31C0              xor ax,ax
0000058E  50                push ax
0000058F  B80F00            mov ax,0xf
00000592  50                push ax
00000593  B8FFFF            mov ax,0xffff
00000596  50                push ax
00000597  B80E00            mov ax,0xe
0000059A  50                push ax
0000059B  9A6E1A210A        call word 0xa21:word 0x1a6e
000005A0  89EC              mov sp,bp
000005A2  5D                pop bp
000005A3  C3                ret
000005A4  104475            adc [si+0x75],al
000005A7  206861            and [bx+si+0x61],ch
000005AA  7220              jc 0x5cc
000005AC  6D                insw
000005AD  6564206465        and [fs:si+0x65],ah
000005B2  67203A            and [edx],bh
000005B5  55                push bp
000005B6  89E5              mov bp,sp
000005B8  83EC08            sub sp,0x8
000005BB  B80400            mov ax,0x4
000005BE  50                push ax
000005BF  31C0              xor ax,ax
000005C1  50                push ax
000005C2  B001              mov al,0x1
000005C4  50                push ax
000005C5  9A5000210A        call word 0xa21:word 0x50
000005CA  9AFE2A430E        call word 0xe43:word 0x2afe
000005CF  31C0              xor ax,ax
000005D1  50                push ax
000005D2  B81900            mov ax,0x19
000005D5  50                push ax
000005D6  B88002            mov ax,0x280
000005D9  50                push ax
000005DA  B83201            mov ax,0x132
000005DD  50                push ax
000005DE  9A3B23430E        call word 0xe43:word 0x233b
000005E3  B80100            mov ax,0x1
000005E6  50                push ax
000005E7  B81A00            mov ax,0x1a
000005EA  50                push ax
000005EB  B87E02            mov ax,0x27e
000005EE  50                push ax
000005EF  B83001            mov ax,0x130
000005F2  50                push ax
000005F3  9A3B23430E        call word 0xe43:word 0x233b
000005F8  B80F00            mov ax,0xf
000005FB  50                push ax
000005FC  9A7F1A430E        call word 0xe43:word 0x1a7f
00000601  B80A00            mov ax,0xa
00000604  50                push ax
00000605  B82400            mov ax,0x24
00000608  50                push ax
00000609  B88001            mov ax,0x180
0000060C  50                push ax
0000060D  B8D800            mov ax,0xd8
00000610  50                push ax
00000611  9A3B23430E        call word 0xe43:word 0x233b
00000616  B80100            mov ax,0x1
00000619  50                push ax
0000061A  9A7F1A430E        call word 0xe43:word 0x1a7f
0000061F  B80A00            mov ax,0xa
00000622  50                push ax
00000623  B80101            mov ax,0x101
00000626  50                push ax
00000627  B86C02            mov ax,0x26c
0000062A  50                push ax
0000062B  B84000            mov ax,0x40
0000062E  50                push ax
0000062F  9A0124430E        call word 0xe43:word 0x2401
00000634  B80F00            mov ax,0xf
00000637  50                push ax
00000638  9A7F1A430E        call word 0xe43:word 0x1a7f
0000063D  B80A00            mov ax,0xa
00000640  50                push ax
00000641  B80101            mov ax,0x101
00000644  50                push ax
00000645  B86C02            mov ax,0x26c
00000648  50                push ax
00000649  B84000            mov ax,0x40
0000064C  50                push ax
0000064D  9A3B23430E        call word 0xe43:word 0x233b
00000652  31C0              xor ax,ax
00000654  50                push ax
00000655  B004              mov al,0x4
00000657  50                push ax
00000658  9A7102E305        call word 0x5e3:word 0x271
0000065D  8946F8            mov [bp-0x8],ax
00000660  8956FA            mov [bp-0x6],dx
00000663  8B46F8            mov ax,[bp-0x8]
00000666  0B46FA            or ax,[bp-0x6]
00000669  7425              jz 0x690
0000066B  31C0              xor ax,ax
0000066D  50                push ax
0000066E  31C0              xor ax,ax
00000670  50                push ax
00000671  B000              mov al,0x0
00000673  50                push ax
00000674  9A5000210A        call word 0xa21:word 0x50
00000679  8D7EF8            lea di,[bp-0x8]
0000067C  16                push ss
0000067D  57                push di
0000067E  B89601            mov ax,0x196
00000681  50                push ax
00000682  B82400            mov ax,0x24
00000685  50                push ax
00000686  B001              mov al,0x1
00000688  50                push ax
00000689  9AAF20430E        call word 0xe43:word 0x20af
0000068E  EB53              jmp 0x6e3
00000690  B80100            mov ax,0x1
00000693  50                push ax
00000694  9A7F1A430E        call word 0xe43:word 0x1a7f
00000699  B89601            mov ax,0x196
0000069C  50                push ax
0000069D  B82400            mov ax,0x24
000006A0  50                push ax
000006A1  B8E000            mov ax,0xe0
000006A4  50                push ax
000006A5  B8D800            mov ax,0xd8
000006A8  50                push ax
000006A9  9A0124430E        call word 0xe43:word 0x2401
000006AE  B80F00            mov ax,0xf
000006B1  50                push ax
000006B2  9A7F1A430E        call word 0xe43:word 0x1a7f
000006B7  B89601            mov ax,0x196
000006BA  50                push ax
000006BB  B82400            mov ax,0x24
000006BE  50                push ax
000006BF  B8E000            mov ax,0xe0
000006C2  50                push ax
000006C3  B8D800            mov ax,0xd8
000006C6  50                push ax
000006C7  9A3B23430E        call word 0xe43:word 0x233b
000006CC  B8C201            mov ax,0x1c2
000006CF  50                push ax
000006D0  B83C00            mov ax,0x3c
000006D3  50                push ax
000006D4  9A8A1B430E        call word 0xe43:word 0x1b8a
000006D9  BFA405            mov di,0x5a4
000006DC  0E                push cs
000006DD  57                push di
000006DE  9AE010430E        call word 0xe43:word 0x10e0
000006E3  31C0              xor ax,ax
000006E5  8946FC            mov [bp-0x4],ax
000006E8  EB03              jmp 0x6ed
000006EA  FF46FC            inc word [bp-0x4]
000006ED  C746FE0100        mov word [bp-0x2],0x1
000006F2  EB03              jmp 0x6f7
000006F4  FF46FE            inc word [bp-0x2]
000006F7  8B46FC            mov ax,[bp-0x4]
000006FA  B90300            mov cx,0x3
000006FD  F7E9              imul cx
000006FF  0346FE            add ax,[bp-0x2]
00000702  8BF8              mov di,ax
00000704  D1E7              shl di,1
00000706  D1E7              shl di,1
00000708  81C70E59          add di,0x590e
0000070C  1E                push ds
0000070D  57                push di
0000070E  8B46FE            mov ax,[bp-0x2]
00000711  B94200            mov cx,0x42
00000714  F7E9              imul cx
00000716  056601            add ax,0x166
00000719  50                push ax
0000071A  8B46FC            mov ax,[bp-0x4]
0000071D  B93200            mov cx,0x32
00000720  F7E9              imul cx
00000722  055600            add ax,0x56
00000725  50                push ax
00000726  B83800            mov ax,0x38
00000729  50                push ax
0000072A  B82800            mov ax,0x28
0000072D  50                push ax
0000072E  B001              mov al,0x1
00000730  50                push ax
00000731  9A091D430E        call word 0xe43:word 0x1d09
00000736  837EFE03          cmp word [bp-0x2],0x3
0000073A  75B8              jnz 0x6f4
0000073C  837EFC02          cmp word [bp-0x4],0x2
00000740  75A8              jnz 0x6ea
00000742  31C0              xor ax,ax
00000744  A3141C            mov [0x1c14],ax
00000747  C706161C0400      mov word [0x1c16],0x4
0000074D  31C0              xor ax,ax
0000074F  A3181C            mov [0x1c18],ax
00000752  C6061A1C00        mov byte [0x1c1a],0x0
00000757  31C0              xor ax,ax
00000759  A31B1C            mov [0x1c1b],ax
0000075C  A31D1C            mov [0x1c1d],ax
0000075F  31C0              xor ax,ax
00000761  A31F1C            mov [0x1c1f],ax
00000764  A3211C            mov [0x1c21],ax
00000767  E8C6FC            call 0x430
0000076A  C746FC0B00        mov word [bp-0x4],0xb
0000076F  EB03              jmp 0x774
00000771  FF46FC            inc word [bp-0x4]
00000774  B8D81B            mov ax,0x1bd8
00000777  8CDA              mov dx,ds
00000779  52                push dx
0000077A  50                push ax
0000077B  8B7EFC            mov di,[bp-0x4]
0000077E  B105              mov cl,0x5
00000780  D3E7              shl di,cl
00000782  8D85271C          lea ax,[di+0x1c27]
00000786  8CDA              mov dx,ds
00000788  52                push dx
00000789  50                push ax
0000078A  9ADD03210A        call word 0xa21:word 0x3dd
0000078F  837EFC0E          cmp word [bp-0x4],0xe
00000793  75DC              jnz 0x771
00000795  C746FC0100        mov word [bp-0x4],0x1
0000079A  EB03              jmp 0x79f
0000079C  FF46FC            inc word [bp-0x4]
0000079F  B8D81B            mov ax,0x1bd8
000007A2  8CDA              mov dx,ds
000007A4  52                push dx
000007A5  50                push ax
000007A6  8B7EFC            mov di,[bp-0x4]
000007A9  B105              mov cl,0x5
000007AB  D3E7              shl di,cl
000007AD  8D85271C          lea ax,[di+0x1c27]
000007B1  8CDA              mov dx,ds
000007B3  52                push dx
000007B4  50                push ax
000007B5  9ADD03210A        call word 0xa21:word 0x3dd
000007BA  837EFC0A          cmp word [bp-0x4],0xa
000007BE  75DC              jnz 0x79c
000007C0  9AE3086F04        call word 0x46f:word 0x8e3
000007C5  89EC              mov sp,bp
000007C7  5D                pop bp
000007C8  CB                retf
000007C9  0000              add [bx+si],al
000007CB  0000              add [bx+si],al
000007CD  0000              add [bx+si],al
000007CF  00                db 0x00
