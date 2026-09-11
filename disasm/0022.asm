00000000  55                push bp
00000001  89E5              mov bp,sp
00000003  83EC02            sub sp,0x2
00000006  B8D81B            mov ax,0x1bd8
00000009  8CDA              mov dx,ds
0000000B  52                push dx
0000000C  50                push ax
0000000D  9A0D16210A        call word 0xa21:word 0x160d
00000012  8946FE            mov [bp-0x2],ax
00000015  8B46FE            mov ax,[bp-0x2]
00000018  3D0100            cmp ax,0x1
0000001B  7509              jnz 0x26
0000001D  C47E06            les di,word [bp+0x6]
00000020  26C60502          mov byte [es:di],0x2
00000024  EB1A              jmp 0x40
00000026  3D0200            cmp ax,0x2
00000029  7509              jnz 0x34
0000002B  C47E06            les di,word [bp+0x6]
0000002E  26C60500          mov byte [es:di],0x0
00000032  EB0C              jmp 0x40
00000034  3D0300            cmp ax,0x3
00000037  7507              jnz 0x40
00000039  C47E06            les di,word [bp+0x6]
0000003C  26C60501          mov byte [es:di],0x1
00000040  89EC              mov sp,bp
00000042  5D                pop bp
00000043  CA0400            retf word 0x4
00000046  55                push bp
00000047  89E5              mov bp,sp
00000049  8B7E04            mov di,[bp+0x4]
0000004C  B105              mov cl,0x5
0000004E  D3E7              shl di,cl
00000050  81C7271C          add di,0x1c27
00000054  1E                push ds
00000055  57                push di
00000056  C47E0A            les di,word [bp+0xa]
00000059  06                push es
0000005A  57                push di
0000005B  B82000            mov ax,0x20
0000005E  50                push ax
0000005F  9AC002561A        call word 0x1a56:word 0x2c0
00000064  C47E0A            les di,word [bp+0xa]
00000067  26C745040A00      mov word [es:di+0x4],0xa
0000006D  C47E0A            les di,word [bp+0xa]
00000070  26C745060800      mov word [es:di+0x6],0x8
00000076  C47E0A            les di,word [bp+0xa]
00000079  31C0              xor ax,ax
0000007B  2689451E          mov [es:di+0x1e],ax
0000007F  C44606            les ax,word [bp+0x6]
00000082  8CC2              mov dx,es
00000084  C47E0A            les di,word [bp+0xa]
00000087  268905            mov [es:di],ax
0000008A  26895502          mov [es:di+0x2],dx
0000008E  89EC              mov sp,bp
00000090  5D                pop bp
00000091  C20A00            ret word 0xa
00000094  55                push bp
00000095  89E5              mov bp,sp
00000097  81EC1D01          sub sp,0x11d
0000009B  8D861DFF          lea ax,[bp-0xe3]
0000009F  8CD2              mov dx,ss
000000A1  52                push dx
000000A2  50                push ax
000000A3  8D863DFF          lea ax,[bp-0xc3]
000000A7  8CD2              mov dx,ss
000000A9  52                push dx
000000AA  50                push ax
000000AB  B80100            mov ax,0x1
000000AE  50                push ax
000000AF  E894FF            call 0x46
000000B2  8D863DFF          lea ax,[bp-0xc3]
000000B6  8CD2              mov dx,ss
000000B8  52                push dx
000000B9  50                push ax
000000BA  8D865DFF          lea ax,[bp-0xa3]
000000BE  8CD2              mov dx,ss
000000C0  52                push dx
000000C1  50                push ax
000000C2  B85100            mov ax,0x51
000000C5  50                push ax
000000C6  B80800            mov ax,0x8
000000C9  50                push ax
000000CA  B84000            mov ax,0x40
000000CD  50                push ax
000000CE  B81400            mov ax,0x14
000000D1  50                push ax
000000D2  B80100            mov ax,0x1
000000D5  50                push ax
000000D6  B80F00            mov ax,0xf
000000D9  50                push ax
000000DA  B80100            mov ax,0x1
000000DD  50                push ax
000000DE  B80500            mov ax,0x5
000000E1  50                push ax
000000E2  9A6E1A210A        call word 0xa21:word 0x1a6e
000000E7  8D865DFF          lea ax,[bp-0xa3]
000000EB  8CD2              mov dx,ss
000000ED  52                push dx
000000EE  50                push ax
000000EF  8D867DFF          lea ax,[bp-0x83]
000000F3  8CD2              mov dx,ss
000000F5  52                push dx
000000F6  50                push ax
000000F7  B85100            mov ax,0x51
000000FA  50                push ax
000000FB  B82000            mov ax,0x20
000000FE  50                push ax
000000FF  B84000            mov ax,0x40
00000102  50                push ax
00000103  B81400            mov ax,0x14
00000106  50                push ax
00000107  B80100            mov ax,0x1
0000010A  50                push ax
0000010B  B80F00            mov ax,0xf
0000010E  50                push ax
0000010F  B80100            mov ax,0x1
00000112  50                push ax
00000113  B80600            mov ax,0x6
00000116  50                push ax
00000117  9A6E1A210A        call word 0xa21:word 0x1a6e
0000011C  8D867DFF          lea ax,[bp-0x83]
00000120  8CD2              mov dx,ss
00000122  52                push dx
00000123  50                push ax
00000124  8D469D            lea ax,[bp-0x63]
00000127  8CD2              mov dx,ss
00000129  52                push dx
0000012A  50                push ax
0000012B  B89500            mov ax,0x95
0000012E  50                push ax
0000012F  B80800            mov ax,0x8
00000132  50                push ax
00000133  B84000            mov ax,0x40
00000136  50                push ax
00000137  B81400            mov ax,0x14
0000013A  50                push ax
0000013B  B80100            mov ax,0x1
0000013E  50                push ax
0000013F  B80F00            mov ax,0xf
00000142  50                push ax
00000143  B80100            mov ax,0x1
00000146  50                push ax
00000147  B80700            mov ax,0x7
0000014A  50                push ax
0000014B  9A6E1A210A        call word 0xa21:word 0x1a6e
00000150  8D469D            lea ax,[bp-0x63]
00000153  8CD2              mov dx,ss
00000155  52                push dx
00000156  50                push ax
00000157  8D46BD            lea ax,[bp-0x43]
0000015A  8CD2              mov dx,ss
0000015C  52                push dx
0000015D  50                push ax
0000015E  B89500            mov ax,0x95
00000161  50                push ax
00000162  B82000            mov ax,0x20
00000165  50                push ax
00000166  B84000            mov ax,0x40
00000169  50                push ax
0000016A  B81400            mov ax,0x14
0000016D  50                push ax
0000016E  B80100            mov ax,0x1
00000171  50                push ax
00000172  B80F00            mov ax,0xf
00000175  50                push ax
00000176  B80100            mov ax,0x1
00000179  50                push ax
0000017A  B80800            mov ax,0x8
0000017D  50                push ax
0000017E  9A6E1A210A        call word 0xa21:word 0x1a6e
00000183  C786E3FE0100      mov word [bp-0x11d],0x1
00000189  EB04              jmp 0x18f
0000018B  FF86E3FE          inc word [bp-0x11d]
0000018F  8B86E3FE          mov ax,[bp-0x11d]
00000193  BA0E00            mov dx,0xe
00000196  F7E2              mul dx
00000198  8BF8              mov di,ax
0000019A  8D83D7FE          lea ax,[bp+di-0x129]
0000019E  8CD2              mov dx,ss
000001A0  52                push dx
000001A1  50                push ax
000001A2  31C0              xor ax,ax
000001A4  31D2              xor dx,dx
000001A6  52                push dx
000001A7  50                push ax
000001A8  8B86E3FE          mov ax,[bp-0x11d]
000001AC  BA0500            mov dx,0x5
000001AF  F7E2              mul dx
000001B1  8BF8              mov di,ax
000001B3  8A85FBFF          mov al,[di-0x5]
000001B7  30E4              xor ah,ah
000001B9  B90200            mov cx,0x2
000001BC  D3E0              shl ax,cl
000001BE  8BD8              mov bx,ax
000001C0  8BBEE3FE          mov di,[bp-0x11d]
000001C4  B105              mov cl,0x5
000001C6  D3E7              shl di,cl
000001C8  8B8325FF          mov ax,[bp+di-0xdb]
000001CC  99                cwd
000001CD  B90200            mov cx,0x2
000001D0  F7F9              idiv cx
000001D2  2BC3              sub ax,bx
000001D4  50                push ax
000001D5  8BBEE3FE          mov di,[bp-0x11d]
000001D9  B105              mov cl,0x5
000001DB  D3E7              shl di,cl
000001DD  8B8327FF          mov ax,[bp+di-0xd9]
000001E1  99                cwd
000001E2  B90200            mov cx,0x2
000001E5  F7F9              idiv cx
000001E7  050700            add ax,0x7
000001EA  50                push ax
000001EB  B80F00            mov ax,0xf
000001EE  50                push ax
000001EF  8B86E3FE          mov ax,[bp-0x11d]
000001F3  BA0500            mov dx,0x5
000001F6  F7E2              mul dx
000001F8  8BF8              mov di,ax
000001FA  8D85FBFF          lea ax,[di-0x5]
000001FE  8CDA              mov dx,ds
00000200  52                push dx
00000201  50                push ax
00000202  9AA71B210A        call word 0xa21:word 0x1ba7
00000207  8B86E3FE          mov ax,[bp-0x11d]
0000020B  BA0E00            mov dx,0xe
0000020E  F7E2              mul dx
00000210  8BF8              mov di,ax
00000212  8D83D7FE          lea ax,[bp+di-0x129]
00000216  8CD2              mov dx,ss
00000218  8BBEE3FE          mov di,[bp-0x11d]
0000021C  B105              mov cl,0x5
0000021E  D3E7              shl di,cl
00000220  89832FFF          mov [bp+di-0xd1],ax
00000224  899331FF          mov [bp+di-0xcf],dx
00000228  83BEE3FE04        cmp word [bp-0x11d],0x4
0000022D  7403              jz 0x232
0000022F  E959FF            jmp 0x18b
00000232  8D46DD            lea ax,[bp-0x23]
00000235  8CD2              mov dx,ss
00000237  52                push dx
00000238  50                push ax
00000239  B86400            mov ax,0x64
0000023C  50                push ax
0000023D  B8AA00            mov ax,0xaa
00000240  50                push ax
00000241  B8DF00            mov ax,0xdf
00000244  50                push ax
00000245  B85A00            mov ax,0x5a
00000248  50                push ax
00000249  B80100            mov ax,0x1
0000024C  50                push ax
0000024D  B80F00            mov ax,0xf
00000250  50                push ax
00000251  B80900            mov ax,0x9
00000254  50                push ax
00000255  8D861DFF          lea ax,[bp-0xe3]
00000259  8CD2              mov dx,ss
0000025B  52                push dx
0000025C  50                push ax
0000025D  9A091B210A        call word 0xa21:word 0x1b09
00000262  BF271C            mov di,0x1c27
00000265  1E                push ds
00000266  57                push di
00000267  8D7EBD            lea di,[bp-0x43]
0000026A  16                push ss
0000026B  57                push di
0000026C  B82000            mov ax,0x20
0000026F  50                push ax
00000270  9AC002561A        call word 0x1a56:word 0x2c0
00000275  8B46E3            mov ax,[bp-0x1d]
00000278  2D2100            sub ax,0x21
0000027B  8946C3            mov [bp-0x3d],ax
0000027E  B8D81B            mov ax,0x1bd8
00000281  8CDA              mov dx,ds
00000283  52                push dx
00000284  50                push ax
00000285  8D46DD            lea ax,[bp-0x23]
00000288  8CD2              mov dx,ss
0000028A  52                push dx
0000028B  50                push ax
0000028C  9A3916210A        call word 0xa21:word 0x1639
00000291  C47E04            les di,word [bp+0x4]
00000294  268905            mov [es:di],ax
00000297  C47E04            les di,word [bp+0x4]
0000029A  26833DFF          cmp word [es:di],0xffffffffffffffff
0000029E  7504              jnz 0x2a4
000002A0  B000              mov al,0x0
000002A2  EB02              jmp 0x2a6
000002A4  B001              mov al,0x1
000002A6  8846FF            mov [bp-0x1],al
000002A9  8A46FF            mov al,[bp-0x1]
000002AC  89EC              mov sp,bp
000002AE  5D                pop bp
000002AF  C20400            ret word 0x4
000002B2  55                push bp
000002B3  89E5              mov bp,sp
000002B5  81ECFD05          sub sp,0x5fd
000002B9  C47E06            les di,word [bp+0x6]
000002BC  06                push es
000002BD  57                push di
000002BE  8DBEFFFE          lea di,[bp-0x101]
000002C2  16                push ss
000002C3  57                push di
000002C4  B8FF00            mov ax,0xff
000002C7  50                push ax
000002C8  9AAD06561A        call word 0x1a56:word 0x6ad
000002CD  8D867DFD          lea ax,[bp-0x283]
000002D1  8CD2              mov dx,ss
000002D3  52                push dx
000002D4  50                push ax
000002D5  31C0              xor ax,ax
000002D7  31D2              xor dx,dx
000002D9  52                push dx
000002DA  50                push ax
000002DB  FF7604            push word [bp+0x4]
000002DE  E865FD            call 0x46
000002E1  31C0              xor ax,ax
000002E3  898607FB          mov [bp-0x4f9],ax
000002E7  EB04              jmp 0x2ed
000002E9  FF8607FB          inc word [bp-0x4f9]
000002ED  C78609FB0100      mov word [bp-0x4f7],0x1
000002F3  EB04              jmp 0x2f9
000002F5  FF8609FB          inc word [bp-0x4f7]
000002F9  8B8607FB          mov ax,[bp-0x4f9]
000002FD  B90300            mov cx,0x3
00000300  F7E9              imul cx
00000302  038609FB          add ax,[bp-0x4f7]
00000306  8BF8              mov di,ax
00000308  B105              mov cl,0x5
0000030A  D3E7              shl di,cl
0000030C  8D837DFD          lea ax,[bp+di-0x283]
00000310  8CD2              mov dx,ss
00000312  52                push dx
00000313  50                push ax
00000314  31C0              xor ax,ax
00000316  31D2              xor dx,dx
00000318  52                push dx
00000319  50                push ax
0000031A  8B8609FB          mov ax,[bp-0x4f7]
0000031E  B90600            mov cx,0x6
00000321  D3E0              shl ax,cl
00000323  051100            add ax,0x11
00000326  50                push ax
00000327  8B8607FB          mov ax,[bp-0x4f9]
0000032B  B93000            mov cx,0x30
0000032E  F7E9              imul cx
00000330  052000            add ax,0x20
00000333  50                push ax
00000334  B83800            mov ax,0x38
00000337  50                push ax
00000338  B82800            mov ax,0x28
0000033B  50                push ax
0000033C  B80100            mov ax,0x1
0000033F  50                push ax
00000340  B80F00            mov ax,0xf
00000343  50                push ax
00000344  B80100            mov ax,0x1
00000347  50                push ax
00000348  8B8607FB          mov ax,[bp-0x4f9]
0000034C  B90300            mov cx,0x3
0000034F  F7E9              imul cx
00000351  038609FB          add ax,[bp-0x4f7]
00000355  50                push ax
00000356  9A6E1A210A        call word 0xa21:word 0x1a6e
0000035B  83BE09FB03        cmp word [bp-0x4f7],0x3
00000360  7593              jnz 0x2f5
00000362  83BE07FB02        cmp word [bp-0x4f9],0x2
00000367  7580              jnz 0x2e9
00000369  8D86DDFE          lea ax,[bp-0x123]
0000036D  8CD2              mov dx,ss
0000036F  52                push dx
00000370  50                push ax
00000371  B8CF00            mov ax,0xcf
00000374  50                push ax
00000375  B84100            mov ax,0x41
00000378  50                push ax
00000379  B81301            mov ax,0x113
0000037C  50                push ax
0000037D  B8B000            mov ax,0xb0
00000380  50                push ax
00000381  B80100            mov ax,0x1
00000384  50                push ax
00000385  B80F00            mov ax,0xf
00000388  50                push ax
00000389  B80900            mov ax,0x9
0000038C  50                push ax
0000038D  8D867DFD          lea ax,[bp-0x283]
00000391  8CD2              mov dx,ss
00000393  52                push dx
00000394  50                push ax
00000395  9A091B210A        call word 0xa21:word 0x1b09
0000039A  8D860BFB          lea ax,[bp-0x4f5]
0000039E  8CD2              mov dx,ss
000003A0  52                push dx
000003A1  50                push ax
000003A2  31C0              xor ax,ax
000003A4  31D2              xor dx,dx
000003A6  52                push dx
000003A7  50                push ax
000003A8  8A86FFFE          mov al,[bp-0x101]
000003AC  30E4              xor ah,ah
000003AE  B90200            mov cx,0x2
000003B1  D3E0              shl ax,cl
000003B3  8BD8              mov bx,ax
000003B5  8B86E1FE          mov ax,[bp-0x11f]
000003B9  2D5B00            sub ax,0x5b
000003BC  99                cwd
000003BD  B90200            mov cx,0x2
000003C0  F7F9              idiv cx
000003C2  055100            add ax,0x51
000003C5  2BC3              sub ax,bx
000003C7  50                push ax
000003C8  B81600            mov ax,0x16
000003CB  50                push ax
000003CC  B80F00            mov ax,0xf
000003CF  50                push ax
000003D0  8D86FFFE          lea ax,[bp-0x101]
000003D4  8CD2              mov dx,ss
000003D6  52                push dx
000003D7  50                push ax
000003D8  9AA71B210A        call word 0xa21:word 0x1ba7
000003DD  8D860BFB          lea ax,[bp-0x4f5]
000003E1  8CD2              mov dx,ss
000003E3  8986EFFE          mov [bp-0x111],ax
000003E7  8996F1FE          mov [bp-0x10f],dx
000003EB  B8D81B            mov ax,0x1bd8
000003EE  8CDA              mov dx,ds
000003F0  52                push dx
000003F1  50                push ax
000003F2  8D86DDFE          lea ax,[bp-0x123]
000003F6  8CD2              mov dx,ss
000003F8  52                push dx
000003F9  50                push ax
000003FA  9AE606210A        call word 0xa21:word 0x6e6
000003FF  A14259            mov ax,[0x5942]
00000402  898603FB          mov [bp-0x4fd],ax
00000406  B80100            mov ax,0x1
00000409  3B8603FB          cmp ax,[bp-0x4fd]
0000040D  7E03              jng 0x412
0000040F  E99A02            jmp 0x6ac
00000412  898607FB          mov [bp-0x4f9],ax
00000416  EB04              jmp 0x41c
00000418  FF8607FB          inc word [bp-0x4f9]
0000041C  8BBE07FB          mov di,[bp-0x4f9]
00000420  B103              mov cl,0x3
00000422  D3E7              shl di,cl
00000424  31C0              xor ax,ax
00000426  89832DFD          mov [bp+di-0x2d3],ax
0000042A  8BBE07FB          mov di,[bp-0x4f9]
0000042E  B103              mov cl,0x3
00000430  D3E7              shl di,cl
00000432  31C0              xor ax,ax
00000434  89832FFD          mov [bp+di-0x2d1],ax
00000438  8BBE07FB          mov di,[bp-0x4f9]
0000043C  D1E7              shl di,1
0000043E  8BBD381F          mov di,[di+0x1f38]
00000442  D1E7              shl di,1
00000444  D1E7              shl di,1
00000446  C4BD3A27          les di,word [di+0x273a]
0000044A  268B4512          mov ax,[es:di+0x12]
0000044E  BA5200            mov dx,0x52
00000451  F7E2              mul dx
00000453  8BBE07FB          mov di,[bp-0x4f9]
00000457  D1E7              shl di,1
00000459  8BBD381F          mov di,[di+0x1f38]
0000045D  D1E7              shl di,1
0000045F  D1E7              shl di,1
00000461  C4BD3A27          les di,word [di+0x273a]
00000465  03F8              add di,ax
00000467  268B4510          mov ax,[es:di+0x10]
0000046B  898605FB          mov [bp-0x4fb],ax
0000046F  83BE05FB00        cmp word [bp-0x4fb],0x0
00000474  7E58              jng 0x4ce
00000476  8B8605FB          mov ax,[bp-0x4fb]
0000047A  BA0900            mov dx,0x9
0000047D  F7E2              mul dx
0000047F  8BF8              mov di,ax
00000481  81C77547          add di,0x4775
00000485  1E                push ds
00000486  57                push di
00000487  9AEF01450D        call word 0xd45:word 0x1ef
0000048C  8B8605FB          mov ax,[bp-0x4fb]
00000490  BA0900            mov dx,0x9
00000493  F7E2              mul dx
00000495  8BF8              mov di,ax
00000497  C4857A47          les ax,word [di+0x477a]
0000049B  8CC2              mov dx,es
0000049D  8BBE07FB          mov di,[bp-0x4f9]
000004A1  B103              mov cl,0x3
000004A3  D3E7              shl di,cl
000004A5  898331FD          mov [bp+di-0x2cf],ax
000004A9  899333FD          mov [bp+di-0x2cd],dx
000004AD  8BBE07FB          mov di,[bp-0x4f9]
000004B1  B103              mov cl,0x3
000004B3  D3E7              shl di,cl
000004B5  8D832DFD          lea ax,[bp+di-0x2d3]
000004B9  8CD2              mov dx,ss
000004BB  8BBE07FB          mov di,[bp-0x4f9]
000004BF  B105              mov cl,0x5
000004C1  D3E7              shl di,cl
000004C3  898393FD          mov [bp+di-0x26d],ax
000004C7  899395FD          mov [bp+di-0x26b],dx
000004CB  E9B501            jmp 0x683
000004CE  8DBE03FA          lea di,[bp-0x5fd]
000004D2  16                push ss
000004D3  57                push di
000004D4  8BBE07FB          mov di,[bp-0x4f9]
000004D8  D1E7              shl di,1
000004DA  8BBD381F          mov di,[di+0x1f38]
000004DE  D1E7              shl di,1
000004E0  D1E7              shl di,1
000004E2  C4BD3A27          les di,word [di+0x273a]
000004E6  06                push es
000004E7  57                push di
000004E8  B80100            mov ax,0x1
000004EB  50                push ax
000004EC  B80500            mov ax,0x5
000004EF  50                push ax
000004F0  9ADF06561A        call word 0x1a56:word 0x6df
000004F5  8B8607FB          mov ax,[bp-0x4f9]
000004F9  BA1200            mov dx,0x12
000004FC  F7E2              mul dx
000004FE  8BF8              mov di,ax
00000500  8DBB07FB          lea di,[bp+di-0x4f9]
00000504  16                push ss
00000505  57                push di
00000506  B80500            mov ax,0x5
00000509  50                push ax
0000050A  9AAD06561A        call word 0x1a56:word 0x6ad
0000050F  8DBE03FA          lea di,[bp-0x5fd]
00000513  16                push ss
00000514  57                push di
00000515  8BBE07FB          mov di,[bp-0x4f9]
00000519  D1E7              shl di,1
0000051B  8BBD381F          mov di,[di+0x1f38]
0000051F  D1E7              shl di,1
00000521  D1E7              shl di,1
00000523  C4BD3A27          les di,word [di+0x273a]
00000527  06                push es
00000528  57                push di
00000529  B80600            mov ax,0x6
0000052C  50                push ax
0000052D  B80500            mov ax,0x5
00000530  50                push ax
00000531  9ADF06561A        call word 0x1a56:word 0x6df
00000536  8B8607FB          mov ax,[bp-0x4f9]
0000053A  BA1200            mov dx,0x12
0000053D  F7E2              mul dx
0000053F  8BF8              mov di,ax
00000541  8DBB0DFB          lea di,[bp+di-0x4f3]
00000545  16                push ss
00000546  57                push di
00000547  B80500            mov ax,0x5
0000054A  50                push ax
0000054B  9AAD06561A        call word 0x1a56:word 0x6ad
00000550  8DBE03FA          lea di,[bp-0x5fd]
00000554  16                push ss
00000555  57                push di
00000556  8BBE07FB          mov di,[bp-0x4f9]
0000055A  D1E7              shl di,1
0000055C  8BBD381F          mov di,[di+0x1f38]
00000560  D1E7              shl di,1
00000562  D1E7              shl di,1
00000564  C4BD3A27          les di,word [di+0x273a]
00000568  06                push es
00000569  57                push di
0000056A  B80B00            mov ax,0xb
0000056D  50                push ax
0000056E  B80500            mov ax,0x5
00000571  50                push ax
00000572  9ADF06561A        call word 0x1a56:word 0x6df
00000577  8B8607FB          mov ax,[bp-0x4f9]
0000057B  BA1200            mov dx,0x12
0000057E  F7E2              mul dx
00000580  8BF8              mov di,ax
00000582  8DBB13FB          lea di,[bp+di-0x4ed]
00000586  16                push ss
00000587  57                push di
00000588  B80500            mov ax,0x5
0000058B  50                push ax
0000058C  9AAD06561A        call word 0x1a56:word 0x6ad
00000591  8B8607FB          mov ax,[bp-0x4f9]
00000595  BA2A00            mov dx,0x2a
00000598  F7E2              mul dx
0000059A  8BF8              mov di,ax
0000059C  8D8391FB          lea ax,[bp+di-0x46f]
000005A0  8CD2              mov dx,ss
000005A2  52                push dx
000005A3  50                push ax
000005A4  8B8607FB          mov ax,[bp-0x4f9]
000005A8  BA2A00            mov dx,0x2a
000005AB  F7E2              mul dx
000005AD  8BF8              mov di,ax
000005AF  8D839FFB          lea ax,[bp+di-0x461]
000005B3  8CD2              mov dx,ss
000005B5  52                push dx
000005B6  50                push ax
000005B7  B80800            mov ax,0x8
000005BA  50                push ax
000005BB  B80D00            mov ax,0xd
000005BE  50                push ax
000005BF  B80F00            mov ax,0xf
000005C2  50                push ax
000005C3  8B8607FB          mov ax,[bp-0x4f9]
000005C7  BA1200            mov dx,0x12
000005CA  F7E2              mul dx
000005CC  8BF8              mov di,ax
000005CE  8D8307FB          lea ax,[bp+di-0x4f9]
000005D2  8CD2              mov dx,ss
000005D4  52                push dx
000005D5  50                push ax
000005D6  9AA71B210A        call word 0xa21:word 0x1ba7
000005DB  8B8607FB          mov ax,[bp-0x4f9]
000005DF  BA2A00            mov dx,0x2a
000005E2  F7E2              mul dx
000005E4  8BF8              mov di,ax
000005E6  8D839FFB          lea ax,[bp+di-0x461]
000005EA  8CD2              mov dx,ss
000005EC  52                push dx
000005ED  50                push ax
000005EE  8B8607FB          mov ax,[bp-0x4f9]
000005F2  BA2A00            mov dx,0x2a
000005F5  F7E2              mul dx
000005F7  8BF8              mov di,ax
000005F9  8D83ADFB          lea ax,[bp+di-0x453]
000005FD  8CD2              mov dx,ss
000005FF  52                push dx
00000600  50                push ax
00000601  B80800            mov ax,0x8
00000604  50                push ax
00000605  B81A00            mov ax,0x1a
00000608  50                push ax
00000609  B80F00            mov ax,0xf
0000060C  50                push ax
0000060D  8B8607FB          mov ax,[bp-0x4f9]
00000611  BA1200            mov dx,0x12
00000614  F7E2              mul dx
00000616  8BF8              mov di,ax
00000618  8D830DFB          lea ax,[bp+di-0x4f3]
0000061C  8CD2              mov dx,ss
0000061E  52                push dx
0000061F  50                push ax
00000620  9AA71B210A        call word 0xa21:word 0x1ba7
00000625  8B8607FB          mov ax,[bp-0x4f9]
00000629  BA2A00            mov dx,0x2a
0000062C  F7E2              mul dx
0000062E  8BF8              mov di,ax
00000630  8D83ADFB          lea ax,[bp+di-0x453]
00000634  8CD2              mov dx,ss
00000636  52                push dx
00000637  50                push ax
00000638  31C0              xor ax,ax
0000063A  31D2              xor dx,dx
0000063C  52                push dx
0000063D  50                push ax
0000063E  B80800            mov ax,0x8
00000641  50                push ax
00000642  B82700            mov ax,0x27
00000645  50                push ax
00000646  B80F00            mov ax,0xf
00000649  50                push ax
0000064A  8B8607FB          mov ax,[bp-0x4f9]
0000064E  BA1200            mov dx,0x12
00000651  F7E2              mul dx
00000653  8BF8              mov di,ax
00000655  8D8313FB          lea ax,[bp+di-0x4ed]
00000659  8CD2              mov dx,ss
0000065B  52                push dx
0000065C  50                push ax
0000065D  9AA71B210A        call word 0xa21:word 0x1ba7
00000662  8B8607FB          mov ax,[bp-0x4f9]
00000666  BA2A00            mov dx,0x2a
00000669  F7E2              mul dx
0000066B  8BF8              mov di,ax
0000066D  8D8391FB          lea ax,[bp+di-0x46f]
00000671  8CD2              mov dx,ss
00000673  8BBE07FB          mov di,[bp-0x4f9]
00000677  B105              mov cl,0x5
00000679  D3E7              shl di,cl
0000067B  89838FFD          mov [bp+di-0x271],ax
0000067F  899391FD          mov [bp+di-0x26f],dx
00000683  B8D81B            mov ax,0x1bd8
00000686  8CDA              mov dx,ds
00000688  52                push dx
00000689  50                push ax
0000068A  8BBE07FB          mov di,[bp-0x4f9]
0000068E  B105              mov cl,0x5
00000690  D3E7              shl di,cl
00000692  8D837DFD          lea ax,[bp+di-0x283]
00000696  8CD2              mov dx,ss
00000698  52                push dx
00000699  50                push ax
0000069A  9ADD03210A        call word 0xa21:word 0x3dd
0000069F  8B8607FB          mov ax,[bp-0x4f9]
000006A3  3B8603FB          cmp ax,[bp-0x4fd]
000006A7  7403              jz 0x6ac
000006A9  E96CFD            jmp 0x418
000006AC  BF271C            mov di,0x1c27
000006AF  1E                push ds
000006B0  57                push di
000006B1  8DBEBDFE          lea di,[bp-0x143]
000006B5  16                push ss
000006B6  57                push di
000006B7  B82000            mov ax,0x20
000006BA  50                push ax
000006BB  9AC002561A        call word 0x1a56:word 0x2c0
000006C0  8B86E3FE          mov ax,[bp-0x11d]
000006C4  2D2100            sub ax,0x21
000006C7  8986C3FE          mov [bp-0x13d],ax
000006CB  B8D81B            mov ax,0x1bd8
000006CE  8CDA              mov dx,ds
000006D0  52                push dx
000006D1  50                push ax
000006D2  8D86BDFE          lea ax,[bp-0x143]
000006D6  8CD2              mov dx,ss
000006D8  52                push dx
000006D9  50                push ax
000006DA  9ADD03210A        call word 0xa21:word 0x3dd
000006DF  B8D81B            mov ax,0x1bd8
000006E2  8CDA              mov dx,ds
000006E4  52                push dx
000006E5  50                push ax
000006E6  9A0D16210A        call word 0xa21:word 0x160d
000006EB  C47E0A            les di,word [bp+0xa]
000006EE  268905            mov [es:di],ax
000006F1  B8D81B            mov ax,0x1bd8
000006F4  8CDA              mov dx,ds
000006F6  52                push dx
000006F7  50                push ax
000006F8  8D86DDFE          lea ax,[bp-0x123]
000006FC  8CD2              mov dx,ss
000006FE  52                push dx
000006FF  50                push ax
00000700  9A9109210A        call word 0xa21:word 0x991
00000705  C47E0A            les di,word [bp+0xa]
00000708  26833DFF          cmp word [es:di],0xffffffffffffffff
0000070C  7412              jz 0x720
0000070E  C47E0A            les di,word [bp+0xa]
00000711  268B3D            mov di,[es:di]
00000714  D1E7              shl di,1
00000716  8B85381F          mov ax,[di+0x1f38]
0000071A  C47E0A            les di,word [bp+0xa]
0000071D  268905            mov [es:di],ax
00000720  C47E0A            les di,word [bp+0xa]
00000723  26833DFF          cmp word [es:di],0xffffffffffffffff
00000727  7504              jnz 0x72d
00000729  B000              mov al,0x0
0000072B  EB02              jmp 0x72f
0000072D  B001              mov al,0x1
0000072F  8846FF            mov [bp-0x1],al
00000732  8A46FF            mov al,[bp-0x1]
00000735  89EC              mov sp,bp
00000737  5D                pop bp
00000738  C20A00            ret word 0xa
0000073B  55                push bp
0000073C  89E5              mov bp,sp
0000073E  81EC6506          sub sp,0x665
00000742  C47E06            les di,word [bp+0x6]
00000745  06                push es
00000746  57                push di
00000747  8DBEFFFE          lea di,[bp-0x101]
0000074B  16                push ss
0000074C  57                push di
0000074D  B8FF00            mov ax,0xff
00000750  50                push ax
00000751  9AAD06561A        call word 0x1a56:word 0x6ad
00000756  8D863DFD          lea ax,[bp-0x2c3]
0000075A  8CD2              mov dx,ss
0000075C  52                push dx
0000075D  50                push ax
0000075E  8D86BDFE          lea ax,[bp-0x143]
00000762  8CD2              mov dx,ss
00000764  52                push dx
00000765  50                push ax
00000766  FF7604            push word [bp+0x4]
00000769  E8DAF8            call 0x46
0000076C  31C0              xor ax,ax
0000076E  8986A1FA          mov [bp-0x55f],ax
00000772  EB04              jmp 0x778
00000774  FF86A1FA          inc word [bp-0x55f]
00000778  C786A3FA0100      mov word [bp-0x55d],0x1
0000077E  EB04              jmp 0x784
00000780  FF86A3FA          inc word [bp-0x55d]
00000784  8B86A1FA          mov ax,[bp-0x55f]
00000788  B90300            mov cx,0x3
0000078B  F7E9              imul cx
0000078D  0386A3FA          add ax,[bp-0x55d]
00000791  8BF8              mov di,ax
00000793  B105              mov cl,0x5
00000795  D3E7              shl di,cl
00000797  8D833DFD          lea ax,[bp+di-0x2c3]
0000079B  8CD2              mov dx,ss
0000079D  52                push dx
0000079E  50                push ax
0000079F  31C0              xor ax,ax
000007A1  31D2              xor dx,dx
000007A3  52                push dx
000007A4  50                push ax
000007A5  8B86A3FA          mov ax,[bp-0x55d]
000007A9  B90600            mov cx,0x6
000007AC  D3E0              shl ax,cl
000007AE  051100            add ax,0x11
000007B1  50                push ax
000007B2  8B86A1FA          mov ax,[bp-0x55f]
000007B6  B93000            mov cx,0x30
000007B9  F7E9              imul cx
000007BB  052000            add ax,0x20
000007BE  50                push ax
000007BF  B83800            mov ax,0x38
000007C2  50                push ax
000007C3  B82800            mov ax,0x28
000007C6  50                push ax
000007C7  B80100            mov ax,0x1
000007CA  50                push ax
000007CB  B80F00            mov ax,0xf
000007CE  50                push ax
000007CF  B80100            mov ax,0x1
000007D2  50                push ax
000007D3  8B86A1FA          mov ax,[bp-0x55f]
000007D7  B90300            mov cx,0x3
000007DA  F7E9              imul cx
000007DC  0386A3FA          add ax,[bp-0x55d]
000007E0  50                push ax
000007E1  9A6E1A210A        call word 0xa21:word 0x1a6e
000007E6  83BEA3FA03        cmp word [bp-0x55d],0x3
000007EB  7593              jnz 0x780
000007ED  83BEA1FA02        cmp word [bp-0x55f],0x2
000007F2  7580              jnz 0x774
000007F4  31C0              xor ax,ax
000007F6  8986A5FA          mov [bp-0x55b],ax
000007FA  8B3E5E1F          mov di,[0x1f5e]
000007FE  D1E7              shl di,1
00000800  D1E7              shl di,1
00000802  C4BD661F          les di,word [di+0x1f66]
00000806  26C44512          les ax,word [es:di+0x12]
0000080A  8CC2              mov dx,es
0000080C  89869DFA          mov [bp-0x563],ax
00000810  89969FFA          mov [bp-0x561],dx
00000814  8B869DFA          mov ax,[bp-0x563]
00000818  0B869FFA          or ax,[bp-0x561]
0000081C  7418              jz 0x836
0000081E  FF86A5FA          inc word [bp-0x55b]
00000822  C4BE9DFA          les di,word [bp-0x563]
00000826  26C44502          les ax,word [es:di+0x2]
0000082A  8CC2              mov dx,es
0000082C  89869DFA          mov [bp-0x563],ax
00000830  89969FFA          mov [bp-0x561],dx
00000834  EBDE              jmp 0x814
00000836  83BEA5FA09        cmp word [bp-0x55b],0x9
0000083B  7E33              jng 0x870
0000083D  8D86DDFE          lea ax,[bp-0x123]
00000841  8CD2              mov dx,ss
00000843  52                push dx
00000844  50                push ax
00000845  B8CF00            mov ax,0xcf
00000848  50                push ax
00000849  B82D00            mov ax,0x2d
0000084C  50                push ax
0000084D  B81301            mov ax,0x113
00000850  50                push ax
00000851  B8C800            mov ax,0xc8
00000854  50                push ax
00000855  B80100            mov ax,0x1
00000858  50                push ax
00000859  B80F00            mov ax,0xf
0000085C  50                push ax
0000085D  B80900            mov ax,0x9
00000860  50                push ax
00000861  8D863DFD          lea ax,[bp-0x2c3]
00000865  8CD2              mov dx,ss
00000867  52                push dx
00000868  50                push ax
00000869  9A091B210A        call word 0xa21:word 0x1b09
0000086E  EB31              jmp 0x8a1
00000870  8D86DDFE          lea ax,[bp-0x123]
00000874  8CD2              mov dx,ss
00000876  52                push dx
00000877  50                push ax
00000878  B8CF00            mov ax,0xcf
0000087B  50                push ax
0000087C  B84100            mov ax,0x41
0000087F  50                push ax
00000880  B81301            mov ax,0x113
00000883  50                push ax
00000884  B8B000            mov ax,0xb0
00000887  50                push ax
00000888  B80100            mov ax,0x1
0000088B  50                push ax
0000088C  B80F00            mov ax,0xf
0000088F  50                push ax
00000890  B80900            mov ax,0x9
00000893  50                push ax
00000894  8D863DFD          lea ax,[bp-0x2c3]
00000898  8CD2              mov dx,ss
0000089A  52                push dx
0000089B  50                push ax
0000089C  9A091B210A        call word 0xa21:word 0x1b09
000008A1  8D86CBFA          lea ax,[bp-0x535]
000008A5  8CD2              mov dx,ss
000008A7  52                push dx
000008A8  50                push ax
000008A9  31C0              xor ax,ax
000008AB  31D2              xor dx,dx
000008AD  52                push dx
000008AE  50                push ax
000008AF  8A86FFFE          mov al,[bp-0x101]
000008B3  30E4              xor ah,ah
000008B5  B90200            mov cx,0x2
000008B8  D3E0              shl ax,cl
000008BA  8BD8              mov bx,ax
000008BC  8B86E1FE          mov ax,[bp-0x11f]
000008C0  2D5B00            sub ax,0x5b
000008C3  99                cwd
000008C4  B90200            mov cx,0x2
000008C7  F7F9              idiv cx
000008C9  055100            add ax,0x51
000008CC  2BC3              sub ax,bx
000008CE  50                push ax
000008CF  B81600            mov ax,0x16
000008D2  50                push ax
000008D3  B80F00            mov ax,0xf
000008D6  50                push ax
000008D7  8D86FFFE          lea ax,[bp-0x101]
000008DB  8CD2              mov dx,ss
000008DD  52                push dx
000008DE  50                push ax
000008DF  9AA71B210A        call word 0xa21:word 0x1ba7
000008E4  8D86CBFA          lea ax,[bp-0x535]
000008E8  8CD2              mov dx,ss
000008EA  8986EFFE          mov [bp-0x111],ax
000008EE  8996F1FE          mov [bp-0x10f],dx
000008F2  BF271C            mov di,0x1c27
000008F5  1E                push ds
000008F6  57                push di
000008F7  8DBEBDFE          lea di,[bp-0x143]
000008FB  16                push ss
000008FC  57                push di
000008FD  B82000            mov ax,0x20
00000900  50                push ax
00000901  9AC002561A        call word 0x1a56:word 0x2c0
00000906  8B86E3FE          mov ax,[bp-0x11d]
0000090A  2D2100            sub ax,0x21
0000090D  8986C3FE          mov [bp-0x13d],ax
00000911  B8D81B            mov ax,0x1bd8
00000914  8CDA              mov dx,ds
00000916  52                push dx
00000917  50                push ax
00000918  8D86DDFE          lea ax,[bp-0x123]
0000091C  8CD2              mov dx,ss
0000091E  52                push dx
0000091F  50                push ax
00000920  9AE606210A        call word 0xa21:word 0x6e6
00000925  8D867DFE          lea ax,[bp-0x183]
00000929  8CD2              mov dx,ss
0000092B  52                push dx
0000092C  50                push ax
0000092D  31C0              xor ax,ax
0000092F  31D2              xor dx,dx
00000931  52                push dx
00000932  50                push ax
00000933  8B86E1FE          mov ax,[bp-0x11f]
00000937  2D3500            sub ax,0x35
0000093A  50                push ax
0000093B  8B86E3FE          mov ax,[bp-0x11d]
0000093F  2D1900            sub ax,0x19
00000942  50                push ax
00000943  B81400            mov ax,0x14
00000946  50                push ax
00000947  B81000            mov ax,0x10
0000094A  50                push ax
0000094B  B80100            mov ax,0x1
0000094E  50                push ax
0000094F  B80F00            mov ax,0xf
00000952  50                push ax
00000953  B80100            mov ax,0x1
00000956  50                push ax
00000957  B8FEFF            mov ax,0xfffe
0000095A  50                push ax
0000095B  9A6E1A210A        call word 0xa21:word 0x1a6e
00000960  8D86AFFA          lea ax,[bp-0x551]
00000964  8CD2              mov dx,ss
00000966  52                push dx
00000967  50                push ax
00000968  31C0              xor ax,ax
0000096A  31D2              xor dx,dx
0000096C  52                push dx
0000096D  50                push ax
0000096E  A01400            mov al,[0x14]
00000971  30E4              xor ah,ah
00000973  B90200            mov cx,0x2
00000976  D3E0              shl ax,cl
00000978  8BD8              mov bx,ax
0000097A  8B8685FE          mov ax,[bp-0x17b]
0000097E  99                cwd
0000097F  B90200            mov cx,0x2
00000982  F7F9              idiv cx
00000984  2BC3              sub ax,bx
00000986  50                push ax
00000987  8B8687FE          mov ax,[bp-0x179]
0000098B  99                cwd
0000098C  B90200            mov cx,0x2
0000098F  F7F9              idiv cx
00000991  050700            add ax,0x7
00000994  50                push ax
00000995  B80F00            mov ax,0xf
00000998  50                push ax
00000999  B81400            mov ax,0x14
0000099C  8CDA              mov dx,ds
0000099E  52                push dx
0000099F  50                push ax
000009A0  9AA71B210A        call word 0xa21:word 0x1ba7
000009A5  8D86AFFA          lea ax,[bp-0x551]
000009A9  8CD2              mov dx,ss
000009AB  89868FFE          mov [bp-0x171],ax
000009AF  899691FE          mov [bp-0x16f],dx
000009B3  8D869DFE          lea ax,[bp-0x163]
000009B7  8CD2              mov dx,ss
000009B9  52                push dx
000009BA  50                push ax
000009BB  31C0              xor ax,ax
000009BD  31D2              xor dx,dx
000009BF  52                push dx
000009C0  50                push ax
000009C1  8B86E1FE          mov ax,[bp-0x11f]
000009C5  2D1D00            sub ax,0x1d
000009C8  50                push ax
000009C9  8B86E3FE          mov ax,[bp-0x11d]
000009CD  2D1900            sub ax,0x19
000009D0  50                push ax
000009D1  B81400            mov ax,0x14
000009D4  50                push ax
000009D5  B81000            mov ax,0x10
000009D8  50                push ax
000009D9  B80100            mov ax,0x1
000009DC  50                push ax
000009DD  B80F00            mov ax,0xf
000009E0  50                push ax
000009E1  B80100            mov ax,0x1
000009E4  50                push ax
000009E5  B8FDFF            mov ax,0xfffd
000009E8  50                push ax
000009E9  9A6E1A210A        call word 0xa21:word 0x1a6e
000009EE  8D86BDFA          lea ax,[bp-0x543]
000009F2  8CD2              mov dx,ss
000009F4  52                push dx
000009F5  50                push ax
000009F6  31C0              xor ax,ax
000009F8  31D2              xor dx,dx
000009FA  52                push dx
000009FB  50                push ax
000009FC  A01600            mov al,[0x16]
000009FF  30E4              xor ah,ah
00000A01  B90200            mov cx,0x2
00000A04  D3E0              shl ax,cl
00000A06  8BD8              mov bx,ax
00000A08  8B86A5FE          mov ax,[bp-0x15b]
00000A0C  99                cwd
00000A0D  B90200            mov cx,0x2
00000A10  F7F9              idiv cx
00000A12  2BC3              sub ax,bx
00000A14  50                push ax
00000A15  8B86A7FE          mov ax,[bp-0x159]
00000A19  99                cwd
00000A1A  B90200            mov cx,0x2
00000A1D  F7F9              idiv cx
00000A1F  050700            add ax,0x7
00000A22  50                push ax
00000A23  B80F00            mov ax,0xf
00000A26  50                push ax
00000A27  B81600            mov ax,0x16
00000A2A  8CDA              mov dx,ds
00000A2C  52                push dx
00000A2D  50                push ax
00000A2E  9AA71B210A        call word 0xa21:word 0x1ba7
00000A33  8D86BDFA          lea ax,[bp-0x543]
00000A37  8CD2              mov dx,ss
00000A39  8986AFFE          mov [bp-0x151],ax
00000A3D  8996B1FE          mov [bp-0x14f],dx
00000A41  31C0              xor ax,ax
00000A43  8986A7FA          mov [bp-0x559],ax
00000A47  C47E0A            les di,word [bp+0xa]
00000A4A  26C705FFFF        mov word [es:di],0xffff
00000A4F  C47E0A            les di,word [bp+0xa]
00000A52  26833DFE          cmp word [es:di],0xfffffffffffffffe
00000A56  7506              jnz 0xa5e
00000A58  FF8EA7FA          dec word [bp-0x559]
00000A5C  EB0D              jmp 0xa6b
00000A5E  C47E0A            les di,word [bp+0xa]
00000A61  26833DFD          cmp word [es:di],0xfffffffffffffffd
00000A65  7504              jnz 0xa6b
00000A67  FF86A7FA          inc word [bp-0x559]
00000A6B  8B3E5E1F          mov di,[0x1f5e]
00000A6F  D1E7              shl di,1
00000A71  D1E7              shl di,1
00000A73  C4BD661F          les di,word [di+0x1f66]
00000A77  26C44512          les ax,word [es:di+0x12]
00000A7B  8CC2              mov dx,es
00000A7D  89869DFA          mov [bp-0x563],ax
00000A81  89969FFA          mov [bp-0x561],dx
00000A85  8B86A7FA          mov ax,[bp-0x559]
00000A89  89869BFA          mov [bp-0x565],ax
00000A8D  B80100            mov ax,0x1
00000A90  3B869BFA          cmp ax,[bp-0x565]
00000A94  7F39              jg 0xacf
00000A96  8986A1FA          mov [bp-0x55f],ax
00000A9A  EB04              jmp 0xaa0
00000A9C  FF86A1FA          inc word [bp-0x55f]
00000AA0  C786A3FA0100      mov word [bp-0x55d],0x1
00000AA6  EB04              jmp 0xaac
00000AA8  FF86A3FA          inc word [bp-0x55d]
00000AAC  C4BE9DFA          les di,word [bp-0x563]
00000AB0  26C44502          les ax,word [es:di+0x2]
00000AB4  8CC2              mov dx,es
00000AB6  89869DFA          mov [bp-0x563],ax
00000ABA  89969FFA          mov [bp-0x561],dx
00000ABE  83BEA3FA09        cmp word [bp-0x55d],0x9
00000AC3  75E3              jnz 0xaa8
00000AC5  8B86A1FA          mov ax,[bp-0x55f]
00000AC9  3B869BFA          cmp ax,[bp-0x565]
00000ACD  75CD              jnz 0xa9c
00000ACF  8B86A7FA          mov ax,[bp-0x559]
00000AD3  B90900            mov cx,0x9
00000AD6  F7E9              imul cx
00000AD8  8BD0              mov dx,ax
00000ADA  8B86A5FA          mov ax,[bp-0x55b]
00000ADE  2BC2              sub ax,dx
00000AE0  8986A9FA          mov [bp-0x557],ax
00000AE4  83BEA9FA09        cmp word [bp-0x557],0x9
00000AE9  7E06              jng 0xaf1
00000AEB  C786A9FA0900      mov word [bp-0x557],0x9
00000AF1  8B86A9FA          mov ax,[bp-0x557]
00000AF5  89869BFA          mov [bp-0x565],ax
00000AF9  B80100            mov ax,0x1
00000AFC  3B869BFA          cmp ax,[bp-0x565]
00000B00  7E03              jng 0xb05
00000B02  E9AF02            jmp 0xdb4
00000B05  8986A1FA          mov [bp-0x55f],ax
00000B09  EB04              jmp 0xb0f
00000B0B  FF86A1FA          inc word [bp-0x55f]
00000B0F  8BBEA1FA          mov di,[bp-0x55f]
00000B13  B103              mov cl,0x3
00000B15  D3E7              shl di,cl
00000B17  31C0              xor ax,ax
00000B19  8983D1FA          mov [bp+di-0x52f],ax
00000B1D  8BBEA1FA          mov di,[bp-0x55f]
00000B21  B103              mov cl,0x3
00000B23  D3E7              shl di,cl
00000B25  31C0              xor ax,ax
00000B27  8983D3FA          mov [bp+di-0x52d],ax
00000B2B  C4BE9DFA          les di,word [bp-0x563]
00000B2F  268B3D            mov di,[es:di]
00000B32  D1E7              shl di,1
00000B34  D1E7              shl di,1
00000B36  C4BD3A27          les di,word [di+0x273a]
00000B3A  268B4512          mov ax,[es:di+0x12]
00000B3E  BA5200            mov dx,0x52
00000B41  F7E2              mul dx
00000B43  C4BE9DFA          les di,word [bp-0x563]
00000B47  268B3D            mov di,[es:di]
00000B4A  D1E7              shl di,1
00000B4C  D1E7              shl di,1
00000B4E  C4BD3A27          les di,word [di+0x273a]
00000B52  03F8              add di,ax
00000B54  268B4510          mov ax,[es:di+0x10]
00000B58  8986ADFA          mov [bp-0x553],ax
00000B5C  83BEADFA00        cmp word [bp-0x553],0x0
00000B61  7E58              jng 0xbbb
00000B63  8B86ADFA          mov ax,[bp-0x553]
00000B67  BA0900            mov dx,0x9
00000B6A  F7E2              mul dx
00000B6C  8BF8              mov di,ax
00000B6E  81C77547          add di,0x4775
00000B72  1E                push ds
00000B73  57                push di
00000B74  9AEF01450D        call word 0xd45:word 0x1ef
00000B79  8B86ADFA          mov ax,[bp-0x553]
00000B7D  BA0900            mov dx,0x9
00000B80  F7E2              mul dx
00000B82  8BF8              mov di,ax
00000B84  C4857A47          les ax,word [di+0x477a]
00000B88  8CC2              mov dx,es
00000B8A  8BBEA1FA          mov di,[bp-0x55f]
00000B8E  B103              mov cl,0x3
00000B90  D3E7              shl di,cl
00000B92  8983D5FA          mov [bp+di-0x52b],ax
00000B96  8993D7FA          mov [bp+di-0x529],dx
00000B9A  8BBEA1FA          mov di,[bp-0x55f]
00000B9E  B103              mov cl,0x3
00000BA0  D3E7              shl di,cl
00000BA2  8D83D1FA          lea ax,[bp+di-0x52f]
00000BA6  8CD2              mov dx,ss
00000BA8  8BBEA1FA          mov di,[bp-0x55f]
00000BAC  B105              mov cl,0x5
00000BAE  D3E7              shl di,cl
00000BB0  898353FD          mov [bp+di-0x2ad],ax
00000BB4  899355FD          mov [bp+di-0x2ab],dx
00000BB8  E9AC01            jmp 0xd67
00000BBB  8DBE9BF9          lea di,[bp-0x665]
00000BBF  16                push ss
00000BC0  57                push di
00000BC1  C4BE9DFA          les di,word [bp-0x563]
00000BC5  268B3D            mov di,[es:di]
00000BC8  D1E7              shl di,1
00000BCA  D1E7              shl di,1
00000BCC  C4BD3A27          les di,word [di+0x273a]
00000BD0  06                push es
00000BD1  57                push di
00000BD2  B80100            mov ax,0x1
00000BD5  50                push ax
00000BD6  B80500            mov ax,0x5
00000BD9  50                push ax
00000BDA  9ADF06561A        call word 0x1a56:word 0x6df
00000BDF  8B86A1FA          mov ax,[bp-0x55f]
00000BE3  BA1200            mov dx,0x12
00000BE6  F7E2              mul dx
00000BE8  8BF8              mov di,ax
00000BEA  8DBB0FFB          lea di,[bp+di-0x4f1]
00000BEE  16                push ss
00000BEF  57                push di
00000BF0  B80500            mov ax,0x5
00000BF3  50                push ax
00000BF4  9AAD06561A        call word 0x1a56:word 0x6ad
00000BF9  8DBE9BF9          lea di,[bp-0x665]
00000BFD  16                push ss
00000BFE  57                push di
00000BFF  C4BE9DFA          les di,word [bp-0x563]
00000C03  268B3D            mov di,[es:di]
00000C06  D1E7              shl di,1
00000C08  D1E7              shl di,1
00000C0A  C4BD3A27          les di,word [di+0x273a]
00000C0E  06                push es
00000C0F  57                push di
00000C10  B80600            mov ax,0x6
00000C13  50                push ax
00000C14  B80500            mov ax,0x5
00000C17  50                push ax
00000C18  9ADF06561A        call word 0x1a56:word 0x6df
00000C1D  8B86A1FA          mov ax,[bp-0x55f]
00000C21  BA1200            mov dx,0x12
00000C24  F7E2              mul dx
00000C26  8BF8              mov di,ax
00000C28  8DBB15FB          lea di,[bp+di-0x4eb]
00000C2C  16                push ss
00000C2D  57                push di
00000C2E  B80500            mov ax,0x5
00000C31  50                push ax
00000C32  9AAD06561A        call word 0x1a56:word 0x6ad
00000C37  8DBE9BF9          lea di,[bp-0x665]
00000C3B  16                push ss
00000C3C  57                push di
00000C3D  C4BE9DFA          les di,word [bp-0x563]
00000C41  268B3D            mov di,[es:di]
00000C44  D1E7              shl di,1
00000C46  D1E7              shl di,1
00000C48  C4BD3A27          les di,word [di+0x273a]
00000C4C  06                push es
00000C4D  57                push di
00000C4E  B80B00            mov ax,0xb
00000C51  50                push ax
00000C52  B80500            mov ax,0x5
00000C55  50                push ax
00000C56  9ADF06561A        call word 0x1a56:word 0x6df
00000C5B  8B86A1FA          mov ax,[bp-0x55f]
00000C5F  BA1200            mov dx,0x12
00000C62  F7E2              mul dx
00000C64  8BF8              mov di,ax
00000C66  8DBB1BFB          lea di,[bp+di-0x4e5]
00000C6A  16                push ss
00000C6B  57                push di
00000C6C  B80500            mov ax,0x5
00000C6F  50                push ax
00000C70  9AAD06561A        call word 0x1a56:word 0x6ad
00000C75  8B86A1FA          mov ax,[bp-0x55f]
00000C79  BA2A00            mov dx,0x2a
00000C7C  F7E2              mul dx
00000C7E  8BF8              mov di,ax
00000C80  8D8399FB          lea ax,[bp+di-0x467]
00000C84  8CD2              mov dx,ss
00000C86  52                push dx
00000C87  50                push ax
00000C88  8B86A1FA          mov ax,[bp-0x55f]
00000C8C  BA2A00            mov dx,0x2a
00000C8F  F7E2              mul dx
00000C91  8BF8              mov di,ax
00000C93  8D83A7FB          lea ax,[bp+di-0x459]
00000C97  8CD2              mov dx,ss
00000C99  52                push dx
00000C9A  50                push ax
00000C9B  B80800            mov ax,0x8
00000C9E  50                push ax
00000C9F  B80D00            mov ax,0xd
00000CA2  50                push ax
00000CA3  B80F00            mov ax,0xf
00000CA6  50                push ax
00000CA7  8B86A1FA          mov ax,[bp-0x55f]
00000CAB  BA1200            mov dx,0x12
00000CAE  F7E2              mul dx
00000CB0  8BF8              mov di,ax
00000CB2  8D830FFB          lea ax,[bp+di-0x4f1]
00000CB6  8CD2              mov dx,ss
00000CB8  52                push dx
00000CB9  50                push ax
00000CBA  9AA71B210A        call word 0xa21:word 0x1ba7
00000CBF  8B86A1FA          mov ax,[bp-0x55f]
00000CC3  BA2A00            mov dx,0x2a
00000CC6  F7E2              mul dx
00000CC8  8BF8              mov di,ax
00000CCA  8D83A7FB          lea ax,[bp+di-0x459]
00000CCE  8CD2              mov dx,ss
00000CD0  52                push dx
00000CD1  50                push ax
00000CD2  8B86A1FA          mov ax,[bp-0x55f]
00000CD6  BA2A00            mov dx,0x2a
00000CD9  F7E2              mul dx
00000CDB  8BF8              mov di,ax
00000CDD  8D83B5FB          lea ax,[bp+di-0x44b]
00000CE1  8CD2              mov dx,ss
00000CE3  52                push dx
00000CE4  50                push ax
00000CE5  B80800            mov ax,0x8
00000CE8  50                push ax
00000CE9  B81A00            mov ax,0x1a
00000CEC  50                push ax
00000CED  B80F00            mov ax,0xf
00000CF0  50                push ax
00000CF1  8B86A1FA          mov ax,[bp-0x55f]
00000CF5  BA1200            mov dx,0x12
00000CF8  F7E2              mul dx
00000CFA  8BF8              mov di,ax
00000CFC  8D8315FB          lea ax,[bp+di-0x4eb]
00000D00  8CD2              mov dx,ss
00000D02  52                push dx
00000D03  50                push ax
00000D04  9AA71B210A        call word 0xa21:word 0x1ba7
00000D09  8B86A1FA          mov ax,[bp-0x55f]
00000D0D  BA2A00            mov dx,0x2a
00000D10  F7E2              mul dx
00000D12  8BF8              mov di,ax
00000D14  8D83B5FB          lea ax,[bp+di-0x44b]
00000D18  8CD2              mov dx,ss
00000D1A  52                push dx
00000D1B  50                push ax
00000D1C  31C0              xor ax,ax
00000D1E  31D2              xor dx,dx
00000D20  52                push dx
00000D21  50                push ax
00000D22  B80800            mov ax,0x8
00000D25  50                push ax
00000D26  B82700            mov ax,0x27
00000D29  50                push ax
00000D2A  B80F00            mov ax,0xf
00000D2D  50                push ax
00000D2E  8B86A1FA          mov ax,[bp-0x55f]
00000D32  BA1200            mov dx,0x12
00000D35  F7E2              mul dx
00000D37  8BF8              mov di,ax
00000D39  8D831BFB          lea ax,[bp+di-0x4e5]
00000D3D  8CD2              mov dx,ss
00000D3F  52                push dx
00000D40  50                push ax
00000D41  9AA71B210A        call word 0xa21:word 0x1ba7
00000D46  8B86A1FA          mov ax,[bp-0x55f]
00000D4A  BA2A00            mov dx,0x2a
00000D4D  F7E2              mul dx
00000D4F  8BF8              mov di,ax
00000D51  8D8399FB          lea ax,[bp+di-0x467]
00000D55  8CD2              mov dx,ss
00000D57  8BBEA1FA          mov di,[bp-0x55f]
00000D5B  B105              mov cl,0x5
00000D5D  D3E7              shl di,cl
00000D5F  89834FFD          mov [bp+di-0x2b1],ax
00000D63  899351FD          mov [bp+di-0x2af],dx
00000D67  8BBEA1FA          mov di,[bp-0x55f]
00000D6B  B105              mov cl,0x5
00000D6D  D3E7              shl di,cl
00000D6F  31C0              xor ax,ax
00000D71  89833DFD          mov [bp+di-0x2c3],ax
00000D75  89833FFD          mov [bp+di-0x2c1],ax
00000D79  B8D81B            mov ax,0x1bd8
00000D7C  8CDA              mov dx,ds
00000D7E  52                push dx
00000D7F  50                push ax
00000D80  8BBEA1FA          mov di,[bp-0x55f]
00000D84  B105              mov cl,0x5
00000D86  D3E7              shl di,cl
00000D88  8D833DFD          lea ax,[bp+di-0x2c3]
00000D8C  8CD2              mov dx,ss
00000D8E  52                push dx
00000D8F  50                push ax
00000D90  9ADD03210A        call word 0xa21:word 0x3dd
00000D95  C4BE9DFA          les di,word [bp-0x563]
00000D99  26C44502          les ax,word [es:di+0x2]
00000D9D  8CC2              mov dx,es
00000D9F  89869DFA          mov [bp-0x563],ax
00000DA3  89969FFA          mov [bp-0x561],dx
00000DA7  8B86A1FA          mov ax,[bp-0x55f]
00000DAB  3B869BFA          cmp ax,[bp-0x565]
00000DAF  7403              jz 0xdb4
00000DB1  E957FD            jmp 0xb0b
00000DB4  83BEA5FA09        cmp word [bp-0x55b],0x9
00000DB9  7E54              jng 0xe0f
00000DBB  83BEA7FA00        cmp word [bp-0x559],0x0
00000DC0  7E1E              jng 0xde0
00000DC2  31C0              xor ax,ax
00000DC4  89867DFE          mov [bp-0x183],ax
00000DC8  89867FFE          mov [bp-0x181],ax
00000DCC  B8D81B            mov ax,0x1bd8
00000DCF  8CDA              mov dx,ds
00000DD1  52                push dx
00000DD2  50                push ax
00000DD3  8D867DFE          lea ax,[bp-0x183]
00000DD7  8CD2              mov dx,ss
00000DD9  52                push dx
00000DDA  50                push ax
00000DDB  9ADD03210A        call word 0xa21:word 0x3dd
00000DE0  8B86A5FA          mov ax,[bp-0x55b]
00000DE4  48                dec ax
00000DE5  99                cwd
00000DE6  B90900            mov cx,0x9
00000DE9  F7F9              idiv cx
00000DEB  3B86A7FA          cmp ax,[bp-0x559]
00000DEF  7E1E              jng 0xe0f
00000DF1  31C0              xor ax,ax
00000DF3  89869DFE          mov [bp-0x163],ax
00000DF7  89869FFE          mov [bp-0x161],ax
00000DFB  B8D81B            mov ax,0x1bd8
00000DFE  8CDA              mov dx,ds
00000E00  52                push dx
00000E01  50                push ax
00000E02  8D869DFE          lea ax,[bp-0x163]
00000E06  8CD2              mov dx,ss
00000E08  52                push dx
00000E09  50                push ax
00000E0A  9ADD03210A        call word 0xa21:word 0x3dd
00000E0F  B8D81B            mov ax,0x1bd8
00000E12  8CDA              mov dx,ds
00000E14  52                push dx
00000E15  50                push ax
00000E16  9A0D16210A        call word 0xa21:word 0x160d
00000E1B  C47E0A            les di,word [bp+0xa]
00000E1E  268905            mov [es:di],ax
00000E21  C47E0A            les di,word [bp+0xa]
00000E24  26833DFF          cmp word [es:di],0xffffffffffffffff
00000E28  7C03              jl 0xe2d
00000E2A  E98800            jmp 0xeb5
00000E2D  8B86A9FA          mov ax,[bp-0x557]
00000E31  89869BFA          mov [bp-0x565],ax
00000E35  B80100            mov ax,0x1
00000E38  3B869BFA          cmp ax,[bp-0x565]
00000E3C  7F30              jg 0xe6e
00000E3E  8986A1FA          mov [bp-0x55f],ax
00000E42  EB04              jmp 0xe48
00000E44  FF86A1FA          inc word [bp-0x55f]
00000E48  B8D81B            mov ax,0x1bd8
00000E4B  8CDA              mov dx,ds
00000E4D  52                push dx
00000E4E  50                push ax
00000E4F  8BBEA1FA          mov di,[bp-0x55f]
00000E53  B105              mov cl,0x5
00000E55  D3E7              shl di,cl
00000E57  8D833DFD          lea ax,[bp+di-0x2c3]
00000E5B  8CD2              mov dx,ss
00000E5D  52                push dx
00000E5E  50                push ax
00000E5F  9AF704210A        call word 0xa21:word 0x4f7
00000E64  8B86A1FA          mov ax,[bp-0x55f]
00000E68  3B869BFA          cmp ax,[bp-0x565]
00000E6C  75D6              jnz 0xe44
00000E6E  83BEA5FA09        cmp word [bp-0x55b],0x9
00000E73  7E40              jng 0xeb5
00000E75  83BEA7FA00        cmp word [bp-0x559],0x0
00000E7A  7E14              jng 0xe90
00000E7C  B8D81B            mov ax,0x1bd8
00000E7F  8CDA              mov dx,ds
00000E81  52                push dx
00000E82  50                push ax
00000E83  8D867DFE          lea ax,[bp-0x183]
00000E87  8CD2              mov dx,ss
00000E89  52                push dx
00000E8A  50                push ax
00000E8B  9AF704210A        call word 0xa21:word 0x4f7
00000E90  8B86A5FA          mov ax,[bp-0x55b]
00000E94  48                dec ax
00000E95  99                cwd
00000E96  B90900            mov cx,0x9
00000E99  F7F9              idiv cx
00000E9B  3B86A7FA          cmp ax,[bp-0x559]
00000E9F  7E14              jng 0xeb5
00000EA1  B8D81B            mov ax,0x1bd8
00000EA4  8CDA              mov dx,ds
00000EA6  52                push dx
00000EA7  50                push ax
00000EA8  8D869DFE          lea ax,[bp-0x163]
00000EAC  8CD2              mov dx,ss
00000EAE  52                push dx
00000EAF  50                push ax
00000EB0  9AF704210A        call word 0xa21:word 0x4f7
00000EB5  C47E0A            les di,word [bp+0xa]
00000EB8  26833DFE          cmp word [es:di],0xfffffffffffffffe
00000EBC  7F03              jg 0xec1
00000EBE  E98EFB            jmp 0xa4f
00000EC1  B8D81B            mov ax,0x1bd8
00000EC4  8CDA              mov dx,ds
00000EC6  52                push dx
00000EC7  50                push ax
00000EC8  8D86DDFE          lea ax,[bp-0x123]
00000ECC  8CD2              mov dx,ss
00000ECE  52                push dx
00000ECF  50                push ax
00000ED0  9A9109210A        call word 0xa21:word 0x991
00000ED5  C47E0A            les di,word [bp+0xa]
00000ED8  26833D00          cmp word [es:di],0x0
00000EDC  7E75              jng 0xf53
00000EDE  8B86A7FA          mov ax,[bp-0x559]
00000EE2  B90900            mov cx,0x9
00000EE5  F7E9              imul cx
00000EE7  C47E0A            les di,word [bp+0xa]
00000EEA  260305            add ax,[es:di]
00000EED  C47E0A            les di,word [bp+0xa]
00000EF0  268905            mov [es:di],ax
00000EF3  8B3E5E1F          mov di,[0x1f5e]
00000EF7  D1E7              shl di,1
00000EF9  D1E7              shl di,1
00000EFB  C4BD661F          les di,word [di+0x1f66]
00000EFF  26C44512          les ax,word [es:di+0x12]
00000F03  8CC2              mov dx,es
00000F05  89869DFA          mov [bp-0x563],ax
00000F09  89969FFA          mov [bp-0x561],dx
00000F0D  C47E0A            les di,word [bp+0xa]
00000F10  268B05            mov ax,[es:di]
00000F13  89869BFA          mov [bp-0x565],ax
00000F17  B80200            mov ax,0x2
00000F1A  3B869BFA          cmp ax,[bp-0x565]
00000F1E  7F26              jg 0xf46
00000F20  8986A1FA          mov [bp-0x55f],ax
00000F24  EB04              jmp 0xf2a
00000F26  FF86A1FA          inc word [bp-0x55f]
00000F2A  C4BE9DFA          les di,word [bp-0x563]
00000F2E  26C44502          les ax,word [es:di+0x2]
00000F32  8CC2              mov dx,es
00000F34  89869DFA          mov [bp-0x563],ax
00000F38  89969FFA          mov [bp-0x561],dx
00000F3C  8B86A1FA          mov ax,[bp-0x55f]
00000F40  3B869BFA          cmp ax,[bp-0x565]
00000F44  75E0              jnz 0xf26
00000F46  C4BE9DFA          les di,word [bp-0x563]
00000F4A  268B05            mov ax,[es:di]
00000F4D  C47E0A            les di,word [bp+0xa]
00000F50  268905            mov [es:di],ax
00000F53  C47E0A            les di,word [bp+0xa]
00000F56  26833DFF          cmp word [es:di],0xffffffffffffffff
00000F5A  7504              jnz 0xf60
00000F5C  B000              mov al,0x0
00000F5E  EB02              jmp 0xf62
00000F60  B001              mov al,0x1
00000F62  8846FF            mov [bp-0x1],al
00000F65  8A46FF            mov al,[bp-0x1]
00000F68  89EC              mov sp,bp
00000F6A  5D                pop bp
00000F6B  C20A00            ret word 0xa
00000F6E  55                push bp
00000F6F  89E5              mov bp,sp
00000F71  83EC01            sub sp,0x1
00000F74  9AFC016F04        call word 0x46f:word 0x1fc
00000F79  08C0              or al,al
00000F7B  7416              jz 0xf93
00000F7D  C47E04            les di,word [bp+0x4]
00000F80  06                push es
00000F81  57                push di
00000F82  BF1800            mov di,0x18
00000F85  1E                push ds
00000F86  57                push di
00000F87  B80200            mov ax,0x2
00000F8A  50                push ax
00000F8B  E8ADF7            call 0x73b
00000F8E  8846FF            mov [bp-0x1],al
00000F91  EB15              jmp 0xfa8
00000F93  B80A00            mov ax,0xa
00000F96  50                push ax
00000F97  B86400            mov ax,0x64
00000F9A  50                push ax
00000F9B  B8A000            mov ax,0xa0
00000F9E  50                push ax
00000F9F  9AE30A6F04        call word 0x46f:word 0xae3
00000FA4  C646FF00          mov byte [bp-0x1],0x0
00000FA8  8A46FF            mov al,[bp-0x1]
00000FAB  89EC              mov sp,bp
00000FAD  5D                pop bp
00000FAE  C20400            ret word 0x4
00000FB1  55                push bp
00000FB2  89E5              mov bp,sp
00000FB4  83EC01            sub sp,0x1
00000FB7  C47E04            les di,word [bp+0x4]
00000FBA  06                push es
00000FBB  57                push di
00000FBC  BF3200            mov di,0x32
00000FBF  1E                push ds
00000FC0  57                push di
00000FC1  B80300            mov ax,0x3
00000FC4  50                push ax
00000FC5  E8EAF2            call 0x2b2
00000FC8  8846FF            mov [bp-0x1],al
00000FCB  8A46FF            mov al,[bp-0x1]
00000FCE  89EC              mov sp,bp
00000FD0  5D                pop bp
00000FD1  C20400            ret word 0x4
00000FD4  55                push bp
00000FD5  89E5              mov bp,sp
00000FD7  83EC03            sub sp,0x3
00000FDA  8B3E5E1F          mov di,[0x1f5e]
00000FDE  D1E7              shl di,1
00000FE0  D1E7              shl di,1
00000FE2  C4BD661F          les di,word [di+0x1f66]
00000FE6  268B4516          mov ax,[es:di+0x16]
00000FEA  8946FD            mov [bp-0x3],ax
00000FED  837EFD00          cmp word [bp-0x3],0x0
00000FF1  742B              jz 0x101e
00000FF3  8B7EFD            mov di,[bp-0x3]
00000FF6  D1E7              shl di,1
00000FF8  D1E7              shl di,1
00000FFA  C4BD0E2F          les di,word [di+0x2f0e]
00000FFE  268B4510          mov ax,[es:di+0x10]
00001002  3B065E1F          cmp ax,[0x1f5e]
00001006  7516              jnz 0x101e
00001008  C47E04            les di,word [bp+0x4]
0000100B  06                push es
0000100C  57                push di
0000100D  BF4C00            mov di,0x4c
00001010  1E                push ds
00001011  57                push di
00001012  B80400            mov ax,0x4
00001015  50                push ax
00001016  E899F2            call 0x2b2
00001019  8846FF            mov [bp-0x1],al
0000101C  EB15              jmp 0x1033
0000101E  B80900            mov ax,0x9
00001021  50                push ax
00001022  B8FA00            mov ax,0xfa
00001025  50                push ax
00001026  B8A000            mov ax,0xa0
00001029  50                push ax
0000102A  9AE30A6F04        call word 0x46f:word 0xae3
0000102F  C646FF00          mov byte [bp-0x1],0x0
00001033  8A46FF            mov al,[bp-0x1]
00001036  89EC              mov sp,bp
00001038  5D                pop bp
00001039  C20400            ret word 0x4
0000103C  55                push bp
0000103D  89E5              mov bp,sp
0000103F  83EC01            sub sp,0x1
00001042  C47E04            les di,word [bp+0x4]
00001045  06                push es
00001046  57                push di
00001047  BF6600            mov di,0x66
0000104A  1E                push ds
0000104B  57                push di
0000104C  B80500            mov ax,0x5
0000104F  50                push ax
00001050  E85FF2            call 0x2b2
00001053  8846FF            mov [bp-0x1],al
00001056  8A46FF            mov al,[bp-0x1]
00001059  89EC              mov sp,bp
0000105B  5D                pop bp
0000105C  C20400            ret word 0x4
0000105F  55                push bp
00001060  89E5              mov bp,sp
00001062  81ECFF00          sub sp,0xff
00001066  9AFC016F04        call word 0x46f:word 0x1fc
0000106B  08C0              or al,al
0000106D  7503              jnz 0x1072
0000106F  E97702            jmp 0x12e9
00001072  8D863DFF          lea ax,[bp-0xc3]
00001076  8CD2              mov dx,ss
00001078  52                push dx
00001079  50                push ax
0000107A  8D865DFF          lea ax,[bp-0xa3]
0000107E  8CD2              mov dx,ss
00001080  52                push dx
00001081  50                push ax
00001082  B80600            mov ax,0x6
00001085  50                push ax
00001086  E8BDEF            call 0x46
00001089  8D865DFF          lea ax,[bp-0xa3]
0000108D  8CD2              mov dx,ss
0000108F  52                push dx
00001090  50                push ax
00001091  8D867DFF          lea ax,[bp-0x83]
00001095  8CD2              mov dx,ss
00001097  52                push dx
00001098  50                push ax
00001099  B85100            mov ax,0x51
0000109C  50                push ax
0000109D  B82000            mov ax,0x20
000010A0  50                push ax
000010A1  B8A000            mov ax,0xa0
000010A4  50                push ax
000010A5  B81A00            mov ax,0x1a
000010A8  50                push ax
000010A9  B80100            mov ax,0x1
000010AC  50                push ax
000010AD  B80F00            mov ax,0xf
000010B0  50                push ax
000010B1  B80100            mov ax,0x1
000010B4  50                push ax
000010B5  B80100            mov ax,0x1
000010B8  50                push ax
000010B9  9A6E1A210A        call word 0xa21:word 0x1a6e
000010BE  8D867DFF          lea ax,[bp-0x83]
000010C2  8CD2              mov dx,ss
000010C4  52                push dx
000010C5  50                push ax
000010C6  8D469D            lea ax,[bp-0x63]
000010C9  8CD2              mov dx,ss
000010CB  52                push dx
000010CC  50                push ax
000010CD  B85100            mov ax,0x51
000010D0  50                push ax
000010D1  B83E00            mov ax,0x3e
000010D4  50                push ax
000010D5  B8A000            mov ax,0xa0
000010D8  50                push ax
000010D9  B81A00            mov ax,0x1a
000010DC  50                push ax
000010DD  B80100            mov ax,0x1
000010E0  50                push ax
000010E1  B80F00            mov ax,0xf
000010E4  50                push ax
000010E5  B80100            mov ax,0x1
000010E8  50                push ax
000010E9  B80200            mov ax,0x2
000010EC  50                push ax
000010ED  9A6E1A210A        call word 0xa21:word 0x1a6e
000010F2  8D469D            lea ax,[bp-0x63]
000010F5  8CD2              mov dx,ss
000010F7  52                push dx
000010F8  50                push ax
000010F9  8D46BD            lea ax,[bp-0x43]
000010FC  8CD2              mov dx,ss
000010FE  52                push dx
000010FF  50                push ax
00001100  B85100            mov ax,0x51
00001103  50                push ax
00001104  B85C00            mov ax,0x5c
00001107  50                push ax
00001108  B8A000            mov ax,0xa0
0000110B  50                push ax
0000110C  B81A00            mov ax,0x1a
0000110F  50                push ax
00001110  B80100            mov ax,0x1
00001113  50                push ax
00001114  B80F00            mov ax,0xf
00001117  50                push ax
00001118  B80100            mov ax,0x1
0000111B  50                push ax
0000111C  B80300            mov ax,0x3
0000111F  50                push ax
00001120  9A6E1A210A        call word 0xa21:word 0x1a6e
00001125  C78603FF0100      mov word [bp-0xfd],0x1
0000112B  EB04              jmp 0x1131
0000112D  FF8603FF          inc word [bp-0xfd]
00001131  8B8603FF          mov ax,[bp-0xfd]
00001135  BA0E00            mov dx,0xe
00001138  F7E2              mul dx
0000113A  8BF8              mov di,ax
0000113C  8D83F7FE          lea ax,[bp+di-0x109]
00001140  8CD2              mov dx,ss
00001142  52                push dx
00001143  50                push ax
00001144  31C0              xor ax,ax
00001146  31D2              xor dx,dx
00001148  52                push dx
00001149  50                push ax
0000114A  B80800            mov ax,0x8
0000114D  50                push ax
0000114E  8BBE03FF          mov di,[bp-0xfd]
00001152  B105              mov cl,0x5
00001154  D3E7              shl di,cl
00001156  8B8347FF          mov ax,[bp+di-0xb9]
0000115A  99                cwd
0000115B  B90200            mov cx,0x2
0000115E  F7F9              idiv cx
00001160  050700            add ax,0x7
00001163  50                push ax
00001164  B80F00            mov ax,0xf
00001167  50                push ax
00001168  8B8603FF          mov ax,[bp-0xfd]
0000116C  BA1300            mov dx,0x13
0000116F  F7E2              mul dx
00001171  8BF8              mov di,ax
00001173  8D856D00          lea ax,[di+0x6d]
00001177  8CDA              mov dx,ds
00001179  52                push dx
0000117A  50                push ax
0000117B  9AA71B210A        call word 0xa21:word 0x1ba7
00001180  8B8603FF          mov ax,[bp-0xfd]
00001184  BA0E00            mov dx,0xe
00001187  F7E2              mul dx
00001189  8BF8              mov di,ax
0000118B  8D83F7FE          lea ax,[bp+di-0x109]
0000118F  8CD2              mov dx,ss
00001191  8BBE03FF          mov di,[bp-0xfd]
00001195  B105              mov cl,0x5
00001197  D3E7              shl di,cl
00001199  89834FFF          mov [bp+di-0xb1],ax
0000119D  899351FF          mov [bp+di-0xaf],dx
000011A1  83BE03FF03        cmp word [bp-0xfd],0x3
000011A6  7585              jnz 0x112d
000011A8  8D46DD            lea ax,[bp-0x23]
000011AB  8CD2              mov dx,ss
000011AD  52                push dx
000011AE  50                push ax
000011AF  B8D900            mov ax,0xd9
000011B2  50                push ax
000011B3  B86B00            mov ax,0x6b
000011B6  50                push ax
000011B7  B8FB00            mov ax,0xfb
000011BA  50                push ax
000011BB  B87E00            mov ax,0x7e
000011BE  50                push ax
000011BF  B80100            mov ax,0x1
000011C2  50                push ax
000011C3  B80F00            mov ax,0xf
000011C6  50                push ax
000011C7  B80900            mov ax,0x9
000011CA  50                push ax
000011CB  8D863DFF          lea ax,[bp-0xc3]
000011CF  8CD2              mov dx,ss
000011D1  52                push dx
000011D2  50                push ax
000011D3  9A091B210A        call word 0xa21:word 0x1b09
000011D8  8D862FFF          lea ax,[bp-0xd1]
000011DC  8CD2              mov dx,ss
000011DE  52                push dx
000011DF  50                push ax
000011E0  31C0              xor ax,ax
000011E2  31D2              xor dx,dx
000011E4  52                push dx
000011E5  50                push ax
000011E6  A0B900            mov al,[0xb9]
000011E9  30E4              xor ah,ah
000011EB  B90200            mov cx,0x2
000011EE  D3E0              shl ax,cl
000011F0  8BD8              mov bx,ax
000011F2  8B46E1            mov ax,[bp-0x1f]
000011F5  2D5B00            sub ax,0x5b
000011F8  99                cwd
000011F9  B90200            mov cx,0x2
000011FC  F7F9              idiv cx
000011FE  055100            add ax,0x51
00001201  2BC3              sub ax,bx
00001203  50                push ax
00001204  B81600            mov ax,0x16
00001207  50                push ax
00001208  B80F00            mov ax,0xf
0000120B  50                push ax
0000120C  B8B900            mov ax,0xb9
0000120F  8CDA              mov dx,ds
00001211  52                push dx
00001212  50                push ax
00001213  9AA71B210A        call word 0xa21:word 0x1ba7
00001218  8D862FFF          lea ax,[bp-0xd1]
0000121C  8CD2              mov dx,ss
0000121E  8946EF            mov [bp-0x11],ax
00001221  8956F1            mov [bp-0xf],dx
00001224  BF271C            mov di,0x1c27
00001227  1E                push ds
00001228  57                push di
00001229  8D7EBD            lea di,[bp-0x43]
0000122C  16                push ss
0000122D  57                push di
0000122E  B82000            mov ax,0x20
00001231  50                push ax
00001232  9AC002561A        call word 0x1a56:word 0x2c0
00001237  8B46E3            mov ax,[bp-0x1d]
0000123A  2D2100            sub ax,0x21
0000123D  8946C3            mov [bp-0x3d],ax
00001240  B8D81B            mov ax,0x1bd8
00001243  8CDA              mov dx,ds
00001245  52                push dx
00001246  50                push ax
00001247  8D46DD            lea ax,[bp-0x23]
0000124A  8CD2              mov dx,ss
0000124C  52                push dx
0000124D  50                push ax
0000124E  9A3916210A        call word 0xa21:word 0x1639
00001253  898601FF          mov [bp-0xff],ax
00001257  8B8601FF          mov ax,[bp-0xff]
0000125B  3DFFFF            cmp ax,0xffff
0000125E  7507              jnz 0x1267
00001260  C646FF00          mov byte [bp-0x1],0x0
00001264  E98000            jmp 0x12e7
00001267  3D0100            cmp ax,0x1
0000126A  751F              jnz 0x128b
0000126C  C47E04            les di,word [bp+0x4]
0000126F  26C60507          mov byte [es:di],0x7
00001273  C47E04            les di,word [bp+0x4]
00001276  31C0              xor ax,ax
00001278  26894501          mov [es:di+0x1],ax
0000127C  C47E04            les di,word [bp+0x4]
0000127F  31C0              xor ax,ax
00001281  26894503          mov [es:di+0x3],ax
00001285  C646FF01          mov byte [bp-0x1],0x1
00001289  EB5C              jmp 0x12e7
0000128B  3D0200            cmp ax,0x2
0000128E  752A              jnz 0x12ba
00001290  C47E04            les di,word [bp+0x4]
00001293  26C60505          mov byte [es:di],0x5
00001297  C47E04            les di,word [bp+0x4]
0000129A  81C70100          add di,0x1
0000129E  06                push es
0000129F  57                push di
000012A0  BFB900            mov di,0xb9
000012A3  1E                push ds
000012A4  57                push di
000012A5  B80600            mov ax,0x6
000012A8  50                push ax
000012A9  E806F0            call 0x2b2
000012AC  8846FF            mov [bp-0x1],al
000012AF  C47E04            les di,word [bp+0x4]
000012B2  31C0              xor ax,ax
000012B4  26894503          mov [es:di+0x3],ax
000012B8  EB2D              jmp 0x12e7
000012BA  3D0300            cmp ax,0x3
000012BD  7528              jnz 0x12e7
000012BF  C47E04            les di,word [bp+0x4]
000012C2  26C60505          mov byte [es:di],0x5
000012C6  C47E04            les di,word [bp+0x4]
000012C9  81C70100          add di,0x1
000012CD  06                push es
000012CE  57                push di
000012CF  BFB900            mov di,0xb9
000012D2  1E                push ds
000012D3  57                push di
000012D4  B80600            mov ax,0x6
000012D7  50                push ax
000012D8  E860F4            call 0x73b
000012DB  8846FF            mov [bp-0x1],al
000012DE  C47E04            les di,word [bp+0x4]
000012E1  31C0              xor ax,ax
000012E3  26894503          mov [es:di+0x3],ax
000012E7  EB15              jmp 0x12fe
000012E9  B80A00            mov ax,0xa
000012EC  50                push ax
000012ED  B8FA00            mov ax,0xfa
000012F0  50                push ax
000012F1  B8A000            mov ax,0xa0
000012F4  50                push ax
000012F5  9AE30A6F04        call word 0x46f:word 0xae3
000012FA  C646FF00          mov byte [bp-0x1],0x0
000012FE  8A46FF            mov al,[bp-0x1]
00001301  89EC              mov sp,bp
00001303  5D                pop bp
00001304  C20400            ret word 0x4
00001307  55                push bp
00001308  89E5              mov bp,sp
0000130A  81EC6D0A          sub sp,0xa6d
0000130E  8B3E5E1F          mov di,[0x1f5e]
00001312  D1E7              shl di,1
00001314  D1E7              shl di,1
00001316  C4BD661F          les di,word [di+0x1f66]
0000131A  268B4516          mov ax,[es:di+0x16]
0000131E  89869BFE          mov [bp-0x165],ax
00001322  83BE9BFE00        cmp word [bp-0x165],0x0
00001327  7503              jnz 0x132c
00001329  E9E204            jmp 0x180e
0000132C  8BBE9BFE          mov di,[bp-0x165]
00001330  D1E7              shl di,1
00001332  D1E7              shl di,1
00001334  C4BD0E2F          les di,word [di+0x2f0e]
00001338  268B4510          mov ax,[es:di+0x10]
0000133C  3B065E1F          cmp ax,[0x1f5e]
00001340  7403              jz 0x1345
00001342  E9C904            jmp 0x180e
00001345  8BBE9BFE          mov di,[bp-0x165]
00001349  D1E7              shl di,1
0000134B  D1E7              shl di,1
0000134D  C4BD0E2F          les di,word [di+0x2f0e]
00001351  268B4512          mov ax,[es:di+0x12]
00001355  BA0C01            mov dx,0x10c
00001358  F7E2              mul dx
0000135A  8BBE9BFE          mov di,[bp-0x165]
0000135E  D1E7              shl di,1
00001360  D1E7              shl di,1
00001362  C4BD0E2F          les di,word [di+0x2f0e]
00001366  03F8              add di,ax
00001368  81C708FF          add di,0xff08
0000136C  89BE93F6          mov [bp-0x96d],di
00001370  8C8695F6          mov word [bp-0x96b],es
00001374  8D861DFF          lea ax,[bp-0xe3]
00001378  8CD2              mov dx,ss
0000137A  52                push dx
0000137B  50                push ax
0000137C  8D863DFF          lea ax,[bp-0xc3]
00001380  8CD2              mov dx,ss
00001382  52                push dx
00001383  50                push ax
00001384  B80700            mov ax,0x7
00001387  50                push ax
00001388  E8BBEC            call 0x46
0000138B  31C0              xor ax,ax
0000138D  898699FE          mov [bp-0x167],ax
00001391  31C0              xor ax,ax
00001393  89869DFE          mov [bp-0x163],ax
00001397  C78697FE0100      mov word [bp-0x169],0x1
0000139D  EB04              jmp 0x13a3
0000139F  FF8697FE          inc word [bp-0x169]
000013A3  8B8697FE          mov ax,[bp-0x169]
000013A7  BA3400            mov dx,0x34
000013AA  F7E2              mul dx
000013AC  C4BE93F6          les di,word [bp-0x96d]
000013B0  03F8              add di,ax
000013B2  26807DD400        cmp byte [es:di-0x2c],0x0
000013B7  766E              jna 0x1427
000013B9  FF869DFE          inc word [bp-0x163]
000013BD  8B8697FE          mov ax,[bp-0x169]
000013C1  BA3400            mov dx,0x34
000013C4  F7E2              mul dx
000013C6  C4BE93F6          les di,word [bp-0x96d]
000013CA  03F8              add di,ax
000013CC  268A45D4          mov al,[es:di-0x2c]
000013D0  30E4              xor ah,ah
000013D2  3B8699FE          cmp ax,[bp-0x167]
000013D6  7E19              jng 0x13f1
000013D8  8B8697FE          mov ax,[bp-0x169]
000013DC  BA3400            mov dx,0x34
000013DF  F7E2              mul dx
000013E1  C4BE93F6          les di,word [bp-0x96d]
000013E5  03F8              add di,ax
000013E7  268A45D4          mov al,[es:di-0x2c]
000013EB  30E4              xor ah,ah
000013ED  898699FE          mov [bp-0x167],ax
000013F1  8B8697FE          mov ax,[bp-0x169]
000013F5  BA3400            mov dx,0x34
000013F8  F7E2              mul dx
000013FA  C4BE93F6          les di,word [bp-0x96d]
000013FE  03F8              add di,ax
00001400  268A45EE          mov al,[es:di-0x12]
00001404  30E4              xor ah,ah
00001406  3B8699FE          cmp ax,[bp-0x167]
0000140A  7E19              jng 0x1425
0000140C  8B8697FE          mov ax,[bp-0x169]
00001410  BA3400            mov dx,0x34
00001413  F7E2              mul dx
00001415  C4BE93F6          les di,word [bp-0x96d]
00001419  03F8              add di,ax
0000141B  268A45EE          mov al,[es:di-0x12]
0000141F  30E4              xor ah,ah
00001421  898699FE          mov [bp-0x167],ax
00001425  EB06              jmp 0x142d
00001427  C78697FE0400      mov word [bp-0x169],0x4
0000142D  83BE97FE04        cmp word [bp-0x169],0x4
00001432  7403              jz 0x1437
00001434  E968FF            jmp 0x139f
00001437  A0CC00            mov al,[0xcc]
0000143A  30E4              xor ah,ah
0000143C  3B8699FE          cmp ax,[bp-0x167]
00001440  7E09              jng 0x144b
00001442  A0CC00            mov al,[0xcc]
00001445  30E4              xor ah,ah
00001447  898699FE          mov [bp-0x167],ax
0000144B  8B8699FE          mov ax,[bp-0x167]
0000144F  B90300            mov cx,0x3
00001452  D3E0              shl ax,cl
00001454  898699FE          mov [bp-0x167],ax
00001458  8D863DFF          lea ax,[bp-0xc3]
0000145C  8CD2              mov dx,ss
0000145E  52                push dx
0000145F  50                push ax
00001460  8D865DFF          lea ax,[bp-0xa3]
00001464  8CD2              mov dx,ss
00001466  52                push dx
00001467  50                push ax
00001468  B85100            mov ax,0x51
0000146B  50                push ax
0000146C  B82000            mov ax,0x20
0000146F  50                push ax
00001470  8B8699FE          mov ax,[bp-0x167]
00001474  051000            add ax,0x10
00001477  50                push ax
00001478  B82400            mov ax,0x24
0000147B  50                push ax
0000147C  B80100            mov ax,0x1
0000147F  50                push ax
00001480  B80F00            mov ax,0xf
00001483  50                push ax
00001484  B80100            mov ax,0x1
00001487  50                push ax
00001488  B80100            mov ax,0x1
0000148B  50                push ax
0000148C  9A6E1A210A        call word 0xa21:word 0x1a6e
00001491  8D865DFF          lea ax,[bp-0xa3]
00001495  8CD2              mov dx,ss
00001497  52                push dx
00001498  50                push ax
00001499  8D867DFF          lea ax,[bp-0x83]
0000149D  8CD2              mov dx,ss
0000149F  52                push dx
000014A0  50                push ax
000014A1  B85100            mov ax,0x51
000014A4  50                push ax
000014A5  B84800            mov ax,0x48
000014A8  50                push ax
000014A9  8B8699FE          mov ax,[bp-0x167]
000014AD  051000            add ax,0x10
000014B0  50                push ax
000014B1  B82400            mov ax,0x24
000014B4  50                push ax
000014B5  B80100            mov ax,0x1
000014B8  50                push ax
000014B9  B80F00            mov ax,0xf
000014BC  50                push ax
000014BD  B80100            mov ax,0x1
000014C0  50                push ax
000014C1  B80200            mov ax,0x2
000014C4  50                push ax
000014C5  9A6E1A210A        call word 0xa21:word 0x1a6e
000014CA  8D867DFF          lea ax,[bp-0x83]
000014CE  8CD2              mov dx,ss
000014D0  52                push dx
000014D1  50                push ax
000014D2  8D469D            lea ax,[bp-0x63]
000014D5  8CD2              mov dx,ss
000014D7  52                push dx
000014D8  50                push ax
000014D9  B85100            mov ax,0x51
000014DC  50                push ax
000014DD  B87000            mov ax,0x70
000014E0  50                push ax
000014E1  8B8699FE          mov ax,[bp-0x167]
000014E5  051000            add ax,0x10
000014E8  50                push ax
000014E9  B82400            mov ax,0x24
000014EC  50                push ax
000014ED  B80100            mov ax,0x1
000014F0  50                push ax
000014F1  B80F00            mov ax,0xf
000014F4  50                push ax
000014F5  B80100            mov ax,0x1
000014F8  50                push ax
000014F9  B80300            mov ax,0x3
000014FC  50                push ax
000014FD  9A6E1A210A        call word 0xa21:word 0x1a6e
00001502  8D469D            lea ax,[bp-0x63]
00001505  8CD2              mov dx,ss
00001507  52                push dx
00001508  50                push ax
00001509  8D46BD            lea ax,[bp-0x43]
0000150C  8CD2              mov dx,ss
0000150E  52                push dx
0000150F  50                push ax
00001510  B85100            mov ax,0x51
00001513  50                push ax
00001514  B89800            mov ax,0x98
00001517  50                push ax
00001518  8B8699FE          mov ax,[bp-0x167]
0000151C  051000            add ax,0x10
0000151F  50                push ax
00001520  B82400            mov ax,0x24
00001523  50                push ax
00001524  B80100            mov ax,0x1
00001527  50                push ax
00001528  B80F00            mov ax,0xf
0000152B  50                push ax
0000152C  B80100            mov ax,0x1
0000152F  50                push ax
00001530  B80400            mov ax,0x4
00001533  50                push ax
00001534  9A6E1A210A        call word 0xa21:word 0x1a6e
00001539  8D46BD            lea ax,[bp-0x43]
0000153C  8CD2              mov dx,ss
0000153E  8BBE9DFE          mov di,[bp-0x163]
00001542  B105              mov cl,0x5
00001544  D3E7              shl di,cl
00001546  89831DFF          mov [bp+di-0xe3],ax
0000154A  89931FFF          mov [bp+di-0xe1],dx
0000154E  C78697FE0100      mov word [bp-0x169],0x1
00001554  EB04              jmp 0x155a
00001556  FF8697FE          inc word [bp-0x169]
0000155A  8B8697FE          mov ax,[bp-0x169]
0000155E  BA3400            mov dx,0x34
00001561  F7E2              mul dx
00001563  C4BE93F6          les di,word [bp-0x96d]
00001567  03F8              add di,ax
00001569  26807DEE00        cmp byte [es:di-0x12],0x0
0000156E  7403              jz 0x1573
00001570  E98600            jmp 0x15f9
00001573  8DBE93F5          lea di,[bp-0xa6d]
00001577  16                push ss
00001578  57                push di
00001579  8B8697FE          mov ax,[bp-0x169]
0000157D  BA3400            mov dx,0x34
00001580  F7E2              mul dx
00001582  C4BE93F6          les di,word [bp-0x96d]
00001586  03F8              add di,ax
00001588  81C7D4FF          add di,0xffd4
0000158C  06                push es
0000158D  57                push di
0000158E  9A02006F04        call word 0x46f:word 0x2
00001593  8BBE97FE          mov di,[bp-0x169]
00001597  B109              mov cl,0x9
00001599  D3E7              shl di,cl
0000159B  8DBB97F4          lea di,[bp+di-0xb69]
0000159F  16                push ss
000015A0  57                push di
000015A1  B8FF00            mov ax,0xff
000015A4  50                push ax
000015A5  9AAD06561A        call word 0x1a56:word 0x6ad
000015AA  8B8697FE          mov ax,[bp-0x169]
000015AE  BA1C00            mov dx,0x1c
000015B1  F7E2              mul dx
000015B3  8BF8              mov di,ax
000015B5  8D8391FE          lea ax,[bp+di-0x16f]
000015B9  8CD2              mov dx,ss
000015BB  52                push dx
000015BC  50                push ax
000015BD  31C0              xor ax,ax
000015BF  31D2              xor dx,dx
000015C1  52                push dx
000015C2  50                push ax
000015C3  B80800            mov ax,0x8
000015C6  50                push ax
000015C7  8BBE97FE          mov di,[bp-0x169]
000015CB  B105              mov cl,0x5
000015CD  D3E7              shl di,cl
000015CF  8B8327FF          mov ax,[bp+di-0xd9]
000015D3  99                cwd
000015D4  B90200            mov cx,0x2
000015D7  F7F9              idiv cx
000015D9  050700            add ax,0x7
000015DC  50                push ax
000015DD  B80F00            mov ax,0xf
000015E0  50                push ax
000015E1  8BBE97FE          mov di,[bp-0x169]
000015E5  B109              mov cl,0x9
000015E7  D3E7              shl di,cl
000015E9  8D8397F4          lea ax,[bp+di-0xb69]
000015ED  8CD2              mov dx,ss
000015EF  52                push dx
000015F0  50                push ax
000015F1  9AA71B210A        call word 0xa21:word 0x1ba7
000015F6  E99000            jmp 0x1689
000015F9  8DBE93F5          lea di,[bp-0xa6d]
000015FD  16                push ss
000015FE  57                push di
000015FF  8B8697FE          mov ax,[bp-0x169]
00001603  BA3400            mov dx,0x34
00001606  F7E2              mul dx
00001608  C4BE93F6          les di,word [bp-0x96d]
0000160C  03F8              add di,ax
0000160E  81C7D4FF          add di,0xffd4
00001612  06                push es
00001613  57                push di
00001614  9A02006F04        call word 0x46f:word 0x2
00001619  8BBE97FE          mov di,[bp-0x169]
0000161D  B109              mov cl,0x9
0000161F  D3E7              shl di,cl
00001621  8DBB97F4          lea di,[bp+di-0xb69]
00001625  16                push ss
00001626  57                push di
00001627  B8FF00            mov ax,0xff
0000162A  50                push ax
0000162B  9AAD06561A        call word 0x1a56:word 0x6ad
00001630  8B8697FE          mov ax,[bp-0x169]
00001634  BA1C00            mov dx,0x1c
00001637  F7E2              mul dx
00001639  8BF8              mov di,ax
0000163B  8D8391FE          lea ax,[bp+di-0x16f]
0000163F  8CD2              mov dx,ss
00001641  52                push dx
00001642  50                push ax
00001643  8B8697FE          mov ax,[bp-0x169]
00001647  BA1C00            mov dx,0x1c
0000164A  F7E2              mul dx
0000164C  8BF8              mov di,ax
0000164E  8D839FFE          lea ax,[bp+di-0x161]
00001652  8CD2              mov dx,ss
00001654  52                push dx
00001655  50                push ax
00001656  B80800            mov ax,0x8
00001659  50                push ax
0000165A  8BBE97FE          mov di,[bp-0x169]
0000165E  B105              mov cl,0x5
00001660  D3E7              shl di,cl
00001662  8B8327FF          mov ax,[bp+di-0xd9]
00001666  99                cwd
00001667  B90200            mov cx,0x2
0000166A  F7F9              idiv cx
0000166C  2D0000            sub ax,0x0
0000166F  50                push ax
00001670  B80F00            mov ax,0xf
00001673  50                push ax
00001674  8BBE97FE          mov di,[bp-0x169]
00001678  B109              mov cl,0x9
0000167A  D3E7              shl di,cl
0000167C  8D8397F4          lea ax,[bp+di-0xb69]
00001680  8CD2              mov dx,ss
00001682  52                push dx
00001683  50                push ax
00001684  9AA71B210A        call word 0xa21:word 0x1ba7
00001689  8DBE93F5          lea di,[bp-0xa6d]
0000168D  16                push ss
0000168E  57                push di
0000168F  8B8697FE          mov ax,[bp-0x169]
00001693  BA3400            mov dx,0x34
00001696  F7E2              mul dx
00001698  C4BE93F6          les di,word [bp-0x96d]
0000169C  03F8              add di,ax
0000169E  81C7EEFF          add di,0xffee
000016A2  06                push es
000016A3  57                push di
000016A4  9A02006F04        call word 0x46f:word 0x2
000016A9  8BBE97FE          mov di,[bp-0x169]
000016AD  B109              mov cl,0x9
000016AF  D3E7              shl di,cl
000016B1  8DBB97F5          lea di,[bp+di-0xa69]
000016B5  16                push ss
000016B6  57                push di
000016B7  B8FF00            mov ax,0xff
000016BA  50                push ax
000016BB  9AAD06561A        call word 0x1a56:word 0x6ad
000016C0  8B8697FE          mov ax,[bp-0x169]
000016C4  BA1C00            mov dx,0x1c
000016C7  F7E2              mul dx
000016C9  8BF8              mov di,ax
000016CB  8D839FFE          lea ax,[bp+di-0x161]
000016CF  8CD2              mov dx,ss
000016D1  52                push dx
000016D2  50                push ax
000016D3  31C0              xor ax,ax
000016D5  31D2              xor dx,dx
000016D7  52                push dx
000016D8  50                push ax
000016D9  B80800            mov ax,0x8
000016DC  50                push ax
000016DD  8BBE97FE          mov di,[bp-0x169]
000016E1  B105              mov cl,0x5
000016E3  D3E7              shl di,cl
000016E5  8B8327FF          mov ax,[bp+di-0xd9]
000016E9  99                cwd
000016EA  B90200            mov cx,0x2
000016ED  F7F9              idiv cx
000016EF  050E00            add ax,0xe
000016F2  50                push ax
000016F3  B80F00            mov ax,0xf
000016F6  50                push ax
000016F7  8BBE97FE          mov di,[bp-0x169]
000016FB  B109              mov cl,0x9
000016FD  D3E7              shl di,cl
000016FF  8D8397F5          lea ax,[bp+di-0xa69]
00001703  8CD2              mov dx,ss
00001705  52                push dx
00001706  50                push ax
00001707  9AA71B210A        call word 0xa21:word 0x1ba7
0000170C  8B8697FE          mov ax,[bp-0x169]
00001710  BA1C00            mov dx,0x1c
00001713  F7E2              mul dx
00001715  8BF8              mov di,ax
00001717  8D8391FE          lea ax,[bp+di-0x16f]
0000171B  8CD2              mov dx,ss
0000171D  8BBE97FE          mov di,[bp-0x169]
00001721  B105              mov cl,0x5
00001723  D3E7              shl di,cl
00001725  89832FFF          mov [bp+di-0xd1],ax
00001729  899331FF          mov [bp+di-0xcf],dx
0000172D  83BE97FE04        cmp word [bp-0x169],0x4
00001732  7403              jz 0x1737
00001734  E91FFE            jmp 0x1556
00001737  8D46DD            lea ax,[bp-0x23]
0000173A  8CD2              mov dx,ss
0000173C  52                push dx
0000173D  50                push ax
0000173E  8B8699FE          mov ax,[bp-0x167]
00001742  99                cwd
00001743  B90200            mov cx,0x2
00001746  F7F9              idiv cx
00001748  8BD0              mov dx,ax
0000174A  B82C01            mov ax,0x12c
0000174D  2BC2              sub ax,dx
0000174F  50                push ax
00001750  B82D00            mov ax,0x2d
00001753  50                push ax
00001754  8B8699FE          mov ax,[bp-0x167]
00001758  056B00            add ax,0x6b
0000175B  50                push ax
0000175C  B8C400            mov ax,0xc4
0000175F  50                push ax
00001760  B80100            mov ax,0x1
00001763  50                push ax
00001764  B80F00            mov ax,0xf
00001767  50                push ax
00001768  B80900            mov ax,0x9
0000176B  50                push ax
0000176C  8D861DFF          lea ax,[bp-0xe3]
00001770  8CD2              mov dx,ss
00001772  52                push dx
00001773  50                push ax
00001774  9A091B210A        call word 0xa21:word 0x1b09
00001779  8D869FFE          lea ax,[bp-0x161]
0000177D  8CD2              mov dx,ss
0000177F  52                push dx
00001780  50                push ax
00001781  31C0              xor ax,ax
00001783  31D2              xor dx,dx
00001785  52                push dx
00001786  50                push ax
00001787  A0CC00            mov al,[0xcc]
0000178A  30E4              xor ah,ah
0000178C  B90200            mov cx,0x2
0000178F  D3E0              shl ax,cl
00001791  8BD8              mov bx,ax
00001793  8B46E1            mov ax,[bp-0x1f]
00001796  2D5B00            sub ax,0x5b
00001799  99                cwd
0000179A  B90200            mov cx,0x2
0000179D  F7F9              idiv cx
0000179F  055100            add ax,0x51
000017A2  2BC3              sub ax,bx
000017A4  50                push ax
000017A5  B81600            mov ax,0x16
000017A8  50                push ax
000017A9  B80F00            mov ax,0xf
000017AC  50                push ax
000017AD  B8CC00            mov ax,0xcc
000017B0  8CDA              mov dx,ds
000017B2  52                push dx
000017B3  50                push ax
000017B4  9AA71B210A        call word 0xa21:word 0x1ba7
000017B9  8D869FFE          lea ax,[bp-0x161]
000017BD  8CD2              mov dx,ss
000017BF  8946EF            mov [bp-0x11],ax
000017C2  8956F1            mov [bp-0xf],dx
000017C5  BF271C            mov di,0x1c27
000017C8  1E                push ds
000017C9  57                push di
000017CA  8D7EBD            lea di,[bp-0x43]
000017CD  16                push ss
000017CE  57                push di
000017CF  B82000            mov ax,0x20
000017D2  50                push ax
000017D3  9AC002561A        call word 0x1a56:word 0x2c0
000017D8  8B46E3            mov ax,[bp-0x1d]
000017DB  2D2100            sub ax,0x21
000017DE  8946C3            mov [bp-0x3d],ax
000017E1  B8D81B            mov ax,0x1bd8
000017E4  8CDA              mov dx,ds
000017E6  52                push dx
000017E7  50                push ax
000017E8  8D46DD            lea ax,[bp-0x23]
000017EB  8CD2              mov dx,ss
000017ED  52                push dx
000017EE  50                push ax
000017EF  9A3916210A        call word 0xa21:word 0x1639
000017F4  C47E04            les di,word [bp+0x4]
000017F7  268905            mov [es:di],ax
000017FA  C47E04            les di,word [bp+0x4]
000017FD  26833DFF          cmp word [es:di],0xffffffffffffffff
00001801  7504              jnz 0x1807
00001803  B000              mov al,0x0
00001805  EB02              jmp 0x1809
00001807  B001              mov al,0x1
00001809  8846FF            mov [bp-0x1],al
0000180C  EB15              jmp 0x1823
0000180E  B80800            mov ax,0x8
00001811  50                push ax
00001812  B8FA00            mov ax,0xfa
00001815  50                push ax
00001816  B8A000            mov ax,0xa0
00001819  50                push ax
0000181A  9AE30A6F04        call word 0x46f:word 0xae3
0000181F  C646FF00          mov byte [bp-0x1],0x0
00001823  8A46FF            mov al,[bp-0x1]
00001826  89EC              mov sp,bp
00001828  5D                pop bp
00001829  C20400            ret word 0x4
0000182C  55                push bp
0000182D  89E5              mov bp,sp
0000182F  81ECD300          sub sp,0xd3
00001833  8D865DFF          lea ax,[bp-0xa3]
00001837  8CD2              mov dx,ss
00001839  52                push dx
0000183A  50                push ax
0000183B  8D867DFF          lea ax,[bp-0x83]
0000183F  8CD2              mov dx,ss
00001841  52                push dx
00001842  50                push ax
00001843  B80800            mov ax,0x8
00001846  50                push ax
00001847  E8FCE7            call 0x46
0000184A  A00601            mov al,[0x106]
0000184D  30E4              xor ah,ah
0000184F  B90300            mov cx,0x3
00001852  D3E0              shl ax,cl
00001854  89862DFF          mov [bp-0xd3],ax
00001858  8D867DFF          lea ax,[bp-0x83]
0000185C  8CD2              mov dx,ss
0000185E  52                push dx
0000185F  50                push ax
00001860  8D469D            lea ax,[bp-0x63]
00001863  8CD2              mov dx,ss
00001865  52                push dx
00001866  50                push ax
00001867  B85100            mov ax,0x51
0000186A  50                push ax
0000186B  B82000            mov ax,0x20
0000186E  50                push ax
0000186F  8B862DFF          mov ax,[bp-0xd3]
00001873  050800            add ax,0x8
00001876  50                push ax
00001877  B81A00            mov ax,0x1a
0000187A  50                push ax
0000187B  B80100            mov ax,0x1
0000187E  50                push ax
0000187F  B80F00            mov ax,0xf
00001882  50                push ax
00001883  B80100            mov ax,0x1
00001886  50                push ax
00001887  B80100            mov ax,0x1
0000188A  50                push ax
0000188B  9A6E1A210A        call word 0xa21:word 0x1a6e
00001890  8D469D            lea ax,[bp-0x63]
00001893  8CD2              mov dx,ss
00001895  52                push dx
00001896  50                push ax
00001897  8D46BD            lea ax,[bp-0x43]
0000189A  8CD2              mov dx,ss
0000189C  52                push dx
0000189D  50                push ax
0000189E  B85100            mov ax,0x51
000018A1  50                push ax
000018A2  B83E00            mov ax,0x3e
000018A5  50                push ax
000018A6  8B862DFF          mov ax,[bp-0xd3]
000018AA  050800            add ax,0x8
000018AD  50                push ax
000018AE  B81A00            mov ax,0x1a
000018B1  50                push ax
000018B2  B80100            mov ax,0x1
000018B5  50                push ax
000018B6  B80F00            mov ax,0xf
000018B9  50                push ax
000018BA  B80100            mov ax,0x1
000018BD  50                push ax
000018BE  B80200            mov ax,0x2
000018C1  50                push ax
000018C2  9A6E1A210A        call word 0xa21:word 0x1a6e
000018C7  C78631FF0100      mov word [bp-0xcf],0x1
000018CD  EB04              jmp 0x18d3
000018CF  FF8631FF          inc word [bp-0xcf]
000018D3  8B8631FF          mov ax,[bp-0xcf]
000018D7  BA0E00            mov dx,0xe
000018DA  F7E2              mul dx
000018DC  8BF8              mov di,ax
000018DE  8D8325FF          lea ax,[bp+di-0xdb]
000018E2  8CD2              mov dx,ss
000018E4  52                push dx
000018E5  50                push ax
000018E6  31C0              xor ax,ax
000018E8  31D2              xor dx,dx
000018EA  52                push dx
000018EB  50                push ax
000018EC  8BBE31FF          mov di,[bp-0xcf]
000018F0  B104              mov cl,0x4
000018F2  D3E7              shl di,cl
000018F4  8A85D600          mov al,[di+0xd6]
000018F8  30E4              xor ah,ah
000018FA  B90200            mov cx,0x2
000018FD  D3E0              shl ax,cl
000018FF  8BD8              mov bx,ax
00001901  8BBE31FF          mov di,[bp-0xcf]
00001905  B105              mov cl,0x5
00001907  D3E7              shl di,cl
00001909  8B8365FF          mov ax,[bp+di-0x9b]
0000190D  99                cwd
0000190E  B90200            mov cx,0x2
00001911  F7F9              idiv cx
00001913  2BC3              sub ax,bx
00001915  50                push ax
00001916  8BBE31FF          mov di,[bp-0xcf]
0000191A  B105              mov cl,0x5
0000191C  D3E7              shl di,cl
0000191E  8B8367FF          mov ax,[bp+di-0x99]
00001922  99                cwd
00001923  B90200            mov cx,0x2
00001926  F7F9              idiv cx
00001928  050700            add ax,0x7
0000192B  50                push ax
0000192C  B80F00            mov ax,0xf
0000192F  50                push ax
00001930  8BBE31FF          mov di,[bp-0xcf]
00001934  B104              mov cl,0x4
00001936  D3E7              shl di,cl
00001938  8D85D600          lea ax,[di+0xd6]
0000193C  8CDA              mov dx,ds
0000193E  52                push dx
0000193F  50                push ax
00001940  9AA71B210A        call word 0xa21:word 0x1ba7
00001945  8B8631FF          mov ax,[bp-0xcf]
00001949  BA0E00            mov dx,0xe
0000194C  F7E2              mul dx
0000194E  8BF8              mov di,ax
00001950  8D8325FF          lea ax,[bp+di-0xdb]
00001954  8CD2              mov dx,ss
00001956  8BBE31FF          mov di,[bp-0xcf]
0000195A  B105              mov cl,0x5
0000195C  D3E7              shl di,cl
0000195E  89836FFF          mov [bp+di-0x91],ax
00001962  899371FF          mov [bp+di-0x8f],dx
00001966  83BE31FF02        cmp word [bp-0xcf],0x2
0000196B  7403              jz 0x1970
0000196D  E95FFF            jmp 0x18cf
00001970  8D46DD            lea ax,[bp-0x23]
00001973  8CD2              mov dx,ss
00001975  52                push dx
00001976  50                push ax
00001977  B80901            mov ax,0x109
0000197A  50                push ax
0000197B  B88C00            mov ax,0x8c
0000197E  50                push ax
0000197F  8B862DFF          mov ax,[bp-0xd3]
00001983  056300            add ax,0x63
00001986  50                push ax
00001987  B86000            mov ax,0x60
0000198A  50                push ax
0000198B  B80100            mov ax,0x1
0000198E  50                push ax
0000198F  B80F00            mov ax,0xf
00001992  50                push ax
00001993  B80900            mov ax,0x9
00001996  50                push ax
00001997  8D865DFF          lea ax,[bp-0xa3]
0000199B  8CD2              mov dx,ss
0000199D  52                push dx
0000199E  50                push ax
0000199F  9A091B210A        call word 0xa21:word 0x1b09
000019A4  8D864FFF          lea ax,[bp-0xb1]
000019A8  8CD2              mov dx,ss
000019AA  52                push dx
000019AB  50                push ax
000019AC  31C0              xor ax,ax
000019AE  31D2              xor dx,dx
000019B0  52                push dx
000019B1  50                push ax
000019B2  A00601            mov al,[0x106]
000019B5  30E4              xor ah,ah
000019B7  B90200            mov cx,0x2
000019BA  D3E0              shl ax,cl
000019BC  8BD8              mov bx,ax
000019BE  8B46E1            mov ax,[bp-0x1f]
000019C1  2D5B00            sub ax,0x5b
000019C4  99                cwd
000019C5  B90200            mov cx,0x2
000019C8  F7F9              idiv cx
000019CA  055100            add ax,0x51
000019CD  2BC3              sub ax,bx
000019CF  50                push ax
000019D0  B81600            mov ax,0x16
000019D3  50                push ax
000019D4  B80F00            mov ax,0xf
000019D7  50                push ax
000019D8  B80601            mov ax,0x106
000019DB  8CDA              mov dx,ds
000019DD  52                push dx
000019DE  50                push ax
000019DF  9AA71B210A        call word 0xa21:word 0x1ba7
000019E4  8D864FFF          lea ax,[bp-0xb1]
000019E8  8CD2              mov dx,ss
000019EA  8946EF            mov [bp-0x11],ax
000019ED  8956F1            mov [bp-0xf],dx
000019F0  BF271C            mov di,0x1c27
000019F3  1E                push ds
000019F4  57                push di
000019F5  8D7EBD            lea di,[bp-0x43]
000019F8  16                push ss
000019F9  57                push di
000019FA  B82000            mov ax,0x20
000019FD  50                push ax
000019FE  9AC002561A        call word 0x1a56:word 0x2c0
00001A03  8B46E3            mov ax,[bp-0x1d]
00001A06  2D2100            sub ax,0x21
00001A09  8946C3            mov [bp-0x3d],ax
00001A0C  B8D81B            mov ax,0x1bd8
00001A0F  8CDA              mov dx,ds
00001A11  52                push dx
00001A12  50                push ax
00001A13  8D46DD            lea ax,[bp-0x23]
00001A16  8CD2              mov dx,ss
00001A18  52                push dx
00001A19  50                push ax
00001A1A  9A3916210A        call word 0xa21:word 0x1639
00001A1F  89862FFF          mov [bp-0xd1],ax
00001A23  8B862FFF          mov ax,[bp-0xd1]
00001A27  3DFFFF            cmp ax,0xffff
00001A2A  7506              jnz 0x1a32
00001A2C  C646FF00          mov byte [bp-0x1],0x0
00001A30  EB46              jmp 0x1a78
00001A32  3D0100            cmp ax,0x1
00001A35  751F              jnz 0x1a56
00001A37  C47E04            les di,word [bp+0x4]
00001A3A  26C60508          mov byte [es:di],0x8
00001A3E  C47E04            les di,word [bp+0x4]
00001A41  31C0              xor ax,ax
00001A43  26894501          mov [es:di+0x1],ax
00001A47  C47E04            les di,word [bp+0x4]
00001A4A  31C0              xor ax,ax
00001A4C  26894503          mov [es:di+0x3],ax
00001A50  C646FF01          mov byte [bp-0x1],0x1
00001A54  EB22              jmp 0x1a78
00001A56  3D0200            cmp ax,0x2
00001A59  751D              jnz 0x1a78
00001A5B  C47E04            les di,word [bp+0x4]
00001A5E  26C6050A          mov byte [es:di],0xa
00001A62  C47E04            les di,word [bp+0x4]
00001A65  31C0              xor ax,ax
00001A67  26894501          mov [es:di+0x1],ax
00001A6B  C47E04            les di,word [bp+0x4]
00001A6E  31C0              xor ax,ax
00001A70  26894503          mov [es:di+0x3],ax
00001A74  C646FF01          mov byte [bp-0x1],0x1
00001A78  8A46FF            mov al,[bp-0x1]
00001A7B  89EC              mov sp,bp
00001A7D  5D                pop bp
00001A7E  C20400            ret word 0x4
00001A81  55                push bp
00001A82  89E5              mov bp,sp
00001A84  81ECD300          sub sp,0xd3
00001A88  8D865DFF          lea ax,[bp-0xa3]
00001A8C  8CD2              mov dx,ss
00001A8E  52                push dx
00001A8F  50                push ax
00001A90  8D867DFF          lea ax,[bp-0x83]
00001A94  8CD2              mov dx,ss
00001A96  52                push dx
00001A97  50                push ax
00001A98  B80A00            mov ax,0xa
00001A9B  50                push ax
00001A9C  E8A7E5            call 0x46
00001A9F  A03801            mov al,[0x138]
00001AA2  30E4              xor ah,ah
00001AA4  B90300            mov cx,0x3
00001AA7  D3E0              shl ax,cl
00001AA9  89862DFF          mov [bp-0xd3],ax
00001AAD  8D867DFF          lea ax,[bp-0x83]
00001AB1  8CD2              mov dx,ss
00001AB3  52                push dx
00001AB4  50                push ax
00001AB5  8D469D            lea ax,[bp-0x63]
00001AB8  8CD2              mov dx,ss
00001ABA  52                push dx
00001ABB  50                push ax
00001ABC  B85100            mov ax,0x51
00001ABF  50                push ax
00001AC0  B82000            mov ax,0x20
00001AC3  50                push ax
00001AC4  8B862DFF          mov ax,[bp-0xd3]
00001AC8  050800            add ax,0x8
00001ACB  50                push ax
00001ACC  B81A00            mov ax,0x1a
00001ACF  50                push ax
00001AD0  B80100            mov ax,0x1
00001AD3  50                push ax
00001AD4  B80F00            mov ax,0xf
00001AD7  50                push ax
00001AD8  B80100            mov ax,0x1
00001ADB  50                push ax
00001ADC  B80100            mov ax,0x1
00001ADF  50                push ax
00001AE0  9A6E1A210A        call word 0xa21:word 0x1a6e
00001AE5  8D469D            lea ax,[bp-0x63]
00001AE8  8CD2              mov dx,ss
00001AEA  52                push dx
00001AEB  50                push ax
00001AEC  8D46BD            lea ax,[bp-0x43]
00001AEF  8CD2              mov dx,ss
00001AF1  52                push dx
00001AF2  50                push ax
00001AF3  B85100            mov ax,0x51
00001AF6  50                push ax
00001AF7  B83E00            mov ax,0x3e
00001AFA  50                push ax
00001AFB  8B862DFF          mov ax,[bp-0xd3]
00001AFF  050800            add ax,0x8
00001B02  50                push ax
00001B03  B81A00            mov ax,0x1a
00001B06  50                push ax
00001B07  B80100            mov ax,0x1
00001B0A  50                push ax
00001B0B  B80F00            mov ax,0xf
00001B0E  50                push ax
00001B0F  B80100            mov ax,0x1
00001B12  50                push ax
00001B13  B80200            mov ax,0x2
00001B16  50                push ax
00001B17  9A6E1A210A        call word 0xa21:word 0x1a6e
00001B1C  C78631FF0100      mov word [bp-0xcf],0x1
00001B22  EB04              jmp 0x1b28
00001B24  FF8631FF          inc word [bp-0xcf]
00001B28  8B8631FF          mov ax,[bp-0xcf]
00001B2C  BA0E00            mov dx,0xe
00001B2F  F7E2              mul dx
00001B31  8BF8              mov di,ax
00001B33  8D8325FF          lea ax,[bp+di-0xdb]
00001B37  8CD2              mov dx,ss
00001B39  52                push dx
00001B3A  50                push ax
00001B3B  31C0              xor ax,ax
00001B3D  31D2              xor dx,dx
00001B3F  52                push dx
00001B40  50                push ax
00001B41  8B8631FF          mov ax,[bp-0xcf]
00001B45  BA1100            mov dx,0x11
00001B48  F7E2              mul dx
00001B4A  8BF8              mov di,ax
00001B4C  8A850501          mov al,[di+0x105]
00001B50  30E4              xor ah,ah
00001B52  B90200            mov cx,0x2
00001B55  D3E0              shl ax,cl
00001B57  8BD8              mov bx,ax
00001B59  8BBE31FF          mov di,[bp-0xcf]
00001B5D  B105              mov cl,0x5
00001B5F  D3E7              shl di,cl
00001B61  8B8365FF          mov ax,[bp+di-0x9b]
00001B65  99                cwd
00001B66  B90200            mov cx,0x2
00001B69  F7F9              idiv cx
00001B6B  2BC3              sub ax,bx
00001B6D  50                push ax
00001B6E  8BBE31FF          mov di,[bp-0xcf]
00001B72  B105              mov cl,0x5
00001B74  D3E7              shl di,cl
00001B76  8B8367FF          mov ax,[bp+di-0x99]
00001B7A  99                cwd
00001B7B  B90200            mov cx,0x2
00001B7E  F7F9              idiv cx
00001B80  050700            add ax,0x7
00001B83  50                push ax
00001B84  B80F00            mov ax,0xf
00001B87  50                push ax
00001B88  8B8631FF          mov ax,[bp-0xcf]
00001B8C  BA1100            mov dx,0x11
00001B8F  F7E2              mul dx
00001B91  8BF8              mov di,ax
00001B93  8D850501          lea ax,[di+0x105]
00001B97  8CDA              mov dx,ds
00001B99  52                push dx
00001B9A  50                push ax
00001B9B  9AA71B210A        call word 0xa21:word 0x1ba7
00001BA0  8B8631FF          mov ax,[bp-0xcf]
00001BA4  BA0E00            mov dx,0xe
00001BA7  F7E2              mul dx
00001BA9  8BF8              mov di,ax
00001BAB  8D8325FF          lea ax,[bp+di-0xdb]
00001BAF  8CD2              mov dx,ss
00001BB1  8BBE31FF          mov di,[bp-0xcf]
00001BB5  B105              mov cl,0x5
00001BB7  D3E7              shl di,cl
00001BB9  89836FFF          mov [bp+di-0x91],ax
00001BBD  899371FF          mov [bp+di-0x8f],dx
00001BC1  83BE31FF02        cmp word [bp-0xcf],0x2
00001BC6  7403              jz 0x1bcb
00001BC8  E959FF            jmp 0x1b24
00001BCB  8D46DD            lea ax,[bp-0x23]
00001BCE  8CD2              mov dx,ss
00001BD0  52                push dx
00001BD1  50                push ax
00001BD2  B8FA00            mov ax,0xfa
00001BD5  50                push ax
00001BD6  B88C00            mov ax,0x8c
00001BD9  50                push ax
00001BDA  8B862DFF          mov ax,[bp-0xd3]
00001BDE  056300            add ax,0x63
00001BE1  50                push ax
00001BE2  B86000            mov ax,0x60
00001BE5  50                push ax
00001BE6  B80100            mov ax,0x1
00001BE9  50                push ax
00001BEA  B80F00            mov ax,0xf
00001BED  50                push ax
00001BEE  B80900            mov ax,0x9
00001BF1  50                push ax
00001BF2  8D865DFF          lea ax,[bp-0xa3]
00001BF6  8CD2              mov dx,ss
00001BF8  52                push dx
00001BF9  50                push ax
00001BFA  9A091B210A        call word 0xa21:word 0x1b09
00001BFF  8D864FFF          lea ax,[bp-0xb1]
00001C03  8CD2              mov dx,ss
00001C05  52                push dx
00001C06  50                push ax
00001C07  31C0              xor ax,ax
00001C09  31D2              xor dx,dx
00001C0B  52                push dx
00001C0C  50                push ax
00001C0D  A03801            mov al,[0x138]
00001C10  30E4              xor ah,ah
00001C12  B90200            mov cx,0x2
00001C15  D3E0              shl ax,cl
00001C17  8BD8              mov bx,ax
00001C19  8B46E1            mov ax,[bp-0x1f]
00001C1C  2D5B00            sub ax,0x5b
00001C1F  99                cwd
00001C20  B90200            mov cx,0x2
00001C23  F7F9              idiv cx
00001C25  055100            add ax,0x51
00001C28  2BC3              sub ax,bx
00001C2A  50                push ax
00001C2B  B81600            mov ax,0x16
00001C2E  50                push ax
00001C2F  B80F00            mov ax,0xf
00001C32  50                push ax
00001C33  B83801            mov ax,0x138
00001C36  8CDA              mov dx,ds
00001C38  52                push dx
00001C39  50                push ax
00001C3A  9AA71B210A        call word 0xa21:word 0x1ba7
00001C3F  8D864FFF          lea ax,[bp-0xb1]
00001C43  8CD2              mov dx,ss
00001C45  8946EF            mov [bp-0x11],ax
00001C48  8956F1            mov [bp-0xf],dx
00001C4B  BF271C            mov di,0x1c27
00001C4E  1E                push ds
00001C4F  57                push di
00001C50  8D7EBD            lea di,[bp-0x43]
00001C53  16                push ss
00001C54  57                push di
00001C55  B82000            mov ax,0x20
00001C58  50                push ax
00001C59  9AC002561A        call word 0x1a56:word 0x2c0
00001C5E  8B46E3            mov ax,[bp-0x1d]
00001C61  2D2100            sub ax,0x21
00001C64  8946C3            mov [bp-0x3d],ax
00001C67  B8D81B            mov ax,0x1bd8
00001C6A  8CDA              mov dx,ds
00001C6C  52                push dx
00001C6D  50                push ax
00001C6E  8D46DD            lea ax,[bp-0x23]
00001C71  8CD2              mov dx,ss
00001C73  52                push dx
00001C74  50                push ax
00001C75  9A3916210A        call word 0xa21:word 0x1639
00001C7A  89862FFF          mov [bp-0xd1],ax
00001C7E  8B862FFF          mov ax,[bp-0xd1]
00001C82  3DFFFF            cmp ax,0xffff
00001C85  7506              jnz 0x1c8d
00001C87  C646FF00          mov byte [bp-0x1],0x0
00001C8B  EB24              jmp 0x1cb1
00001C8D  3D0100            cmp ax,0x1
00001C90  750E              jnz 0x1ca0
00001C92  C47E04            les di,word [bp+0x4]
00001C95  26C7050100        mov word [es:di],0x1
00001C9A  C646FF01          mov byte [bp-0x1],0x1
00001C9E  EB11              jmp 0x1cb1
00001CA0  3D0200            cmp ax,0x2
00001CA3  750C              jnz 0x1cb1
00001CA5  C47E04            les di,word [bp+0x4]
00001CA8  31C0              xor ax,ax
00001CAA  268905            mov [es:di],ax
00001CAD  C646FF01          mov byte [bp-0x1],0x1
00001CB1  8A46FF            mov al,[bp-0x1]
00001CB4  89EC              mov sp,bp
00001CB6  5D                pop bp
00001CB7  C20400            ret word 0x4
00001CBA  55                push bp
00001CBB  89E5              mov bp,sp
00001CBD  83EC03            sub sp,0x3
00001CC0  C646FF00          mov byte [bp-0x1],0x0
00001CC4  B8D81B            mov ax,0x1bd8
00001CC7  8CDA              mov dx,ds
00001CC9  52                push dx
00001CCA  50                push ax
00001CCB  9A0D16210A        call word 0xa21:word 0x160d
00001CD0  8946FD            mov [bp-0x3],ax
00001CD3  8B46FD            mov ax,[bp-0x3]
00001CD6  3D0100            cmp ax,0x1
00001CD9  7523              jnz 0x1cfe
00001CDB  C47E06            les di,word [bp+0x6]
00001CDE  26C60500          mov byte [es:di],0x0
00001CE2  C47E06            les di,word [bp+0x6]
00001CE5  81C70300          add di,0x3
00001CE9  06                push es
00001CEA  57                push di
00001CEB  E8A6E3            call 0x94
00001CEE  8846FF            mov [bp-0x1],al
00001CF1  A15E1F            mov ax,[0x1f5e]
00001CF4  C47E06            les di,word [bp+0x6]
00001CF7  26894501          mov [es:di+0x1],ax
00001CFB  E96C01            jmp 0x1e6a
00001CFE  3D0200            cmp ax,0x2
00001D01  7522              jnz 0x1d25
00001D03  C47E06            les di,word [bp+0x6]
00001D06  26C60501          mov byte [es:di],0x1
00001D0A  C47E06            les di,word [bp+0x6]
00001D0D  81C70100          add di,0x1
00001D11  06                push es
00001D12  57                push di
00001D13  E858F2            call 0xf6e
00001D16  8846FF            mov [bp-0x1],al
00001D19  C47E06            les di,word [bp+0x6]
00001D1C  31C0              xor ax,ax
00001D1E  26894503          mov [es:di+0x3],ax
00001D22  E94501            jmp 0x1e6a
00001D25  3D0300            cmp ax,0x3
00001D28  7522              jnz 0x1d4c
00001D2A  C47E06            les di,word [bp+0x6]
00001D2D  26C60502          mov byte [es:di],0x2
00001D31  C47E06            les di,word [bp+0x6]
00001D34  81C70100          add di,0x1
00001D38  06                push es
00001D39  57                push di
00001D3A  E874F2            call 0xfb1
00001D3D  8846FF            mov [bp-0x1],al
00001D40  C47E06            les di,word [bp+0x6]
00001D43  31C0              xor ax,ax
00001D45  26894503          mov [es:di+0x3],ax
00001D49  E91E01            jmp 0x1e6a
00001D4C  3D0400            cmp ax,0x4
00001D4F  7522              jnz 0x1d73
00001D51  C47E06            les di,word [bp+0x6]
00001D54  26C60504          mov byte [es:di],0x4
00001D58  C47E06            les di,word [bp+0x6]
00001D5B  81C70100          add di,0x1
00001D5F  06                push es
00001D60  57                push di
00001D61  E870F2            call 0xfd4
00001D64  8846FF            mov [bp-0x1],al
00001D67  C47E06            les di,word [bp+0x6]
00001D6A  31C0              xor ax,ax
00001D6C  26894503          mov [es:di+0x3],ax
00001D70  E9F700            jmp 0x1e6a
00001D73  3D0500            cmp ax,0x5
00001D76  7522              jnz 0x1d9a
00001D78  C47E06            les di,word [bp+0x6]
00001D7B  26C60503          mov byte [es:di],0x3
00001D7F  C47E06            les di,word [bp+0x6]
00001D82  81C70100          add di,0x1
00001D86  06                push es
00001D87  57                push di
00001D88  E8B1F2            call 0x103c
00001D8B  8846FF            mov [bp-0x1],al
00001D8E  C47E06            les di,word [bp+0x6]
00001D91  31C0              xor ax,ax
00001D93  26894503          mov [es:di+0x3],ax
00001D97  E9D000            jmp 0x1e6a
00001D9A  3D0600            cmp ax,0x6
00001D9D  750E              jnz 0x1dad
00001D9F  C47E06            les di,word [bp+0x6]
00001DA2  06                push es
00001DA3  57                push di
00001DA4  E8B8F2            call 0x105f
00001DA7  8846FF            mov [bp-0x1],al
00001DAA  E9BD00            jmp 0x1e6a
00001DAD  3D0700            cmp ax,0x7
00001DB0  7530              jnz 0x1de2
00001DB2  C47E06            les di,word [bp+0x6]
00001DB5  26C60506          mov byte [es:di],0x6
00001DB9  C47E06            les di,word [bp+0x6]
00001DBC  81C70300          add di,0x3
00001DC0  06                push es
00001DC1  57                push di
00001DC2  E842F5            call 0x1307
00001DC5  8846FF            mov [bp-0x1],al
00001DC8  8B3E5E1F          mov di,[0x1f5e]
00001DCC  D1E7              shl di,1
00001DCE  D1E7              shl di,1
00001DD0  C4BD661F          les di,word [di+0x1f66]
00001DD4  268B4516          mov ax,[es:di+0x16]
00001DD8  C47E06            les di,word [bp+0x6]
00001DDB  26894501          mov [es:di+0x1],ax
00001DDF  E98800            jmp 0x1e6a
00001DE2  3D0800            cmp ax,0x8
00001DE5  750D              jnz 0x1df4
00001DE7  C47E06            les di,word [bp+0x6]
00001DEA  06                push es
00001DEB  57                push di
00001DEC  E83DFA            call 0x182c
00001DEF  8846FF            mov [bp-0x1],al
00001DF2  EB76              jmp 0x1e6a
00001DF4  3D0900            cmp ax,0x9
00001DF7  751F              jnz 0x1e18
00001DF9  C47E06            les di,word [bp+0x6]
00001DFC  26C6050B          mov byte [es:di],0xb
00001E00  C47E06            les di,word [bp+0x6]
00001E03  31C0              xor ax,ax
00001E05  26894501          mov [es:di+0x1],ax
00001E09  C47E06            les di,word [bp+0x6]
00001E0C  31C0              xor ax,ax
00001E0E  26894503          mov [es:di+0x3],ax
00001E12  C646FF01          mov byte [bp-0x1],0x1
00001E16  EB52              jmp 0x1e6a
00001E18  3D0A00            cmp ax,0xa
00001E1B  7521              jnz 0x1e3e
00001E1D  C47E06            les di,word [bp+0x6]
00001E20  26C6050C          mov byte [es:di],0xc
00001E24  C47E06            les di,word [bp+0x6]
00001E27  81C70100          add di,0x1
00001E2B  06                push es
00001E2C  57                push di
00001E2D  E851FC            call 0x1a81
00001E30  8846FF            mov [bp-0x1],al
00001E33  C47E06            les di,word [bp+0x6]
00001E36  31C0              xor ax,ax
00001E38  26894503          mov [es:di+0x3],ax
00001E3C  EB2C              jmp 0x1e6a
00001E3E  3D0B00            cmp ax,0xb
00001E41  7C27              jl 0x1e6a
00001E43  3D0E00            cmp ax,0xe
00001E46  7F22              jg 0x1e6a
00001E48  C47E06            les di,word [bp+0x6]
00001E4B  26C60500          mov byte [es:di],0x0
00001E4F  A15E1F            mov ax,[0x1f5e]
00001E52  C47E06            les di,word [bp+0x6]
00001E55  26894501          mov [es:di+0x1],ax
00001E59  8B46FD            mov ax,[bp-0x3]
00001E5C  2D0A00            sub ax,0xa
00001E5F  C47E06            les di,word [bp+0x6]
00001E62  26894503          mov [es:di+0x3],ax
00001E66  C646FF01          mov byte [bp-0x1],0x1
00001E6A  807EFF00          cmp byte [bp-0x1],0x0
00001E6E  7503              jnz 0x1e73
00001E70  E951FE            jmp 0x1cc4
00001E73  89EC              mov sp,bp
00001E75  5D                pop bp
00001E76  CA0400            retf word 0x4
00001E79  0000              add [bx+si],al
00001E7B  0000              add [bx+si],al
00001E7D  0000              add [bx+si],al
00001E7F  00                db 0x00
