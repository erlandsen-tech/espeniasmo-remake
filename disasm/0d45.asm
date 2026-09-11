00000000  015C0C            add [si+0xc],bx
00000003  7365              jnc 0x6a
00000005  676D              a32 insw
00000007  656E              gs outsb
00000009  7473              jz 0x7e
0000000B  2E7365            {pn} jnc 0x73
0000000E  6755              a32 push bp
00000010  89E5              mov bp,sp
00000012  81EC0202          sub sp,0x202
00000016  837E0600          cmp word [bp+0x6],0x0
0000001A  7E06              jng 0x22
0000001C  8B4606            mov ax,[bp+0x6]
0000001F  A34063            mov [0x6340],ax
00000022  807E0810          cmp byte [bp+0x8],0x10
00000026  7604              jna 0x2c
00000028  C6460810          mov byte [bp+0x8],0x10
0000002C  807E0800          cmp byte [bp+0x8],0x0
00000030  7504              jnz 0x36
00000032  C6460801          mov byte [bp+0x8],0x1
00000036  8A4608            mov al,[bp+0x8]
00000039  30E4              xor ah,ah
0000003B  48                dec ax
0000003C  8986FCFE          mov [bp-0x104],ax
00000040  31C0              xor ax,ax
00000042  3B86FCFE          cmp ax,[bp-0x104]
00000046  7F4B              jg 0x93
00000048  8946FE            mov [bp-0x2],ax
0000004B  EB03              jmp 0x50
0000004D  FF46FE            inc word [bp-0x2]
00000050  8B7EFE            mov di,[bp-0x2]
00000053  D1E7              shl di,1
00000055  8BF7              mov si,di
00000057  D1E7              shl di,1
00000059  03FE              add di,si
0000005B  81C74363          add di,0x6343
0000005F  1E                push ds
00000060  57                push di
00000061  FF364063          push word [0x6340]
00000065  9A8E03561A        call word 0x1a56:word 0x38e
0000006A  8B7EFE            mov di,[bp-0x2]
0000006D  D1E7              shl di,1
0000006F  8BF7              mov si,di
00000071  D1E7              shl di,1
00000073  03FE              add di,si
00000075  C6854763FF        mov byte [di+0x6347],0xff
0000007A  8B7EFE            mov di,[bp-0x2]
0000007D  D1E7              shl di,1
0000007F  8BF7              mov si,di
00000081  D1E7              shl di,1
00000083  03FE              add di,si
00000085  C6854863FF        mov byte [di+0x6348],0xff
0000008A  8B46FE            mov ax,[bp-0x2]
0000008D  3B86FCFE          cmp ax,[bp-0x104]
00000091  75BA              jnz 0x4d
00000093  8A4608            mov al,[bp+0x8]
00000096  A24263            mov [0x6342],al
00000099  C606A36300        mov byte [0x63a3],0x0
0000009E  B000              mov al,0x0
000000A0  50                push ax
000000A1  8DBEFEFE          lea di,[bp-0x102]
000000A5  16                push ss
000000A6  57                push di
000000A7  B8FF00            mov ax,0xff
000000AA  50                push ax
000000AB  9AF51B561A        call word 0x1a56:word 0x1bf5
000000B0  8DBEFEFD          lea di,[bp-0x202]
000000B4  16                push ss
000000B5  57                push di
000000B6  8DBEFEFE          lea di,[bp-0x102]
000000BA  16                push ss
000000BB  57                push di
000000BC  9A9306561A        call word 0x1a56:word 0x693
000000C1  BF0000            mov di,0x0
000000C4  0E                push cs
000000C5  57                push di
000000C6  9A2007561A        call word 0x1a56:word 0x720
000000CB  BF0200            mov di,0x2
000000CE  0E                push cs
000000CF  57                push di
000000D0  9A2007561A        call word 0x1a56:word 0x720
000000D5  8DBEFEFE          lea di,[bp-0x102]
000000D9  16                push ss
000000DA  57                push di
000000DB  B8FF00            mov ax,0xff
000000DE  50                push ax
000000DF  9AAD06561A        call word 0x1a56:word 0x6ad
000000E4  BFA465            mov di,0x65a4
000000E7  1E                push ds
000000E8  57                push di
000000E9  8DBEFEFE          lea di,[bp-0x102]
000000ED  16                push ss
000000EE  57                push di
000000EF  9AC618561A        call word 0x1a56:word 0x18c6
000000F4  BFA465            mov di,0x65a4
000000F7  1E                push ds
000000F8  57                push di
000000F9  B80100            mov ax,0x1
000000FC  50                push ax
000000FD  9AFD18561A        call word 0x1a56:word 0x18fd
00000102  89EC              mov sp,bp
00000104  5D                pop bp
00000105  CA0400            retf word 0x4
00000108  55                push bp
00000109  89E5              mov bp,sp
0000010B  83EC04            sub sp,0x4
0000010E  31C0              xor ax,ax
00000110  8946FC            mov [bp-0x4],ax
00000113  A04263            mov al,[0x6342]
00000116  30E4              xor ah,ah
00000118  3B46FC            cmp ax,[bp-0x4]
0000011B  7E17              jng 0x134
0000011D  8B7EFC            mov di,[bp-0x4]
00000120  D1E7              shl di,1
00000122  8BF7              mov si,di
00000124  D1E7              shl di,1
00000126  03FE              add di,si
00000128  80BD4863FF        cmp byte [di+0x6348],0xff
0000012D  7405              jz 0x134
0000012F  FF46FC            inc word [bp-0x4]
00000132  EBDF              jmp 0x113
00000134  A04263            mov al,[0x6342]
00000137  30E4              xor ah,ah
00000139  3B46FC            cmp ax,[bp-0x4]
0000013C  7507              jnz 0x145
0000013E  C746FEFFFF        mov word [bp-0x2],0xffff
00000143  EB06              jmp 0x14b
00000145  8B46FC            mov ax,[bp-0x4]
00000148  8946FE            mov [bp-0x2],ax
0000014B  8B46FE            mov ax,[bp-0x2]
0000014E  89EC              mov sp,bp
00000150  5D                pop bp
00000151  C3                ret
00000152  55                push bp
00000153  89E5              mov bp,sp
00000155  BFA465            mov di,0x65a4
00000158  1E                push ds
00000159  57                push di
0000015A  A14063            mov ax,[0x6340]
0000015D  99                cwd
0000015E  8BC8              mov cx,ax
00000160  8BDA              mov bx,dx
00000162  8B4604            mov ax,[bp+0x4]
00000165  99                cwd
00000166  9ADC02561A        call word 0x1a56:word 0x2dc
0000016B  52                push dx
0000016C  50                push ax
0000016D  9A421A561A        call word 0x1a56:word 0x1a42
00000172  BFA465            mov di,0x65a4
00000175  1E                push ds
00000176  57                push di
00000177  8B7E04            mov di,[bp+0x4]
0000017A  D1E7              shl di,1
0000017C  D1E7              shl di,1
0000017E  8A85A663          mov al,[di+0x63a6]
00000182  98                cbw
00000183  8BF8              mov di,ax
00000185  D1E7              shl di,1
00000187  8BF7              mov si,di
00000189  D1E7              shl di,1
0000018B  03FE              add di,si
0000018D  C4BD4363          les di,word [di+0x6343]
00000191  06                push es
00000192  57                push di
00000193  FF364063          push word [0x6340]
00000197  31C0              xor ax,ax
00000199  50                push ax
0000019A  50                push ax
0000019B  9AE119561A        call word 0x1a56:word 0x19e1
000001A0  89EC              mov sp,bp
000001A2  5D                pop bp
000001A3  C20200            ret word 0x2
000001A6  55                push bp
000001A7  89E5              mov bp,sp
000001A9  BFA465            mov di,0x65a4
000001AC  1E                push ds
000001AD  57                push di
000001AE  A14063            mov ax,[0x6340]
000001B1  99                cwd
000001B2  8BC8              mov cx,ax
000001B4  8BDA              mov bx,dx
000001B6  8B4606            mov ax,[bp+0x6]
000001B9  99                cwd
000001BA  9ADC02561A        call word 0x1a56:word 0x2dc
000001BF  52                push dx
000001C0  50                push ax
000001C1  9A421A561A        call word 0x1a56:word 0x1a42
000001C6  BFA465            mov di,0x65a4
000001C9  1E                push ds
000001CA  57                push di
000001CB  8B7E04            mov di,[bp+0x4]
000001CE  D1E7              shl di,1
000001D0  8BF7              mov si,di
000001D2  D1E7              shl di,1
000001D4  03FE              add di,si
000001D6  C4BD4363          les di,word [di+0x6343]
000001DA  06                push es
000001DB  57                push di
000001DC  FF364063          push word [0x6340]
000001E0  31C0              xor ax,ax
000001E2  50                push ax
000001E3  50                push ax
000001E4  9ADA19561A        call word 0x1a56:word 0x19da
000001E9  89EC              mov sp,bp
000001EB  5D                pop bp
000001EC  C20400            ret word 0x4
000001EF  55                push bp
000001F0  89E5              mov bp,sp
000001F2  83EC08            sub sp,0x8
000001F5  C47E06            les di,word [bp+0x6]
000001F8  268A05            mov al,[es:di]
000001FB  30E4              xor ah,ah
000001FD  8BF8              mov di,ax
000001FF  D1E7              shl di,1
00000201  D1E7              shl di,1
00000203  80BDA663FF        cmp byte [di+0x63a6],0xff
00000208  7403              jz 0x20d
0000020A  E90E01            jmp 0x31b
0000020D  E8F8FE            call 0x108
00000210  8946FE            mov [bp-0x2],ax
00000213  837EFEFF          cmp word [bp-0x2],0xffffffffffffffff
00000217  7403              jz 0x21c
00000219  E9B900            jmp 0x2d5
0000021C  A04263            mov al,[0x6342]
0000021F  30E4              xor ah,ah
00000221  48                dec ax
00000222  8946F8            mov [bp-0x8],ax
00000225  31C0              xor ax,ax
00000227  3B46F8            cmp ax,[bp-0x8]
0000022A  7F31              jg 0x25d
0000022C  8946FC            mov [bp-0x4],ax
0000022F  EB03              jmp 0x234
00000231  FF46FC            inc word [bp-0x4]
00000234  A04263            mov al,[0x6342]
00000237  30E4              xor ah,ah
00000239  8BD0              mov dx,ax
0000023B  8B7EFC            mov di,[bp-0x4]
0000023E  D1E7              shl di,1
00000240  8BF7              mov si,di
00000242  D1E7              shl di,1
00000244  03FE              add di,si
00000246  8A854763          mov al,[di+0x6347]
0000024A  98                cbw
0000024B  3BC2              cmp ax,dx
0000024D  7506              jnz 0x255
0000024F  8B46FC            mov ax,[bp-0x4]
00000252  8946FE            mov [bp-0x2],ax
00000255  8B46FC            mov ax,[bp-0x4]
00000258  3B46F8            cmp ax,[bp-0x8]
0000025B  75D4              jnz 0x231
0000025D  8B7EFE            mov di,[bp-0x2]
00000260  D1E7              shl di,1
00000262  8BF7              mov si,di
00000264  D1E7              shl di,1
00000266  03FE              add di,si
00000268  8A854863          mov al,[di+0x6348]
0000026C  98                cbw
0000026D  50                push ax
0000026E  E8E1FE            call 0x152
00000271  8B7EFE            mov di,[bp-0x2]
00000274  D1E7              shl di,1
00000276  8BF7              mov si,di
00000278  D1E7              shl di,1
0000027A  03FE              add di,si
0000027C  8A854863          mov al,[di+0x6348]
00000280  98                cbw
00000281  8BF8              mov di,ax
00000283  D1E7              shl di,1
00000285  D1E7              shl di,1
00000287  C685A663FF        mov byte [di+0x63a6],0xff
0000028C  8B7EFE            mov di,[bp-0x2]
0000028F  D1E7              shl di,1
00000291  8BF7              mov si,di
00000293  D1E7              shl di,1
00000295  03FE              add di,si
00000297  8A854863          mov al,[di+0x6348]
0000029B  98                cbw
0000029C  8BF8              mov di,ax
0000029E  D1E7              shl di,1
000002A0  D1E7              shl di,1
000002A2  C685A76301        mov byte [di+0x63a7],0x1
000002A7  C47E06            les di,word [bp+0x6]
000002AA  268A05            mov al,[es:di]
000002AD  30E4              xor ah,ah
000002AF  8BF8              mov di,ax
000002B1  D1E7              shl di,1
000002B3  D1E7              shl di,1
000002B5  80BDA76300        cmp byte [di+0x63a7],0x0
000002BA  740F              jz 0x2cb
000002BC  C47E06            les di,word [bp+0x6]
000002BF  268A05            mov al,[es:di]
000002C2  30E4              xor ah,ah
000002C4  50                push ax
000002C5  FF76FE            push word [bp-0x2]
000002C8  E8DBFE            call 0x1a6
000002CB  A04263            mov al,[0x6342]
000002CE  30E4              xor ah,ah
000002D0  8946FA            mov [bp-0x6],ax
000002D3  EB07              jmp 0x2dc
000002D5  8B46FE            mov ax,[bp-0x2]
000002D8  40                inc ax
000002D9  8946FA            mov [bp-0x6],ax
000002DC  C47E06            les di,word [bp+0x6]
000002DF  268A05            mov al,[es:di]
000002E2  8B7EFE            mov di,[bp-0x2]
000002E5  D1E7              shl di,1
000002E7  8BF7              mov si,di
000002E9  D1E7              shl di,1
000002EB  03FE              add di,si
000002ED  88854863          mov [di+0x6348],al
000002F1  8A56FE            mov dl,[bp-0x2]
000002F4  C47E06            les di,word [bp+0x6]
000002F7  268A05            mov al,[es:di]
000002FA  30E4              xor ah,ah
000002FC  8BF8              mov di,ax
000002FE  D1E7              shl di,1
00000300  D1E7              shl di,1
00000302  8895A663          mov [di+0x63a6],dl
00000306  C47E06            les di,word [bp+0x6]
00000309  268A05            mov al,[es:di]
0000030C  30E4              xor ah,ah
0000030E  8BF8              mov di,ax
00000310  D1E7              shl di,1
00000312  D1E7              shl di,1
00000314  C685A76300        mov byte [di+0x63a7],0x0
00000319  EB29              jmp 0x344
0000031B  C47E06            les di,word [bp+0x6]
0000031E  268A05            mov al,[es:di]
00000321  30E4              xor ah,ah
00000323  8BF8              mov di,ax
00000325  D1E7              shl di,1
00000327  D1E7              shl di,1
00000329  8A85A663          mov al,[di+0x63a6]
0000032D  98                cbw
0000032E  8946FE            mov [bp-0x2],ax
00000331  8B7EFE            mov di,[bp-0x2]
00000334  D1E7              shl di,1
00000336  8BF7              mov si,di
00000338  D1E7              shl di,1
0000033A  03FE              add di,si
0000033C  8A854763          mov al,[di+0x6347]
00000340  98                cbw
00000341  8946FA            mov [bp-0x6],ax
00000344  A04263            mov al,[0x6342]
00000347  30E4              xor ah,ah
00000349  48                dec ax
0000034A  8946F8            mov [bp-0x8],ax
0000034D  31C0              xor ax,ax
0000034F  3B46F8            cmp ax,[bp-0x8]
00000352  7F34              jg 0x388
00000354  8946FC            mov [bp-0x4],ax
00000357  EB03              jmp 0x35c
00000359  FF46FC            inc word [bp-0x4]
0000035C  8B7EFC            mov di,[bp-0x4]
0000035F  D1E7              shl di,1
00000361  8BF7              mov si,di
00000363  D1E7              shl di,1
00000365  03FE              add di,si
00000367  8A854763          mov al,[di+0x6347]
0000036B  98                cbw
0000036C  3B46FA            cmp ax,[bp-0x6]
0000036F  7D0F              jnl 0x380
00000371  8B7EFC            mov di,[bp-0x4]
00000374  D1E7              shl di,1
00000376  8BF7              mov si,di
00000378  D1E7              shl di,1
0000037A  03FE              add di,si
0000037C  FE854763          inc byte [di+0x6347]
00000380  8B46FC            mov ax,[bp-0x4]
00000383  3B46F8            cmp ax,[bp-0x8]
00000386  75D1              jnz 0x359
00000388  8B7EFE            mov di,[bp-0x2]
0000038B  D1E7              shl di,1
0000038D  8BF7              mov si,di
0000038F  D1E7              shl di,1
00000391  03FE              add di,si
00000393  C685476301        mov byte [di+0x6347],0x1
00000398  8B7EFE            mov di,[bp-0x2]
0000039B  D1E7              shl di,1
0000039D  8BF7              mov si,di
0000039F  D1E7              shl di,1
000003A1  03FE              add di,si
000003A3  FFB54563          push word [di+0x6345]
000003A7  FFB54363          push word [di+0x6343]
000003AB  C47E06            les di,word [bp+0x6]
000003AE  26FF7503          push word [es:di+0x3]
000003B2  5B                pop bx
000003B3  58                pop ax
000003B4  5A                pop dx
000003B5  01C3              add bx,ax
000003B7  89D8              mov ax,bx
000003B9  250F00            and ax,0xf
000003BC  D1EB              shr bx,1
000003BE  D1EB              shr bx,1
000003C0  D1EB              shr bx,1
000003C2  D1EB              shr bx,1
000003C4  01DA              add dx,bx
000003C6  C47E06            les di,word [bp+0x6]
000003C9  26894505          mov [es:di+0x5],ax
000003CD  26895507          mov [es:di+0x7],dx
000003D1  89EC              mov sp,bp
000003D3  5D                pop bp
000003D4  CA0400            retf word 0x4
000003D7  55                push bp
000003D8  89E5              mov bp,sp
000003DA  83EC04            sub sp,0x4
000003DD  C646FC00          mov byte [bp-0x4],0x0
000003E1  31C0              xor ax,ax
000003E3  8946FD            mov [bp-0x3],ax
000003E6  A0A363            mov al,[0x63a3]
000003E9  30E4              xor ah,ah
000003EB  3B46FD            cmp ax,[bp-0x3]
000003EE  7E24              jng 0x414
000003F0  807EFC00          cmp byte [bp-0x4],0x0
000003F4  751E              jnz 0x414
000003F6  A14063            mov ax,[0x6340]
000003F9  8B7EFD            mov di,[bp-0x3]
000003FC  D1E7              shl di,1
000003FE  D1E7              shl di,1
00000400  2B85A463          sub ax,[di+0x63a4]
00000404  3B4606            cmp ax,[bp+0x6]
00000407  7C06              jl 0x40f
00000409  C646FC01          mov byte [bp-0x4],0x1
0000040D  EB03              jmp 0x412
0000040F  FF46FD            inc word [bp-0x3]
00000412  EBD2              jmp 0x3e6
00000414  807EFC00          cmp byte [bp-0x4],0x0
00000418  7562              jnz 0x47c
0000041A  817EFD8000        cmp word [bp-0x3],0x80
0000041F  7D5B              jnl 0x47c
00000421  C646FC01          mov byte [bp-0x4],0x1
00000425  FE06A363          inc byte [0x63a3]
00000429  8B7EFD            mov di,[bp-0x3]
0000042C  D1E7              shl di,1
0000042E  D1E7              shl di,1
00000430  31C0              xor ax,ax
00000432  8985A463          mov [di+0x63a4],ax
00000436  8B7EFD            mov di,[bp-0x3]
00000439  D1E7              shl di,1
0000043B  D1E7              shl di,1
0000043D  C685A663FF        mov byte [di+0x63a6],0xff
00000442  8B7EFD            mov di,[bp-0x3]
00000445  D1E7              shl di,1
00000447  D1E7              shl di,1
00000449  C685A76300        mov byte [di+0x63a7],0x0
0000044E  BFA465            mov di,0x65a4
00000451  1E                push ds
00000452  57                push di
00000453  BFA465            mov di,0x65a4
00000456  1E                push ds
00000457  57                push di
00000458  9A891A561A        call word 0x1a56:word 0x1a89
0000045D  52                push dx
0000045E  50                push ax
0000045F  9A421A561A        call word 0x1a56:word 0x1a42
00000464  BFA465            mov di,0x65a4
00000467  1E                push ds
00000468  57                push di
00000469  C43E4363          les di,word [0x6343]
0000046D  06                push es
0000046E  57                push di
0000046F  FF364063          push word [0x6340]
00000473  31C0              xor ax,ax
00000475  50                push ax
00000476  50                push ax
00000477  9AE119561A        call word 0x1a56:word 0x19e1
0000047C  807EFC00          cmp byte [bp-0x4],0x0
00000480  743C              jz 0x4be
00000482  8A46FD            mov al,[bp-0x3]
00000485  C47E08            les di,word [bp+0x8]
00000488  268805            mov [es:di],al
0000048B  8B7EFD            mov di,[bp-0x3]
0000048E  D1E7              shl di,1
00000490  D1E7              shl di,1
00000492  8B85A463          mov ax,[di+0x63a4]
00000496  C47E08            les di,word [bp+0x8]
00000499  26894503          mov [es:di+0x3],ax
0000049D  8B4606            mov ax,[bp+0x6]
000004A0  C47E08            les di,word [bp+0x8]
000004A3  26894501          mov [es:di+0x1],ax
000004A7  8B4606            mov ax,[bp+0x6]
000004AA  8B7EFD            mov di,[bp-0x3]
000004AD  D1E7              shl di,1
000004AF  D1E7              shl di,1
000004B1  0185A463          add [di+0x63a4],ax
000004B5  C47E08            les di,word [bp+0x8]
000004B8  06                push es
000004B9  57                push di
000004BA  0E                push cs
000004BB  E831FD            call 0x1ef
000004BE  8A46FC            mov al,[bp-0x4]
000004C1  8846FF            mov [bp-0x1],al
000004C4  8A46FF            mov al,[bp-0x1]
000004C7  89EC              mov sp,bp
000004C9  5D                pop bp
000004CA  CA0600            retf word 0x6
000004CD  55                push bp
000004CE  89E5              mov bp,sp
000004D0  83EC04            sub sp,0x4
000004D3  BFA465            mov di,0x65a4
000004D6  1E                push ds
000004D7  57                push di
000004D8  9A7519561A        call word 0x1a56:word 0x1975
000004DD  BFA465            mov di,0x65a4
000004E0  1E                push ds
000004E1  57                push di
000004E2  9A001B561A        call word 0x1a56:word 0x1b00
000004E7  A04263            mov al,[0x6342]
000004EA  30E4              xor ah,ah
000004EC  48                dec ax
000004ED  8946FC            mov [bp-0x4],ax
000004F0  31C0              xor ax,ax
000004F2  3B46FC            cmp ax,[bp-0x4]
000004F5  7F2A              jg 0x521
000004F7  8946FE            mov [bp-0x2],ax
000004FA  EB03              jmp 0x4ff
000004FC  FF46FE            inc word [bp-0x2]
000004FF  8B7EFE            mov di,[bp-0x2]
00000502  D1E7              shl di,1
00000504  8BF7              mov si,di
00000506  D1E7              shl di,1
00000508  03FE              add di,si
0000050A  81C74363          add di,0x6343
0000050E  1E                push ds
0000050F  57                push di
00000510  FF364063          push word [0x6340]
00000514  9AC003561A        call word 0x1a56:word 0x3c0
00000519  8B46FE            mov ax,[bp-0x2]
0000051C  3B46FC            cmp ax,[bp-0x4]
0000051F  75DB              jnz 0x4fc
00000521  C606426300        mov byte [0x6342],0x0
00000526  C606A36300        mov byte [0x63a3],0x0
0000052B  89EC              mov sp,bp
0000052D  5D                pop bp
0000052E  CB                retf
0000052F  89E5              mov bp,sp
00000531  C70640630020      mov word [0x6340],0x2000
00000537  89EC              mov sp,bp
00000539  CB                retf
0000053A  0000              add [bx+si],al
0000053C  0000              add [bx+si],al
0000053E  0000              add [bx+si],al
