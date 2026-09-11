00000000  55                push bp
00000001  89E5              mov bp,sp
00000003  83EC10            sub sp,0x10
00000006  FF7606            push word [bp+0x6]
00000009  FF7604            push word [bp+0x4]
0000000C  FF1E7C89          call word far [0x897c]
00000010  08C0              or al,al
00000012  750B              jnz 0x1f
00000014  B003              mov al,0x3
00000016  50                push ax
00000017  B002              mov al,0x2
00000019  50                push ax
0000001A  9A9B009C18        call word 0x189c:word 0x9b
0000001F  31C0              xor ax,ax
00000021  A38089            mov [0x8980],ax
00000024  A38289            mov [0x8982],ax
00000027  C44604            les ax,word [bp+0x4]
0000002A  8CC2              mov dx,es
0000002C  8946F0            mov [bp-0x10],ax
0000002F  8956F2            mov [bp-0xe],dx
00000032  837EF200          cmp word [bp-0xe],0x0
00000036  7F08              jg 0x40
00000038  7C10              jl 0x4a
0000003A  837EF0F1          cmp word [bp-0x10],0xfffffffffffffff1
0000003E  760A              jna 0x4a
00000040  C746F0F1FF        mov word [bp-0x10],0xfff1
00000045  C746F20000        mov word [bp-0xe],0x0
0000004A  C47E08            les di,word [bp+0x8]
0000004D  06                push es
0000004E  57                push di
0000004F  FF76F0            push word [bp-0x10]
00000052  9A8E03561A        call word 0x1a56:word 0x38e
00000057  C47E08            les di,word [bp+0x8]
0000005A  268B05            mov ax,[es:di]
0000005D  260B4502          or ax,[es:di+0x2]
00000061  7502              jnz 0x65
00000063  EBAF              jmp 0x14
00000065  C44604            les ax,word [bp+0x4]
00000068  8CC2              mov dx,es
0000006A  2B46F0            sub ax,[bp-0x10]
0000006D  1B56F2            sbb dx,[bp-0xe]
00000070  8946F4            mov [bp-0xc],ax
00000073  8956F6            mov [bp-0xa],dx
00000076  837EF600          cmp word [bp-0xa],0x0
0000007A  7F0E              jg 0x8a
0000007C  7D03              jnl 0x81
0000007E  E91F01            jmp 0x1a0
00000081  837EF400          cmp word [bp-0xc],0x0
00000085  7703              ja 0x8a
00000087  E91601            jmp 0x1a0
0000008A  C47E08            les di,word [bp+0x8]
0000008D  26C405            les ax,word [es:di]
00000090  8CC2              mov dx,es
00000092  8946F8            mov [bp-0x8],ax
00000095  8956FA            mov [bp-0x6],dx
00000098  C4068089          les ax,word [0x8980]
0000009C  8CC2              mov dx,es
0000009E  C47EF8            les di,word [bp-0x8]
000000A1  268905            mov [es:di],ax
000000A4  26895502          mov [es:di+0x2],dx
000000A8  8B46F0            mov ax,[bp-0x10]
000000AB  C47EF8            les di,word [bp-0x8]
000000AE  26894504          mov [es:di+0x4],ax
000000B2  C446F8            les ax,word [bp-0x8]
000000B5  8CC2              mov dx,es
000000B7  A38089            mov [0x8980],ax
000000BA  89168289          mov [0x8982],dx
000000BE  FF76FA            push word [bp-0x6]
000000C1  FF76F8            push word [bp-0x8]
000000C4  FF76F0            push word [bp-0x10]
000000C7  5B                pop bx
000000C8  58                pop ax
000000C9  5A                pop dx
000000CA  01C3              add bx,ax
000000CC  89D8              mov ax,bx
000000CE  250F00            and ax,0xf
000000D1  D1EB              shr bx,1
000000D3  D1EB              shr bx,1
000000D5  D1EB              shr bx,1
000000D7  D1EB              shr bx,1
000000D9  01DA              add dx,bx
000000DB  8946FC            mov [bp-0x4],ax
000000DE  8956FE            mov [bp-0x2],dx
000000E1  C446F4            les ax,word [bp-0xc]
000000E4  8CC2              mov dx,es
000000E6  8946F0            mov [bp-0x10],ax
000000E9  8956F2            mov [bp-0xe],dx
000000EC  837EF200          cmp word [bp-0xe],0x0
000000F0  7F08              jg 0xfa
000000F2  7C10              jl 0x104
000000F4  837EF0F1          cmp word [bp-0x10],0xfffffffffffffff1
000000F8  760A              jna 0x104
000000FA  C746F0F1FF        mov word [bp-0x10],0xfff1
000000FF  C746F20000        mov word [bp-0xe],0x0
00000104  8D7EF8            lea di,[bp-0x8]
00000107  16                push ss
00000108  57                push di
00000109  FF76F0            push word [bp-0x10]
0000010C  9A8E03561A        call word 0x1a56:word 0x38e
00000111  8B46F8            mov ax,[bp-0x8]
00000114  0B46FA            or ax,[bp-0x6]
00000117  7503              jnz 0x11c
00000119  E9F8FE            jmp 0x14
0000011C  C446F8            les ax,word [bp-0x8]
0000011F  8CC2              mov dx,es
00000121  3B56FE            cmp dx,[bp-0x2]
00000124  7505              jnz 0x12b
00000126  3B46FC            cmp ax,[bp-0x4]
00000129  741A              jz 0x145
0000012B  C44604            les ax,word [bp+0x4]
0000012E  8CC2              mov dx,es
00000130  8946F4            mov [bp-0xc],ax
00000133  8956F6            mov [bp-0xa],dx
00000136  C446F8            les ax,word [bp-0x8]
00000139  8CC2              mov dx,es
0000013B  C47E08            les di,word [bp+0x8]
0000013E  268905            mov [es:di],ax
00000141  26895502          mov [es:di+0x2],dx
00000145  C446F0            les ax,word [bp-0x10]
00000148  8CC2              mov dx,es
0000014A  2946F4            sub [bp-0xc],ax
0000014D  1956F6            sbb [bp-0xa],dx
00000150  8B46F4            mov ax,[bp-0xc]
00000153  0B46F6            or ax,[bp-0xa]
00000156  7403              jz 0x15b
00000158  E93DFF            jmp 0x98
0000015B  C47E08            les di,word [bp+0x8]
0000015E  26C43D            les di,word [es:di]
00000161  26C405            les ax,word [es:di]
00000164  8CC2              mov dx,es
00000166  8946F8            mov [bp-0x8],ax
00000169  8956FA            mov [bp-0x6],dx
0000016C  8B46F8            mov ax,[bp-0x8]
0000016F  0B46FA            or ax,[bp-0x6]
00000172  742C              jz 0x1a0
00000174  C47EF8            les di,word [bp-0x8]
00000177  26C405            les ax,word [es:di]
0000017A  8CC2              mov dx,es
0000017C  8946FC            mov [bp-0x4],ax
0000017F  8956FE            mov [bp-0x2],dx
00000182  8D7EF8            lea di,[bp-0x8]
00000185  16                push ss
00000186  57                push di
00000187  C47EF8            les di,word [bp-0x8]
0000018A  26FF7504          push word [es:di+0x4]
0000018E  9AC003561A        call word 0x1a56:word 0x3c0
00000193  C446FC            les ax,word [bp-0x4]
00000196  8CC2              mov dx,es
00000198  8946F8            mov [bp-0x8],ax
0000019B  8956FA            mov [bp-0x6],dx
0000019E  EBCC              jmp 0x16c
000001A0  89EC              mov sp,bp
000001A2  5D                pop bp
000001A3  C20800            ret word 0x8
000001A6  55                push bp
000001A7  89E5              mov bp,sp
000001A9  83EC06            sub sp,0x6
000001AC  837E0600          cmp word [bp+0x6],0x0
000001B0  7F08              jg 0x1ba
000001B2  7C71              jl 0x225
000001B4  837E0400          cmp word [bp+0x4],0x0
000001B8  766B              jna 0x225
000001BA  837E0600          cmp word [bp+0x6],0x0
000001BE  7F08              jg 0x1c8
000001C0  7C0D              jl 0x1cf
000001C2  837E04F1          cmp word [bp+0x4],0xfffffffffffffff1
000001C6  7207              jc 0x1cf
000001C8  C746FAF1FF        mov word [bp-0x6],0xfff1
000001CD  EB06              jmp 0x1d5
000001CF  8B4604            mov ax,[bp+0x4]
000001D2  8946FA            mov [bp-0x6],ax
000001D5  C47E08            les di,word [bp+0x8]
000001D8  26FF7502          push word [es:di+0x2]
000001DC  26FF35            push word [es:di]
000001DF  FF76FA            push word [bp-0x6]
000001E2  5B                pop bx
000001E3  58                pop ax
000001E4  5A                pop dx
000001E5  01C3              add bx,ax
000001E7  89D8              mov ax,bx
000001E9  250F00            and ax,0xf
000001EC  D1EB              shr bx,1
000001EE  D1EB              shr bx,1
000001F0  D1EB              shr bx,1
000001F2  D1EB              shr bx,1
000001F4  01DA              add dx,bx
000001F6  8946FC            mov [bp-0x4],ax
000001F9  8956FE            mov [bp-0x2],dx
000001FC  C47E08            les di,word [bp+0x8]
000001FF  06                push es
00000200  57                push di
00000201  FF76FA            push word [bp-0x6]
00000204  9AC003561A        call word 0x1a56:word 0x3c0
00000209  8B46FA            mov ax,[bp-0x6]
0000020C  31D2              xor dx,dx
0000020E  294604            sub [bp+0x4],ax
00000211  195606            sbb [bp+0x6],dx
00000214  C446FC            les ax,word [bp-0x4]
00000217  8CC2              mov dx,es
00000219  C47E08            les di,word [bp+0x8]
0000021C  268905            mov [es:di],ax
0000021F  26895502          mov [es:di+0x2],dx
00000223  EB87              jmp 0x1ac
00000225  89EC              mov sp,bp
00000227  5D                pop bp
00000228  C20800            ret word 0x8
0000022B  55                push bp
0000022C  89E5              mov bp,sp
0000022E  83EC02            sub sp,0x2
00000231  C47E08            les di,word [bp+0x8]
00000234  26C7050500        mov word [es:di],0x5
00000239  C47E08            les di,word [bp+0x8]
0000023C  26FF0D            dec word [es:di]
0000023F  8A460C            mov al,[bp+0xc]
00000242  247F              and al,0x7f
00000244  8AD0              mov dl,al
00000246  C47E08            les di,word [bp+0x8]
00000249  268B05            mov ax,[es:di]
0000024C  C47E04            les di,word [bp+0x4]
0000024F  03F8              add di,ax
00000251  268815            mov [es:di],dl
00000254  C4460C            les ax,word [bp+0xc]
00000257  8CC2              mov dx,es
00000259  B90700            mov cx,0x7
0000025C  31DB              xor bx,bx
0000025E  9A6503561A        call word 0x1a56:word 0x365
00000263  89460C            mov [bp+0xc],ax
00000266  89560E            mov [bp+0xe],dx
00000269  8B460C            mov ax,[bp+0xc]
0000026C  0B460E            or ax,[bp+0xe]
0000026F  75C8              jnz 0x239
00000271  C47E08            les di,word [bp+0x8]
00000274  268B05            mov ax,[es:di]
00000277  40                inc ax
00000278  3D0400            cmp ax,0x4
0000027B  7F28              jg 0x2a5
0000027D  8946FE            mov [bp-0x2],ax
00000280  EB03              jmp 0x285
00000282  FF46FE            inc word [bp-0x2]
00000285  8B46FE            mov ax,[bp-0x2]
00000288  C47E04            les di,word [bp+0x4]
0000028B  03F8              add di,ax
0000028D  268A05            mov al,[es:di]
00000290  0C80              or al,0x80
00000292  8AD0              mov dl,al
00000294  8B46FE            mov ax,[bp-0x2]
00000297  C47E04            les di,word [bp+0x4]
0000029A  03F8              add di,ax
0000029C  268815            mov [es:di],dl
0000029F  837EFE04          cmp word [bp-0x2],0x4
000002A3  75DD              jnz 0x282
000002A5  B80500            mov ax,0x5
000002A8  C47E08            les di,word [bp+0x8]
000002AB  262B05            sub ax,[es:di]
000002AE  C47E08            les di,word [bp+0x8]
000002B1  268905            mov [es:di],ax
000002B4  89EC              mov sp,bp
000002B6  5D                pop bp
000002B7  C20C00            ret word 0xc
000002BA  55                push bp
000002BB  89E5              mov bp,sp
000002BD  83EC02            sub sp,0x2
000002C0  C47E08            les di,word [bp+0x8]
000002C3  26C7050400        mov word [es:di],0x4
000002C8  FF4E04            dec word [bp+0x4]
000002CB  C47E04            les di,word [bp+0x4]
000002CE  268A05            mov al,[es:di]
000002D1  2480              and al,0x80
000002D3  08C0              or al,al
000002D5  740B              jz 0x2e2
000002D7  C47E08            les di,word [bp+0x8]
000002DA  26FF0D            dec word [es:di]
000002DD  FF4E04            dec word [bp+0x4]
000002E0  EBE9              jmp 0x2cb
000002E2  C47E0C            les di,word [bp+0xc]
000002E5  31C0              xor ax,ax
000002E7  268905            mov [es:di],ax
000002EA  26894502          mov [es:di+0x2],ax
000002EE  C47E08            les di,word [bp+0x8]
000002F1  268B05            mov ax,[es:di]
000002F4  3D0400            cmp ax,0x4
000002F7  7F41              jg 0x33a
000002F9  8946FE            mov [bp-0x2],ax
000002FC  EB03              jmp 0x301
000002FE  FF46FE            inc word [bp-0x2]
00000301  C47E0C            les di,word [bp+0xc]
00000304  26C405            les ax,word [es:di]
00000307  8CC2              mov dx,es
00000309  B90700            mov cx,0x7
0000030C  31DB              xor bx,bx
0000030E  9A7203561A        call word 0x1a56:word 0x372
00000313  8BC8              mov cx,ax
00000315  8BDA              mov bx,dx
00000317  C47E04            les di,word [bp+0x4]
0000031A  268A05            mov al,[es:di]
0000031D  247F              and al,0x7f
0000031F  30E4              xor ah,ah
00000321  31D2              xor dx,dx
00000323  03C1              add ax,cx
00000325  13D3              adc dx,bx
00000327  C47E0C            les di,word [bp+0xc]
0000032A  268905            mov [es:di],ax
0000032D  26895502          mov [es:di+0x2],dx
00000331  FF4604            inc word [bp+0x4]
00000334  837EFE04          cmp word [bp-0x2],0x4
00000338  75C4              jnz 0x2fe
0000033A  B80500            mov ax,0x5
0000033D  C47E08            les di,word [bp+0x8]
00000340  262B05            sub ax,[es:di]
00000343  C47E08            les di,word [bp+0x8]
00000346  268905            mov [es:di],ax
00000349  89EC              mov sp,bp
0000034B  5D                pop bp
0000034C  C20C00            ret word 0xc
0000034F  55                push bp
00000350  89E5              mov bp,sp
00000352  83EC07            sub sp,0x7
00000355  C47E0A            les di,word [bp+0xa]
00000358  31C0              xor ax,ax
0000035A  268905            mov [es:di],ax
0000035D  26894502          mov [es:di+0x2],ax
00000361  FF7608            push word [bp+0x8]
00000364  FF7606            push word [bp+0x6]
00000367  8D7EFE            lea di,[bp-0x2]
0000036A  16                push ss
0000036B  57                push di
0000036C  8D7EF9            lea di,[bp-0x7]
0000036F  16                push ss
00000370  57                push di
00000371  E8B7FE            call 0x22b
00000374  C47E0A            les di,word [bp+0xa]
00000377  06                push es
00000378  57                push di
00000379  8B46FE            mov ax,[bp-0x2]
0000037C  99                cwd
0000037D  034606            add ax,[bp+0x6]
00000380  135608            adc dx,[bp+0x8]
00000383  52                push dx
00000384  50                push ax
00000385  E878FC            call 0x0
00000388  B80500            mov ax,0x5
0000038B  2B46FE            sub ax,[bp-0x2]
0000038E  8BF8              mov di,ax
00000390  8D7BF9            lea di,[bp+di-0x7]
00000393  16                push ss
00000394  57                push di
00000395  C47E0A            les di,word [bp+0xa]
00000398  26C43D            les di,word [es:di]
0000039B  06                push es
0000039C  57                push di
0000039D  FF76FE            push word [bp-0x2]
000003A0  9A641B561A        call word 0x1a56:word 0x1b64
000003A5  8B46FE            mov ax,[bp-0x2]
000003A8  C47E0A            les di,word [bp+0xa]
000003AB  260105            add [es:di],ax
000003AE  89EC              mov sp,bp
000003B0  5D                pop bp
000003B1  CA0800            retf word 0x8
000003B4  55                push bp
000003B5  89E5              mov bp,sp
000003B7  83EC0B            sub sp,0xb
000003BA  C47E06            les di,word [bp+0x6]
000003BD  268B05            mov ax,[es:di]
000003C0  260B4502          or ax,[es:di+0x2]
000003C4  7456              jz 0x41c
000003C6  8CD0              mov ax,ss
000003C8  C47E06            les di,word [bp+0x6]
000003CB  263B4502          cmp ax,[es:di+0x2]
000003CF  750B              jnz 0x3dc
000003D1  B003              mov al,0x3
000003D3  50                push ax
000003D4  B004              mov al,0x4
000003D6  50                push ax
000003D7  9A9B009C18        call word 0x189c:word 0x9b
000003DC  8D7EF5            lea di,[bp-0xb]
000003DF  16                push ss
000003E0  57                push di
000003E1  8D7EFE            lea di,[bp-0x2]
000003E4  16                push ss
000003E5  57                push di
000003E6  C47E06            les di,word [bp+0x6]
000003E9  26FF7502          push word [es:di+0x2]
000003ED  26FF35            push word [es:di]
000003F0  E8C7FE            call 0x2ba
000003F3  8B46FE            mov ax,[bp-0x2]
000003F6  C47E06            les di,word [bp+0x6]
000003F9  262905            sub [es:di],ax
000003FC  C47E06            les di,word [bp+0x6]
000003FF  06                push es
00000400  57                push di
00000401  8B46FE            mov ax,[bp-0x2]
00000404  99                cwd
00000405  0346F5            add ax,[bp-0xb]
00000408  1356F7            adc dx,[bp-0x9]
0000040B  52                push dx
0000040C  50                push ax
0000040D  E896FD            call 0x1a6
00000410  C47E06            les di,word [bp+0x6]
00000413  31C0              xor ax,ax
00000415  268905            mov [es:di],ax
00000418  26894502          mov [es:di+0x2],ax
0000041C  89EC              mov sp,bp
0000041E  5D                pop bp
0000041F  CA0400            retf word 0x4
00000422  55                push bp
00000423  89E5              mov bp,sp
00000425  83EC0F            sub sp,0xf
00000428  8B4606            mov ax,[bp+0x6]
0000042B  0B4608            or ax,[bp+0x8]
0000042E  750A              jnz 0x43a
00000430  31C0              xor ax,ax
00000432  8946FC            mov [bp-0x4],ax
00000435  8946FE            mov [bp-0x2],ax
00000438  EB32              jmp 0x46c
0000043A  8CD0              mov ax,ss
0000043C  3B4608            cmp ax,[bp+0x8]
0000043F  750D              jnz 0x44e
00000441  B003              mov al,0x3
00000443  50                push ax
00000444  B005              mov al,0x5
00000446  50                push ax
00000447  9A9B009C18        call word 0x189c:word 0x9b
0000044C  EB1E              jmp 0x46c
0000044E  8D7EF1            lea di,[bp-0xf]
00000451  16                push ss
00000452  57                push di
00000453  8D7EFA            lea di,[bp-0x6]
00000456  16                push ss
00000457  57                push di
00000458  FF7608            push word [bp+0x8]
0000045B  FF7606            push word [bp+0x6]
0000045E  E859FE            call 0x2ba
00000461  C446F1            les ax,word [bp-0xf]
00000464  8CC2              mov dx,es
00000466  8946FC            mov [bp-0x4],ax
00000469  8956FE            mov [bp-0x2],dx
0000046C  8B46FC            mov ax,[bp-0x4]
0000046F  8B56FE            mov dx,[bp-0x2]
00000472  89EC              mov sp,bp
00000474  5D                pop bp
00000475  CA0400            retf word 0x4
00000478  55                push bp
00000479  89E5              mov bp,sp
0000047B  89E0              mov ax,sp
0000047D  3B4606            cmp ax,[bp+0x6]
00000480  730B              jnc 0x48d
00000482  B003              mov al,0x3
00000484  50                push ax
00000485  B003              mov al,0x3
00000487  50                push ax
00000488  9A9B009C18        call word 0x189c:word 0x9b
0000048D  89E8              mov ax,bp
0000048F  050C00            add ax,0xc
00000492  2B4606            sub ax,[bp+0x6]
00000495  8CDA              mov dx,ds
00000497  8CD3              mov bx,ss
00000499  C57E08            lds di,word [bp+0x8]
0000049C  895D02            mov [di+0x2],bx
0000049F  8905              mov [di],ax
000004A1  2D0C00            sub ax,0xc
000004A4  89C4              mov sp,ax
000004A6  8EDB              mov ds,bx
000004A8  8EC3              mov es,bx
000004AA  89EE              mov si,bp
000004AC  89C7              mov di,ax
000004AE  B90300            mov cx,0x3
000004B1  F3A5              rep movsw
000004B3  8EDA              mov ds,dx
000004B5  89C5              mov bp,ax
000004B7  89EC              mov sp,bp
000004B9  5D                pop bp
000004BA  CA0600            retf word 0x6
000004BD  55                push bp
000004BE  89E5              mov bp,sp
000004C0  83EC06            sub sp,0x6
000004C3  8B4606            mov ax,[bp+0x6]
000004C6  31D2              xor dx,dx
000004C8  52                push dx
000004C9  50                push ax
000004CA  FF1E7C89          call word far [0x897c]
000004CE  08C0              or al,al
000004D0  7407              jz 0x4d9
000004D2  C746FE0200        mov word [bp-0x2],0x2
000004D7  EB43              jmp 0x51c
000004D9  A18089            mov ax,[0x8980]
000004DC  0B068289          or ax,[0x8982]
000004E0  742F              jz 0x511
000004E2  C43E8089          les di,word [0x8980]
000004E6  26C405            les ax,word [es:di]
000004E9  8CC2              mov dx,es
000004EB  8946FA            mov [bp-0x6],ax
000004EE  8956FC            mov [bp-0x4],dx
000004F1  BF8089            mov di,0x8980
000004F4  1E                push ds
000004F5  57                push di
000004F6  C43E8089          les di,word [0x8980]
000004FA  26FF7504          push word [es:di+0x4]
000004FE  9AC003561A        call word 0x1a56:word 0x3c0
00000503  C446FA            les ax,word [bp-0x6]
00000506  8CC2              mov dx,es
00000508  A38089            mov [0x8980],ax
0000050B  89168289          mov [0x8982],dx
0000050F  EBC8              jmp 0x4d9
00000511  B003              mov al,0x3
00000513  50                push ax
00000514  B002              mov al,0x2
00000516  50                push ax
00000517  9A9B009C18        call word 0x189c:word 0x9b
0000051C  8B46FE            mov ax,[bp-0x2]
0000051F  89EC              mov sp,bp
00000521  5D                pop bp
00000522  CA0200            retf word 0x2
00000525  55                push bp
00000526  89E5              mov bp,sp
00000528  83EC01            sub sp,0x1
0000052B  9A5504561A        call word 0x1a56:word 0x455
00000530  3B5608            cmp dx,[bp+0x8]
00000533  7F0B              jg 0x540
00000535  7C05              jl 0x53c
00000537  3B4606            cmp ax,[bp+0x6]
0000053A  7304              jnc 0x540
0000053C  B000              mov al,0x0
0000053E  EB02              jmp 0x542
00000540  B001              mov al,0x1
00000542  8846FF            mov [bp-0x1],al
00000545  8A46FF            mov al,[bp-0x1]
00000548  89EC              mov sp,bp
0000054A  5D                pop bp
0000054B  CA0400            retf word 0x4
0000054E  89E5              mov bp,sp
00000550  B8BD04            mov ax,0x4bd
00000553  8CCA              mov dx,cs
00000555  A32E8F            mov [0x8f2e],ax
00000558  8916308F          mov [0x8f30],dx
0000055C  B8EC15            mov ax,0x15ec
0000055F  8CDA              mov dx,ds
00000561  A3908B            mov [0x8b90],ax
00000564  8916928B          mov [0x8b92],dx
00000568  31C0              xor ax,ax
0000056A  A38089            mov [0x8980],ax
0000056D  A38289            mov [0x8982],ax
00000570  B82505            mov ax,0x525
00000573  8CCA              mov dx,cs
00000575  A37C89            mov [0x897c],ax
00000578  89167E89          mov [0x897e],dx
0000057C  89EC              mov sp,bp
0000057E  CB                retf
0000057F  00                db 0x00
