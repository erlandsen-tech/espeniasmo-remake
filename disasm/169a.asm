00000000  55                push bp
00000001  89E5              mov bp,sp
00000003  83EC0B            sub sp,0xb
00000006  C47E0A            les di,word [bp+0xa]
00000009  06                push es
0000000A  57                push di
0000000B  8D7EFD            lea di,[bp-0x3]
0000000E  16                push ss
0000000F  57                push di
00000010  B80300            mov ax,0x3
00000013  50                push ax
00000014  9AC002561A        call word 0x1a56:word 0x2c0
00000019  8A46FD            mov al,[bp-0x3]
0000001C  30E4              xor ah,ah
0000001E  50                push ax
0000001F  8A46FE            mov al,[bp-0x2]
00000022  30E4              xor ah,ah
00000024  50                push ax
00000025  8A46FF            mov al,[bp-0x1]
00000028  30E4              xor ah,ah
0000002A  50                push ax
0000002B  5B                pop bx
0000002C  58                pop ax
0000002D  39D8              cmp ax,bx
0000002F  7802              js 0x33
00000031  89D8              mov ax,bx
00000033  50                push ax
00000034  5B                pop bx
00000035  58                pop ax
00000036  39D8              cmp ax,bx
00000038  7802              js 0x3c
0000003A  89D8              mov ax,bx
0000003C  8946F7            mov [bp-0x9],ax
0000003F  8A46FD            mov al,[bp-0x3]
00000042  30E4              xor ah,ah
00000044  50                push ax
00000045  8A46FE            mov al,[bp-0x2]
00000048  30E4              xor ah,ah
0000004A  50                push ax
0000004B  8A46FF            mov al,[bp-0x1]
0000004E  30E4              xor ah,ah
00000050  50                push ax
00000051  5B                pop bx
00000052  58                pop ax
00000053  39D8              cmp ax,bx
00000055  7D02              jnl 0x59
00000057  89D8              mov ax,bx
00000059  50                push ax
0000005A  5B                pop bx
0000005B  58                pop ax
0000005C  39D8              cmp ax,bx
0000005E  7D02              jnl 0x62
00000060  89D8              mov ax,bx
00000062  8946F9            mov [bp-0x7],ax
00000065  8B46F9            mov ax,[bp-0x7]
00000068  2B46F7            sub ax,[bp-0x9]
0000006B  8946FB            mov [bp-0x5],ax
0000006E  FF76F9            push word [bp-0x7]
00000071  B86400            mov ax,0x64
00000074  50                push ax
00000075  B8FF00            mov ax,0xff
00000078  50                push ax
00000079  59                pop cx
0000007A  5B                pop bx
0000007B  58                pop ax
0000007C  F7E3              mul bx
0000007E  F7F1              div cx
00000080  C47E06            les di,word [bp+0x6]
00000083  26884503          mov [es:di+0x3],al
00000087  837EF900          cmp word [bp-0x7],0x0
0000008B  741A              jz 0xa7
0000008D  B86400            mov ax,0x64
00000090  50                push ax
00000091  FF76FB            push word [bp-0x5]
00000094  FF76F9            push word [bp-0x7]
00000097  59                pop cx
00000098  5B                pop bx
00000099  58                pop ax
0000009A  F7E3              mul bx
0000009C  F7F1              div cx
0000009E  C47E06            les di,word [bp+0x6]
000000A1  26884502          mov [es:di+0x2],al
000000A5  EB08              jmp 0xaf
000000A7  C47E06            les di,word [bp+0x6]
000000AA  26C6450200        mov byte [es:di+0x2],0x0
000000AF  C47E06            les di,word [bp+0x6]
000000B2  26807D0200        cmp byte [es:di+0x2],0x0
000000B7  750B              jnz 0xc4
000000B9  C47E06            les di,word [bp+0x6]
000000BC  31C0              xor ax,ax
000000BE  268905            mov [es:di],ax
000000C1  E9A300            jmp 0x167
000000C4  8A46FD            mov al,[bp-0x3]
000000C7  30E4              xor ah,ah
000000C9  3B46F9            cmp ax,[bp-0x7]
000000CC  7525              jnz 0xf3
000000CE  8A46FF            mov al,[bp-0x1]
000000D1  30E4              xor ah,ah
000000D3  8BD0              mov dx,ax
000000D5  8A46FE            mov al,[bp-0x2]
000000D8  30E4              xor ah,ah
000000DA  2BC2              sub ax,dx
000000DC  50                push ax
000000DD  B83C00            mov ax,0x3c
000000E0  50                push ax
000000E1  FF76FB            push word [bp-0x5]
000000E4  59                pop cx
000000E5  5B                pop bx
000000E6  58                pop ax
000000E7  F7EB              imul bx
000000E9  F7F9              idiv cx
000000EB  050000            add ax,0x0
000000EE  8946F5            mov [bp-0xb],ax
000000F1  EB5C              jmp 0x14f
000000F3  8A46FE            mov al,[bp-0x2]
000000F6  30E4              xor ah,ah
000000F8  3B46F9            cmp ax,[bp-0x7]
000000FB  7525              jnz 0x122
000000FD  8A46FD            mov al,[bp-0x3]
00000100  30E4              xor ah,ah
00000102  8BD0              mov dx,ax
00000104  8A46FF            mov al,[bp-0x1]
00000107  30E4              xor ah,ah
00000109  2BC2              sub ax,dx
0000010B  50                push ax
0000010C  B83C00            mov ax,0x3c
0000010F  50                push ax
00000110  FF76FB            push word [bp-0x5]
00000113  59                pop cx
00000114  5B                pop bx
00000115  58                pop ax
00000116  F7EB              imul bx
00000118  F7F9              idiv cx
0000011A  057800            add ax,0x78
0000011D  8946F5            mov [bp-0xb],ax
00000120  EB2D              jmp 0x14f
00000122  8A46FF            mov al,[bp-0x1]
00000125  30E4              xor ah,ah
00000127  3B46F9            cmp ax,[bp-0x7]
0000012A  7523              jnz 0x14f
0000012C  8A46FE            mov al,[bp-0x2]
0000012F  30E4              xor ah,ah
00000131  8BD0              mov dx,ax
00000133  8A46FD            mov al,[bp-0x3]
00000136  30E4              xor ah,ah
00000138  2BC2              sub ax,dx
0000013A  50                push ax
0000013B  B83C00            mov ax,0x3c
0000013E  50                push ax
0000013F  FF76FB            push word [bp-0x5]
00000142  59                pop cx
00000143  5B                pop bx
00000144  58                pop ax
00000145  F7EB              imul bx
00000147  F7F9              idiv cx
00000149  05F000            add ax,0xf0
0000014C  8946F5            mov [bp-0xb],ax
0000014F  837EF500          cmp word [bp-0xb],0x0
00000153  7D09              jnl 0x15e
00000155  8B46F5            mov ax,[bp-0xb]
00000158  056801            add ax,0x168
0000015B  8946F5            mov [bp-0xb],ax
0000015E  8B46F5            mov ax,[bp-0xb]
00000161  C47E06            les di,word [bp+0x6]
00000164  268905            mov [es:di],ax
00000167  89EC              mov sp,bp
00000169  5D                pop bp
0000016A  CA0800            retf word 0x8
0000016D  55                push bp
0000016E  89E5              mov bp,sp
00000170  83EC0A            sub sp,0xa
00000173  807E0C00          cmp byte [bp+0xc],0x0
00000177  7553              jnz 0x1cc
00000179  8A460D            mov al,[bp+0xd]
0000017C  98                cbw
0000017D  50                push ax
0000017E  B8FF00            mov ax,0xff
00000181  50                push ax
00000182  B86400            mov ax,0x64
00000185  50                push ax
00000186  59                pop cx
00000187  5B                pop bx
00000188  58                pop ax
00000189  F7E3              mul bx
0000018B  F7F1              div cx
0000018D  C47E06            les di,word [bp+0x6]
00000190  268805            mov [es:di],al
00000193  8A460D            mov al,[bp+0xd]
00000196  98                cbw
00000197  50                push ax
00000198  B8FF00            mov ax,0xff
0000019B  50                push ax
0000019C  B86400            mov ax,0x64
0000019F  50                push ax
000001A0  59                pop cx
000001A1  5B                pop bx
000001A2  58                pop ax
000001A3  F7E3              mul bx
000001A5  F7F1              div cx
000001A7  C47E06            les di,word [bp+0x6]
000001AA  26884501          mov [es:di+0x1],al
000001AE  8A460D            mov al,[bp+0xd]
000001B1  98                cbw
000001B2  50                push ax
000001B3  B8FF00            mov ax,0xff
000001B6  50                push ax
000001B7  B86400            mov ax,0x64
000001BA  50                push ax
000001BB  59                pop cx
000001BC  5B                pop bx
000001BD  58                pop ax
000001BE  F7E3              mul bx
000001C0  F7F1              div cx
000001C2  C47E06            les di,word [bp+0x6]
000001C5  26884502          mov [es:di+0x2],al
000001C9  E99601            jmp 0x362
000001CC  8B460A            mov ax,[bp+0xa]
000001CF  99                cwd
000001D0  B93C00            mov cx,0x3c
000001D3  F7F9              idiv cx
000001D5  92                xchg ax,dx
000001D6  8946F6            mov [bp-0xa],ax
000001D9  8A460C            mov al,[bp+0xc]
000001DC  98                cbw
000001DD  8BD0              mov dx,ax
000001DF  B86400            mov ax,0x64
000001E2  2BC2              sub ax,dx
000001E4  8BD0              mov dx,ax
000001E6  8A460D            mov al,[bp+0xd]
000001E9  98                cbw
000001EA  F7EA              imul dx
000001EC  50                push ax
000001ED  B8FF00            mov ax,0xff
000001F0  50                push ax
000001F1  B81027            mov ax,0x2710
000001F4  50                push ax
000001F5  59                pop cx
000001F6  5B                pop bx
000001F7  58                pop ax
000001F8  F7E3              mul bx
000001FA  F7F1              div cx
000001FC  8946F8            mov [bp-0x8],ax
000001FF  8A460D            mov al,[bp+0xd]
00000202  98                cbw
00000203  50                push ax
00000204  8A460C            mov al,[bp+0xc]
00000207  98                cbw
00000208  F766F6            mul word [bp-0xa]
0000020B  8BD0              mov dx,ax
0000020D  B80C17            mov ax,0x170c
00000210  2BC2              sub ax,dx
00000212  50                push ax
00000213  B83B00            mov ax,0x3b
00000216  50                push ax
00000217  59                pop cx
00000218  5B                pop bx
00000219  58                pop ax
0000021A  F7E3              mul bx
0000021C  F7F1              div cx
0000021E  50                push ax
0000021F  B8FF00            mov ax,0xff
00000222  50                push ax
00000223  B81027            mov ax,0x2710
00000226  50                push ax
00000227  59                pop cx
00000228  5B                pop bx
00000229  58                pop ax
0000022A  F7E3              mul bx
0000022C  F7F1              div cx
0000022E  8946FA            mov [bp-0x6],ax
00000231  8A460D            mov al,[bp+0xd]
00000234  98                cbw
00000235  50                push ax
00000236  B83B00            mov ax,0x3b
00000239  2B46F6            sub ax,[bp-0xa]
0000023C  8BD0              mov dx,ax
0000023E  8A460C            mov al,[bp+0xc]
00000241  98                cbw
00000242  F7E2              mul dx
00000244  8BD0              mov dx,ax
00000246  B80C17            mov ax,0x170c
00000249  2BC2              sub ax,dx
0000024B  50                push ax
0000024C  B83B00            mov ax,0x3b
0000024F  50                push ax
00000250  59                pop cx
00000251  5B                pop bx
00000252  58                pop ax
00000253  F7E3              mul bx
00000255  F7F1              div cx
00000257  50                push ax
00000258  B8FF00            mov ax,0xff
0000025B  50                push ax
0000025C  B81027            mov ax,0x2710
0000025F  50                push ax
00000260  59                pop cx
00000261  5B                pop bx
00000262  58                pop ax
00000263  F7E3              mul bx
00000265  F7F1              div cx
00000267  8946FC            mov [bp-0x4],ax
0000026A  8A460D            mov al,[bp+0xd]
0000026D  98                cbw
0000026E  50                push ax
0000026F  B8FF00            mov ax,0xff
00000272  50                push ax
00000273  B86400            mov ax,0x64
00000276  50                push ax
00000277  59                pop cx
00000278  5B                pop bx
00000279  58                pop ax
0000027A  F7E3              mul bx
0000027C  F7F1              div cx
0000027E  8946FE            mov [bp-0x2],ax
00000281  8B460A            mov ax,[bp+0xa]
00000284  99                cwd
00000285  B93C00            mov cx,0x3c
00000288  F7F9              idiv cx
0000028A  3D0000            cmp ax,0x0
0000028D  7520              jnz 0x2af
0000028F  8A46FE            mov al,[bp-0x2]
00000292  C47E06            les di,word [bp+0x6]
00000295  268805            mov [es:di],al
00000298  8A46FC            mov al,[bp-0x4]
0000029B  C47E06            les di,word [bp+0x6]
0000029E  26884501          mov [es:di+0x1],al
000002A2  8A46F8            mov al,[bp-0x8]
000002A5  C47E06            les di,word [bp+0x6]
000002A8  26884502          mov [es:di+0x2],al
000002AC  E9B300            jmp 0x362
000002AF  3D0100            cmp ax,0x1
000002B2  7520              jnz 0x2d4
000002B4  8A46FA            mov al,[bp-0x6]
000002B7  C47E06            les di,word [bp+0x6]
000002BA  268805            mov [es:di],al
000002BD  8A46FE            mov al,[bp-0x2]
000002C0  C47E06            les di,word [bp+0x6]
000002C3  26884501          mov [es:di+0x1],al
000002C7  8A46F8            mov al,[bp-0x8]
000002CA  C47E06            les di,word [bp+0x6]
000002CD  26884502          mov [es:di+0x2],al
000002D1  E98E00            jmp 0x362
000002D4  3D0200            cmp ax,0x2
000002D7  751F              jnz 0x2f8
000002D9  8A46F8            mov al,[bp-0x8]
000002DC  C47E06            les di,word [bp+0x6]
000002DF  268805            mov [es:di],al
000002E2  8A46FE            mov al,[bp-0x2]
000002E5  C47E06            les di,word [bp+0x6]
000002E8  26884501          mov [es:di+0x1],al
000002EC  8A46FC            mov al,[bp-0x4]
000002EF  C47E06            les di,word [bp+0x6]
000002F2  26884502          mov [es:di+0x2],al
000002F6  EB6A              jmp 0x362
000002F8  3D0300            cmp ax,0x3
000002FB  751F              jnz 0x31c
000002FD  8A46F8            mov al,[bp-0x8]
00000300  C47E06            les di,word [bp+0x6]
00000303  268805            mov [es:di],al
00000306  8A46FA            mov al,[bp-0x6]
00000309  C47E06            les di,word [bp+0x6]
0000030C  26884501          mov [es:di+0x1],al
00000310  8A46FE            mov al,[bp-0x2]
00000313  C47E06            les di,word [bp+0x6]
00000316  26884502          mov [es:di+0x2],al
0000031A  EB46              jmp 0x362
0000031C  3D0400            cmp ax,0x4
0000031F  751F              jnz 0x340
00000321  8A46FC            mov al,[bp-0x4]
00000324  C47E06            les di,word [bp+0x6]
00000327  268805            mov [es:di],al
0000032A  8A46F8            mov al,[bp-0x8]
0000032D  C47E06            les di,word [bp+0x6]
00000330  26884501          mov [es:di+0x1],al
00000334  8A46FE            mov al,[bp-0x2]
00000337  C47E06            les di,word [bp+0x6]
0000033A  26884502          mov [es:di+0x2],al
0000033E  EB22              jmp 0x362
00000340  3D0500            cmp ax,0x5
00000343  751D              jnz 0x362
00000345  8A46FE            mov al,[bp-0x2]
00000348  C47E06            les di,word [bp+0x6]
0000034B  268805            mov [es:di],al
0000034E  8A46F8            mov al,[bp-0x8]
00000351  C47E06            les di,word [bp+0x6]
00000354  26884501          mov [es:di+0x1],al
00000358  8A46FA            mov al,[bp-0x6]
0000035B  C47E06            les di,word [bp+0x6]
0000035E  26884502          mov [es:di+0x2],al
00000362  89EC              mov sp,bp
00000364  5D                pop bp
00000365  CA0800            retf word 0x8
00000368  55                push bp
00000369  89E5              mov bp,sp
0000036B  83EC04            sub sp,0x4
0000036E  837E063C          cmp word [bp+0x6],0x3c
00000372  7F2A              jg 0x39e
00000374  8A4608            mov al,[bp+0x8]
00000377  98                cbw
00000378  8BD0              mov dx,ax
0000037A  8A4609            mov al,[bp+0x9]
0000037D  98                cbw
0000037E  F7EA              imul dx
00000380  50                push ax
00000381  8B4606            mov ax,[bp+0x6]
00000384  B90600            mov cx,0x6
00000387  F7E9              imul cx
00000389  05B400            add ax,0xb4
0000038C  50                push ax
0000038D  B860EA            mov ax,0xea60
00000390  50                push ax
00000391  59                pop cx
00000392  5B                pop bx
00000393  58                pop ax
00000394  F7E3              mul bx
00000396  F7F1              div cx
00000398  8946FC            mov [bp-0x4],ax
0000039B  E9ED00            jmp 0x48b
0000039E  837E0678          cmp word [bp+0x6],0x78
000003A2  7F2D              jg 0x3d1
000003A4  8A4608            mov al,[bp+0x8]
000003A7  98                cbw
000003A8  8BD0              mov dx,ax
000003AA  8A4609            mov al,[bp+0x9]
000003AD  98                cbw
000003AE  F7EA              imul dx
000003B0  50                push ax
000003B1  B87800            mov ax,0x78
000003B4  2B4606            sub ax,[bp+0x6]
000003B7  B90300            mov cx,0x3
000003BA  F7E9              imul cx
000003BC  056801            add ax,0x168
000003BF  50                push ax
000003C0  B860EA            mov ax,0xea60
000003C3  50                push ax
000003C4  59                pop cx
000003C5  5B                pop bx
000003C6  58                pop ax
000003C7  F7E3              mul bx
000003C9  F7F1              div cx
000003CB  8946FC            mov [bp-0x4],ax
000003CE  E9BA00            jmp 0x48b
000003D1  817E06B400        cmp word [bp+0x6],0xb4
000003D6  7F28              jg 0x400
000003D8  8A4608            mov al,[bp+0x8]
000003DB  98                cbw
000003DC  8BD0              mov dx,ax
000003DE  8A4609            mov al,[bp+0x9]
000003E1  98                cbw
000003E2  F7EA              imul dx
000003E4  50                push ax
000003E5  8B4606            mov ax,[bp+0x6]
000003E8  2D7800            sub ax,0x78
000003EB  056801            add ax,0x168
000003EE  50                push ax
000003EF  B860EA            mov ax,0xea60
000003F2  50                push ax
000003F3  59                pop cx
000003F4  5B                pop bx
000003F5  58                pop ax
000003F6  F7E3              mul bx
000003F8  F7F1              div cx
000003FA  8946FC            mov [bp-0x4],ax
000003FD  E98B00            jmp 0x48b
00000400  817E06F000        cmp word [bp+0x6],0xf0
00000405  7F2C              jg 0x433
00000407  8A4608            mov al,[bp+0x8]
0000040A  98                cbw
0000040B  8BD0              mov dx,ax
0000040D  8A4609            mov al,[bp+0x9]
00000410  98                cbw
00000411  F7EA              imul dx
00000413  50                push ax
00000414  B8F000            mov ax,0xf0
00000417  2B4606            sub ax,[bp+0x6]
0000041A  B90600            mov cx,0x6
0000041D  F7E9              imul cx
0000041F  053C00            add ax,0x3c
00000422  50                push ax
00000423  B860EA            mov ax,0xea60
00000426  50                push ax
00000427  59                pop cx
00000428  5B                pop bx
00000429  58                pop ax
0000042A  F7E3              mul bx
0000042C  F7F1              div cx
0000042E  8946FC            mov [bp-0x4],ax
00000431  EB58              jmp 0x48b
00000433  817E062C01        cmp word [bp+0x6],0x12c
00000438  7F2C              jg 0x466
0000043A  8A4608            mov al,[bp+0x8]
0000043D  98                cbw
0000043E  8BD0              mov dx,ax
00000440  8A4609            mov al,[bp+0x9]
00000443  98                cbw
00000444  F7EA              imul dx
00000446  50                push ax
00000447  8B4606            mov ax,[bp+0x6]
0000044A  2DF000            sub ax,0xf0
0000044D  B90300            mov cx,0x3
00000450  F7E9              imul cx
00000452  053C00            add ax,0x3c
00000455  50                push ax
00000456  B860EA            mov ax,0xea60
00000459  50                push ax
0000045A  59                pop cx
0000045B  5B                pop bx
0000045C  58                pop ax
0000045D  F7E3              mul bx
0000045F  F7F1              div cx
00000461  8946FC            mov [bp-0x4],ax
00000464  EB25              jmp 0x48b
00000466  8A4608            mov al,[bp+0x8]
00000469  98                cbw
0000046A  8BD0              mov dx,ax
0000046C  8A4609            mov al,[bp+0x9]
0000046F  98                cbw
00000470  F7EA              imul dx
00000472  50                push ax
00000473  B86801            mov ax,0x168
00000476  2B4606            sub ax,[bp+0x6]
00000479  05B400            add ax,0xb4
0000047C  50                push ax
0000047D  B860EA            mov ax,0xea60
00000480  50                push ax
00000481  59                pop cx
00000482  5B                pop bx
00000483  58                pop ax
00000484  F7E3              mul bx
00000486  F7F1              div cx
00000488  8946FC            mov [bp-0x4],ax
0000048B  8A4609            mov al,[bp+0x9]
0000048E  98                cbw
0000048F  50                push ax
00000490  8A4608            mov al,[bp+0x8]
00000493  98                cbw
00000494  8BD0              mov dx,ax
00000496  B86400            mov ax,0x64
00000499  2BC2              sub ax,dx
0000049B  50                push ax
0000049C  B86400            mov ax,0x64
0000049F  50                push ax
000004A0  59                pop cx
000004A1  5B                pop bx
000004A2  58                pop ax
000004A3  F7E3              mul bx
000004A5  F7F1              div cx
000004A7  0146FC            add [bp-0x4],ax
000004AA  8B46FC            mov ax,[bp-0x4]
000004AD  8946FE            mov [bp-0x2],ax
000004B0  8B46FE            mov ax,[bp-0x2]
000004B3  89EC              mov sp,bp
000004B5  5D                pop bp
000004B6  CA0400            retf word 0x4
000004B9  55                push bp
000004BA  89E5              mov bp,sp
000004BC  83EC02            sub sp,0x2
000004BF  C47E06            les di,word [bp+0x6]
000004C2  268A4502          mov al,[es:di+0x2]
000004C6  30E4              xor ah,ah
000004C8  50                push ax
000004C9  B80B00            mov ax,0xb
000004CC  50                push ax
000004CD  B86400            mov ax,0x64
000004D0  50                push ax
000004D1  59                pop cx
000004D2  5B                pop bx
000004D3  58                pop ax
000004D4  F7E3              mul bx
000004D6  F7F1              div cx
000004D8  50                push ax
000004D9  C47E06            les di,word [bp+0x6]
000004DC  268A4501          mov al,[es:di+0x1]
000004E0  30E4              xor ah,ah
000004E2  50                push ax
000004E3  B83B00            mov ax,0x3b
000004E6  50                push ax
000004E7  B86400            mov ax,0x64
000004EA  50                push ax
000004EB  59                pop cx
000004EC  5B                pop bx
000004ED  58                pop ax
000004EE  F7E3              mul bx
000004F0  F7F1              div cx
000004F2  50                push ax
000004F3  C47E06            les di,word [bp+0x6]
000004F6  268A05            mov al,[es:di]
000004F9  30E4              xor ah,ah
000004FB  50                push ax
000004FC  B81E00            mov ax,0x1e
000004FF  50                push ax
00000500  B86400            mov ax,0x64
00000503  50                push ax
00000504  59                pop cx
00000505  5B                pop bx
00000506  58                pop ax
00000507  F7E3              mul bx
00000509  F7F1              div cx
0000050B  5A                pop dx
0000050C  03C2              add ax,dx
0000050E  5A                pop dx
0000050F  03C2              add ax,dx
00000511  8946FE            mov [bp-0x2],ax
00000514  8B46FE            mov ax,[bp-0x2]
00000517  89EC              mov sp,bp
00000519  5D                pop bp
0000051A  CA0400            retf word 0x4
0000051D  55                push bp
0000051E  89E5              mov bp,sp
00000520  83EC02            sub sp,0x2
00000523  C47E06            les di,word [bp+0x6]
00000526  06                push es
00000527  57                push di
00000528  0E                push cs
00000529  E88DFF            call 0x4b9
0000052C  50                push ax
0000052D  C47E0A            les di,word [bp+0xa]
00000530  06                push es
00000531  57                push di
00000532  0E                push cs
00000533  E883FF            call 0x4b9
00000536  5A                pop dx
00000537  2BC2              sub ax,dx
00000539  31D2              xor dx,dx
0000053B  9A7F03561A        call word 0x1a56:word 0x37f
00000540  8946FE            mov [bp-0x2],ax
00000543  8B46FE            mov ax,[bp-0x2]
00000546  89EC              mov sp,bp
00000548  5D                pop bp
00000549  CA0800            retf word 0x8
0000054C  55                push bp
0000054D  89E5              mov bp,sp
0000054F  83EC0C            sub sp,0xc
00000552  C646FA00          mov byte [bp-0x6],0x0
00000556  C646FF01          mov byte [bp-0x1],0x1
0000055A  C47E06            les di,word [bp+0x6]
0000055D  268B05            mov ax,[es:di]
00000560  48                dec ax
00000561  8946F8            mov [bp-0x8],ax
00000564  31C0              xor ax,ax
00000566  3B46F8            cmp ax,[bp-0x8]
00000569  7F60              jg 0x5cb
0000056B  8946FB            mov [bp-0x5],ax
0000056E  EB03              jmp 0x573
00000570  FF46FB            inc word [bp-0x5]
00000573  8B46FB            mov ax,[bp-0x5]
00000576  D1E0              shl ax,1
00000578  D1E0              shl ax,1
0000057A  C47E06            les di,word [bp+0x6]
0000057D  03F8              add di,ax
0000057F  81C70200          add di,0x2
00000583  897EF4            mov [bp-0xc],di
00000586  8C46F6            mov word [bp-0xa],es
00000589  C47EF4            les di,word [bp-0xc]
0000058C  26807D0300        cmp byte [es:di+0x3],0x0
00000591  7E30              jng 0x5c3
00000593  C47EF4            les di,word [bp-0xc]
00000596  26807D0200        cmp byte [es:di+0x2],0x0
0000059B  7E26              jng 0x5c3
0000059D  807EFA00          cmp byte [bp-0x6],0x0
000005A1  7413              jz 0x5b6
000005A3  C47EF4            les di,word [bp-0xc]
000005A6  268B05            mov ax,[es:di]
000005A9  3B46FD            cmp ax,[bp-0x3]
000005AC  7406              jz 0x5b4
000005AE  C646FF00          mov byte [bp-0x1],0x0
000005B2  EB17              jmp 0x5cb
000005B4  EB0D              jmp 0x5c3
000005B6  C47EF4            les di,word [bp-0xc]
000005B9  268B05            mov ax,[es:di]
000005BC  8946FD            mov [bp-0x3],ax
000005BF  C646FA01          mov byte [bp-0x6],0x1
000005C3  8B46FB            mov ax,[bp-0x5]
000005C6  3B46F8            cmp ax,[bp-0x8]
000005C9  75A5              jnz 0x570
000005CB  8A46FF            mov al,[bp-0x1]
000005CE  89EC              mov sp,bp
000005D0  5D                pop bp
000005D1  CA0400            retf word 0x4
000005D4  55                push bp
000005D5  89E5              mov bp,sp
000005D7  83EC02            sub sp,0x2
000005DA  8B4608            mov ax,[bp+0x8]
000005DD  3B4606            cmp ax,[bp+0x6]
000005E0  7708              ja 0x5ea
000005E2  8B4608            mov ax,[bp+0x8]
000005E5  8946FE            mov [bp-0x2],ax
000005E8  EB06              jmp 0x5f0
000005EA  8B4606            mov ax,[bp+0x6]
000005ED  8946FE            mov [bp-0x2],ax
000005F0  8B46FE            mov ax,[bp-0x2]
000005F3  89EC              mov sp,bp
000005F5  5D                pop bp
000005F6  C20600            ret word 0x6
000005F9  55                push bp
000005FA  89E5              mov bp,sp
000005FC  8B7E04            mov di,[bp+0x4]
000005FF  368A855EFA        mov al,[ss:di-0x5a2]
00000604  30E4              xor ah,ah
00000606  BA0300            mov dx,0x3
00000609  F7E2              mul dx
0000060B  8B7E04            mov di,[bp+0x4]
0000060E  03F8              add di,ax
00000610  81C7E4FC          add di,0xfce4
00000614  16                push ss
00000615  57                push di
00000616  C47E0E            les di,word [bp+0xe]
00000619  06                push es
0000061A  57                push di
0000061B  B80300            mov ax,0x3
0000061E  50                push ax
0000061F  9AC002561A        call word 0x1a56:word 0x2c0
00000624  89EC              mov sp,bp
00000626  5D                pop bp
00000627  C20E00            ret word 0xe
0000062A  55                push bp
0000062B  89E5              mov bp,sp
0000062D  83EC0E            sub sp,0xe
00000630  31C0              xor ax,ax
00000632  8946F8            mov [bp-0x8],ax
00000635  31C0              xor ax,ax
00000637  8946FA            mov [bp-0x6],ax
0000063A  31C0              xor ax,ax
0000063C  8946FC            mov [bp-0x4],ax
0000063F  8B460A            mov ax,[bp+0xa]
00000642  48                dec ax
00000643  8946F6            mov [bp-0xa],ax
00000646  31C0              xor ax,ax
00000648  3B46F6            cmp ax,[bp-0xa]
0000064B  7756              ja 0x6a3
0000064D  8946FE            mov [bp-0x2],ax
00000650  EB03              jmp 0x655
00000652  FF46FE            inc word [bp-0x2]
00000655  8B46FE            mov ax,[bp-0x2]
00000658  8B7E04            mov di,[bp+0x4]
0000065B  03F8              add di,ax
0000065D  368A855EFA        mov al,[ss:di-0x5a2]
00000662  30E4              xor ah,ah
00000664  BA0300            mov dx,0x3
00000667  F7E2              mul dx
00000669  8B7E04            mov di,[bp+0x4]
0000066C  03F8              add di,ax
0000066E  81C7E4FC          add di,0xfce4
00000672  897EF2            mov [bp-0xe],di
00000675  8C56F4            mov word [bp-0xc],ss
00000678  C47EF2            les di,word [bp-0xe]
0000067B  268A05            mov al,[es:di]
0000067E  30E4              xor ah,ah
00000680  0146F8            add [bp-0x8],ax
00000683  C47EF2            les di,word [bp-0xe]
00000686  268A4501          mov al,[es:di+0x1]
0000068A  30E4              xor ah,ah
0000068C  0146FA            add [bp-0x6],ax
0000068F  C47EF2            les di,word [bp-0xe]
00000692  268A4502          mov al,[es:di+0x2]
00000696  30E4              xor ah,ah
00000698  0146FC            add [bp-0x4],ax
0000069B  8B46FE            mov ax,[bp-0x2]
0000069E  3B46F6            cmp ax,[bp-0xa]
000006A1  75AF              jnz 0x652
000006A3  8B46F8            mov ax,[bp-0x8]
000006A6  31D2              xor dx,dx
000006A8  F7760A            div word [bp+0xa]
000006AB  C47E0E            les di,word [bp+0xe]
000006AE  268805            mov [es:di],al
000006B1  8B46FA            mov ax,[bp-0x6]
000006B4  31D2              xor dx,dx
000006B6  F7760A            div word [bp+0xa]
000006B9  C47E0E            les di,word [bp+0xe]
000006BC  26884501          mov [es:di+0x1],al
000006C0  8B46FC            mov ax,[bp-0x4]
000006C3  31D2              xor dx,dx
000006C5  F7760A            div word [bp+0xa]
000006C8  C47E0E            les di,word [bp+0xe]
000006CB  26884502          mov [es:di+0x2],al
000006CF  89EC              mov sp,bp
000006D1  5D                pop bp
000006D2  C20E00            ret word 0xe
000006D5  55                push bp
000006D6  89E5              mov bp,sp
000006D8  83EC1B            sub sp,0x1b
000006DB  B86400            mov ax,0x64
000006DE  2B4608            sub ax,[bp+0x8]
000006E1  2B4608            sub ax,[bp+0x8]
000006E4  2B4606            sub ax,[bp+0x6]
000006E7  2B4606            sub ax,[bp+0x6]
000006EA  8946EF            mov [bp-0x11],ax
000006ED  31C0              xor ax,ax
000006EF  8946E9            mov [bp-0x17],ax
000006F2  31C0              xor ax,ax
000006F4  8946EB            mov [bp-0x15],ax
000006F7  31C0              xor ax,ax
000006F9  8946ED            mov [bp-0x13],ax
000006FC  8B460A            mov ax,[bp+0xa]
000006FF  48                dec ax
00000700  8946E5            mov [bp-0x1b],ax
00000703  31C0              xor ax,ax
00000705  3B46E5            cmp ax,[bp-0x1b]
00000708  7603              jna 0x70d
0000070A  E98B02            jmp 0x998
0000070D  8946E7            mov [bp-0x19],ax
00000710  EB03              jmp 0x715
00000712  FF46E7            inc word [bp-0x19]
00000715  8B46E7            mov ax,[bp-0x19]
00000718  03460A            add ax,[bp+0xa]
0000071B  2B460C            sub ax,[bp+0xc]
0000071E  31D2              xor dx,dx
00000720  F7760C            div word [bp+0xc]
00000723  92                xchg ax,dx
00000724  8B7E04            mov di,[bp+0x4]
00000727  03F8              add di,ax
00000729  368A855EFA        mov al,[ss:di-0x5a2]
0000072E  30E4              xor ah,ah
00000730  BA0300            mov dx,0x3
00000733  F7E2              mul dx
00000735  8B7E04            mov di,[bp+0x4]
00000738  03F8              add di,ax
0000073A  81C7E4FC          add di,0xfce4
0000073E  16                push ss
0000073F  57                push di
00000740  8D7EF1            lea di,[bp-0xf]
00000743  16                push ss
00000744  57                push di
00000745  B80300            mov ax,0x3
00000748  50                push ax
00000749  9AC002561A        call word 0x1a56:word 0x2c0
0000074E  8B46E7            mov ax,[bp-0x19]
00000751  03460A            add ax,[bp+0xa]
00000754  48                dec ax
00000755  31D2              xor dx,dx
00000757  F7760C            div word [bp+0xc]
0000075A  92                xchg ax,dx
0000075B  8B7E04            mov di,[bp+0x4]
0000075E  03F8              add di,ax
00000760  368A855EFA        mov al,[ss:di-0x5a2]
00000765  30E4              xor ah,ah
00000767  BA0300            mov dx,0x3
0000076A  F7E2              mul dx
0000076C  8B7E04            mov di,[bp+0x4]
0000076F  03F8              add di,ax
00000771  81C7E4FC          add di,0xfce4
00000775  16                push ss
00000776  57                push di
00000777  8D7EF4            lea di,[bp-0xc]
0000077A  16                push ss
0000077B  57                push di
0000077C  B80300            mov ax,0x3
0000077F  50                push ax
00000780  9AC002561A        call word 0x1a56:word 0x2c0
00000785  8B46E7            mov ax,[bp-0x19]
00000788  8B7E04            mov di,[bp+0x4]
0000078B  03F8              add di,ax
0000078D  368A855EFA        mov al,[ss:di-0x5a2]
00000792  30E4              xor ah,ah
00000794  BA0300            mov dx,0x3
00000797  F7E2              mul dx
00000799  8B7E04            mov di,[bp+0x4]
0000079C  03F8              add di,ax
0000079E  81C7E4FC          add di,0xfce4
000007A2  16                push ss
000007A3  57                push di
000007A4  8D7EF7            lea di,[bp-0x9]
000007A7  16                push ss
000007A8  57                push di
000007A9  B80300            mov ax,0x3
000007AC  50                push ax
000007AD  9AC002561A        call word 0x1a56:word 0x2c0
000007B2  8B46E7            mov ax,[bp-0x19]
000007B5  03460A            add ax,[bp+0xa]
000007B8  40                inc ax
000007B9  31D2              xor dx,dx
000007BB  F7760C            div word [bp+0xc]
000007BE  92                xchg ax,dx
000007BF  8B7E04            mov di,[bp+0x4]
000007C2  03F8              add di,ax
000007C4  368A855EFA        mov al,[ss:di-0x5a2]
000007C9  30E4              xor ah,ah
000007CB  BA0300            mov dx,0x3
000007CE  F7E2              mul dx
000007D0  8B7E04            mov di,[bp+0x4]
000007D3  03F8              add di,ax
000007D5  81C7E4FC          add di,0xfce4
000007D9  16                push ss
000007DA  57                push di
000007DB  8D7EFA            lea di,[bp-0x6]
000007DE  16                push ss
000007DF  57                push di
000007E0  B80300            mov ax,0x3
000007E3  50                push ax
000007E4  9AC002561A        call word 0x1a56:word 0x2c0
000007E9  8B46E7            mov ax,[bp-0x19]
000007EC  03460C            add ax,[bp+0xc]
000007EF  31D2              xor dx,dx
000007F1  F7760C            div word [bp+0xc]
000007F4  92                xchg ax,dx
000007F5  8B7E04            mov di,[bp+0x4]
000007F8  03F8              add di,ax
000007FA  368A855EFA        mov al,[ss:di-0x5a2]
000007FF  30E4              xor ah,ah
00000801  BA0300            mov dx,0x3
00000804  F7E2              mul dx
00000806  8B7E04            mov di,[bp+0x4]
00000809  03F8              add di,ax
0000080B  81C7E4FC          add di,0xfce4
0000080F  16                push ss
00000810  57                push di
00000811  8D7EFD            lea di,[bp-0x3]
00000814  16                push ss
00000815  57                push di
00000816  B80300            mov ax,0x3
00000819  50                push ax
0000081A  9AC002561A        call word 0x1a56:word 0x2c0
0000081F  8A46F7            mov al,[bp-0x9]
00000822  30E4              xor ah,ah
00000824  F766EF            mul word [bp-0x11]
00000827  0146E9            add [bp-0x17],ax
0000082A  8A46F8            mov al,[bp-0x8]
0000082D  30E4              xor ah,ah
0000082F  F766EF            mul word [bp-0x11]
00000832  0146EB            add [bp-0x15],ax
00000835  8A46F9            mov al,[bp-0x7]
00000838  30E4              xor ah,ah
0000083A  F766EF            mul word [bp-0x11]
0000083D  0146ED            add [bp-0x13],ax
00000840  837E0600          cmp word [bp+0x6],0x0
00000844  7703              ja 0x849
00000846  E98A00            jmp 0x8d3
00000849  8A46FD            mov al,[bp-0x3]
0000084C  30E4              xor ah,ah
0000084E  50                push ax
0000084F  8A46F7            mov al,[bp-0x9]
00000852  30E4              xor ah,ah
00000854  50                push ax
00000855  FF7604            push word [bp+0x4]
00000858  E879FD            call 0x5d4
0000085B  50                push ax
0000085C  8A46F1            mov al,[bp-0xf]
0000085F  30E4              xor ah,ah
00000861  50                push ax
00000862  8A46F7            mov al,[bp-0x9]
00000865  30E4              xor ah,ah
00000867  50                push ax
00000868  FF7604            push word [bp+0x4]
0000086B  E866FD            call 0x5d4
0000086E  5A                pop dx
0000086F  03C2              add ax,dx
00000871  F76606            mul word [bp+0x6]
00000874  0146E9            add [bp-0x17],ax
00000877  8A46FE            mov al,[bp-0x2]
0000087A  30E4              xor ah,ah
0000087C  50                push ax
0000087D  8A46F8            mov al,[bp-0x8]
00000880  30E4              xor ah,ah
00000882  50                push ax
00000883  FF7604            push word [bp+0x4]
00000886  E84BFD            call 0x5d4
00000889  50                push ax
0000088A  8A46F2            mov al,[bp-0xe]
0000088D  30E4              xor ah,ah
0000088F  50                push ax
00000890  8A46F8            mov al,[bp-0x8]
00000893  30E4              xor ah,ah
00000895  50                push ax
00000896  FF7604            push word [bp+0x4]
00000899  E838FD            call 0x5d4
0000089C  5A                pop dx
0000089D  03C2              add ax,dx
0000089F  F76606            mul word [bp+0x6]
000008A2  0146EB            add [bp-0x15],ax
000008A5  8A46FF            mov al,[bp-0x1]
000008A8  30E4              xor ah,ah
000008AA  50                push ax
000008AB  8A46F9            mov al,[bp-0x7]
000008AE  30E4              xor ah,ah
000008B0  50                push ax
000008B1  FF7604            push word [bp+0x4]
000008B4  E81DFD            call 0x5d4
000008B7  50                push ax
000008B8  8A46F3            mov al,[bp-0xd]
000008BB  30E4              xor ah,ah
000008BD  50                push ax
000008BE  8A46F9            mov al,[bp-0x7]
000008C1  30E4              xor ah,ah
000008C3  50                push ax
000008C4  FF7604            push word [bp+0x4]
000008C7  E80AFD            call 0x5d4
000008CA  5A                pop dx
000008CB  03C2              add ax,dx
000008CD  F76606            mul word [bp+0x6]
000008D0  0146ED            add [bp-0x13],ax
000008D3  837E0800          cmp word [bp+0x8],0x0
000008D7  7703              ja 0x8dc
000008D9  E98A00            jmp 0x966
000008DC  8A46F7            mov al,[bp-0x9]
000008DF  30E4              xor ah,ah
000008E1  50                push ax
000008E2  8A46FA            mov al,[bp-0x6]
000008E5  30E4              xor ah,ah
000008E7  50                push ax
000008E8  FF7604            push word [bp+0x4]
000008EB  E8E6FC            call 0x5d4
000008EE  50                push ax
000008EF  8A46F4            mov al,[bp-0xc]
000008F2  30E4              xor ah,ah
000008F4  50                push ax
000008F5  8A46F7            mov al,[bp-0x9]
000008F8  30E4              xor ah,ah
000008FA  50                push ax
000008FB  FF7604            push word [bp+0x4]
000008FE  E8D3FC            call 0x5d4
00000901  5A                pop dx
00000902  03C2              add ax,dx
00000904  F76608            mul word [bp+0x8]
00000907  0146E9            add [bp-0x17],ax
0000090A  8A46F8            mov al,[bp-0x8]
0000090D  30E4              xor ah,ah
0000090F  50                push ax
00000910  8A46FB            mov al,[bp-0x5]
00000913  30E4              xor ah,ah
00000915  50                push ax
00000916  FF7604            push word [bp+0x4]
00000919  E8B8FC            call 0x5d4
0000091C  50                push ax
0000091D  8A46F5            mov al,[bp-0xb]
00000920  30E4              xor ah,ah
00000922  50                push ax
00000923  8A46F8            mov al,[bp-0x8]
00000926  30E4              xor ah,ah
00000928  50                push ax
00000929  FF7604            push word [bp+0x4]
0000092C  E8A5FC            call 0x5d4
0000092F  5A                pop dx
00000930  03C2              add ax,dx
00000932  F76608            mul word [bp+0x8]
00000935  0146EB            add [bp-0x15],ax
00000938  8A46F9            mov al,[bp-0x7]
0000093B  30E4              xor ah,ah
0000093D  50                push ax
0000093E  8A46FC            mov al,[bp-0x4]
00000941  30E4              xor ah,ah
00000943  50                push ax
00000944  FF7604            push word [bp+0x4]
00000947  E88AFC            call 0x5d4
0000094A  50                push ax
0000094B  8A46F6            mov al,[bp-0xa]
0000094E  30E4              xor ah,ah
00000950  50                push ax
00000951  8A46F9            mov al,[bp-0x7]
00000954  30E4              xor ah,ah
00000956  50                push ax
00000957  FF7604            push word [bp+0x4]
0000095A  E877FC            call 0x5d4
0000095D  5A                pop dx
0000095E  03C2              add ax,dx
00000960  F76608            mul word [bp+0x8]
00000963  0146ED            add [bp-0x13],ax
00000966  8B46E9            mov ax,[bp-0x17]
00000969  31D2              xor dx,dx
0000096B  B96400            mov cx,0x64
0000096E  F7F1              div cx
00000970  8946E9            mov [bp-0x17],ax
00000973  8B46EB            mov ax,[bp-0x15]
00000976  31D2              xor dx,dx
00000978  B96400            mov cx,0x64
0000097B  F7F1              div cx
0000097D  8946EB            mov [bp-0x15],ax
00000980  8B46ED            mov ax,[bp-0x13]
00000983  31D2              xor dx,dx
00000985  B96400            mov cx,0x64
00000988  F7F1              div cx
0000098A  8946ED            mov [bp-0x13],ax
0000098D  8B46E7            mov ax,[bp-0x19]
00000990  3B46E5            cmp ax,[bp-0x1b]
00000993  7403              jz 0x998
00000995  E97AFD            jmp 0x712
00000998  8B46E9            mov ax,[bp-0x17]
0000099B  31D2              xor dx,dx
0000099D  F7760A            div word [bp+0xa]
000009A0  C47E0E            les di,word [bp+0xe]
000009A3  268805            mov [es:di],al
000009A6  8B46EB            mov ax,[bp-0x15]
000009A9  31D2              xor dx,dx
000009AB  F7760A            div word [bp+0xa]
000009AE  C47E0E            les di,word [bp+0xe]
000009B1  26884501          mov [es:di+0x1],al
000009B5  8B46ED            mov ax,[bp-0x13]
000009B8  31D2              xor dx,dx
000009BA  F7760A            div word [bp+0xa]
000009BD  C47E0E            les di,word [bp+0xe]
000009C0  26884502          mov [es:di+0x2],al
000009C4  89EC              mov sp,bp
000009C6  5D                pop bp
000009C7  C20E00            ret word 0xe
000009CA  55                push bp
000009CB  89E5              mov bp,sp
000009CD  83EC08            sub sp,0x8
000009D0  8B460E            mov ax,[bp+0xe]
000009D3  8946F8            mov [bp-0x8],ax
000009D6  8B4610            mov ax,[bp+0x10]
000009D9  3B46F8            cmp ax,[bp-0x8]
000009DC  7603              jna 0x9e1
000009DE  E92801            jmp 0xb09
000009E1  8946FA            mov [bp-0x6],ax
000009E4  EB03              jmp 0x9e9
000009E6  FF46FA            inc word [bp-0x6]
000009E9  8A56FA            mov dl,[bp-0x6]
000009EC  8B460C            mov ax,[bp+0xc]
000009EF  8B7E04            mov di,[bp+0x4]
000009F2  03F8              add di,ax
000009F4  368A851EFA        mov al,[ss:di-0x5e2]
000009F9  30E4              xor ah,ah
000009FB  8B7E04            mov di,[bp+0x4]
000009FE  03F8              add di,ax
00000A00  3688955EFA        mov [ss:di-0x5a2],dl
00000A05  FF7606            push word [bp+0x6]
00000A08  8B46FA            mov ax,[bp-0x6]
00000A0B  D1E0              shl ax,1
00000A0D  8B7E04            mov di,[bp+0x4]
00000A10  03F8              add di,ax
00000A12  36FFB5E4FA        push word [ss:di-0x51c]
00000A17  5B                pop bx
00000A18  58                pop ax
00000A19  39D8              cmp ax,bx
00000A1B  7D02              jnl 0xa1f
00000A1D  89D8              mov ax,bx
00000A1F  8946FE            mov [bp-0x2],ax
00000A22  8B4608            mov ax,[bp+0x8]
00000A25  48                dec ax
00000A26  3B460C            cmp ax,[bp+0xc]
00000A29  761D              jna 0xa48
00000A2B  FF76FA            push word [bp-0x6]
00000A2E  FF760E            push word [bp+0xe]
00000A31  8B460C            mov ax,[bp+0xc]
00000A34  40                inc ax
00000A35  50                push ax
00000A36  FF760A            push word [bp+0xa]
00000A39  FF7608            push word [bp+0x8]
00000A3C  FF76FE            push word [bp-0x2]
00000A3F  FF7604            push word [bp+0x4]
00000A42  E885FF            call 0x9ca
00000A45  E9B600            jmp 0xafe
00000A48  8B7E04            mov di,[bp+0x4]
00000A4B  81C7DEFA          add di,0xfade
00000A4F  16                push ss
00000A50  57                push di
00000A51  FF760A            push word [bp+0xa]
00000A54  FF7608            push word [bp+0x8]
00000A57  8B7E04            mov di,[bp+0x4]
00000A5A  36FF7508          push word [ss:di+0x8]
00000A5E  8B7E04            mov di,[bp+0x4]
00000A61  36FF7506          push word [ss:di+0x6]
00000A65  FF7604            push word [bp+0x4]
00000A68  FF167A89          call word near [0x897a]
00000A6C  8B7E04            mov di,[bp+0x4]
00000A6F  81C7DEFA          add di,0xfade
00000A73  16                push ss
00000A74  57                push di
00000A75  8B7E04            mov di,[bp+0x4]
00000A78  81C7E1FA          add di,0xfae1
00000A7C  16                push ss
00000A7D  57                push di
00000A7E  8CDA              mov dx,ds
00000A80  5E                pop si
00000A81  1F                pop ds
00000A82  5F                pop di
00000A83  07                pop es
00000A84  AC                lodsb
00000A85  268A1D            mov bl,[es:di]
00000A88  47                inc di
00000A89  D0E8              shr al,1
00000A8B  D0EB              shr bl,1
00000A8D  28D8              sub al,bl
00000A8F  F6E8              imul al
00000A91  89C1              mov cx,ax
00000A93  AC                lodsb
00000A94  268A1D            mov bl,[es:di]
00000A97  47                inc di
00000A98  D0E8              shr al,1
00000A9A  D0EB              shr bl,1
00000A9C  28D8              sub al,bl
00000A9E  F6E8              imul al
00000AA0  01C1              add cx,ax
00000AA2  AC                lodsb
00000AA3  268A1D            mov bl,[es:di]
00000AA6  D0E8              shr al,1
00000AA8  D0EB              shr bl,1
00000AAA  28D8              sub al,bl
00000AAC  F6E8              imul al
00000AAE  01C8              add ax,cx
00000AB0  8EDA              mov ds,dx
00000AB2  8946FC            mov [bp-0x4],ax
00000AB5  8B7E04            mov di,[bp+0x4]
00000AB8  368B45E8          mov ax,[ss:di-0x18]
00000ABC  8B7E04            mov di,[bp+0x4]
00000ABF  360345E6          add ax,[ss:di-0x1a]
00000AC3  8BD0              mov dx,ax
00000AC5  8B46FC            mov ax,[bp-0x4]
00000AC8  0346FE            add ax,[bp-0x2]
00000ACB  3BC2              cmp ax,dx
00000ACD  732F              jnc 0xafe
00000ACF  8B7E04            mov di,[bp+0x4]
00000AD2  81C75EFA          add di,0xfa5e
00000AD6  16                push ss
00000AD7  57                push di
00000AD8  8B7E04            mov di,[bp+0x4]
00000ADB  81C79EFA          add di,0xfa9e
00000ADF  16                push ss
00000AE0  57                push di
00000AE1  B84000            mov ax,0x40
00000AE4  50                push ax
00000AE5  9AC002561A        call word 0x1a56:word 0x2c0
00000AEA  8B46FC            mov ax,[bp-0x4]
00000AED  8B7E04            mov di,[bp+0x4]
00000AF0  368945E8          mov [ss:di-0x18],ax
00000AF4  8B46FE            mov ax,[bp-0x2]
00000AF7  8B7E04            mov di,[bp+0x4]
00000AFA  368945E6          mov [ss:di-0x1a],ax
00000AFE  8B46FA            mov ax,[bp-0x6]
00000B01  3B46F8            cmp ax,[bp-0x8]
00000B04  7403              jz 0xb09
00000B06  E9DDFE            jmp 0x9e6
00000B09  89EC              mov sp,bp
00000B0B  5D                pop bp
00000B0C  C20E00            ret word 0xe
00000B0F  55                push bp
00000B10  89E5              mov bp,sp
00000B12  8B7E04            mov di,[bp+0x4]
00000B15  368A855EFA        mov al,[ss:di-0x5a2]
00000B1A  30E4              xor ah,ah
00000B1C  D1E0              shl ax,1
00000B1E  8B7E04            mov di,[bp+0x4]
00000B21  03F8              add di,ax
00000B23  368B851AF8        mov ax,[ss:di-0x7e6]
00000B28  C47E0E            les di,word [bp+0xe]
00000B2B  268905            mov [es:di],ax
00000B2E  89EC              mov sp,bp
00000B30  5D                pop bp
00000B31  C20E00            ret word 0xe
00000B34  55                push bp
00000B35  89E5              mov bp,sp
00000B37  83EC06            sub sp,0x6
00000B3A  31C0              xor ax,ax
00000B3C  8946FC            mov [bp-0x4],ax
00000B3F  8B460A            mov ax,[bp+0xa]
00000B42  48                dec ax
00000B43  8946FA            mov [bp-0x6],ax
00000B46  31C0              xor ax,ax
00000B48  3B46FA            cmp ax,[bp-0x6]
00000B4B  7F2E              jg 0xb7b
00000B4D  8946FE            mov [bp-0x2],ax
00000B50  EB03              jmp 0xb55
00000B52  FF46FE            inc word [bp-0x2]
00000B55  8B46FE            mov ax,[bp-0x2]
00000B58  8B7E04            mov di,[bp+0x4]
00000B5B  03F8              add di,ax
00000B5D  368A855EFA        mov al,[ss:di-0x5a2]
00000B62  30E4              xor ah,ah
00000B64  D1E0              shl ax,1
00000B66  8B7E04            mov di,[bp+0x4]
00000B69  03F8              add di,ax
00000B6B  368B851AF8        mov ax,[ss:di-0x7e6]
00000B70  0146FC            add [bp-0x4],ax
00000B73  8B46FE            mov ax,[bp-0x2]
00000B76  3B46FA            cmp ax,[bp-0x6]
00000B79  75D7              jnz 0xb52
00000B7B  8B460A            mov ax,[bp+0xa]
00000B7E  31D2              xor dx,dx
00000B80  8BC8              mov cx,ax
00000B82  8BDA              mov bx,dx
00000B84  8B46FC            mov ax,[bp-0x4]
00000B87  99                cwd
00000B88  9AF702561A        call word 0x1a56:word 0x2f7
00000B8D  C47E0E            les di,word [bp+0xe]
00000B90  268905            mov [es:di],ax
00000B93  89EC              mov sp,bp
00000B95  5D                pop bp
00000B96  C20E00            ret word 0xe
00000B99  55                push bp
00000B9A  89E5              mov bp,sp
00000B9C  83EC12            sub sp,0x12
00000B9F  31C0              xor ax,ax
00000BA1  8946FA            mov [bp-0x6],ax
00000BA4  B86400            mov ax,0x64
00000BA7  2B4608            sub ax,[bp+0x8]
00000BAA  2B4608            sub ax,[bp+0x8]
00000BAD  2B4606            sub ax,[bp+0x6]
00000BB0  2B4606            sub ax,[bp+0x6]
00000BB3  8946FE            mov [bp-0x2],ax
00000BB6  8B460A            mov ax,[bp+0xa]
00000BB9  2B460C            sub ax,[bp+0xc]
00000BBC  8946EE            mov [bp-0x12],ax
00000BBF  8B460C            mov ax,[bp+0xc]
00000BC2  8946F2            mov [bp-0xe],ax
00000BC5  31C0              xor ax,ax
00000BC7  8946F0            mov [bp-0x10],ax
00000BCA  8B460A            mov ax,[bp+0xa]
00000BCD  31D2              xor dx,dx
00000BCF  8BC8              mov cx,ax
00000BD1  8BDA              mov bx,dx
00000BD3  8B46F0            mov ax,[bp-0x10]
00000BD6  99                cwd
00000BD7  3BD3              cmp dx,bx
00000BD9  7C0C              jl 0xbe7
00000BDB  7E03              jng 0xbe0
00000BDD  E9F901            jmp 0xdd9
00000BE0  3BC1              cmp ax,cx
00000BE2  7203              jc 0xbe7
00000BE4  E9F201            jmp 0xdd9
00000BE7  8B460C            mov ax,[bp+0xc]
00000BEA  48                dec ax
00000BEB  8946F4            mov [bp-0xc],ax
00000BEE  C746F80100        mov word [bp-0x8],0x1
00000BF3  31C0              xor ax,ax
00000BF5  8946F6            mov [bp-0xa],ax
00000BF8  8B460C            mov ax,[bp+0xc]
00000BFB  31D2              xor dx,dx
00000BFD  8BC8              mov cx,ax
00000BFF  8BDA              mov bx,dx
00000C01  8B46F6            mov ax,[bp-0xa]
00000C04  99                cwd
00000C05  3BD3              cmp dx,bx
00000C07  7C0C              jl 0xc15
00000C09  7E03              jng 0xc0e
00000C0B  E97601            jmp 0xd84
00000C0E  3BC1              cmp ax,cx
00000C10  7203              jc 0xc15
00000C12  E96F01            jmp 0xd84
00000C15  8B46F0            mov ax,[bp-0x10]
00000C18  0346F6            add ax,[bp-0xa]
00000C1B  8B7E04            mov di,[bp+0x4]
00000C1E  03F8              add di,ax
00000C20  368A855EFA        mov al,[ss:di-0x5a2]
00000C25  30E4              xor ah,ah
00000C27  D1E0              shl ax,1
00000C29  8B7E04            mov di,[bp+0x4]
00000C2C  03F8              add di,ax
00000C2E  368B851AF8        mov ax,[ss:di-0x7e6]
00000C33  8946FC            mov [bp-0x4],ax
00000C36  FF76FC            push word [bp-0x4]
00000C39  8B46F2            mov ax,[bp-0xe]
00000C3C  0346F6            add ax,[bp-0xa]
00000C3F  8B7E04            mov di,[bp+0x4]
00000C42  03F8              add di,ax
00000C44  368A855EFA        mov al,[ss:di-0x5a2]
00000C49  30E4              xor ah,ah
00000C4B  D1E0              shl ax,1
00000C4D  8B7E04            mov di,[bp+0x4]
00000C50  03F8              add di,ax
00000C52  36FFB51AF8        push word [ss:di-0x7e6]
00000C57  5B                pop bx
00000C58  58                pop ax
00000C59  39D8              cmp ax,bx
00000C5B  7802              js 0xc5f
00000C5D  89D8              mov ax,bx
00000C5F  99                cwd
00000C60  8BC8              mov cx,ax
00000C62  8BDA              mov bx,dx
00000C64  8B4606            mov ax,[bp+0x6]
00000C67  31D2              xor dx,dx
00000C69  9ADC02561A        call word 0x1a56:word 0x2dc
00000C6E  52                push dx
00000C6F  50                push ax
00000C70  FF76FC            push word [bp-0x4]
00000C73  8B46F0            mov ax,[bp-0x10]
00000C76  0346F8            add ax,[bp-0x8]
00000C79  8B7E04            mov di,[bp+0x4]
00000C7C  03F8              add di,ax
00000C7E  368A855EFA        mov al,[ss:di-0x5a2]
00000C83  30E4              xor ah,ah
00000C85  D1E0              shl ax,1
00000C87  8B7E04            mov di,[bp+0x4]
00000C8A  03F8              add di,ax
00000C8C  36FFB51AF8        push word [ss:di-0x7e6]
00000C91  5B                pop bx
00000C92  58                pop ax
00000C93  39D8              cmp ax,bx
00000C95  7802              js 0xc99
00000C97  89D8              mov ax,bx
00000C99  99                cwd
00000C9A  8BC8              mov cx,ax
00000C9C  8BDA              mov bx,dx
00000C9E  8B4608            mov ax,[bp+0x8]
00000CA1  31D2              xor dx,dx
00000CA3  9ADC02561A        call word 0x1a56:word 0x2dc
00000CA8  52                push dx
00000CA9  50                push ax
00000CAA  FF76FC            push word [bp-0x4]
00000CAD  8B46F0            mov ax,[bp-0x10]
00000CB0  0346F4            add ax,[bp-0xc]
00000CB3  8B7E04            mov di,[bp+0x4]
00000CB6  03F8              add di,ax
00000CB8  368A855EFA        mov al,[ss:di-0x5a2]
00000CBD  30E4              xor ah,ah
00000CBF  D1E0              shl ax,1
00000CC1  8B7E04            mov di,[bp+0x4]
00000CC4  03F8              add di,ax
00000CC6  36FFB51AF8        push word [ss:di-0x7e6]
00000CCB  5B                pop bx
00000CCC  58                pop ax
00000CCD  39D8              cmp ax,bx
00000CCF  7802              js 0xcd3
00000CD1  89D8              mov ax,bx
00000CD3  99                cwd
00000CD4  8BC8              mov cx,ax
00000CD6  8BDA              mov bx,dx
00000CD8  8B4608            mov ax,[bp+0x8]
00000CDB  31D2              xor dx,dx
00000CDD  9ADC02561A        call word 0x1a56:word 0x2dc
00000CE2  52                push dx
00000CE3  50                push ax
00000CE4  FF76FC            push word [bp-0x4]
00000CE7  8B46EE            mov ax,[bp-0x12]
00000CEA  0346F6            add ax,[bp-0xa]
00000CED  8B7E04            mov di,[bp+0x4]
00000CF0  03F8              add di,ax
00000CF2  368A855EFA        mov al,[ss:di-0x5a2]
00000CF7  30E4              xor ah,ah
00000CF9  D1E0              shl ax,1
00000CFB  8B7E04            mov di,[bp+0x4]
00000CFE  03F8              add di,ax
00000D00  36FFB51AF8        push word [ss:di-0x7e6]
00000D05  5B                pop bx
00000D06  58                pop ax
00000D07  39D8              cmp ax,bx
00000D09  7802              js 0xd0d
00000D0B  89D8              mov ax,bx
00000D0D  99                cwd
00000D0E  8BC8              mov cx,ax
00000D10  8BDA              mov bx,dx
00000D12  8B4606            mov ax,[bp+0x6]
00000D15  31D2              xor dx,dx
00000D17  9ADC02561A        call word 0x1a56:word 0x2dc
00000D1C  59                pop cx
00000D1D  5B                pop bx
00000D1E  03C1              add ax,cx
00000D20  13D3              adc dx,bx
00000D22  8BC8              mov cx,ax
00000D24  8BDA              mov bx,dx
00000D26  8B46FE            mov ax,[bp-0x2]
00000D29  F76EFC            imul word [bp-0x4]
00000D2C  99                cwd
00000D2D  03C1              add ax,cx
00000D2F  13D3              adc dx,bx
00000D31  59                pop cx
00000D32  5B                pop bx
00000D33  03C1              add ax,cx
00000D35  13D3              adc dx,bx
00000D37  59                pop cx
00000D38  5B                pop bx
00000D39  03C1              add ax,cx
00000D3B  13D3              adc dx,bx
00000D3D  B96400            mov cx,0x64
00000D40  31DB              xor bx,bx
00000D42  9AF702561A        call word 0x1a56:word 0x2f7
00000D47  0146FA            add [bp-0x6],ax
00000D4A  8B460C            mov ax,[bp+0xc]
00000D4D  31D2              xor dx,dx
00000D4F  8BC8              mov cx,ax
00000D51  8BDA              mov bx,dx
00000D53  8B46F4            mov ax,[bp-0xc]
00000D56  40                inc ax
00000D57  99                cwd
00000D58  9AF702561A        call word 0x1a56:word 0x2f7
00000D5D  89C8              mov ax,cx
00000D5F  89DA              mov dx,bx
00000D61  8946F4            mov [bp-0xc],ax
00000D64  8B460C            mov ax,[bp+0xc]
00000D67  31D2              xor dx,dx
00000D69  8BC8              mov cx,ax
00000D6B  8BDA              mov bx,dx
00000D6D  8B46F8            mov ax,[bp-0x8]
00000D70  40                inc ax
00000D71  99                cwd
00000D72  9AF702561A        call word 0x1a56:word 0x2f7
00000D77  89C8              mov ax,cx
00000D79  89DA              mov dx,bx
00000D7B  8946F8            mov [bp-0x8],ax
00000D7E  FF46F6            inc word [bp-0xa]
00000D81  E974FE            jmp 0xbf8
00000D84  8B460A            mov ax,[bp+0xa]
00000D87  31D2              xor dx,dx
00000D89  52                push dx
00000D8A  50                push ax
00000D8B  8B460C            mov ax,[bp+0xc]
00000D8E  31D2              xor dx,dx
00000D90  8BC8              mov cx,ax
00000D92  8BDA              mov bx,dx
00000D94  8B46EE            mov ax,[bp-0x12]
00000D97  99                cwd
00000D98  03C1              add ax,cx
00000D9A  13D3              adc dx,bx
00000D9C  59                pop cx
00000D9D  5B                pop bx
00000D9E  9AF702561A        call word 0x1a56:word 0x2f7
00000DA3  89C8              mov ax,cx
00000DA5  89DA              mov dx,bx
00000DA7  8946EE            mov [bp-0x12],ax
00000DAA  8B460A            mov ax,[bp+0xa]
00000DAD  31D2              xor dx,dx
00000DAF  52                push dx
00000DB0  50                push ax
00000DB1  8B460C            mov ax,[bp+0xc]
00000DB4  31D2              xor dx,dx
00000DB6  8BC8              mov cx,ax
00000DB8  8BDA              mov bx,dx
00000DBA  8B46F2            mov ax,[bp-0xe]
00000DBD  99                cwd
00000DBE  03C1              add ax,cx
00000DC0  13D3              adc dx,bx
00000DC2  59                pop cx
00000DC3  5B                pop bx
00000DC4  9AF702561A        call word 0x1a56:word 0x2f7
00000DC9  89C8              mov ax,cx
00000DCB  89DA              mov dx,bx
00000DCD  8946F2            mov [bp-0xe],ax
00000DD0  8B460C            mov ax,[bp+0xc]
00000DD3  0146F0            add [bp-0x10],ax
00000DD6  E9F1FD            jmp 0xbca
00000DD9  8B460A            mov ax,[bp+0xa]
00000DDC  31D2              xor dx,dx
00000DDE  8BC8              mov cx,ax
00000DE0  8BDA              mov bx,dx
00000DE2  8B46FA            mov ax,[bp-0x6]
00000DE5  99                cwd
00000DE6  9AF702561A        call word 0x1a56:word 0x2f7
00000DEB  C47E0E            les di,word [bp+0xe]
00000DEE  268905            mov [es:di],ax
00000DF1  89EC              mov sp,bp
00000DF3  5D                pop bp
00000DF4  C20E00            ret word 0xe
00000DF7  55                push bp
00000DF8  89E5              mov bp,sp
00000DFA  83EC08            sub sp,0x8
00000DFD  8B460E            mov ax,[bp+0xe]
00000E00  8946F8            mov [bp-0x8],ax
00000E03  8B4610            mov ax,[bp+0x10]
00000E06  3B46F8            cmp ax,[bp-0x8]
00000E09  7603              jna 0xe0e
00000E0B  E9F800            jmp 0xf06
00000E0E  8946FA            mov [bp-0x6],ax
00000E11  EB03              jmp 0xe16
00000E13  FF46FA            inc word [bp-0x6]
00000E16  8A56FA            mov dl,[bp-0x6]
00000E19  8B460C            mov ax,[bp+0xc]
00000E1C  8B7E04            mov di,[bp+0x4]
00000E1F  03F8              add di,ax
00000E21  368A851EFA        mov al,[ss:di-0x5e2]
00000E26  30E4              xor ah,ah
00000E28  8B7E04            mov di,[bp+0x4]
00000E2B  03F8              add di,ax
00000E2D  3688955EFA        mov [ss:di-0x5a2],dl
00000E32  FF7606            push word [bp+0x6]
00000E35  8B46FA            mov ax,[bp-0x6]
00000E38  D1E0              shl ax,1
00000E3A  8B7E04            mov di,[bp+0x4]
00000E3D  03F8              add di,ax
00000E3F  368B851AF8        mov ax,[ss:di-0x7e6]
00000E44  8B7E04            mov di,[bp+0x4]
00000E47  362B851CFA        sub ax,[ss:di-0x5e4]
00000E4C  09C0              or ax,ax
00000E4E  7902              jns 0xe52
00000E50  F7D8              neg ax
00000E52  50                push ax
00000E53  5B                pop bx
00000E54  58                pop ax
00000E55  39D8              cmp ax,bx
00000E57  7D02              jnl 0xe5b
00000E59  89D8              mov ax,bx
00000E5B  8946FE            mov [bp-0x2],ax
00000E5E  8B4608            mov ax,[bp+0x8]
00000E61  48                dec ax
00000E62  3B460C            cmp ax,[bp+0xc]
00000E65  761C              jna 0xe83
00000E67  FF76FA            push word [bp-0x6]
00000E6A  FF760E            push word [bp+0xe]
00000E6D  8B460C            mov ax,[bp+0xc]
00000E70  40                inc ax
00000E71  50                push ax
00000E72  FF760A            push word [bp+0xa]
00000E75  FF7608            push word [bp+0x8]
00000E78  FF76FE            push word [bp-0x2]
00000E7B  FF7604            push word [bp+0x4]
00000E7E  E876FF            call 0xdf7
00000E81  EB78              jmp 0xefb
00000E83  8B7E04            mov di,[bp+0x4]
00000E86  81C71AFA          add di,0xfa1a
00000E8A  16                push ss
00000E8B  57                push di
00000E8C  FF760A            push word [bp+0xa]
00000E8F  FF7608            push word [bp+0x8]
00000E92  8B7E04            mov di,[bp+0x4]
00000E95  36FF7508          push word [ss:di+0x8]
00000E99  8B7E04            mov di,[bp+0x4]
00000E9C  36FF7506          push word [ss:di+0x6]
00000EA0  FF7604            push word [bp+0x4]
00000EA3  FF167A89          call word near [0x897a]
00000EA7  8B7E04            mov di,[bp+0x4]
00000EAA  368B851AFA        mov ax,[ss:di-0x5e6]
00000EAF  8B7E04            mov di,[bp+0x4]
00000EB2  362B851CFA        sub ax,[ss:di-0x5e4]
00000EB7  09C0              or ax,ax
00000EB9  7902              jns 0xebd
00000EBB  F7D8              neg ax
00000EBD  8946FC            mov [bp-0x4],ax
00000EC0  8B46FC            mov ax,[bp-0x4]
00000EC3  8B7E04            mov di,[bp+0x4]
00000EC6  363B45E8          cmp ax,[ss:di-0x18]
00000ECA  732F              jnc 0xefb
00000ECC  8B7E04            mov di,[bp+0x4]
00000ECF  81C75EFA          add di,0xfa5e
00000ED3  16                push ss
00000ED4  57                push di
00000ED5  8B7E04            mov di,[bp+0x4]
00000ED8  81C79EFA          add di,0xfa9e
00000EDC  16                push ss
00000EDD  57                push di
00000EDE  B84000            mov ax,0x40
00000EE1  50                push ax
00000EE2  9AC002561A        call word 0x1a56:word 0x2c0
00000EE7  8B46FC            mov ax,[bp-0x4]
00000EEA  8B7E04            mov di,[bp+0x4]
00000EED  368945E8          mov [ss:di-0x18],ax
00000EF1  8B46FE            mov ax,[bp-0x2]
00000EF4  8B7E04            mov di,[bp+0x4]
00000EF7  368945E6          mov [ss:di-0x1a],ax
00000EFB  8B46FA            mov ax,[bp-0x6]
00000EFE  3B46F8            cmp ax,[bp-0x8]
00000F01  7403              jz 0xf06
00000F03  E90DFF            jmp 0xe13
00000F06  89EC              mov sp,bp
00000F08  5D                pop bp
00000F09  C20E00            ret word 0xe
00000F0C  55                push bp
00000F0D  89E5              mov bp,sp
00000F0F  81ECF107          sub sp,0x7f1
00000F13  8B460A            mov ax,[bp+0xa]
00000F16  3D0100            cmp ax,0x1
00000F19  7517              jnz 0xf32
00000F1B  BF6A15            mov di,0x156a
00000F1E  1E                push ds
00000F1F  57                push di
00000F20  8DBE1EFA          lea di,[bp-0x5e2]
00000F24  16                push ss
00000F25  57                push di
00000F26  B80100            mov ax,0x1
00000F29  50                push ax
00000F2A  9A641B561A        call word 0x1a56:word 0x1b64
00000F2F  E98000            jmp 0xfb2
00000F32  3D0200            cmp ax,0x2
00000F35  7516              jnz 0xf4d
00000F37  BF6B15            mov di,0x156b
00000F3A  1E                push ds
00000F3B  57                push di
00000F3C  8DBE1EFA          lea di,[bp-0x5e2]
00000F40  16                push ss
00000F41  57                push di
00000F42  B80400            mov ax,0x4
00000F45  50                push ax
00000F46  9A641B561A        call word 0x1a56:word 0x1b64
00000F4B  EB65              jmp 0xfb2
00000F4D  3D0300            cmp ax,0x3
00000F50  7516              jnz 0xf68
00000F52  BF6F15            mov di,0x156f
00000F55  1E                push ds
00000F56  57                push di
00000F57  8DBE1EFA          lea di,[bp-0x5e2]
00000F5B  16                push ss
00000F5C  57                push di
00000F5D  B80900            mov ax,0x9
00000F60  50                push ax
00000F61  9A641B561A        call word 0x1a56:word 0x1b64
00000F66  EB4A              jmp 0xfb2
00000F68  3D0600            cmp ax,0x6
00000F6B  7516              jnz 0xf83
00000F6D  BF8815            mov di,0x1588
00000F70  1E                push ds
00000F71  57                push di
00000F72  8DBE1EFA          lea di,[bp-0x5e2]
00000F76  16                push ss
00000F77  57                push di
00000F78  B82400            mov ax,0x24
00000F7B  50                push ax
00000F7C  9A641B561A        call word 0x1a56:word 0x1b64
00000F81  EB2F              jmp 0xfb2
00000F83  3D0800            cmp ax,0x8
00000F86  7516              jnz 0xf9e
00000F88  BFAC15            mov di,0x15ac
00000F8B  1E                push ds
00000F8C  57                push di
00000F8D  8DBE1EFA          lea di,[bp-0x5e2]
00000F91  16                push ss
00000F92  57                push di
00000F93  B84000            mov ax,0x40
00000F96  50                push ax
00000F97  9A641B561A        call word 0x1a56:word 0x1b64
00000F9C  EB14              jmp 0xfb2
00000F9E  BF7815            mov di,0x1578
00000FA1  1E                push ds
00000FA2  57                push di
00000FA3  8DBE1EFA          lea di,[bp-0x5e2]
00000FA7  16                push ss
00000FA8  57                push di
00000FA9  B81000            mov ax,0x10
00000FAC  50                push ax
00000FAD  9A641B561A        call word 0x1a56:word 0x1b64
00000FB2  8B460A            mov ax,[bp+0xa]
00000FB5  F7660A            mul word [bp+0xa]
00000FB8  898616F8          mov [bp-0x7ea],ax
00000FBC  C47E10            les di,word [bp+0x10]
00000FBF  268B05            mov ax,[es:di]
00000FC2  8946EC            mov [bp-0x14],ax
00000FC5  C47E0C            les di,word [bp+0xc]
00000FC8  268B05            mov ax,[es:di]
00000FCB  8946EE            mov [bp-0x12],ax
00000FCE  FF760E            push word [bp+0xe]
00000FD1  FF760C            push word [bp+0xc]
00000FD4  0E                push cs
00000FD5  E874F5            call 0x54c
00000FD8  888615F8          mov [bp-0x7eb],al
00000FDC  8D7EF0            lea di,[bp-0x10]
00000FDF  16                push ss
00000FE0  57                push di
00000FE1  8B46EC            mov ax,[bp-0x14]
00000FE4  F7A616F8          mul word [bp-0x7ea]
00000FE8  050400            add ax,0x4
00000FEB  31D2              xor dx,dx
00000FED  52                push dx
00000FEE  50                push ax
00000FEF  9A4F03C317        call word 0x17c3:word 0x34f
00000FF4  8B46EC            mov ax,[bp-0x14]
00000FF7  C47EF0            les di,word [bp-0x10]
00000FFA  268905            mov [es:di],ax
00000FFD  8B460A            mov ax,[bp+0xa]
00001000  C47EF0            les di,word [bp-0x10]
00001003  26894502          mov [es:di+0x2],ax
00001007  80BE15F800        cmp byte [bp-0x7eb],0x0
0000100C  7473              jz 0x1081
0000100E  B8F70D            mov ax,0xdf7
00001011  898618F8          mov [bp-0x7e8],ax
00001015  837E0A01          cmp word [bp+0xa],0x1
00001019  7508              jnz 0x1023
0000101B  B80F0B            mov ax,0xb0f
0000101E  A37A89            mov [0x897a],ax
00001021  EB1A              jmp 0x103d
00001023  837E0800          cmp word [bp+0x8],0x0
00001027  7706              ja 0x102f
00001029  837E0600          cmp word [bp+0x6],0x0
0000102D  7608              jna 0x1037
0000102F  B8990B            mov ax,0xb99
00001032  A37A89            mov [0x897a],ax
00001035  EB06              jmp 0x103d
00001037  B8340B            mov ax,0xb34
0000103A  A37A89            mov [0x897a],ax
0000103D  8B46EE            mov ax,[bp-0x12]
00001040  48                dec ax
00001041  898613F8          mov [bp-0x7ed],ax
00001045  31C0              xor ax,ax
00001047  3B8613F8          cmp ax,[bp-0x7ed]
0000104B  7732              ja 0x107f
0000104D  8946F6            mov [bp-0xa],ax
00001050  EB03              jmp 0x1055
00001052  FF46F6            inc word [bp-0xa]
00001055  8B46F6            mov ax,[bp-0xa]
00001058  D1E0              shl ax,1
0000105A  D1E0              shl ax,1
0000105C  C47E0C            les di,word [bp+0xc]
0000105F  03F8              add di,ax
00001061  26FF7504          push word [es:di+0x4]
00001065  26FF7502          push word [es:di+0x2]
00001069  0E                push cs
0000106A  E8FBF2            call 0x368
0000106D  8B7EF6            mov di,[bp-0xa]
00001070  D1E7              shl di,1
00001072  89831AF8          mov [bp+di-0x7e6],ax
00001076  8B46F6            mov ax,[bp-0xa]
00001079  3B8613F8          cmp ax,[bp-0x7ed]
0000107D  75D3              jnz 0x1052
0000107F  EB78              jmp 0x10f9
00001081  B8CA09            mov ax,0x9ca
00001084  898618F8          mov [bp-0x7e8],ax
00001088  837E0A01          cmp word [bp+0xa],0x1
0000108C  7508              jnz 0x1096
0000108E  B8F905            mov ax,0x5f9
00001091  A37A89            mov [0x897a],ax
00001094  EB1A              jmp 0x10b0
00001096  837E0800          cmp word [bp+0x8],0x0
0000109A  7706              ja 0x10a2
0000109C  837E0600          cmp word [bp+0x6],0x0
000010A0  7608              jna 0x10aa
000010A2  B8D506            mov ax,0x6d5
000010A5  A37A89            mov [0x897a],ax
000010A8  EB06              jmp 0x10b0
000010AA  B82A06            mov ax,0x62a
000010AD  A37A89            mov [0x897a],ax
000010B0  8B46EE            mov ax,[bp-0x12]
000010B3  48                dec ax
000010B4  898613F8          mov [bp-0x7ed],ax
000010B8  31C0              xor ax,ax
000010BA  3B8613F8          cmp ax,[bp-0x7ed]
000010BE  7739              ja 0x10f9
000010C0  8946F6            mov [bp-0xa],ax
000010C3  EB03              jmp 0x10c8
000010C5  FF46F6            inc word [bp-0xa]
000010C8  8B46F6            mov ax,[bp-0xa]
000010CB  D1E0              shl ax,1
000010CD  D1E0              shl ax,1
000010CF  C47E0C            les di,word [bp+0xc]
000010D2  03F8              add di,ax
000010D4  26FF7504          push word [es:di+0x4]
000010D8  26FF7502          push word [es:di+0x2]
000010DC  8B46F6            mov ax,[bp-0xa]
000010DF  BA0300            mov dx,0x3
000010E2  F7E2              mul dx
000010E4  8BF8              mov di,ax
000010E6  8DBBE4FC          lea di,[bp+di-0x31c]
000010EA  16                push ss
000010EB  57                push di
000010EC  0E                push cs
000010ED  E87DF0            call 0x16d
000010F0  8B46F6            mov ax,[bp-0xa]
000010F3  3B8613F8          cmp ax,[bp-0x7ed]
000010F7  75CC              jnz 0x10c5
000010F9  8B46EC            mov ax,[bp-0x14]
000010FC  48                dec ax
000010FD  898613F8          mov [bp-0x7ed],ax
00001101  31C0              xor ax,ax
00001103  3B8613F8          cmp ax,[bp-0x7ed]
00001107  7603              jna 0x110c
00001109  E96601            jmp 0x1272
0000110C  8946F4            mov [bp-0xc],ax
0000110F  EB03              jmp 0x1114
00001111  FF46F4            inc word [bp-0xc]
00001114  80BE15F800        cmp byte [bp-0x7eb],0x0
00001119  741F              jz 0x113a
0000111B  8B46F4            mov ax,[bp-0xc]
0000111E  D1E0              shl ax,1
00001120  D1E0              shl ax,1
00001122  C47E10            les di,word [bp+0x10]
00001125  03F8              add di,ax
00001127  26FF7504          push word [es:di+0x4]
0000112B  26FF7502          push word [es:di+0x2]
0000112F  0E                push cs
00001130  E835F2            call 0x368
00001133  89861CFA          mov [bp-0x5e4],ax
00001137  E99800            jmp 0x11d2
0000113A  8B46F4            mov ax,[bp-0xc]
0000113D  D1E0              shl ax,1
0000113F  D1E0              shl ax,1
00001141  C47E10            les di,word [bp+0x10]
00001144  03F8              add di,ax
00001146  26FF7504          push word [es:di+0x4]
0000114A  26FF7502          push word [es:di+0x2]
0000114E  8DBEE1FA          lea di,[bp-0x51f]
00001152  16                push ss
00001153  57                push di
00001154  0E                push cs
00001155  E815F0            call 0x16d
00001158  8B46EE            mov ax,[bp-0x12]
0000115B  48                dec ax
0000115C  898611F8          mov [bp-0x7ef],ax
00001160  31C0              xor ax,ax
00001162  3B8611F8          cmp ax,[bp-0x7ef]
00001166  776A              ja 0x11d2
00001168  8946F6            mov [bp-0xa],ax
0000116B  EB03              jmp 0x1170
0000116D  FF46F6            inc word [bp-0xa]
00001170  8DBEE1FA          lea di,[bp-0x51f]
00001174  16                push ss
00001175  57                push di
00001176  8B46F6            mov ax,[bp-0xa]
00001179  BA0300            mov dx,0x3
0000117C  F7E2              mul dx
0000117E  8BF8              mov di,ax
00001180  8DBBE4FC          lea di,[bp+di-0x31c]
00001184  16                push ss
00001185  57                push di
00001186  8CDA              mov dx,ds
00001188  5E                pop si
00001189  1F                pop ds
0000118A  5F                pop di
0000118B  07                pop es
0000118C  AC                lodsb
0000118D  268A1D            mov bl,[es:di]
00001190  47                inc di
00001191  D0E8              shr al,1
00001193  D0EB              shr bl,1
00001195  28D8              sub al,bl
00001197  F6E8              imul al
00001199  89C1              mov cx,ax
0000119B  AC                lodsb
0000119C  268A1D            mov bl,[es:di]
0000119F  47                inc di
000011A0  D0E8              shr al,1
000011A2  D0EB              shr bl,1
000011A4  28D8              sub al,bl
000011A6  F6E8              imul al
000011A8  01C1              add cx,ax
000011AA  AC                lodsb
000011AB  268A1D            mov bl,[es:di]
000011AE  D0E8              shr al,1
000011B0  D0EB              shr bl,1
000011B2  28D8              sub al,bl
000011B4  F6E8              imul al
000011B6  01C8              add ax,cx
000011B8  8EDA              mov ds,dx
000011BA  D1E0              shl ax,1
000011BC  88E0              mov al,ah
000011BE  30E4              xor ah,ah
000011C0  8B7EF6            mov di,[bp-0xa]
000011C3  D1E7              shl di,1
000011C5  8983E4FA          mov [bp+di-0x51c],ax
000011C9  8B46F6            mov ax,[bp-0xa]
000011CC  3B8611F8          cmp ax,[bp-0x7ef]
000011D0  759B              jnz 0x116d
000011D2  C746E8FFFF        mov word [bp-0x18],0xffff
000011D7  C746E6FFFF        mov word [bp-0x1a],0xffff
000011DC  31C0              xor ax,ax
000011DE  50                push ax
000011DF  8B46EE            mov ax,[bp-0x12]
000011E2  48                dec ax
000011E3  50                push ax
000011E4  31C0              xor ax,ax
000011E6  50                push ax
000011E7  FF760A            push word [bp+0xa]
000011EA  FFB616F8          push word [bp-0x7ea]
000011EE  31C0              xor ax,ax
000011F0  50                push ax
000011F1  55                push bp
000011F2  FF9618F8          call word near [bp-0x7e8]
000011F6  8B460A            mov ax,[bp+0xa]
000011F9  48                dec ax
000011FA  898611F8          mov [bp-0x7ef],ax
000011FE  31C0              xor ax,ax
00001200  3B8611F8          cmp ax,[bp-0x7ef]
00001204  7760              ja 0x1266
00001206  8946FA            mov [bp-0x6],ax
00001209  EB03              jmp 0x120e
0000120B  FF46FA            inc word [bp-0x6]
0000120E  8B460A            mov ax,[bp+0xa]
00001211  48                dec ax
00001212  89860FF8          mov [bp-0x7f1],ax
00001216  31C0              xor ax,ax
00001218  3B860FF8          cmp ax,[bp-0x7f1]
0000121C  773F              ja 0x125d
0000121E  8946F8            mov [bp-0x8],ax
00001221  EB03              jmp 0x1226
00001223  FF46F8            inc word [bp-0x8]
00001226  8B46FA            mov ax,[bp-0x6]
00001229  F7660A            mul word [bp+0xa]
0000122C  0346F8            add ax,[bp-0x8]
0000122F  8BF8              mov di,ax
00001231  8A9B9EFA          mov bl,[bp+di-0x562]
00001235  8B46F4            mov ax,[bp-0xc]
00001238  F7660A            mul word [bp+0xa]
0000123B  8BC8              mov cx,ax
0000123D  8B46FA            mov ax,[bp-0x6]
00001240  F766EC            mul word [bp-0x14]
00001243  F7660A            mul word [bp+0xa]
00001246  03C1              add ax,cx
00001248  0346F8            add ax,[bp-0x8]
0000124B  C47EF0            les di,word [bp-0x10]
0000124E  03F8              add di,ax
00001250  26885D04          mov [es:di+0x4],bl
00001254  8B46F8            mov ax,[bp-0x8]
00001257  3B860FF8          cmp ax,[bp-0x7f1]
0000125B  75C6              jnz 0x1223
0000125D  8B46FA            mov ax,[bp-0x6]
00001260  3B8611F8          cmp ax,[bp-0x7ef]
00001264  75A5              jnz 0x120b
00001266  8B46F4            mov ax,[bp-0xc]
00001269  3B8613F8          cmp ax,[bp-0x7ed]
0000126D  7403              jz 0x1272
0000126F  E99FFE            jmp 0x1111
00001272  C446F0            les ax,word [bp-0x10]
00001275  8CC2              mov dx,es
00001277  8946FC            mov [bp-0x4],ax
0000127A  8956FE            mov [bp-0x2],dx
0000127D  8B46FC            mov ax,[bp-0x4]
00001280  8B56FE            mov dx,[bp-0x2]
00001283  89EC              mov sp,bp
00001285  5D                pop bp
00001286  CA0E00            retf word 0xe
00001289  0000              add [bx+si],al
0000128B  0000              add [bx+si],al
0000128D  0000              add [bx+si],al
0000128F  00                db 0x00
