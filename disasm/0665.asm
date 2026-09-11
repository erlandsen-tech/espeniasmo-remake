00000000  55                push bp
00000001  89E5              mov bp,sp
00000003  83EC02            sub sp,0x2
00000006  8B7E04            mov di,[bp+0x4]
00000009  368D856EF9        lea ax,[ss:di-0x692]
0000000E  8CD2              mov dx,ss
00000010  52                push dx
00000011  50                push ax
00000012  8B7E04            mov di,[bp+0x4]
00000015  36FF750C          push word [ss:di+0xc]
00000019  36FF750A          push word [ss:di+0xa]
0000001D  B80600            mov ax,0x6
00000020  50                push ax
00000021  9A0000210A        call word 0xa21:word 0x0
00000026  50                push ax
00000027  B81E00            mov ax,0x1e
0000002A  50                push ax
0000002B  9A2800210A        call word 0xa21:word 0x28
00000030  50                push ax
00000031  B80F00            mov ax,0xf
00000034  50                push ax
00000035  B80100            mov ax,0x1
00000038  50                push ax
00000039  B80900            mov ax,0x9
0000003C  50                push ax
0000003D  B80100            mov ax,0x1
00000040  50                push ax
00000041  B80100            mov ax,0x1
00000044  50                push ax
00000045  B80700            mov ax,0x7
00000048  50                push ax
00000049  B80800            mov ax,0x8
0000004C  50                push ax
0000004D  B80100            mov ax,0x1
00000050  50                push ax
00000051  8B7E04            mov di,[bp+0x4]
00000054  36FFB512F9        push word [ss:di-0x6ee]
00000059  8B7E04            mov di,[bp+0x4]
0000005C  36FFB516F9        push word [ss:di-0x6ea]
00000061  36FFB514F9        push word [ss:di-0x6ec]
00000066  9A4B0ADC07        call word 0x7dc:word 0xa4b
0000006B  8B7E04            mov di,[bp+0x4]
0000006E  368D853AFA        lea ax,[ss:di-0x5c6]
00000073  8CD2              mov dx,ss
00000075  8B7E04            mov di,[bp+0x4]
00000078  36898516FA        mov [ss:di-0x5ea],ax
0000007D  36899518FA        mov [ss:di-0x5e8],dx
00000082  8B7E04            mov di,[bp+0x4]
00000085  368D853AFA        lea ax,[ss:di-0x5c6]
0000008A  8CD2              mov dx,ss
0000008C  52                push dx
0000008D  50                push ax
0000008E  8B7E04            mov di,[bp+0x4]
00000091  368D855AFA        lea ax,[ss:di-0x5a6]
00000096  8CD2              mov dx,ss
00000098  52                push dx
00000099  50                push ax
0000009A  B82C00            mov ax,0x2c
0000009D  50                push ax
0000009E  9A0000210A        call word 0xa21:word 0x0
000000A3  50                push ax
000000A4  B89B00            mov ax,0x9b
000000A7  50                push ax
000000A8  9A2800210A        call word 0xa21:word 0x28
000000AD  50                push ax
000000AE  B85000            mov ax,0x50
000000B1  50                push ax
000000B2  9A0000210A        call word 0xa21:word 0x0
000000B7  50                push ax
000000B8  B81600            mov ax,0x16
000000BB  50                push ax
000000BC  9A2800210A        call word 0xa21:word 0x28
000000C1  50                push ax
000000C2  B80100            mov ax,0x1
000000C5  50                push ax
000000C6  B80F00            mov ax,0xf
000000C9  50                push ax
000000CA  B80900            mov ax,0x9
000000CD  50                push ax
000000CE  B80B00            mov ax,0xb
000000D1  50                push ax
000000D2  9A6E1A210A        call word 0xa21:word 0x1a6e
000000D7  8B7E04            mov di,[bp+0x4]
000000DA  368D851AF9        lea ax,[ss:di-0x6e6]
000000DF  8CD2              mov dx,ss
000000E1  52                push dx
000000E2  50                push ax
000000E3  31C0              xor ax,ax
000000E5  31D2              xor dx,dx
000000E7  52                push dx
000000E8  50                push ax
000000E9  B80400            mov ax,0x4
000000EC  50                push ax
000000ED  9A0000210A        call word 0xa21:word 0x0
000000F2  8BD0              mov dx,ax
000000F4  8B7E04            mov di,[bp+0x4]
000000F7  368A85FFFC        mov al,[ss:di-0x301]
000000FC  30E4              xor ah,ah
000000FE  F7EA              imul dx
00000100  8BD8              mov bx,ax
00000102  8B7E04            mov di,[bp+0x4]
00000105  368B8542FA        mov ax,[ss:di-0x5be]
0000010A  99                cwd
0000010B  B90200            mov cx,0x2
0000010E  F7F9              idiv cx
00000110  2BC3              sub ax,bx
00000112  50                push ax
00000113  B80700            mov ax,0x7
00000116  50                push ax
00000117  9A2800210A        call word 0xa21:word 0x28
0000011C  8BD8              mov bx,ax
0000011E  8B7E04            mov di,[bp+0x4]
00000121  368B8544FA        mov ax,[ss:di-0x5bc]
00000126  99                cwd
00000127  B90200            mov cx,0x2
0000012A  F7F9              idiv cx
0000012C  03C3              add ax,bx
0000012E  50                push ax
0000012F  B80F00            mov ax,0xf
00000132  50                push ax
00000133  8B7E04            mov di,[bp+0x4]
00000136  368D85FFFC        lea ax,[ss:di-0x301]
0000013B  8CD2              mov dx,ss
0000013D  52                push dx
0000013E  50                push ax
0000013F  9AA71B210A        call word 0xa21:word 0x1ba7
00000144  8B7E04            mov di,[bp+0x4]
00000147  368D851AF9        lea ax,[ss:di-0x6e6]
0000014C  8CD2              mov dx,ss
0000014E  8B7E04            mov di,[bp+0x4]
00000151  3689854CFA        mov [ss:di-0x5b4],ax
00000156  3689954EFA        mov [ss:di-0x5b2],dx
0000015B  8B7E04            mov di,[bp+0x4]
0000015E  368D855AFA        lea ax,[ss:di-0x5a6]
00000163  8CD2              mov dx,ss
00000165  52                push dx
00000166  50                push ax
00000167  8B7E04            mov di,[bp+0x4]
0000016A  368D857AFA        lea ax,[ss:di-0x586]
0000016F  8CD2              mov dx,ss
00000171  52                push dx
00000172  50                push ax
00000173  B88600            mov ax,0x86
00000176  50                push ax
00000177  9A0000210A        call word 0xa21:word 0x0
0000017C  50                push ax
0000017D  B89B00            mov ax,0x9b
00000180  50                push ax
00000181  9A2800210A        call word 0xa21:word 0x28
00000186  50                push ax
00000187  B85000            mov ax,0x50
0000018A  50                push ax
0000018B  9A0000210A        call word 0xa21:word 0x0
00000190  50                push ax
00000191  B81600            mov ax,0x16
00000194  50                push ax
00000195  9A2800210A        call word 0xa21:word 0x28
0000019A  50                push ax
0000019B  B80100            mov ax,0x1
0000019E  50                push ax
0000019F  B80F00            mov ax,0xf
000001A2  50                push ax
000001A3  B80900            mov ax,0x9
000001A6  50                push ax
000001A7  B80C00            mov ax,0xc
000001AA  50                push ax
000001AB  9A6E1A210A        call word 0xa21:word 0x1a6e
000001B0  8B7E04            mov di,[bp+0x4]
000001B3  368D8528F9        lea ax,[ss:di-0x6d8]
000001B8  8CD2              mov dx,ss
000001BA  52                push dx
000001BB  50                push ax
000001BC  31C0              xor ax,ax
000001BE  31D2              xor dx,dx
000001C0  52                push dx
000001C1  50                push ax
000001C2  B80400            mov ax,0x4
000001C5  50                push ax
000001C6  9A0000210A        call word 0xa21:word 0x0
000001CB  8BD0              mov dx,ax
000001CD  A0DC03            mov al,[0x3dc]
000001D0  30E4              xor ah,ah
000001D2  F7EA              imul dx
000001D4  8BD8              mov bx,ax
000001D6  8B7E04            mov di,[bp+0x4]
000001D9  368B8562FA        mov ax,[ss:di-0x59e]
000001DE  99                cwd
000001DF  B90200            mov cx,0x2
000001E2  F7F9              idiv cx
000001E4  2BC3              sub ax,bx
000001E6  50                push ax
000001E7  B80700            mov ax,0x7
000001EA  50                push ax
000001EB  9A2800210A        call word 0xa21:word 0x28
000001F0  8BD8              mov bx,ax
000001F2  8B7E04            mov di,[bp+0x4]
000001F5  368B8564FA        mov ax,[ss:di-0x59c]
000001FA  99                cwd
000001FB  B90200            mov cx,0x2
000001FE  F7F9              idiv cx
00000200  03C3              add ax,bx
00000202  50                push ax
00000203  B80F00            mov ax,0xf
00000206  50                push ax
00000207  B8DC03            mov ax,0x3dc
0000020A  8CDA              mov dx,ds
0000020C  52                push dx
0000020D  50                push ax
0000020E  9AA71B210A        call word 0xa21:word 0x1ba7
00000213  8B7E04            mov di,[bp+0x4]
00000216  368D8528F9        lea ax,[ss:di-0x6d8]
0000021B  8CD2              mov dx,ss
0000021D  8B7E04            mov di,[bp+0x4]
00000220  3689856CFA        mov [ss:di-0x594],ax
00000225  3689956EFA        mov [ss:di-0x592],dx
0000022A  C746FE0300        mov word [bp-0x2],0x3
0000022F  EB03              jmp 0x234
00000231  FF46FE            inc word [bp-0x2]
00000234  8B46FE            mov ax,[bp-0x2]
00000237  B105              mov cl,0x5
00000239  D3E0              shl ax,cl
0000023B  8B7E04            mov di,[bp+0x4]
0000023E  03F8              add di,ax
00000240  368D851AFA        lea ax,[ss:di-0x5e6]
00000245  8CD2              mov dx,ss
00000247  52                push dx
00000248  50                push ax
00000249  31C0              xor ax,ax
0000024B  31D2              xor dx,dx
0000024D  52                push dx
0000024E  50                push ax
0000024F  B88400            mov ax,0x84
00000252  50                push ax
00000253  9A0000210A        call word 0xa21:word 0x0
00000258  50                push ax
00000259  B82400            mov ax,0x24
0000025C  50                push ax
0000025D  9A2800210A        call word 0xa21:word 0x28
00000262  8BD0              mov dx,ax
00000264  8B46FE            mov ax,[bp-0x2]
00000267  2D0300            sub ax,0x3
0000026A  F7EA              imul dx
0000026C  50                push ax
0000026D  B83200            mov ax,0x32
00000270  50                push ax
00000271  9A2800210A        call word 0xa21:word 0x28
00000276  5A                pop dx
00000277  03C2              add ax,dx
00000279  50                push ax
0000027A  B87800            mov ax,0x78
0000027D  50                push ax
0000027E  9A0000210A        call word 0xa21:word 0x0
00000283  50                push ax
00000284  B81100            mov ax,0x11
00000287  50                push ax
00000288  9A2800210A        call word 0xa21:word 0x28
0000028D  50                push ax
0000028E  B80100            mov ax,0x1
00000291  50                push ax
00000292  B80F00            mov ax,0xf
00000295  50                push ax
00000296  B80900            mov ax,0x9
00000299  50                push ax
0000029A  8B46FE            mov ax,[bp-0x2]
0000029D  050A00            add ax,0xa
000002A0  50                push ax
000002A1  9A6E1A210A        call word 0xa21:word 0x1a6e
000002A6  8B46FE            mov ax,[bp-0x2]
000002A9  BA0E00            mov dx,0xe
000002AC  F7E2              mul dx
000002AE  8B7E04            mov di,[bp+0x4]
000002B1  03F8              add di,ax
000002B3  368D850CF9        lea ax,[ss:di-0x6f4]
000002B8  8CD2              mov dx,ss
000002BA  52                push dx
000002BB  50                push ax
000002BC  31C0              xor ax,ax
000002BE  31D2              xor dx,dx
000002C0  52                push dx
000002C1  50                push ax
000002C2  B80400            mov ax,0x4
000002C5  50                push ax
000002C6  9A0000210A        call word 0xa21:word 0x0
000002CB  8BD0              mov dx,ax
000002CD  8B46FE            mov ax,[bp-0x2]
000002D0  48                dec ax
000002D1  8BF8              mov di,ax
000002D3  B108              mov cl,0x8
000002D5  D3E7              shl di,cl
000002D7  8A85DC02          mov al,[di+0x2dc]
000002DB  30E4              xor ah,ah
000002DD  F7EA              imul dx
000002DF  8BD8              mov bx,ax
000002E1  8B46FE            mov ax,[bp-0x2]
000002E4  B105              mov cl,0x5
000002E6  D3E0              shl ax,cl
000002E8  8B7E04            mov di,[bp+0x4]
000002EB  03F8              add di,ax
000002ED  368B8522FA        mov ax,[ss:di-0x5de]
000002F2  99                cwd
000002F3  B90200            mov cx,0x2
000002F6  F7F9              idiv cx
000002F8  2BC3              sub ax,bx
000002FA  50                push ax
000002FB  B8FEFF            mov ax,0xfffe
000002FE  50                push ax
000002FF  9A2800210A        call word 0xa21:word 0x28
00000304  50                push ax
00000305  B80F00            mov ax,0xf
00000308  50                push ax
00000309  8B46FE            mov ax,[bp-0x2]
0000030C  48                dec ax
0000030D  8BF8              mov di,ax
0000030F  B108              mov cl,0x8
00000311  D3E7              shl di,cl
00000313  8D85DC02          lea ax,[di+0x2dc]
00000317  8CDA              mov dx,ds
00000319  52                push dx
0000031A  50                push ax
0000031B  9AA71B210A        call word 0xa21:word 0x1ba7
00000320  8B46FE            mov ax,[bp-0x2]
00000323  BA0E00            mov dx,0xe
00000326  F7E2              mul dx
00000328  8B7E04            mov di,[bp+0x4]
0000032B  03F8              add di,ax
0000032D  368D850CF9        lea ax,[ss:di-0x6f4]
00000332  8CD2              mov dx,ss
00000334  52                push dx
00000335  50                push ax
00000336  8B46FE            mov ax,[bp-0x2]
00000339  B105              mov cl,0x5
0000033B  D3E0              shl ax,cl
0000033D  8B7E04            mov di,[bp+0x4]
00000340  03F8              add di,ax
00000342  58                pop ax
00000343  5A                pop dx
00000344  3689852CFA        mov [ss:di-0x5d4],ax
00000349  3689952EFA        mov [ss:di-0x5d2],dx
0000034E  837EFE05          cmp word [bp-0x2],0x5
00000352  7403              jz 0x357
00000354  E9DAFE            jmp 0x231
00000357  8B7E04            mov di,[bp+0x4]
0000035A  368D859AFA        lea ax,[ss:di-0x566]
0000035F  8CD2              mov dx,ss
00000361  8B7E04            mov di,[bp+0x4]
00000364  3689857AFA        mov [ss:di-0x586],ax
00000369  3689957CFA        mov [ss:di-0x584],dx
0000036E  8B7E04            mov di,[bp+0x4]
00000371  368D85BAFA        lea ax,[ss:di-0x546]
00000376  8CD2              mov dx,ss
00000378  8B7E04            mov di,[bp+0x4]
0000037B  3689859AFA        mov [ss:di-0x566],ax
00000380  3689959CFA        mov [ss:di-0x564],dx
00000385  8B7E04            mov di,[bp+0x4]
00000388  368D85DAFA        lea ax,[ss:di-0x526]
0000038D  8CD2              mov dx,ss
0000038F  52                push dx
00000390  50                push ax
00000391  8B7E04            mov di,[bp+0x4]
00000394  36FF7508          push word [ss:di+0x8]
00000398  8B7E04            mov di,[bp+0x4]
0000039B  36FF7506          push word [ss:di+0x6]
0000039F  B80201            mov ax,0x102
000003A2  50                push ax
000003A3  9A0000210A        call word 0xa21:word 0x0
000003A8  50                push ax
000003A9  B8B900            mov ax,0xb9
000003AC  50                push ax
000003AD  9A2800210A        call word 0xa21:word 0x28
000003B2  50                push ax
000003B3  B80100            mov ax,0x1
000003B6  50                push ax
000003B7  B80F00            mov ax,0xf
000003BA  50                push ax
000003BB  B80100            mov ax,0x1
000003BE  50                push ax
000003BF  8B7E04            mov di,[bp+0x4]
000003C2  368D8580F9        lea ax,[ss:di-0x680]
000003C7  8CD2              mov dx,ss
000003C9  52                push dx
000003CA  50                push ax
000003CB  9A091B210A        call word 0xa21:word 0x1b09
000003D0  8B7E04            mov di,[bp+0x4]
000003D3  368D8560F9        lea ax,[ss:di-0x6a0]
000003D8  8CD2              mov dx,ss
000003DA  52                push dx
000003DB  50                push ax
000003DC  31C0              xor ax,ax
000003DE  31D2              xor dx,dx
000003E0  52                push dx
000003E1  50                push ax
000003E2  B80400            mov ax,0x4
000003E5  50                push ax
000003E6  9A0000210A        call word 0xa21:word 0x0
000003EB  8BD0              mov dx,ax
000003ED  8B7E04            mov di,[bp+0x4]
000003F0  368A85FFFD        mov al,[ss:di-0x201]
000003F5  30E4              xor ah,ah
000003F7  F7EA              imul dx
000003F9  8BD8              mov bx,ax
000003FB  8B7E04            mov di,[bp+0x4]
000003FE  368B85DEFA        mov ax,[ss:di-0x522]
00000403  99                cwd
00000404  B90200            mov cx,0x2
00000407  F7F9              idiv cx
00000409  2BC3              sub ax,bx
0000040B  50                push ax
0000040C  B81400            mov ax,0x14
0000040F  50                push ax
00000410  9A2800210A        call word 0xa21:word 0x28
00000415  50                push ax
00000416  B80F00            mov ax,0xf
00000419  50                push ax
0000041A  8B7E04            mov di,[bp+0x4]
0000041D  368D85FFFD        lea ax,[ss:di-0x201]
00000422  8CD2              mov dx,ss
00000424  52                push dx
00000425  50                push ax
00000426  9AA71B210A        call word 0xa21:word 0x1ba7
0000042B  8B7E04            mov di,[bp+0x4]
0000042E  368D8560F9        lea ax,[ss:di-0x6a0]
00000433  8CD2              mov dx,ss
00000435  8B7E04            mov di,[bp+0x4]
00000438  368985ECFA        mov [ss:di-0x514],ax
0000043D  368995EEFA        mov [ss:di-0x512],dx
00000442  8B7E04            mov di,[bp+0x4]
00000445  36FF750C          push word [ss:di+0xc]
00000449  36FF750A          push word [ss:di+0xa]
0000044D  8B7E04            mov di,[bp+0x4]
00000450  368D85DAFA        lea ax,[ss:di-0x526]
00000455  8CD2              mov dx,ss
00000457  52                push dx
00000458  50                push ax
00000459  9AE606210A        call word 0xa21:word 0x6e6
0000045E  89EC              mov sp,bp
00000460  5D                pop bp
00000461  C20200            ret word 0x2
00000464  55                push bp
00000465  89E5              mov bp,sp
00000467  B80F00            mov ax,0xf
0000046A  50                push ax
0000046B  B80900            mov ax,0x9
0000046E  50                push ax
0000046F  B000              mov al,0x0
00000471  50                push ax
00000472  9A5000210A        call word 0xa21:word 0x50
00000477  B80400            mov ax,0x4
0000047A  50                push ax
0000047B  9A0000210A        call word 0xa21:word 0x0
00000480  8BD8              mov bx,ax
00000482  8B7E04            mov di,[bp+0x4]
00000485  368B8582FA        mov ax,[ss:di-0x57e]
0000048A  99                cwd
0000048B  B90200            mov cx,0x2
0000048E  F7F9              idiv cx
00000490  8BD0              mov dx,ax
00000492  8B7E04            mov di,[bp+0x4]
00000495  368B85DAFA        mov ax,[ss:di-0x526]
0000049A  8B7E04            mov di,[bp+0x4]
0000049D  3603857EFA        add ax,[ss:di-0x582]
000004A2  03C2              add ax,dx
000004A4  2BC3              sub ax,bx
000004A6  50                push ax
000004A7  B80700            mov ax,0x7
000004AA  50                push ax
000004AB  9A2800210A        call word 0xa21:word 0x28
000004B0  8BD8              mov bx,ax
000004B2  8B7E04            mov di,[bp+0x4]
000004B5  368B8584FA        mov ax,[ss:di-0x57c]
000004BA  99                cwd
000004BB  B90200            mov cx,0x2
000004BE  F7F9              idiv cx
000004C0  8BD0              mov dx,ax
000004C2  8B7E04            mov di,[bp+0x4]
000004C5  368B85DCFA        mov ax,[ss:di-0x524]
000004CA  8B7E04            mov di,[bp+0x4]
000004CD  36038580FA        add ax,[ss:di-0x580]
000004D2  03C2              add ax,dx
000004D4  03C3              add ax,bx
000004D6  50                push ax
000004D7  9A8A1B430E        call word 0xe43:word 0x1b8a
000004DC  8B7E04            mov di,[bp+0x4]
000004DF  81C7FCFB          add di,0xfbfc
000004E3  16                push ss
000004E4  57                push di
000004E5  9AE010430E        call word 0xe43:word 0x10e0
000004EA  B80900            mov ax,0x9
000004ED  50                push ax
000004EE  9A7F1A430E        call word 0xe43:word 0x1a7f
000004F3  B80100            mov ax,0x1
000004F6  50                push ax
000004F7  9A0000210A        call word 0xa21:word 0x0
000004FC  8BD0              mov dx,ax
000004FE  8B7E04            mov di,[bp+0x4]
00000501  368B85DAFA        mov ax,[ss:di-0x526]
00000506  8B7E04            mov di,[bp+0x4]
00000509  3603859EFA        add ax,[ss:di-0x562]
0000050E  03C2              add ax,dx
00000510  50                push ax
00000511  B80100            mov ax,0x1
00000514  50                push ax
00000515  9A2800210A        call word 0xa21:word 0x28
0000051A  8BD0              mov dx,ax
0000051C  8B7E04            mov di,[bp+0x4]
0000051F  368B85DCFA        mov ax,[ss:di-0x524]
00000524  8B7E04            mov di,[bp+0x4]
00000527  360385A0FA        add ax,[ss:di-0x560]
0000052C  03C2              add ax,dx
0000052E  50                push ax
0000052F  B80200            mov ax,0x2
00000532  50                push ax
00000533  9A0000210A        call word 0xa21:word 0x0
00000538  8BD0              mov dx,ax
0000053A  8B7E04            mov di,[bp+0x4]
0000053D  368B85A2FA        mov ax,[ss:di-0x55e]
00000542  2BC2              sub ax,dx
00000544  50                push ax
00000545  B80200            mov ax,0x2
00000548  50                push ax
00000549  9A2800210A        call word 0xa21:word 0x28
0000054E  8BD0              mov dx,ax
00000550  8B7E04            mov di,[bp+0x4]
00000553  368B85A4FA        mov ax,[ss:di-0x55c]
00000558  2BC2              sub ax,dx
0000055A  50                push ax
0000055B  9A0124430E        call word 0xe43:word 0x2401
00000560  B80F00            mov ax,0xf
00000563  50                push ax
00000564  9A7F1A430E        call word 0xe43:word 0x1a7f
00000569  B80400            mov ax,0x4
0000056C  50                push ax
0000056D  9A0000210A        call word 0xa21:word 0x0
00000572  8BD0              mov dx,ax
00000574  8B7E04            mov di,[bp+0x4]
00000577  368A85FCFA        mov al,[ss:di-0x504]
0000057C  30E4              xor ah,ah
0000057E  F7EA              imul dx
00000580  8BD8              mov bx,ax
00000582  8B7E04            mov di,[bp+0x4]
00000585  368B85A2FA        mov ax,[ss:di-0x55e]
0000058A  99                cwd
0000058B  B90200            mov cx,0x2
0000058E  F7F9              idiv cx
00000590  8BD0              mov dx,ax
00000592  8B7E04            mov di,[bp+0x4]
00000595  368B85DAFA        mov ax,[ss:di-0x526]
0000059A  8B7E04            mov di,[bp+0x4]
0000059D  3603859EFA        add ax,[ss:di-0x562]
000005A2  03C2              add ax,dx
000005A4  2BC3              sub ax,bx
000005A6  50                push ax
000005A7  B80700            mov ax,0x7
000005AA  50                push ax
000005AB  9A2800210A        call word 0xa21:word 0x28
000005B0  8BD8              mov bx,ax
000005B2  8B7E04            mov di,[bp+0x4]
000005B5  368B85A4FA        mov ax,[ss:di-0x55c]
000005BA  99                cwd
000005BB  B90200            mov cx,0x2
000005BE  F7F9              idiv cx
000005C0  8BD0              mov dx,ax
000005C2  8B7E04            mov di,[bp+0x4]
000005C5  368B85DCFA        mov ax,[ss:di-0x524]
000005CA  8B7E04            mov di,[bp+0x4]
000005CD  360385A0FA        add ax,[ss:di-0x560]
000005D2  03C2              add ax,dx
000005D4  03C3              add ax,bx
000005D6  50                push ax
000005D7  9A8A1B430E        call word 0xe43:word 0x1b8a
000005DC  8B7E04            mov di,[bp+0x4]
000005DF  81C7FCFA          add di,0xfafc
000005E3  16                push ss
000005E4  57                push di
000005E5  9AE010430E        call word 0xe43:word 0x10e0
000005EA  89EC              mov sp,bp
000005EC  5D                pop bp
000005ED  C20200            ret word 0x2
000005F0  55                push bp
000005F1  89E5              mov bp,sp
000005F3  B80900            mov ax,0x9
000005F6  50                push ax
000005F7  B80900            mov ax,0x9
000005FA  50                push ax
000005FB  B000              mov al,0x0
000005FD  50                push ax
000005FE  9A5000210A        call word 0xa21:word 0x50
00000603  B80100            mov ax,0x1
00000606  50                push ax
00000607  9A0000210A        call word 0xa21:word 0x0
0000060C  8BD0              mov dx,ax
0000060E  8B7E04            mov di,[bp+0x4]
00000611  368B85DAFA        mov ax,[ss:di-0x526]
00000616  8B7E04            mov di,[bp+0x4]
00000619  360385BEFA        add ax,[ss:di-0x542]
0000061E  03C2              add ax,dx
00000620  50                push ax
00000621  B80100            mov ax,0x1
00000624  50                push ax
00000625  9A2800210A        call word 0xa21:word 0x28
0000062A  8BD0              mov dx,ax
0000062C  8B7E04            mov di,[bp+0x4]
0000062F  368B85DCFA        mov ax,[ss:di-0x524]
00000634  8B7E04            mov di,[bp+0x4]
00000637  360385C0FA        add ax,[ss:di-0x540]
0000063C  03C2              add ax,dx
0000063E  50                push ax
0000063F  B80200            mov ax,0x2
00000642  50                push ax
00000643  9A0000210A        call word 0xa21:word 0x0
00000648  8BD0              mov dx,ax
0000064A  8B7E04            mov di,[bp+0x4]
0000064D  368B85C2FA        mov ax,[ss:di-0x53e]
00000652  2BC2              sub ax,dx
00000654  50                push ax
00000655  B80200            mov ax,0x2
00000658  50                push ax
00000659  9A2800210A        call word 0xa21:word 0x28
0000065E  8BD0              mov dx,ax
00000660  8B7E04            mov di,[bp+0x4]
00000663  368B85C4FA        mov ax,[ss:di-0x53c]
00000668  2BC2              sub ax,dx
0000066A  50                push ax
0000066B  9A0124430E        call word 0xe43:word 0x2401
00000670  B80F00            mov ax,0xf
00000673  50                push ax
00000674  9A7F1A430E        call word 0xe43:word 0x1a7f
00000679  B80400            mov ax,0x4
0000067C  50                push ax
0000067D  9A0000210A        call word 0xa21:word 0x0
00000682  8BD0              mov dx,ax
00000684  8B7E04            mov di,[bp+0x4]
00000687  368A8512F8        mov al,[ss:di-0x7ee]
0000068C  30E4              xor ah,ah
0000068E  F7EA              imul dx
00000690  8BD8              mov bx,ax
00000692  8B7E04            mov di,[bp+0x4]
00000695  368B85C2FA        mov ax,[ss:di-0x53e]
0000069A  99                cwd
0000069B  B90200            mov cx,0x2
0000069E  F7F9              idiv cx
000006A0  8BD0              mov dx,ax
000006A2  8B7E04            mov di,[bp+0x4]
000006A5  368B85DAFA        mov ax,[ss:di-0x526]
000006AA  8B7E04            mov di,[bp+0x4]
000006AD  360385BEFA        add ax,[ss:di-0x542]
000006B2  03C2              add ax,dx
000006B4  2BC3              sub ax,bx
000006B6  50                push ax
000006B7  B80700            mov ax,0x7
000006BA  50                push ax
000006BB  9A2800210A        call word 0xa21:word 0x28
000006C0  8BD8              mov bx,ax
000006C2  8B7E04            mov di,[bp+0x4]
000006C5  368B85C4FA        mov ax,[ss:di-0x53c]
000006CA  99                cwd
000006CB  B90200            mov cx,0x2
000006CE  F7F9              idiv cx
000006D0  8BD0              mov dx,ax
000006D2  8B7E04            mov di,[bp+0x4]
000006D5  368B85DCFA        mov ax,[ss:di-0x524]
000006DA  8B7E04            mov di,[bp+0x4]
000006DD  360385C0FA        add ax,[ss:di-0x540]
000006E2  03C2              add ax,dx
000006E4  03C3              add ax,bx
000006E6  50                push ax
000006E7  9A8A1B430E        call word 0xe43:word 0x1b8a
000006EC  8B7E04            mov di,[bp+0x4]
000006EF  81C712F8          add di,0xf812
000006F3  16                push ss
000006F4  57                push di
000006F5  9AE010430E        call word 0xe43:word 0x10e0
000006FA  89EC              mov sp,bp
000006FC  5D                pop bp
000006FD  C20200            ret word 0x2
00000700  55                push bp
00000701  89E5              mov bp,sp
00000703  8B7E04            mov di,[bp+0x4]
00000706  368D856EF9        lea ax,[ss:di-0x692]
0000070B  8CD2              mov dx,ss
0000070D  52                push dx
0000070E  50                push ax
0000070F  9A8808DC07        call word 0x7dc:word 0x888
00000714  FF7604            push word [bp+0x4]
00000717  E84AFD            call 0x464
0000071A  FF7604            push word [bp+0x4]
0000071D  E8D0FE            call 0x5f0
00000720  89EC              mov sp,bp
00000722  5D                pop bp
00000723  C20200            ret word 0x2
00000726  55                push bp
00000727  89E5              mov bp,sp
00000729  81EC0002          sub sp,0x200
0000072D  C47E06            les di,word [bp+0x6]
00000730  06                push es
00000731  57                push di
00000732  8DBE00FF          lea di,[bp-0x100]
00000736  16                push ss
00000737  57                push di
00000738  B8FF00            mov ax,0xff
0000073B  50                push ax
0000073C  9AAD06561A        call word 0x1a56:word 0x6ad
00000741  8DBE00FF          lea di,[bp-0x100]
00000745  16                push ss
00000746  57                push di
00000747  9A461C561A        call word 0x1a56:word 0x1c46
0000074C  9A6D02561A        call word 0x1a56:word 0x26d
00000751  09C0              or ax,ax
00000753  7403              jz 0x758
00000755  E92E01            jmp 0x886
00000758  8DBE00FF          lea di,[bp-0x100]
0000075C  16                push ss
0000075D  57                push di
0000075E  8B7E04            mov di,[bp+0x4]
00000761  81C7FFFB          add di,0xfbff
00000765  16                push ss
00000766  57                push di
00000767  B8FF00            mov ax,0xff
0000076A  50                push ax
0000076B  9AAD06561A        call word 0x1a56:word 0x6ad
00000770  8DBE00FE          lea di,[bp-0x200]
00000774  16                push ss
00000775  57                push di
00000776  8B7E04            mov di,[bp+0x4]
00000779  81C7FFFB          add di,0xfbff
0000077D  16                push ss
0000077E  57                push di
0000077F  B80100            mov ax,0x1
00000782  50                push ax
00000783  B80100            mov ax,0x1
00000786  50                push ax
00000787  9ADF06561A        call word 0x1a56:word 0x6df
0000078C  8B7E04            mov di,[bp+0x4]
0000078F  81C7FCFB          add di,0xfbfc
00000793  16                push ss
00000794  57                push di
00000795  B80100            mov ax,0x1
00000798  50                push ax
00000799  9AAD06561A        call word 0x1a56:word 0x6ad
0000079E  8B7E04            mov di,[bp+0x4]
000007A1  368A85FDFB        mov al,[ss:di-0x403]
000007A6  30E4              xor ah,ah
000007A8  2D4100            sub ax,0x41
000007AB  40                inc ax
000007AC  8B7E04            mov di,[bp+0x4]
000007AF  368885FEFB        mov [ss:di-0x402],al
000007B4  8DBE00FE          lea di,[bp-0x200]
000007B8  16                push ss
000007B9  57                push di
000007BA  8B7E04            mov di,[bp+0x4]
000007BD  81C7FFFB          add di,0xfbff
000007C1  16                push ss
000007C2  57                push di
000007C3  B80300            mov ax,0x3
000007C6  50                push ax
000007C7  8B7E04            mov di,[bp+0x4]
000007CA  368A85FFFB        mov al,[ss:di-0x401]
000007CF  30E4              xor ah,ah
000007D1  2D0200            sub ax,0x2
000007D4  50                push ax
000007D5  9ADF06561A        call word 0x1a56:word 0x6df
000007DA  8B7E04            mov di,[bp+0x4]
000007DD  81C7FCFA          add di,0xfafc
000007E1  16                push ss
000007E2  57                push di
000007E3  B8FF00            mov ax,0xff
000007E6  50                push ax
000007E7  9AAD06561A        call word 0x1a56:word 0x6ad
000007EC  8B7E04            mov di,[bp+0x4]
000007EF  81C714F9          add di,0xf914
000007F3  16                push ss
000007F4  57                push di
000007F5  9A0000BB07        call word 0x7bb:word 0x0
000007FA  8B7E04            mov di,[bp+0x4]
000007FD  81C7FFFE          add di,0xfeff
00000801  16                push ss
00000802  57                push di
00000803  8B7E04            mov di,[bp+0x4]
00000806  81C714F9          add di,0xf914
0000080A  16                push ss
0000080B  57                push di
0000080C  8B7E04            mov di,[bp+0x4]
0000080F  81C712F9          add di,0xf912
00000813  16                push ss
00000814  57                push di
00000815  B000              mov al,0x0
00000817  50                push ax
00000818  9A9701BB07        call word 0x7bb:word 0x197
0000081D  8B7E04            mov di,[bp+0x4]
00000820  368D856EF9        lea ax,[ss:di-0x692]
00000825  8CD2              mov dx,ss
00000827  52                push dx
00000828  50                push ax
00000829  B80100            mov ax,0x1
0000082C  50                push ax
0000082D  B80100            mov ax,0x1
00000830  50                push ax
00000831  8B7E04            mov di,[bp+0x4]
00000834  36FFB512F9        push word [ss:di-0x6ee]
00000839  8B7E04            mov di,[bp+0x4]
0000083C  36FFB516F9        push word [ss:di-0x6ea]
00000841  36FFB514F9        push word [ss:di-0x6ec]
00000846  9A0C0EDC07        call word 0x7dc:word 0xe0c
0000084B  FF7604            push word [bp+0x4]
0000084E  E813FC            call 0x464
00000851  8B7E04            mov di,[bp+0x4]
00000854  36807D0E00        cmp byte [ss:di+0xe],0x0
00000859  7529              jnz 0x884
0000085B  8B7E04            mov di,[bp+0x4]
0000085E  368D856EF9        lea ax,[ss:di-0x692]
00000863  8CD2              mov dx,ss
00000865  52                push dx
00000866  50                push ax
00000867  8B7E04            mov di,[bp+0x4]
0000086A  81C710F8          add di,0xf810
0000086E  16                push ss
0000086F  57                push di
00000870  8B7E04            mov di,[bp+0x4]
00000873  81C712F8          add di,0xf812
00000877  16                push ss
00000878  57                push di
00000879  9A8B0EDC07        call word 0x7dc:word 0xe8b
0000087E  FF7604            push word [bp+0x4]
00000881  E86CFD            call 0x5f0
00000884  EB14              jmp 0x89a
00000886  8B7E04            mov di,[bp+0x4]
00000889  81C7FFFB          add di,0xfbff
0000088D  16                push ss
0000088E  57                push di
0000088F  9A461C561A        call word 0x1a56:word 0x1c46
00000894  FF7604            push word [bp+0x4]
00000897  E8CAFB            call 0x464
0000089A  89EC              mov sp,bp
0000089C  5D                pop bp
0000089D  C20600            ret word 0x6
000008A0  55                push bp
000008A1  89E5              mov bp,sp
000008A3  81EC0103          sub sp,0x301
000008A7  B80F00            mov ax,0xf
000008AA  50                push ax
000008AB  B80900            mov ax,0x9
000008AE  50                push ax
000008AF  B000              mov al,0x0
000008B1  50                push ax
000008B2  9A5000210A        call word 0xa21:word 0x50
000008B7  8B7E04            mov di,[bp+0x4]
000008BA  81C7FCFB          add di,0xfbfc
000008BE  16                push ss
000008BF  57                push di
000008C0  8DBE00FE          lea di,[bp-0x200]
000008C4  16                push ss
000008C5  57                push di
000008C6  B8FF00            mov ax,0xff
000008C9  50                push ax
000008CA  9AAD06561A        call word 0x1a56:word 0x6ad
000008CF  8D8600FE          lea ax,[bp-0x200]
000008D3  8CD2              mov dx,ss
000008D5  52                push dx
000008D6  50                push ax
000008D7  B80100            mov ax,0x1
000008DA  50                push ax
000008DB  B80100            mov ax,0x1
000008DE  50                push ax
000008DF  B80400            mov ax,0x4
000008E2  50                push ax
000008E3  9A0000210A        call word 0xa21:word 0x0
000008E8  8BD8              mov bx,ax
000008EA  8B7E04            mov di,[bp+0x4]
000008ED  368B8582FA        mov ax,[ss:di-0x57e]
000008F2  99                cwd
000008F3  B90200            mov cx,0x2
000008F6  F7F9              idiv cx
000008F8  8BD0              mov dx,ax
000008FA  8B7E04            mov di,[bp+0x4]
000008FD  368B85DAFA        mov ax,[ss:di-0x526]
00000902  8B7E04            mov di,[bp+0x4]
00000905  3603857EFA        add ax,[ss:di-0x582]
0000090A  03C2              add ax,dx
0000090C  2BC3              sub ax,bx
0000090E  50                push ax
0000090F  B80800            mov ax,0x8
00000912  50                push ax
00000913  9A2800210A        call word 0xa21:word 0x28
00000918  8BD8              mov bx,ax
0000091A  8B7E04            mov di,[bp+0x4]
0000091D  368B8584FA        mov ax,[ss:di-0x57c]
00000922  99                cwd
00000923  B90200            mov cx,0x2
00000926  F7F9              idiv cx
00000928  8BD0              mov dx,ax
0000092A  8B7E04            mov di,[bp+0x4]
0000092D  368B85DCFA        mov ax,[ss:di-0x524]
00000932  8B7E04            mov di,[bp+0x4]
00000935  36038580FA        add ax,[ss:di-0x580]
0000093A  03C2              add ax,dx
0000093C  2BC3              sub ax,bx
0000093E  50                push ax
0000093F  B80800            mov ax,0x8
00000942  50                push ax
00000943  9A0000210A        call word 0xa21:word 0x0
00000948  50                push ax
00000949  B80F00            mov ax,0xf
0000094C  50                push ax
0000094D  9A2800210A        call word 0xa21:word 0x28
00000952  50                push ax
00000953  B80100            mov ax,0x1
00000956  50                push ax
00000957  B80100            mov ax,0x1
0000095A  50                push ax
0000095B  B001              mov al,0x1
0000095D  50                push ax
0000095E  9A5C015207        call word 0x752:word 0x15c
00000963  8DBEFFFC          lea di,[bp-0x301]
00000967  16                push ss
00000968  57                push di
00000969  8DBE00FE          lea di,[bp-0x200]
0000096D  16                push ss
0000096E  57                push di
0000096F  9A1802C612        call word 0x12c6:word 0x218
00000974  8DBE00FE          lea di,[bp-0x200]
00000978  16                push ss
00000979  57                push di
0000097A  B8FF00            mov ax,0xff
0000097D  50                push ax
0000097E  9AAD06561A        call word 0x1a56:word 0x6ad
00000983  8A8601FE          mov al,[bp-0x1ff]
00000987  30E4              xor ah,ah
00000989  2D4100            sub ax,0x41
0000098C  40                inc ax
0000098D  8886FFFD          mov [bp-0x201],al
00000991  8A86FFFD          mov al,[bp-0x201]
00000995  50                push ax
00000996  8DBE00FF          lea di,[bp-0x100]
0000099A  16                push ss
0000099B  57                push di
0000099C  B8FF00            mov ax,0xff
0000099F  50                push ax
000009A0  9AF51B561A        call word 0x1a56:word 0x1bf5
000009A5  9A6D02561A        call word 0x1a56:word 0x26d
000009AA  09C0              or ax,ax
000009AC  750E              jnz 0x9bc
000009AE  8DBE00FF          lea di,[bp-0x100]
000009B2  16                push ss
000009B3  57                push di
000009B4  FF7604            push word [bp+0x4]
000009B7  E86CFD            call 0x726
000009BA  EB14              jmp 0x9d0
000009BC  8B7E04            mov di,[bp+0x4]
000009BF  81C7FFFB          add di,0xfbff
000009C3  16                push ss
000009C4  57                push di
000009C5  9A461C561A        call word 0x1a56:word 0x1c46
000009CA  FF7604            push word [bp+0x4]
000009CD  E894FA            call 0x464
000009D0  89EC              mov sp,bp
000009D2  5D                pop bp
000009D3  C20200            ret word 0x2
000009D6  013A              add [bp+si],di
000009D8  55                push bp
000009D9  89E5              mov bp,sp
000009DB  81EC0103          sub sp,0x301
000009DF  B80900            mov ax,0x9
000009E2  50                push ax
000009E3  B80900            mov ax,0x9
000009E6  50                push ax
000009E7  B000              mov al,0x0
000009E9  50                push ax
000009EA  9A5000210A        call word 0xa21:word 0x50
000009EF  B80100            mov ax,0x1
000009F2  50                push ax
000009F3  9A0000210A        call word 0xa21:word 0x0
000009F8  8BD0              mov dx,ax
000009FA  8B7E04            mov di,[bp+0x4]
000009FD  368B85DAFA        mov ax,[ss:di-0x526]
00000A02  8B7E04            mov di,[bp+0x4]
00000A05  3603859EFA        add ax,[ss:di-0x562]
00000A0A  03C2              add ax,dx
00000A0C  50                push ax
00000A0D  B80100            mov ax,0x1
00000A10  50                push ax
00000A11  9A2800210A        call word 0xa21:word 0x28
00000A16  8BD0              mov dx,ax
00000A18  8B7E04            mov di,[bp+0x4]
00000A1B  368B85DCFA        mov ax,[ss:di-0x524]
00000A20  8B7E04            mov di,[bp+0x4]
00000A23  360385A0FA        add ax,[ss:di-0x560]
00000A28  03C2              add ax,dx
00000A2A  50                push ax
00000A2B  B80200            mov ax,0x2
00000A2E  50                push ax
00000A2F  9A0000210A        call word 0xa21:word 0x0
00000A34  8BD0              mov dx,ax
00000A36  8B7E04            mov di,[bp+0x4]
00000A39  368B85A2FA        mov ax,[ss:di-0x55e]
00000A3E  2BC2              sub ax,dx
00000A40  50                push ax
00000A41  B80200            mov ax,0x2
00000A44  50                push ax
00000A45  9A2800210A        call word 0xa21:word 0x28
00000A4A  8BD0              mov dx,ax
00000A4C  8B7E04            mov di,[bp+0x4]
00000A4F  368B85A4FA        mov ax,[ss:di-0x55c]
00000A54  2BC2              sub ax,dx
00000A56  50                push ax
00000A57  9A0124430E        call word 0xe43:word 0x2401
00000A5C  B80F00            mov ax,0xf
00000A5F  50                push ax
00000A60  9A7F1A430E        call word 0xe43:word 0x1a7f
00000A65  8B7E04            mov di,[bp+0x4]
00000A68  81C7FCFA          add di,0xfafc
00000A6C  16                push ss
00000A6D  57                push di
00000A6E  8DBE00FE          lea di,[bp-0x200]
00000A72  16                push ss
00000A73  57                push di
00000A74  B8FF00            mov ax,0xff
00000A77  50                push ax
00000A78  9AAD06561A        call word 0x1a56:word 0x6ad
00000A7D  8D8600FE          lea ax,[bp-0x200]
00000A81  8CD2              mov dx,ss
00000A83  52                push dx
00000A84  50                push ax
00000A85  B80E00            mov ax,0xe
00000A88  50                push ax
00000A89  B80100            mov ax,0x1
00000A8C  50                push ax
00000A8D  B80400            mov ax,0x4
00000A90  50                push ax
00000A91  9A0000210A        call word 0xa21:word 0x0
00000A96  8BD0              mov dx,ax
00000A98  8B7E04            mov di,[bp+0x4]
00000A9B  368B85DAFA        mov ax,[ss:di-0x526]
00000AA0  8B7E04            mov di,[bp+0x4]
00000AA3  3603859EFA        add ax,[ss:di-0x562]
00000AA8  03C2              add ax,dx
00000AAA  50                push ax
00000AAB  B80800            mov ax,0x8
00000AAE  50                push ax
00000AAF  9A2800210A        call word 0xa21:word 0x28
00000AB4  8BD8              mov bx,ax
00000AB6  8B7E04            mov di,[bp+0x4]
00000AB9  368B85A4FA        mov ax,[ss:di-0x55c]
00000ABE  99                cwd
00000ABF  B90200            mov cx,0x2
00000AC2  F7F9              idiv cx
00000AC4  8BD0              mov dx,ax
00000AC6  8B7E04            mov di,[bp+0x4]
00000AC9  368B85DCFA        mov ax,[ss:di-0x524]
00000ACE  8B7E04            mov di,[bp+0x4]
00000AD1  360385A0FA        add ax,[ss:di-0x560]
00000AD6  03C2              add ax,dx
00000AD8  2BC3              sub ax,bx
00000ADA  50                push ax
00000ADB  B80800            mov ax,0x8
00000ADE  50                push ax
00000ADF  9A0000210A        call word 0xa21:word 0x0
00000AE4  50                push ax
00000AE5  B80F00            mov ax,0xf
00000AE8  50                push ax
00000AE9  9A2800210A        call word 0xa21:word 0x28
00000AEE  50                push ax
00000AEF  8A8600FE          mov al,[bp-0x200]
00000AF3  30E4              xor ah,ah
00000AF5  40                inc ax
00000AF6  50                push ax
00000AF7  B80100            mov ax,0x1
00000AFA  50                push ax
00000AFB  B001              mov al,0x1
00000AFD  50                push ax
00000AFE  9A5C015207        call word 0x752:word 0x15c
00000B03  8DBEFFFC          lea di,[bp-0x301]
00000B07  16                push ss
00000B08  57                push di
00000B09  8DBE00FE          lea di,[bp-0x200]
00000B0D  16                push ss
00000B0E  57                push di
00000B0F  9A1802C612        call word 0x12c6:word 0x218
00000B14  8DBE00FF          lea di,[bp-0x100]
00000B18  16                push ss
00000B19  57                push di
00000B1A  B8FF00            mov ax,0xff
00000B1D  50                push ax
00000B1E  9AAD06561A        call word 0x1a56:word 0x6ad
00000B23  8DBEFFFC          lea di,[bp-0x301]
00000B27  16                push ss
00000B28  57                push di
00000B29  8B7E04            mov di,[bp+0x4]
00000B2C  81C7FCFB          add di,0xfbfc
00000B30  16                push ss
00000B31  57                push di
00000B32  9A9306561A        call word 0x1a56:word 0x693
00000B37  BFD609            mov di,0x9d6
00000B3A  0E                push cs
00000B3B  57                push di
00000B3C  9A2007561A        call word 0x1a56:word 0x720
00000B41  8DBE00FF          lea di,[bp-0x100]
00000B45  16                push ss
00000B46  57                push di
00000B47  9A2007561A        call word 0x1a56:word 0x720
00000B4C  FF7604            push word [bp+0x4]
00000B4F  E8D4FB            call 0x726
00000B52  89EC              mov sp,bp
00000B54  5D                pop bp
00000B55  C20200            ret word 0x2
00000B58  55                push bp
00000B59  89E5              mov bp,sp
00000B5B  81EC0003          sub sp,0x300
00000B5F  8B7E04            mov di,[bp+0x4]
00000B62  36807D0E00        cmp byte [ss:di+0xe],0x0
00000B67  7503              jnz 0xb6c
00000B69  E96F01            jmp 0xcdb
00000B6C  B80900            mov ax,0x9
00000B6F  50                push ax
00000B70  B80900            mov ax,0x9
00000B73  50                push ax
00000B74  B000              mov al,0x0
00000B76  50                push ax
00000B77  9A5000210A        call word 0xa21:word 0x50
00000B7C  B80100            mov ax,0x1
00000B7F  50                push ax
00000B80  9A0000210A        call word 0xa21:word 0x0
00000B85  8BD0              mov dx,ax
00000B87  8B7E04            mov di,[bp+0x4]
00000B8A  368B85DAFA        mov ax,[ss:di-0x526]
00000B8F  8B7E04            mov di,[bp+0x4]
00000B92  360385BEFA        add ax,[ss:di-0x542]
00000B97  03C2              add ax,dx
00000B99  50                push ax
00000B9A  B80100            mov ax,0x1
00000B9D  50                push ax
00000B9E  9A2800210A        call word 0xa21:word 0x28
00000BA3  8BD0              mov dx,ax
00000BA5  8B7E04            mov di,[bp+0x4]
00000BA8  368B85DCFA        mov ax,[ss:di-0x524]
00000BAD  8B7E04            mov di,[bp+0x4]
00000BB0  360385C0FA        add ax,[ss:di-0x540]
00000BB5  03C2              add ax,dx
00000BB7  50                push ax
00000BB8  B80200            mov ax,0x2
00000BBB  50                push ax
00000BBC  9A0000210A        call word 0xa21:word 0x0
00000BC1  8BD0              mov dx,ax
00000BC3  8B7E04            mov di,[bp+0x4]
00000BC6  368B85C2FA        mov ax,[ss:di-0x53e]
00000BCB  2BC2              sub ax,dx
00000BCD  50                push ax
00000BCE  B80200            mov ax,0x2
00000BD1  50                push ax
00000BD2  9A2800210A        call word 0xa21:word 0x28
00000BD7  8BD0              mov dx,ax
00000BD9  8B7E04            mov di,[bp+0x4]
00000BDC  368B85C4FA        mov ax,[ss:di-0x53c]
00000BE1  2BC2              sub ax,dx
00000BE3  50                push ax
00000BE4  9A0124430E        call word 0xe43:word 0x2401
00000BE9  B80F00            mov ax,0xf
00000BEC  50                push ax
00000BED  9A7F1A430E        call word 0xe43:word 0x1a7f
00000BF2  8B7E04            mov di,[bp+0x4]
00000BF5  81C712F8          add di,0xf812
00000BF9  16                push ss
00000BFA  57                push di
00000BFB  8DBE00FF          lea di,[bp-0x100]
00000BFF  16                push ss
00000C00  57                push di
00000C01  B8FF00            mov ax,0xff
00000C04  50                push ax
00000C05  9AAD06561A        call word 0x1a56:word 0x6ad
00000C0A  8D8600FF          lea ax,[bp-0x100]
00000C0E  8CD2              mov dx,ss
00000C10  52                push dx
00000C11  50                push ax
00000C12  B80800            mov ax,0x8
00000C15  50                push ax
00000C16  B80100            mov ax,0x1
00000C19  50                push ax
00000C1A  B80800            mov ax,0x8
00000C1D  50                push ax
00000C1E  9A0000210A        call word 0xa21:word 0x0
00000C23  B90200            mov cx,0x2
00000C26  D3E0              shl ax,cl
00000C28  8BD8              mov bx,ax
00000C2A  8B7E04            mov di,[bp+0x4]
00000C2D  368B85C2FA        mov ax,[ss:di-0x53e]
00000C32  99                cwd
00000C33  B90200            mov cx,0x2
00000C36  F7F9              idiv cx
00000C38  8BD0              mov dx,ax
00000C3A  8B7E04            mov di,[bp+0x4]
00000C3D  368B85DAFA        mov ax,[ss:di-0x526]
00000C42  8B7E04            mov di,[bp+0x4]
00000C45  360385BEFA        add ax,[ss:di-0x542]
00000C4A  03C2              add ax,dx
00000C4C  2BC3              sub ax,bx
00000C4E  50                push ax
00000C4F  B80800            mov ax,0x8
00000C52  50                push ax
00000C53  9A2800210A        call word 0xa21:word 0x28
00000C58  8BD8              mov bx,ax
00000C5A  8B7E04            mov di,[bp+0x4]
00000C5D  368B85C4FA        mov ax,[ss:di-0x53c]
00000C62  99                cwd
00000C63  B90200            mov cx,0x2
00000C66  F7F9              idiv cx
00000C68  8BD0              mov dx,ax
00000C6A  8B7E04            mov di,[bp+0x4]
00000C6D  368B85DCFA        mov ax,[ss:di-0x524]
00000C72  8B7E04            mov di,[bp+0x4]
00000C75  360385C0FA        add ax,[ss:di-0x540]
00000C7A  03C2              add ax,dx
00000C7C  2BC3              sub ax,bx
00000C7E  50                push ax
00000C7F  B80800            mov ax,0x8
00000C82  50                push ax
00000C83  9A0000210A        call word 0xa21:word 0x0
00000C88  50                push ax
00000C89  B80F00            mov ax,0xf
00000C8C  50                push ax
00000C8D  9A2800210A        call word 0xa21:word 0x28
00000C92  50                push ax
00000C93  8A8600FF          mov al,[bp-0x100]
00000C97  30E4              xor ah,ah
00000C99  40                inc ax
00000C9A  50                push ax
00000C9B  B80100            mov ax,0x1
00000C9E  50                push ax
00000C9F  B001              mov al,0x1
00000CA1  50                push ax
00000CA2  9A5C015207        call word 0x752:word 0x15c
00000CA7  8DBE00FD          lea di,[bp-0x300]
00000CAB  16                push ss
00000CAC  57                push di
00000CAD  8DBE00FE          lea di,[bp-0x200]
00000CB1  16                push ss
00000CB2  57                push di
00000CB3  8DBE00FF          lea di,[bp-0x100]
00000CB7  16                push ss
00000CB8  57                push di
00000CB9  9AA401C612        call word 0x12c6:word 0x1a4
00000CBE  9AEE00C612        call word 0x12c6:word 0xee
00000CC3  8B7E04            mov di,[bp+0x4]
00000CC6  81C712F8          add di,0xf812
00000CCA  16                push ss
00000CCB  57                push di
00000CCC  B8FF00            mov ax,0xff
00000CCF  50                push ax
00000CD0  9AAD06561A        call word 0x1a56:word 0x6ad
00000CD5  FF7604            push word [bp+0x4]
00000CD8  E815F9            call 0x5f0
00000CDB  89EC              mov sp,bp
00000CDD  5D                pop bp
00000CDE  C20200            ret word 0x2
00000CE1  55                push bp
00000CE2  89E5              mov bp,sp
00000CE4  81ECF008          sub sp,0x8f0
00000CE8  C47E10            les di,word [bp+0x10]
00000CEB  06                push es
00000CEC  57                push di
00000CED  8DBEFFFC          lea di,[bp-0x301]
00000CF1  16                push ss
00000CF2  57                push di
00000CF3  B8FF00            mov ax,0xff
00000CF6  50                push ax
00000CF7  9AAD06561A        call word 0x1a56:word 0x6ad
00000CFC  C47E14            les di,word [bp+0x14]
00000CFF  06                push es
00000D00  57                push di
00000D01  8DBEFFFD          lea di,[bp-0x201]
00000D05  16                push ss
00000D06  57                push di
00000D07  B8FF00            mov ax,0xff
00000D0A  50                push ax
00000D0B  9AAD06561A        call word 0x1a56:word 0x6ad
00000D10  C47E1C            les di,word [bp+0x1c]
00000D13  06                push es
00000D14  57                push di
00000D15  8DBEFFFE          lea di,[bp-0x101]
00000D19  16                push ss
00000D1A  57                push di
00000D1B  B8FF00            mov ax,0xff
00000D1E  50                push ax
00000D1F  9AAD06561A        call word 0x1a56:word 0x6ad
00000D24  B000              mov al,0x0
00000D26  50                push ax
00000D27  8DBEFFFB          lea di,[bp-0x401]
00000D2B  16                push ss
00000D2C  57                push di
00000D2D  B8FF00            mov ax,0xff
00000D30  50                push ax
00000D31  9AF51B561A        call word 0x1a56:word 0x1bf5
00000D36  8DBE10F7          lea di,[bp-0x8f0]
00000D3A  16                push ss
00000D3B  57                push di
00000D3C  8DBEFFFB          lea di,[bp-0x401]
00000D40  16                push ss
00000D41  57                push di
00000D42  B80100            mov ax,0x1
00000D45  50                push ax
00000D46  B80100            mov ax,0x1
00000D49  50                push ax
00000D4A  9ADF06561A        call word 0x1a56:word 0x6df
00000D4F  8DBEFCFB          lea di,[bp-0x404]
00000D53  16                push ss
00000D54  57                push di
00000D55  B80100            mov ax,0x1
00000D58  50                push ax
00000D59  9AAD06561A        call word 0x1a56:word 0x6ad
00000D5E  8A86FDFB          mov al,[bp-0x403]
00000D62  30E4              xor ah,ah
00000D64  2D4100            sub ax,0x41
00000D67  40                inc ax
00000D68  8886FEFB          mov [bp-0x402],al
00000D6C  8DBE10F7          lea di,[bp-0x8f0]
00000D70  16                push ss
00000D71  57                push di
00000D72  8DBEFFFB          lea di,[bp-0x401]
00000D76  16                push ss
00000D77  57                push di
00000D78  B80300            mov ax,0x3
00000D7B  50                push ax
00000D7C  8A86FFFB          mov al,[bp-0x401]
00000D80  30E4              xor ah,ah
00000D82  2D0200            sub ax,0x2
00000D85  50                push ax
00000D86  9ADF06561A        call word 0x1a56:word 0x6df
00000D8B  8DBEFCFA          lea di,[bp-0x504]
00000D8F  16                push ss
00000D90  57                push di
00000D91  B8FF00            mov ax,0xff
00000D94  50                push ax
00000D95  9AAD06561A        call word 0x1a56:word 0x6ad
00000D9A  8DBEFFFE          lea di,[bp-0x101]
00000D9E  16                push ss
00000D9F  57                push di
00000DA0  8DBE14F9          lea di,[bp-0x6ec]
00000DA4  16                push ss
00000DA5  57                push di
00000DA6  8DBE12F9          lea di,[bp-0x6ee]
00000DAA  16                push ss
00000DAB  57                push di
00000DAC  B000              mov al,0x0
00000DAE  50                push ax
00000DAF  9A9701BB07        call word 0x7bb:word 0x197
00000DB4  55                push bp
00000DB5  E848F2            call 0x0
00000DB8  807E0E00          cmp byte [bp+0xe],0x0
00000DBC  7416              jz 0xdd4
00000DBE  C47E18            les di,word [bp+0x18]
00000DC1  06                push es
00000DC2  57                push di
00000DC3  8DBE12F8          lea di,[bp-0x7ee]
00000DC7  16                push ss
00000DC8  57                push di
00000DC9  B8FF00            mov ax,0xff
00000DCC  50                push ax
00000DCD  9AAD06561A        call word 0x1a56:word 0x6ad
00000DD2  EB19              jmp 0xded
00000DD4  8D866EF9          lea ax,[bp-0x692]
00000DD8  8CD2              mov dx,ss
00000DDA  52                push dx
00000DDB  50                push ax
00000DDC  8DBE10F8          lea di,[bp-0x7f0]
00000DE0  16                push ss
00000DE1  57                push di
00000DE2  8DBE12F8          lea di,[bp-0x7ee]
00000DE6  16                push ss
00000DE7  57                push di
00000DE8  9A8B0EDC07        call word 0x7dc:word 0xe8b
00000DED  55                push bp
00000DEE  E80FF9            call 0x700
00000DF1  FF760C            push word [bp+0xc]
00000DF4  FF760A            push word [bp+0xa]
00000DF7  9A0D16210A        call word 0xa21:word 0x160d
00000DFC  898618F9          mov [bp-0x6e8],ax
00000E00  8B8618F9          mov ax,[bp-0x6e8]
00000E04  3D0100            cmp ax,0x1
00000E07  7C35              jl 0xe3e
00000E09  3D0A00            cmp ax,0xa
00000E0C  7F30              jg 0xe3e
00000E0E  8D866EF9          lea ax,[bp-0x692]
00000E12  8CD2              mov dx,ss
00000E14  52                push dx
00000E15  50                push ax
00000E16  FFB618F9          push word [bp-0x6e8]
00000E1A  9A8C0DDC07        call word 0x7dc:word 0xd8c
00000E1F  8D866EF9          lea ax,[bp-0x692]
00000E23  8CD2              mov dx,ss
00000E25  52                push dx
00000E26  50                push ax
00000E27  8DBE10F8          lea di,[bp-0x7f0]
00000E2B  16                push ss
00000E2C  57                push di
00000E2D  8DBE12F8          lea di,[bp-0x7ee]
00000E31  16                push ss
00000E32  57                push di
00000E33  9A8B0EDC07        call word 0x7dc:word 0xe8b
00000E38  55                push bp
00000E39  E8B4F7            call 0x5f0
00000E3C  EB1F              jmp 0xe5d
00000E3E  3D0D00            cmp ax,0xd
00000E41  7506              jnz 0xe49
00000E43  55                push bp
00000E44  E859FA            call 0x8a0
00000E47  EB14              jmp 0xe5d
00000E49  3D0E00            cmp ax,0xe
00000E4C  7506              jnz 0xe54
00000E4E  55                push bp
00000E4F  E886FB            call 0x9d8
00000E52  EB09              jmp 0xe5d
00000E54  3D0F00            cmp ax,0xf
00000E57  7504              jnz 0xe5d
00000E59  55                push bp
00000E5A  E8FBFC            call 0xb58
00000E5D  83BE18F90B        cmp word [bp-0x6e8],0xb
00000E62  7407              jz 0xe6b
00000E64  83BE18F90C        cmp word [bp-0x6e8],0xc
00000E69  7586              jnz 0xdf1
00000E6B  83BE18F90B        cmp word [bp-0x6e8],0xb
00000E70  7514              jnz 0xe86
00000E72  8DBE12F8          lea di,[bp-0x7ee]
00000E76  16                push ss
00000E77  57                push di
00000E78  C47E18            les di,word [bp+0x18]
00000E7B  06                push es
00000E7C  57                push di
00000E7D  B8FF00            mov ax,0xff
00000E80  50                push ax
00000E81  9AAD06561A        call word 0x1a56:word 0x6ad
00000E86  8DBE14F9          lea di,[bp-0x6ec]
00000E8A  16                push ss
00000E8B  57                push di
00000E8C  9A0000BB07        call word 0x7bb:word 0x0
00000E91  FF760C            push word [bp+0xc]
00000E94  FF760A            push word [bp+0xa]
00000E97  8D86DAFA          lea ax,[bp-0x526]
00000E9B  8CD2              mov dx,ss
00000E9D  52                push dx
00000E9E  50                push ax
00000E9F  9A9109210A        call word 0xa21:word 0x991
00000EA4  8D866EF9          lea ax,[bp-0x692]
00000EA8  8CD2              mov dx,ss
00000EAA  52                push dx
00000EAB  50                push ax
00000EAC  9AF20EDC07        call word 0x7dc:word 0xef2
00000EB1  83BE18F90B        cmp word [bp-0x6e8],0xb
00000EB6  7404              jz 0xebc
00000EB8  B000              mov al,0x0
00000EBA  EB02              jmp 0xebe
00000EBC  B001              mov al,0x1
00000EBE  8846FF            mov [bp-0x1],al
00000EC1  8A46FF            mov al,[bp-0x1]
00000EC4  89EC              mov sp,bp
00000EC6  5D                pop bp
00000EC7  CA1A00            retf word 0x1a
00000ECA  0000              add [bx+si],al
00000ECC  0000              add [bx+si],al
00000ECE  0000              add [bx+si],al
