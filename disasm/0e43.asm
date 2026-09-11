00000000  55                push bp
00000001  89E5              mov bp,sp
00000003  8B460A            mov ax,[bp+0xa]
00000006  A3506C            mov [0x6c50],ax
00000009  8B4608            mov ax,[bp+0x8]
0000000C  A3546C            mov [0x6c54],ax
0000000F  FF7606            push word [bp+0x6]
00000012  58                pop ax
00000013  3D0000            cmp ax,0x0
00000016  7406              jz 0x1e
00000018  7803              js 0x1d
0000001A  48                dec ax
0000001B  EB01              jmp 0x1e
0000001D  40                inc ax
0000001E  03460A            add ax,[bp+0xa]
00000021  A3526C            mov [0x6c52],ax
00000024  FF7604            push word [bp+0x4]
00000027  58                pop ax
00000028  3D0000            cmp ax,0x0
0000002B  7406              jz 0x33
0000002D  7803              js 0x32
0000002F  48                dec ax
00000030  EB01              jmp 0x33
00000032  40                inc ax
00000033  034608            add ax,[bp+0x8]
00000036  A3566C            mov [0x6c56],ax
00000039  803EAD6B00        cmp byte [0x6bad],0x0
0000003E  7460              jz 0xa0
00000040  FF36506C          push word [0x6c50]
00000044  58                pop ax
00000045  2B06896B          sub ax,[0x6b89]
00000049  F72E9D6B          imul word [0x6b9d]
0000004D  F73E8D6B          idiv word [0x6b8d]
00000051  0306996B          add ax,[0x6b99]
00000055  A3506C            mov [0x6c50],ax
00000058  FF36546C          push word [0x6c54]
0000005C  58                pop ax
0000005D  2B068B6B          sub ax,[0x6b8b]
00000061  F72E9F6B          imul word [0x6b9f]
00000065  F73E8F6B          idiv word [0x6b8f]
00000069  03069B6B          add ax,[0x6b9b]
0000006D  A3546C            mov [0x6c54],ax
00000070  FF36526C          push word [0x6c52]
00000074  58                pop ax
00000075  2B06896B          sub ax,[0x6b89]
00000079  F72E9D6B          imul word [0x6b9d]
0000007D  F73E8D6B          idiv word [0x6b8d]
00000081  0306996B          add ax,[0x6b99]
00000085  A3526C            mov [0x6c52],ax
00000088  FF36566C          push word [0x6c56]
0000008C  58                pop ax
0000008D  2B068B6B          sub ax,[0x6b8b]
00000091  F72E9F6B          imul word [0x6b9f]
00000095  F73E8F6B          idiv word [0x6b8f]
00000099  03069B6B          add ax,[0x6b9b]
0000009D  A3566C            mov [0x6c56],ax
000000A0  A1506C            mov ax,[0x6c50]
000000A3  3B06526C          cmp ax,[0x6c52]
000000A7  7E1B              jng 0xc4
000000A9  BF506C            mov di,0x6c50
000000AC  1E                push ds
000000AD  57                push di
000000AE  BF526C            mov di,0x6c52
000000B1  1E                push ds
000000B2  57                push di
000000B3  5F                pop di
000000B4  07                pop es
000000B5  268B05            mov ax,[es:di]
000000B8  8CC2              mov dx,es
000000BA  5E                pop si
000000BB  07                pop es
000000BC  268704            xchg ax,[es:si]
000000BF  8EC2              mov es,dx
000000C1  268705            xchg ax,[es:di]
000000C4  A1546C            mov ax,[0x6c54]
000000C7  3B06566C          cmp ax,[0x6c56]
000000CB  7E1B              jng 0xe8
000000CD  BF546C            mov di,0x6c54
000000D0  1E                push ds
000000D1  57                push di
000000D2  BF566C            mov di,0x6c56
000000D5  1E                push ds
000000D6  57                push di
000000D7  5F                pop di
000000D8  07                pop es
000000D9  268B05            mov ax,[es:di]
000000DC  8CC2              mov dx,es
000000DE  5E                pop si
000000DF  07                pop es
000000E0  268704            xchg ax,[es:si]
000000E3  8EC2              mov es,dx
000000E5  268705            xchg ax,[es:di]
000000E8  89EC              mov sp,bp
000000EA  5D                pop bp
000000EB  C20800            ret word 0x8
000000EE  55                push bp
000000EF  89E5              mov bp,sp
000000F1  C47E04            les di,word [bp+0x4]
000000F4  26FF35            push word [es:di]
000000F7  58                pop ax
000000F8  2B06896B          sub ax,[0x6b89]
000000FC  F72E9D6B          imul word [0x6b9d]
00000100  F73E8D6B          idiv word [0x6b8d]
00000104  0306996B          add ax,[0x6b99]
00000108  C47E04            les di,word [bp+0x4]
0000010B  268905            mov [es:di],ax
0000010E  C47E04            les di,word [bp+0x4]
00000111  26FF7502          push word [es:di+0x2]
00000115  58                pop ax
00000116  2B068B6B          sub ax,[0x6b8b]
0000011A  F72E9F6B          imul word [0x6b9f]
0000011E  F73E8F6B          idiv word [0x6b8f]
00000122  03069B6B          add ax,[0x6b9b]
00000126  C47E04            les di,word [bp+0x4]
00000129  26894502          mov [es:di+0x2],ax
0000012D  89EC              mov sp,bp
0000012F  5D                pop bp
00000130  C20400            ret word 0x4
00000133  55                push bp
00000134  89E5              mov bp,sp
00000136  C47E04            les di,word [bp+0x4]
00000139  26FF35            push word [es:di]
0000013C  58                pop ax
0000013D  2B06996B          sub ax,[0x6b99]
00000141  F72E8D6B          imul word [0x6b8d]
00000145  F73E9D6B          idiv word [0x6b9d]
00000149  0306896B          add ax,[0x6b89]
0000014D  C47E04            les di,word [bp+0x4]
00000150  268905            mov [es:di],ax
00000153  C47E04            les di,word [bp+0x4]
00000156  26FF7502          push word [es:di+0x2]
0000015A  58                pop ax
0000015B  2B069B6B          sub ax,[0x6b9b]
0000015F  F72E8F6B          imul word [0x6b8f]
00000163  F73E9F6B          idiv word [0x6b9f]
00000167  03068B6B          add ax,[0x6b8b]
0000016B  C47E04            les di,word [bp+0x4]
0000016E  26894502          mov [es:di+0x2],ax
00000172  89EC              mov sp,bp
00000174  5D                pop bp
00000175  C20400            ret word 0x4
00000178  55                push bp
00000179  89E5              mov bp,sp
0000017B  8B4606            mov ax,[bp+0x6]
0000017E  A3B06B            mov [0x6bb0],ax
00000181  8B4606            mov ax,[bp+0x6]
00000184  99                cwd
00000185  9AC90C561A        call word 0x1a56:word 0xcc9
0000018A  B98292            mov cx,0x9282
0000018D  BEA2DA            mov si,0xdaa2
00000190  BF0F49            mov di,0x490f
00000193  9AB50C561A        call word 0x1a56:word 0xcb5
00000198  B98B00            mov cx,0x8b
0000019B  31F6              xor si,si
0000019D  BF0061            mov di,0x6100
000001A0  9ABB0C561A        call word 0x1a56:word 0xcbb
000001A5  9AEE0D561A        call word 0x1a56:word 0xdee
000001AA  A3586C            mov [0x6c58],ax
000001AD  891E5A6C          mov [0x6c5a],bx
000001B1  89165C6C          mov [0x6c5c],dx
000001B5  8B4606            mov ax,[bp+0x6]
000001B8  99                cwd
000001B9  9AC90C561A        call word 0x1a56:word 0xcc9
000001BE  B98292            mov cx,0x9282
000001C1  BEA2DA            mov si,0xdaa2
000001C4  BF0F49            mov di,0x490f
000001C7  9AB50C561A        call word 0x1a56:word 0xcb5
000001CC  B98B00            mov cx,0x8b
000001CF  31F6              xor si,si
000001D1  BF0061            mov di,0x6100
000001D4  9ABB0C561A        call word 0x1a56:word 0xcbb
000001D9  9ADB0D561A        call word 0x1a56:word 0xddb
000001DE  A35E6C            mov [0x6c5e],ax
000001E1  891E606C          mov [0x6c60],bx
000001E5  8916626C          mov [0x6c62],dx
000001E9  89EC              mov sp,bp
000001EB  5D                pop bp
000001EC  CA0200            retf word 0x2
000001EF  55                push bp
000001F0  89E5              mov bp,sp
000001F2  8B4606            mov ax,[bp+0x6]
000001F5  0106B06B          add [0x6bb0],ax
000001F9  813EB06B100E      cmp word [0x6bb0],0xe10
000001FF  7C08              jl 0x209
00000201  812EB06B100E      sub word [0x6bb0],0xe10
00000207  EBF0              jmp 0x1f9
00000209  833EB06B00        cmp word [0x6bb0],0x0
0000020E  7D08              jnl 0x218
00000210  8106B06B100E      add word [0x6bb0],0xe10
00000216  EBF1              jmp 0x209
00000218  A1B06B            mov ax,[0x6bb0]
0000021B  99                cwd
0000021C  9AC90C561A        call word 0x1a56:word 0xcc9
00000221  B97764            mov cx,0x6477
00000224  BEAB87            mov si,0x87ab
00000227  BFC364            mov di,0x64c3
0000022A  9AB50C561A        call word 0x1a56:word 0xcb5
0000022F  9AEE0D561A        call word 0x1a56:word 0xdee
00000234  A3586C            mov [0x6c58],ax
00000237  891E5A6C          mov [0x6c5a],bx
0000023B  89165C6C          mov [0x6c5c],dx
0000023F  A1B06B            mov ax,[0x6bb0]
00000242  99                cwd
00000243  9AC90C561A        call word 0x1a56:word 0xcc9
00000248  B97764            mov cx,0x6477
0000024B  BEAB87            mov si,0x87ab
0000024E  BFC364            mov di,0x64c3
00000251  9AB50C561A        call word 0x1a56:word 0xcb5
00000256  9ADB0D561A        call word 0x1a56:word 0xddb
0000025B  A35E6C            mov [0x6c5e],ax
0000025E  891E606C          mov [0x6c60],bx
00000262  8916626C          mov [0x6c62],dx
00000266  89EC              mov sp,bp
00000268  5D                pop bp
00000269  CA0200            retf word 0x2
0000026C  55                push bp
0000026D  89E5              mov bp,sp
0000026F  83EC08            sub sp,0x8
00000272  BF856B            mov di,0x6b85
00000275  1E                push ds
00000276  57                push di
00000277  C47E0E            les di,word [bp+0xe]
0000027A  06                push es
0000027B  57                push di
0000027C  B83400            mov ax,0x34
0000027F  50                push ax
00000280  9AC002561A        call word 0x1a56:word 0x2c0
00000285  C47E0E            les di,word [bp+0xe]
00000288  897EFC            mov [bp-0x4],di
0000028B  8C46FE            mov word [bp-0x2],es
0000028E  803E796B00        cmp byte [0x6b79],0x0
00000293  747C              jz 0x311
00000295  8B460C            mov ax,[bp+0xc]
00000298  2B06556B          sub ax,[0x6b55]
0000029C  50                push ax
0000029D  FF36696B          push word [0x6b69]
000002A1  FF36596B          push word [0x6b59]
000002A5  59                pop cx
000002A6  5B                pop bx
000002A7  58                pop ax
000002A8  F7EB              imul bx
000002AA  F7F9              idiv cx
000002AC  0306656B          add ax,[0x6b65]
000002B0  50                push ax
000002B1  8B460A            mov ax,[bp+0xa]
000002B4  2B06576B          sub ax,[0x6b57]
000002B8  50                push ax
000002B9  FF366B6B          push word [0x6b6b]
000002BD  FF365B6B          push word [0x6b5b]
000002C1  59                pop cx
000002C2  5B                pop bx
000002C3  58                pop ax
000002C4  F7EB              imul bx
000002C6  F7F9              idiv cx
000002C8  0306676B          add ax,[0x6b67]
000002CC  50                push ax
000002CD  C47EFC            les di,word [bp-0x4]
000002D0  81C71400          add di,0x14
000002D4  06                push es
000002D5  57                push di
000002D6  9A81001B18        call word 0x181b:word 0x81
000002DB  FF7608            push word [bp+0x8]
000002DE  FF36696B          push word [0x6b69]
000002E2  FF36596B          push word [0x6b59]
000002E6  59                pop cx
000002E7  5B                pop bx
000002E8  58                pop ax
000002E9  F7EB              imul bx
000002EB  F7F9              idiv cx
000002ED  50                push ax
000002EE  FF7606            push word [bp+0x6]
000002F1  FF366B6B          push word [0x6b6b]
000002F5  FF365B6B          push word [0x6b5b]
000002F9  59                pop cx
000002FA  5B                pop bx
000002FB  58                pop ax
000002FC  F7EB              imul bx
000002FE  F7F9              idiv cx
00000300  50                push ax
00000301  C47EFC            les di,word [bp-0x4]
00000304  81C71800          add di,0x18
00000308  06                push es
00000309  57                push di
0000030A  9A81001B18        call word 0x181b:word 0x81
0000030F  EB28              jmp 0x339
00000311  FF760C            push word [bp+0xc]
00000314  FF760A            push word [bp+0xa]
00000317  C47EFC            les di,word [bp-0x4]
0000031A  81C71400          add di,0x14
0000031E  06                push es
0000031F  57                push di
00000320  9A81001B18        call word 0x181b:word 0x81
00000325  FF7608            push word [bp+0x8]
00000328  FF7606            push word [bp+0x6]
0000032B  C47EFC            les di,word [bp-0x4]
0000032E  81C71800          add di,0x18
00000332  06                push es
00000333  57                push di
00000334  9A81001B18        call word 0x181b:word 0x81
00000339  C47EFC            les di,word [bp-0x4]
0000033C  81C71000          add di,0x10
00000340  897EF8            mov [bp-0x8],di
00000343  8C46FA            mov word [bp-0x6],es
00000346  C47EF8            les di,word [bp-0x8]
00000349  26837D0800        cmp word [es:di+0x8],0x0
0000034E  7D1F              jnl 0x36f
00000350  C47EF8            les di,word [bp-0x8]
00000353  268B4508          mov ax,[es:di+0x8]
00000357  F7D8              neg ax
00000359  C47EF8            les di,word [bp-0x8]
0000035C  26894508          mov [es:di+0x8],ax
00000360  C47EF8            les di,word [bp-0x8]
00000363  268B4508          mov ax,[es:di+0x8]
00000367  48                dec ax
00000368  C47EF8            les di,word [bp-0x8]
0000036B  26294504          sub [es:di+0x4],ax
0000036F  C47EF8            les di,word [bp-0x8]
00000372  26837D0A00        cmp word [es:di+0xa],0x0
00000377  7D1F              jnl 0x398
00000379  C47EF8            les di,word [bp-0x8]
0000037C  268B450A          mov ax,[es:di+0xa]
00000380  F7D8              neg ax
00000382  C47EF8            les di,word [bp-0x8]
00000385  2689450A          mov [es:di+0xa],ax
00000389  C47EF8            les di,word [bp-0x8]
0000038C  268B450A          mov ax,[es:di+0xa]
00000390  48                dec ax
00000391  C47EF8            les di,word [bp-0x8]
00000394  26294506          sub [es:di+0x6],ax
00000398  C47EFC            les di,word [bp-0x4]
0000039B  26C44514          les ax,word [es:di+0x14]
0000039F  8CC2              mov dx,es
000003A1  C47EFC            les di,word [bp-0x4]
000003A4  26894510          mov [es:di+0x10],ax
000003A8  26895512          mov [es:di+0x12],dx
000003AC  31C0              xor ax,ax
000003AE  50                push ax
000003AF  31C0              xor ax,ax
000003B1  50                push ax
000003B2  C47EFC            les di,word [bp-0x4]
000003B5  81C70400          add di,0x4
000003B9  06                push es
000003BA  57                push di
000003BB  9A81001B18        call word 0x181b:word 0x81
000003C0  B81027            mov ax,0x2710
000003C3  50                push ax
000003C4  B81027            mov ax,0x2710
000003C7  50                push ax
000003C8  C47EFC            les di,word [bp-0x4]
000003CB  81C70800          add di,0x8
000003CF  06                push es
000003D0  57                push di
000003D1  9A81001B18        call word 0x181b:word 0x81
000003D6  C47EFC            les di,word [bp-0x4]
000003D9  26C44504          les ax,word [es:di+0x4]
000003DD  8CC2              mov dx,es
000003DF  C47EFC            les di,word [bp-0x4]
000003E2  268905            mov [es:di],ax
000003E5  26895502          mov [es:di+0x2],dx
000003E9  C47EFC            les di,word [bp-0x4]
000003EC  31C0              xor ax,ax
000003EE  2689452B          mov [es:di+0x2b],ax
000003F2  C47EFC            les di,word [bp-0x4]
000003F5  268B4514          mov ax,[es:di+0x14]
000003F9  C47EFC            les di,word [bp-0x4]
000003FC  26894520          mov [es:di+0x20],ax
00000400  C47EFC            les di,word [bp-0x4]
00000403  268B4516          mov ax,[es:di+0x16]
00000407  C47EFC            les di,word [bp-0x4]
0000040A  26894522          mov [es:di+0x22],ax
0000040E  C47EFC            les di,word [bp-0x4]
00000411  268B4514          mov ax,[es:di+0x14]
00000415  C47EFC            les di,word [bp-0x4]
00000418  26034518          add ax,[es:di+0x18]
0000041C  48                dec ax
0000041D  C47EFC            les di,word [bp-0x4]
00000420  26894524          mov [es:di+0x24],ax
00000424  C47EFC            les di,word [bp-0x4]
00000427  268B4516          mov ax,[es:di+0x16]
0000042B  C47EFC            les di,word [bp-0x4]
0000042E  2603451A          add ax,[es:di+0x1a]
00000432  48                dec ax
00000433  C47EFC            les di,word [bp-0x4]
00000436  26894526          mov [es:di+0x26],ax
0000043A  89EC              mov sp,bp
0000043C  5D                pop bp
0000043D  CA0C00            retf word 0xc
00000440  55                push bp
00000441  89E5              mov bp,sp
00000443  BF856B            mov di,0x6b85
00000446  1E                push ds
00000447  57                push di
00000448  C43EB96B          les di,word [0x6bb9]
0000044C  06                push es
0000044D  57                push di
0000044E  B83400            mov ax,0x34
00000451  50                push ax
00000452  9AC002561A        call word 0x1a56:word 0x2c0
00000457  C47E06            les di,word [bp+0x6]
0000045A  89F8              mov ax,di
0000045C  8CC2              mov dx,es
0000045E  A3B96B            mov [0x6bb9],ax
00000461  8916BB6B          mov [0x6bbb],dx
00000465  C47E06            les di,word [bp+0x6]
00000468  06                push es
00000469  57                push di
0000046A  BF856B            mov di,0x6b85
0000046D  1E                push ds
0000046E  57                push di
0000046F  B83400            mov ax,0x34
00000472  50                push ax
00000473  9AC002561A        call word 0x1a56:word 0x2c0
00000478  803EAD6B00        cmp byte [0x6bad],0x0
0000047D  7406              jz 0x485
0000047F  0E                push cs
00000480  E8C500            call 0x548
00000483  EB04              jmp 0x489
00000485  0E                push cs
00000486  E82501            call 0x5ae
00000489  803EAE6B00        cmp byte [0x6bae],0x0
0000048E  7406              jz 0x496
00000490  0E                push cs
00000491  E84705            call 0x9db
00000494  EB04              jmp 0x49a
00000496  0E                push cs
00000497  E87205            call 0xa0c
0000049A  C43EBD6B          les di,word [0x6bbd]
0000049E  26FF35            push word [es:di]
000004A1  C43EBD6B          les di,word [0x6bbd]
000004A5  26FF7502          push word [es:di+0x2]
000004A9  0E                push cs
000004AA  E8DD16            call 0x1b8a
000004AD  C43EC96B          les di,word [0x6bc9]
000004B1  26FF35            push word [es:di]
000004B4  0E                push cs
000004B5  E8C715            call 0x1a7f
000004B8  C43ECD6B          les di,word [0x6bcd]
000004BC  26FF35            push word [es:di]
000004BF  0E                push cs
000004C0  E81616            call 0x1ad9
000004C3  FF36B06B          push word [0x6bb0]
000004C7  0E                push cs
000004C8  E8ADFC            call 0x178
000004CB  A0AF6B            mov al,[0x6baf]
000004CE  50                push ax
000004CF  0E                push cs
000004D0  E86716            call 0x1b3a
000004D3  A0B26B            mov al,[0x6bb2]
000004D6  50                push ax
000004D7  0E                push cs
000004D8  E8D126            call 0x2bac
000004DB  E85516            call 0x1b33
000004DE  89EC              mov sp,bp
000004E0  5D                pop bp
000004E1  CA0400            retf word 0x4
000004E4  55                push bp
000004E5  89E5              mov bp,sp
000004E7  FA                cli
000004E8  FE064A6C          inc byte [0x6c4a]
000004EC  FF760C            push word [bp+0xc]
000004EF  FF760A            push word [bp+0xa]
000004F2  BF896B            mov di,0x6b89
000004F5  1E                push ds
000004F6  57                push di
000004F7  9A81001B18        call word 0x181b:word 0x81
000004FC  FF7608            push word [bp+0x8]
000004FF  FF7606            push word [bp+0x6]
00000502  BF8D6B            mov di,0x6b8d
00000505  1E                push ds
00000506  57                push di
00000507  9A81001B18        call word 0x181b:word 0x81
0000050C  C406896B          les ax,word [0x6b89]
00000510  8CC2              mov dx,es
00000512  A3856B            mov [0x6b85],ax
00000515  8916876B          mov [0x6b87],dx
00000519  C406996B          les ax,word [0x6b99]
0000051D  8CC2              mov dx,es
0000051F  A3956B            mov [0x6b95],ax
00000522  8916976B          mov [0x6b97],dx
00000526  BF856B            mov di,0x6b85
00000529  1E                push ds
0000052A  57                push di
0000052B  C43EB96B          les di,word [0x6bb9]
0000052F  06                push es
00000530  57                push di
00000531  B83400            mov ax,0x34
00000534  50                push ax
00000535  9AC002561A        call word 0x1a56:word 0x2c0
0000053A  FA                cli
0000053B  FE0E4A6C          dec byte [0x6c4a]
0000053F  7501              jnz 0x542
00000541  FB                sti
00000542  89EC              mov sp,bp
00000544  5D                pop bp
00000545  CA0800            retf word 0x8
00000548  55                push bp
00000549  89E5              mov bp,sp
0000054B  FA                cli
0000054C  FE064A6C          inc byte [0x6c4a]
00000550  C406956B          les ax,word [0x6b95]
00000554  8CC2              mov dx,es
00000556  A3856B            mov [0x6b85],ax
00000559  8916876B          mov [0x6b87],dx
0000055D  BF856B            mov di,0x6b85
00000560  1E                push ds
00000561  57                push di
00000562  E8CEFB            call 0x133
00000565  B8856B            mov ax,0x6b85
00000568  8CDA              mov dx,ds
0000056A  A3BD6B            mov [0x6bbd],ax
0000056D  8916BF6B          mov [0x6bbf],dx
00000571  B88D6B            mov ax,0x6b8d
00000574  8CDA              mov dx,ds
00000576  A3C56B            mov [0x6bc5],ax
00000579  8916C76B          mov [0x6bc7],dx
0000057D  B8896B            mov ax,0x6b89
00000580  8CDA              mov dx,ds
00000582  A3C16B            mov [0x6bc1],ax
00000585  8916C36B          mov [0x6bc3],dx
00000589  C606AD6B01        mov byte [0x6bad],0x1
0000058E  BF856B            mov di,0x6b85
00000591  1E                push ds
00000592  57                push di
00000593  C43EB96B          les di,word [0x6bb9]
00000597  06                push es
00000598  57                push di
00000599  B83400            mov ax,0x34
0000059C  50                push ax
0000059D  9AC002561A        call word 0x1a56:word 0x2c0
000005A2  FA                cli
000005A3  FE0E4A6C          dec byte [0x6c4a]
000005A7  7501              jnz 0x5aa
000005A9  FB                sti
000005AA  89EC              mov sp,bp
000005AC  5D                pop bp
000005AD  CB                retf
000005AE  55                push bp
000005AF  89E5              mov bp,sp
000005B1  FA                cli
000005B2  FE064A6C          inc byte [0x6c4a]
000005B6  B8956B            mov ax,0x6b95
000005B9  8CDA              mov dx,ds
000005BB  A3BD6B            mov [0x6bbd],ax
000005BE  8916BF6B          mov [0x6bbf],dx
000005C2  B89D6B            mov ax,0x6b9d
000005C5  8CDA              mov dx,ds
000005C7  A3C56B            mov [0x6bc5],ax
000005CA  8916C76B          mov [0x6bc7],dx
000005CE  B8996B            mov ax,0x6b99
000005D1  8CDA              mov dx,ds
000005D3  A3C16B            mov [0x6bc1],ax
000005D6  8916C36B          mov [0x6bc3],dx
000005DA  C606AD6B00        mov byte [0x6bad],0x0
000005DF  BF856B            mov di,0x6b85
000005E2  1E                push ds
000005E3  57                push di
000005E4  C43EB96B          les di,word [0x6bb9]
000005E8  06                push es
000005E9  57                push di
000005EA  B83400            mov ax,0x34
000005ED  50                push ax
000005EE  9AC002561A        call word 0x1a56:word 0x2c0
000005F3  FA                cli
000005F4  FE0E4A6C          dec byte [0x6c4a]
000005F8  7501              jnz 0x5fb
000005FA  FB                sti
000005FB  89EC              mov sp,bp
000005FD  5D                pop bp
000005FE  CB                retf
000005FF  55                push bp
00000600  89E5              mov bp,sp
00000602  83EC01            sub sp,0x1
00000605  8B4608            mov ax,[bp+0x8]
00000608  3B4604            cmp ax,[bp+0x4]
0000060B  7F0B              jg 0x618
0000060D  8B4608            mov ax,[bp+0x8]
00000610  034606            add ax,[bp+0x6]
00000613  3B4604            cmp ax,[bp+0x4]
00000616  7F17              jg 0x62f
00000618  8B4604            mov ax,[bp+0x4]
0000061B  3B4608            cmp ax,[bp+0x8]
0000061E  7F0B              jg 0x62b
00000620  8B4608            mov ax,[bp+0x8]
00000623  034606            add ax,[bp+0x6]
00000626  3B4604            cmp ax,[bp+0x4]
00000629  7C04              jl 0x62f
0000062B  B000              mov al,0x0
0000062D  EB02              jmp 0x631
0000062F  B001              mov al,0x1
00000631  8846FF            mov [bp-0x1],al
00000634  8A46FF            mov al,[bp-0x1]
00000637  89EC              mov sp,bp
00000639  5D                pop bp
0000063A  C20600            ret word 0x6
0000063D  55                push bp
0000063E  89E5              mov bp,sp
00000640  83EC09            sub sp,0x9
00000643  C47E06            les di,word [bp+0x6]
00000646  06                push es
00000647  57                push di
00000648  8D7EF7            lea di,[bp-0x9]
0000064B  16                push ss
0000064C  57                push di
0000064D  B80800            mov ax,0x8
00000650  50                push ax
00000651  9AC002561A        call word 0x1a56:word 0x2c0
00000656  FF76F7            push word [bp-0x9]
00000659  FF76FB            push word [bp-0x5]
0000065C  FF760A            push word [bp+0xa]
0000065F  E89DFF            call 0x5ff
00000662  08C0              or al,al
00000664  7410              jz 0x676
00000666  FF76F9            push word [bp-0x7]
00000669  FF76FD            push word [bp-0x3]
0000066C  FF760C            push word [bp+0xc]
0000066F  E88DFF            call 0x5ff
00000672  08C0              or al,al
00000674  7504              jnz 0x67a
00000676  B000              mov al,0x0
00000678  EB02              jmp 0x67c
0000067A  B001              mov al,0x1
0000067C  8846FF            mov [bp-0x1],al
0000067F  8A46FF            mov al,[bp-0x1]
00000682  89EC              mov sp,bp
00000684  5D                pop bp
00000685  CA0800            retf word 0x8
00000688  55                push bp
00000689  89E5              mov bp,sp
0000068B  C43EBD6B          les di,word [0x6bbd]
0000068F  268B05            mov ax,[es:di]
00000692  034608            add ax,[bp+0x8]
00000695  50                push ax
00000696  C43EBD6B          les di,word [0x6bbd]
0000069A  268B4502          mov ax,[es:di+0x2]
0000069E  034606            add ax,[bp+0x6]
000006A1  50                push ax
000006A2  0E                push cs
000006A3  E8E414            call 0x1b8a
000006A6  89EC              mov sp,bp
000006A8  5D                pop bp
000006A9  CA0400            retf word 0x4
000006AC  55                push bp
000006AD  89E5              mov bp,sp
000006AF  8B4606            mov ax,[bp+0x6]
000006B2  99                cwd
000006B3  9AC90C561A        call word 0x1a56:word 0xcc9
000006B8  8B0E5E6C          mov cx,[0x6c5e]
000006BC  8B36606C          mov si,[0x6c60]
000006C0  8B3E626C          mov di,[0x6c62]
000006C4  9AB50C561A        call word 0x1a56:word 0xcb5
000006C9  9AD50C561A        call word 0x1a56:word 0xcd5
000006CE  8BC8              mov cx,ax
000006D0  8BDA              mov bx,dx
000006D2  C43EBD6B          les di,word [0x6bbd]
000006D6  268B05            mov ax,[es:di]
000006D9  99                cwd
000006DA  03C1              add ax,cx
000006DC  13D3              adc dx,bx
000006DE  50                push ax
000006DF  8B4606            mov ax,[bp+0x6]
000006E2  99                cwd
000006E3  9AC90C561A        call word 0x1a56:word 0xcc9
000006E8  8B0E586C          mov cx,[0x6c58]
000006EC  8B365A6C          mov si,[0x6c5a]
000006F0  8B3E5C6C          mov di,[0x6c5c]
000006F4  9AB50C561A        call word 0x1a56:word 0xcb5
000006F9  9AD50C561A        call word 0x1a56:word 0xcd5
000006FE  8BC8              mov cx,ax
00000700  8BDA              mov bx,dx
00000702  C43EBD6B          les di,word [0x6bbd]
00000706  268B4502          mov ax,[es:di+0x2]
0000070A  99                cwd
0000070B  03C1              add ax,cx
0000070D  13D3              adc dx,bx
0000070F  50                push ax
00000710  0E                push cs
00000711  E87614            call 0x1b8a
00000714  89EC              mov sp,bp
00000716  5D                pop bp
00000717  CA0200            retf word 0x2
0000071A  55                push bp
0000071B  89E5              mov bp,sp
0000071D  C43EBD6B          les di,word [0x6bbd]
00000721  268B05            mov ax,[es:di]
00000724  034608            add ax,[bp+0x8]
00000727  50                push ax
00000728  C43EBD6B          les di,word [0x6bbd]
0000072C  268B4502          mov ax,[es:di+0x2]
00000730  034606            add ax,[bp+0x6]
00000733  50                push ax
00000734  0E                push cs
00000735  E89100            call 0x7c9
00000738  89EC              mov sp,bp
0000073A  5D                pop bp
0000073B  CA0400            retf word 0x4
0000073E  55                push bp
0000073F  89E5              mov bp,sp
00000741  8B4606            mov ax,[bp+0x6]
00000744  99                cwd
00000745  9AC90C561A        call word 0x1a56:word 0xcc9
0000074A  8B0E5E6C          mov cx,[0x6c5e]
0000074E  8B36606C          mov si,[0x6c60]
00000752  8B3E626C          mov di,[0x6c62]
00000756  9AB50C561A        call word 0x1a56:word 0xcb5
0000075B  9AD50C561A        call word 0x1a56:word 0xcd5
00000760  8BC8              mov cx,ax
00000762  8BDA              mov bx,dx
00000764  C43EBD6B          les di,word [0x6bbd]
00000768  268B05            mov ax,[es:di]
0000076B  99                cwd
0000076C  03C1              add ax,cx
0000076E  13D3              adc dx,bx
00000770  50                push ax
00000771  8B4606            mov ax,[bp+0x6]
00000774  99                cwd
00000775  9AC90C561A        call word 0x1a56:word 0xcc9
0000077A  8B0E586C          mov cx,[0x6c58]
0000077E  8B365A6C          mov si,[0x6c5a]
00000782  8B3E5C6C          mov di,[0x6c5c]
00000786  9AB50C561A        call word 0x1a56:word 0xcb5
0000078B  9AD50C561A        call word 0x1a56:word 0xcd5
00000790  8BC8              mov cx,ax
00000792  8BDA              mov bx,dx
00000794  C43EBD6B          les di,word [0x6bbd]
00000798  268B4502          mov ax,[es:di+0x2]
0000079C  99                cwd
0000079D  03C1              add ax,cx
0000079F  13D3              adc dx,bx
000007A1  50                push ax
000007A2  0E                push cs
000007A3  E82300            call 0x7c9
000007A6  89EC              mov sp,bp
000007A8  5D                pop bp
000007A9  CA0200            retf word 0x2
000007AC  55                push bp
000007AD  89E5              mov bp,sp
000007AF  FF760C            push word [bp+0xc]
000007B2  FF760A            push word [bp+0xa]
000007B5  0E                push cs
000007B6  E8D113            call 0x1b8a
000007B9  FF7608            push word [bp+0x8]
000007BC  FF7606            push word [bp+0x6]
000007BF  0E                push cs
000007C0  E80600            call 0x7c9
000007C3  89EC              mov sp,bp
000007C5  5D                pop bp
000007C6  CA0800            retf word 0x8
000007C9  55                push bp
000007CA  89E5              mov bp,sp
000007CC  83EC04            sub sp,0x4
000007CF  A1956B            mov ax,[0x6b95]
000007D2  A3506C            mov [0x6c50],ax
000007D5  A1976B            mov ax,[0x6b97]
000007D8  A3546C            mov [0x6c54],ax
000007DB  FF7608            push word [bp+0x8]
000007DE  FF7606            push word [bp+0x6]
000007E1  BF956B            mov di,0x6b95
000007E4  1E                push ds
000007E5  57                push di
000007E6  9A81001B18        call word 0x181b:word 0x81
000007EB  803EAD6B00        cmp byte [0x6bad],0x0
000007F0  7415              jz 0x807
000007F2  C406956B          les ax,word [0x6b95]
000007F6  8CC2              mov dx,es
000007F8  A3856B            mov [0x6b85],ax
000007FB  8916876B          mov [0x6b87],dx
000007FF  BF956B            mov di,0x6b95
00000802  1E                push ds
00000803  57                push di
00000804  E8E7F8            call 0xee
00000807  A1956B            mov ax,[0x6b95]
0000080A  A3526C            mov [0x6c52],ax
0000080D  A1976B            mov ax,[0x6b97]
00000810  A3566C            mov [0x6c56],ax
00000813  FF36506C          push word [0x6c50]
00000817  FF36546C          push word [0x6c54]
0000081B  31C0              xor ax,ax
0000081D  5B                pop bx
0000081E  391EAB6B          cmp [0x6bab],bx
00000822  7D03              jnl 0x827
00000824  0D0100            or ax,0x1
00000827  3B1EA76B          cmp bx,[0x6ba7]
0000082B  7D03              jnl 0x830
0000082D  0D0200            or ax,0x2
00000830  5B                pop bx
00000831  391EA96B          cmp [0x6ba9],bx
00000835  7D03              jnl 0x83a
00000837  0D0400            or ax,0x4
0000083A  3B1EA56B          cmp bx,[0x6ba5]
0000083E  7D03              jnl 0x843
00000840  0D0800            or ax,0x8
00000843  8946FC            mov [bp-0x4],ax
00000846  FF36526C          push word [0x6c52]
0000084A  FF36566C          push word [0x6c56]
0000084E  31C0              xor ax,ax
00000850  5B                pop bx
00000851  391EAB6B          cmp [0x6bab],bx
00000855  7D03              jnl 0x85a
00000857  0D0100            or ax,0x1
0000085A  3B1EA76B          cmp bx,[0x6ba7]
0000085E  7D03              jnl 0x863
00000860  0D0200            or ax,0x2
00000863  5B                pop bx
00000864  391EA96B          cmp [0x6ba9],bx
00000868  7D03              jnl 0x86d
0000086A  0D0400            or ax,0x4
0000086D  3B1EA56B          cmp bx,[0x6ba5]
00000871  7D03              jnl 0x876
00000873  0D0800            or ax,0x8
00000876  8946FE            mov [bp-0x2],ax
00000879  8B46FC            mov ax,[bp-0x4]
0000087C  0B46FE            or ax,[bp-0x2]
0000087F  09C0              or ax,ax
00000881  7516              jnz 0x899
00000883  FF36506C          push word [0x6c50]
00000887  FF36546C          push word [0x6c54]
0000088B  FF36526C          push word [0x6c52]
0000088F  FF36566C          push word [0x6c56]
00000893  E8101A            call 0x22a6
00000896  E93C01            jmp 0x9d5
00000899  8B46FC            mov ax,[bp-0x4]
0000089C  2346FE            and ax,[bp-0x2]
0000089F  09C0              or ax,ax
000008A1  7403              jz 0x8a6
000008A3  E92F01            jmp 0x9d5
000008A6  837EFC00          cmp word [bp-0x4],0x0
000008AA  7551              jnz 0x8fd
000008AC  8D7EFC            lea di,[bp-0x4]
000008AF  16                push ss
000008B0  57                push di
000008B1  8D7EFE            lea di,[bp-0x2]
000008B4  16                push ss
000008B5  57                push di
000008B6  5F                pop di
000008B7  07                pop es
000008B8  268B05            mov ax,[es:di]
000008BB  8CC2              mov dx,es
000008BD  5E                pop si
000008BE  07                pop es
000008BF  268704            xchg ax,[es:si]
000008C2  8EC2              mov es,dx
000008C4  268705            xchg ax,[es:di]
000008C7  BF506C            mov di,0x6c50
000008CA  1E                push ds
000008CB  57                push di
000008CC  BF526C            mov di,0x6c52
000008CF  1E                push ds
000008D0  57                push di
000008D1  5F                pop di
000008D2  07                pop es
000008D3  268B05            mov ax,[es:di]
000008D6  8CC2              mov dx,es
000008D8  5E                pop si
000008D9  07                pop es
000008DA  268704            xchg ax,[es:si]
000008DD  8EC2              mov es,dx
000008DF  268705            xchg ax,[es:di]
000008E2  BF546C            mov di,0x6c54
000008E5  1E                push ds
000008E6  57                push di
000008E7  BF566C            mov di,0x6c56
000008EA  1E                push ds
000008EB  57                push di
000008EC  5F                pop di
000008ED  07                pop es
000008EE  268B05            mov ax,[es:di]
000008F1  8CC2              mov dx,es
000008F3  5E                pop si
000008F4  07                pop es
000008F5  268704            xchg ax,[es:si]
000008F8  8EC2              mov es,dx
000008FA  268705            xchg ax,[es:di]
000008FD  8B46FC            mov ax,[bp-0x4]
00000900  250100            and ax,0x1
00000903  09C0              or ax,ax
00000905  742F              jz 0x936
00000907  A1526C            mov ax,[0x6c52]
0000090A  2B06506C          sub ax,[0x6c50]
0000090E  50                push ax
0000090F  A1AB6B            mov ax,[0x6bab]
00000912  2B06546C          sub ax,[0x6c54]
00000916  50                push ax
00000917  A1566C            mov ax,[0x6c56]
0000091A  2B06546C          sub ax,[0x6c54]
0000091E  50                push ax
0000091F  59                pop cx
00000920  5B                pop bx
00000921  58                pop ax
00000922  F7EB              imul bx
00000924  F7F9              idiv cx
00000926  0306506C          add ax,[0x6c50]
0000092A  A3506C            mov [0x6c50],ax
0000092D  A1AB6B            mov ax,[0x6bab]
00000930  A3546C            mov [0x6c54],ax
00000933  E99C00            jmp 0x9d2
00000936  8B46FC            mov ax,[bp-0x4]
00000939  250200            and ax,0x2
0000093C  09C0              or ax,ax
0000093E  742E              jz 0x96e
00000940  A1526C            mov ax,[0x6c52]
00000943  2B06506C          sub ax,[0x6c50]
00000947  50                push ax
00000948  A1A76B            mov ax,[0x6ba7]
0000094B  2B06546C          sub ax,[0x6c54]
0000094F  50                push ax
00000950  A1566C            mov ax,[0x6c56]
00000953  2B06546C          sub ax,[0x6c54]
00000957  50                push ax
00000958  59                pop cx
00000959  5B                pop bx
0000095A  58                pop ax
0000095B  F7EB              imul bx
0000095D  F7F9              idiv cx
0000095F  0306506C          add ax,[0x6c50]
00000963  A3506C            mov [0x6c50],ax
00000966  A1A76B            mov ax,[0x6ba7]
00000969  A3546C            mov [0x6c54],ax
0000096C  EB64              jmp 0x9d2
0000096E  8B46FC            mov ax,[bp-0x4]
00000971  250400            and ax,0x4
00000974  09C0              or ax,ax
00000976  742E              jz 0x9a6
00000978  A1566C            mov ax,[0x6c56]
0000097B  2B06546C          sub ax,[0x6c54]
0000097F  50                push ax
00000980  A1A96B            mov ax,[0x6ba9]
00000983  2B06506C          sub ax,[0x6c50]
00000987  50                push ax
00000988  A1526C            mov ax,[0x6c52]
0000098B  2B06506C          sub ax,[0x6c50]
0000098F  50                push ax
00000990  59                pop cx
00000991  5B                pop bx
00000992  58                pop ax
00000993  F7EB              imul bx
00000995  F7F9              idiv cx
00000997  0306546C          add ax,[0x6c54]
0000099B  A3546C            mov [0x6c54],ax
0000099E  A1A96B            mov ax,[0x6ba9]
000009A1  A3506C            mov [0x6c50],ax
000009A4  EB2C              jmp 0x9d2
000009A6  A1566C            mov ax,[0x6c56]
000009A9  2B06546C          sub ax,[0x6c54]
000009AD  50                push ax
000009AE  A1A56B            mov ax,[0x6ba5]
000009B1  2B06506C          sub ax,[0x6c50]
000009B5  50                push ax
000009B6  A1526C            mov ax,[0x6c52]
000009B9  2B06506C          sub ax,[0x6c50]
000009BD  50                push ax
000009BE  59                pop cx
000009BF  5B                pop bx
000009C0  58                pop ax
000009C1  F7EB              imul bx
000009C3  F7F9              idiv cx
000009C5  0306546C          add ax,[0x6c54]
000009C9  A3546C            mov [0x6c54],ax
000009CC  A1A56B            mov ax,[0x6ba5]
000009CF  A3506C            mov [0x6c50],ax
000009D2  E93EFE            jmp 0x813
000009D5  89EC              mov sp,bp
000009D7  5D                pop bp
000009D8  CA0400            retf word 0x4
000009DB  55                push bp
000009DC  89E5              mov bp,sp
000009DE  FA                cli
000009DF  FE064A6C          inc byte [0x6c4a]
000009E3  C606AE6B01        mov byte [0x6bae],0x1
000009E8  B8916B            mov ax,0x6b91
000009EB  8CDA              mov dx,ds
000009ED  A3C96B            mov [0x6bc9],ax
000009F0  8916CB6B          mov [0x6bcb],dx
000009F4  B8936B            mov ax,0x6b93
000009F7  8CDA              mov dx,ds
000009F9  A3CD6B            mov [0x6bcd],ax
000009FC  8916CF6B          mov [0x6bcf],dx
00000A00  FA                cli
00000A01  FE0E4A6C          dec byte [0x6c4a]
00000A05  7501              jnz 0xa08
00000A07  FB                sti
00000A08  89EC              mov sp,bp
00000A0A  5D                pop bp
00000A0B  CB                retf
00000A0C  55                push bp
00000A0D  89E5              mov bp,sp
00000A0F  FA                cli
00000A10  FE064A6C          inc byte [0x6c4a]
00000A14  C606AE6B00        mov byte [0x6bae],0x0
00000A19  B8A16B            mov ax,0x6ba1
00000A1C  8CDA              mov dx,ds
00000A1E  A3C96B            mov [0x6bc9],ax
00000A21  8916CB6B          mov [0x6bcb],dx
00000A25  B8A36B            mov ax,0x6ba3
00000A28  8CDA              mov dx,ds
00000A2A  A3CD6B            mov [0x6bcd],ax
00000A2D  8916CF6B          mov [0x6bcf],dx
00000A31  FA                cli
00000A32  FE0E4A6C          dec byte [0x6c4a]
00000A36  7501              jnz 0xa39
00000A38  FB                sti
00000A39  89EC              mov sp,bp
00000A3B  5D                pop bp
00000A3C  CB                retf
00000A3D  55                push bp
00000A3E  89E5              mov bp,sp
00000A40  81EC810B          sub sp,0xb81
00000A44  FF36646C          push word [0x6c64]
00000A48  C47E0A            les di,word [bp+0xa]
00000A4B  26FF35            push word [es:di]
00000A4E  5B                pop bx
00000A4F  58                pop ax
00000A50  39D8              cmp ax,bx
00000A52  7802              js 0xa56
00000A54  89D8              mov ax,bx
00000A56  8986E2F4          mov [bp-0xb1e],ax
00000A5A  8B86E2F4          mov ax,[bp-0xb1e]
00000A5E  48                dec ax
00000A5F  08C0              or al,al
00000A61  723B              jc 0xa9e
00000A63  8846FF            mov [bp-0x1],al
00000A66  EB03              jmp 0xa6b
00000A68  FE4EFF            dec byte [bp-0x1]
00000A6B  8A46FF            mov al,[bp-0x1]
00000A6E  30E4              xor ah,ah
00000A70  D1E0              shl ax,1
00000A72  D1E0              shl ax,1
00000A74  C47E0A            les di,word [bp+0xa]
00000A77  03F8              add di,ax
00000A79  26FF7504          push word [es:di+0x4]
00000A7D  26FF7502          push word [es:di+0x2]
00000A81  8A46FF            mov al,[bp-0x1]
00000A84  30E4              xor ah,ah
00000A86  BA0300            mov dx,0x3
00000A89  F7E2              mul dx
00000A8B  8BF8              mov di,ax
00000A8D  8DBBE4F4          lea di,[bp+di-0xb1c]
00000A91  16                push ss
00000A92  57                push di
00000A93  9A6D019A16        call word 0x169a:word 0x16d
00000A98  807EFF00          cmp byte [bp-0x1],0x0
00000A9C  75CA              jnz 0xa68
00000A9E  C746E7FFFF        mov word [bp-0x19],0xffff
00000AA3  C746E9FF7F        mov word [bp-0x17],0x7fff
00000AA8  31C0              xor ax,ax
00000AAA  8946F3            mov [bp-0xd],ax
00000AAD  A16A6C            mov ax,[0x6c6a]
00000AB0  48                dec ax
00000AB1  8986C0F4          mov [bp-0xb40],ax
00000AB5  31C0              xor ax,ax
00000AB7  3B86C0F4          cmp ax,[bp-0xb40]
00000ABB  7603              jna 0xac0
00000ABD  E98802            jmp 0xd48
00000AC0  8946F5            mov [bp-0xb],ax
00000AC3  EB03              jmp 0xac8
00000AC5  FF46F5            inc word [bp-0xb]
00000AC8  8DBEA0F4          lea di,[bp-0xb60]
00000ACC  16                push ss
00000ACD  57                push di
00000ACE  9AAF08561A        call word 0x1a56:word 0x8af
00000AD3  8DBEC2F4          lea di,[bp-0xb3e]
00000AD7  16                push ss
00000AD8  57                push di
00000AD9  B82000            mov ax,0x20
00000ADC  50                push ax
00000ADD  9A1309561A        call word 0x1a56:word 0x913
00000AE2  31C0              xor ax,ax
00000AE4  8946EB            mov [bp-0x15],ax
00000AE7  8946ED            mov [bp-0x13],ax
00000AEA  FF76F5            push word [bp-0xb]
00000AED  FF1E716C          call word far [0x6c71]
00000AF1  833E686C00        cmp word [0x6c68],0x0
00000AF6  7C10              jl 0xb08
00000AF8  7E03              jng 0xafd
00000AFA  E9F001            jmp 0xced
00000AFD  813E666C0001      cmp word [0x6c66],0x100
00000B03  7203              jc 0xb08
00000B05  E9E501            jmp 0xced
00000B08  8B86E2F4          mov ax,[bp-0xb1e]
00000B0C  48                dec ax
00000B0D  8886BFF4          mov [bp-0xb41],al
00000B11  B000              mov al,0x0
00000B13  3A86BFF4          cmp al,[bp-0xb41]
00000B17  7603              jna 0xb1c
00000B19  E99801            jmp 0xcb4
00000B1C  8846FF            mov [bp-0x1],al
00000B1F  EB03              jmp 0xb24
00000B21  FE46FF            inc byte [bp-0x1]
00000B24  C746EFFFFF        mov word [bp-0x11],0xffff
00000B29  31C0              xor ax,ax
00000B2B  8946FB            mov [bp-0x5],ax
00000B2E  8946FD            mov [bp-0x3],ax
00000B31  C406666C          les ax,word [0x6c66]
00000B35  8CC2              mov dx,es
00000B37  2D0100            sub ax,0x1
00000B3A  83DA00            sbb dx,0x0
00000B3D  8986BBF4          mov [bp-0xb45],ax
00000B41  8996BDF4          mov [bp-0xb43],dx
00000B45  31C0              xor ax,ax
00000B47  31D2              xor dx,dx
00000B49  3B96BDF4          cmp dx,[bp-0xb43]
00000B4D  7E03              jng 0xb52
00000B4F  E9F600            jmp 0xc48
00000B52  7C09              jl 0xb5d
00000B54  3B86BBF4          cmp ax,[bp-0xb45]
00000B58  7603              jna 0xb5d
00000B5A  E9EB00            jmp 0xc48
00000B5D  8946F7            mov [bp-0x9],ax
00000B60  8956F9            mov [bp-0x7],dx
00000B63  EB08              jmp 0xb6d
00000B65  8346F701          add word [bp-0x9],0x1
00000B69  8356F900          adc word [bp-0x7],0x0
00000B6D  8A46F7            mov al,[bp-0x9]
00000B70  50                push ax
00000B71  8DBE9BF4          lea di,[bp-0xb65]
00000B75  16                push ss
00000B76  57                push di
00000B77  8DBEC2F4          lea di,[bp-0xb3e]
00000B7B  16                push ss
00000B7C  57                push di
00000B7D  B82000            mov ax,0x20
00000B80  50                push ax
00000B81  9A8508561A        call word 0x1a56:word 0x885
00000B86  9A3309561A        call word 0x1a56:word 0x933
00000B8B  7403              jz 0xb90
00000B8D  E9A100            jmp 0xc31
00000B90  FF76F9            push word [bp-0x7]
00000B93  FF76F7            push word [bp-0x9]
00000B96  8DBEE4F7          lea di,[bp-0x81c]
00000B9A  16                push ss
00000B9B  57                push di
00000B9C  FF1E796C          call word far [0x6c79]
00000BA0  803E6C6C00        cmp byte [0x6c6c],0x0
00000BA5  7422              jz 0xbc9
00000BA7  8A46FF            mov al,[bp-0x1]
00000BAA  30E4              xor ah,ah
00000BAC  BA0300            mov dx,0x3
00000BAF  F7E2              mul dx
00000BB1  8BF8              mov di,ax
00000BB3  8DBBE4F4          lea di,[bp+di-0xb1c]
00000BB7  16                push ss
00000BB8  57                push di
00000BB9  8DBEE4F7          lea di,[bp-0x81c]
00000BBD  16                push ss
00000BBE  57                push di
00000BBF  9A1D059A16        call word 0x169a:word 0x51d
00000BC4  8946F1            mov [bp-0xf],ax
00000BC7  EB4F              jmp 0xc18
00000BC9  8A46FF            mov al,[bp-0x1]
00000BCC  30E4              xor ah,ah
00000BCE  BA0300            mov dx,0x3
00000BD1  F7E2              mul dx
00000BD3  8BF8              mov di,ax
00000BD5  8DBBE4F4          lea di,[bp+di-0xb1c]
00000BD9  16                push ss
00000BDA  57                push di
00000BDB  8DBEE4F7          lea di,[bp-0x81c]
00000BDF  16                push ss
00000BE0  57                push di
00000BE1  8CDA              mov dx,ds
00000BE3  5E                pop si
00000BE4  1F                pop ds
00000BE5  5F                pop di
00000BE6  07                pop es
00000BE7  AC                lodsb
00000BE8  268A1D            mov bl,[es:di]
00000BEB  47                inc di
00000BEC  D0E8              shr al,1
00000BEE  D0EB              shr bl,1
00000BF0  28D8              sub al,bl
00000BF2  F6E8              imul al
00000BF4  89C1              mov cx,ax
00000BF6  AC                lodsb
00000BF7  268A1D            mov bl,[es:di]
00000BFA  47                inc di
00000BFB  D0E8              shr al,1
00000BFD  D0EB              shr bl,1
00000BFF  28D8              sub al,bl
00000C01  F6E8              imul al
00000C03  01C1              add cx,ax
00000C05  AC                lodsb
00000C06  268A1D            mov bl,[es:di]
00000C09  D0E8              shr al,1
00000C0B  D0EB              shr bl,1
00000C0D  28D8              sub al,bl
00000C0F  F6E8              imul al
00000C11  01C8              add ax,cx
00000C13  8EDA              mov ds,dx
00000C15  8946F1            mov [bp-0xf],ax
00000C18  8B46F1            mov ax,[bp-0xf]
00000C1B  3B46EF            cmp ax,[bp-0x11]
00000C1E  7711              ja 0xc31
00000C20  8B46F1            mov ax,[bp-0xf]
00000C23  8946EF            mov [bp-0x11],ax
00000C26  C446F7            les ax,word [bp-0x9]
00000C29  8CC2              mov dx,es
00000C2B  8946FB            mov [bp-0x5],ax
00000C2E  8956FD            mov [bp-0x3],dx
00000C31  C446F7            les ax,word [bp-0x9]
00000C34  8CC2              mov dx,es
00000C36  3B96BDF4          cmp dx,[bp-0xb43]
00000C3A  7403              jz 0xc3f
00000C3C  E926FF            jmp 0xb65
00000C3F  3B86BBF4          cmp ax,[bp-0xb45]
00000C43  7403              jz 0xc48
00000C45  E91DFF            jmp 0xb65
00000C48  8B46EF            mov ax,[bp-0x11]
00000C4B  31D2              xor dx,dx
00000C4D  0146EB            add [bp-0x15],ax
00000C50  1156ED            adc [bp-0x13],dx
00000C53  C44EFB            les cx,word [bp-0x5]
00000C56  8CC3              mov bx,es
00000C58  8A46FF            mov al,[bp-0x1]
00000C5B  30E4              xor ah,ah
00000C5D  8BF8              mov di,ax
00000C5F  D1E7              shl di,1
00000C61  D1E7              shl di,1
00000C63  898BE7FB          mov [bp+di-0x419],cx
00000C67  899BE9FB          mov [bp+di-0x417],bx
00000C6B  8DBE7FF4          lea di,[bp-0xb81]
00000C6F  16                push ss
00000C70  57                push di
00000C71  8DBEC2F4          lea di,[bp-0xb3e]
00000C75  16                push ss
00000C76  57                push di
00000C77  B82000            mov ax,0x20
00000C7A  50                push ax
00000C7B  9A8508561A        call word 0x1a56:word 0x885
00000C80  8DBE9FF4          lea di,[bp-0xb61]
00000C84  16                push ss
00000C85  57                push di
00000C86  9AAF08561A        call word 0x1a56:word 0x8af
00000C8B  8A46FB            mov al,[bp-0x5]
00000C8E  50                push ax
00000C8F  9ABE08561A        call word 0x1a56:word 0x8be
00000C94  9A5409561A        call word 0x1a56:word 0x954
00000C99  8DBEC2F4          lea di,[bp-0xb3e]
00000C9D  16                push ss
00000C9E  57                push di
00000C9F  B82000            mov ax,0x20
00000CA2  50                push ax
00000CA3  9A1309561A        call word 0x1a56:word 0x913
00000CA8  8A46FF            mov al,[bp-0x1]
00000CAB  3A86BFF4          cmp al,[bp-0xb41]
00000CAF  7403              jz 0xcb4
00000CB1  E96DFE            jmp 0xb21
00000CB4  C446EB            les ax,word [bp-0x15]
00000CB7  8CC2              mov dx,es
00000CB9  3B56E9            cmp dx,[bp-0x17]
00000CBC  7C07              jl 0xcc5
00000CBE  7F2B              jg 0xceb
00000CC0  3B46E7            cmp ax,[bp-0x19]
00000CC3  7726              ja 0xceb
00000CC5  C446EB            les ax,word [bp-0x15]
00000CC8  8CC2              mov dx,es
00000CCA  8946E7            mov [bp-0x19],ax
00000CCD  8956E9            mov [bp-0x17],dx
00000CD0  8B46F5            mov ax,[bp-0xb]
00000CD3  8946F3            mov [bp-0xd],ax
00000CD6  8DBEE7FB          lea di,[bp-0x419]
00000CDA  16                push ss
00000CDB  57                push di
00000CDC  8DBEE7F7          lea di,[bp-0x819]
00000CE0  16                push ss
00000CE1  57                push di
00000CE2  B80004            mov ax,0x400
00000CE5  50                push ax
00000CE6  9AC002561A        call word 0x1a56:word 0x2c0
00000CEB  EB4F              jmp 0xd3c
00000CED  8B86E2F4          mov ax,[bp-0xb1e]
00000CF1  48                dec ax
00000CF2  8886BFF4          mov [bp-0xb41],al
00000CF6  B000              mov al,0x0
00000CF8  3A86BFF4          cmp al,[bp-0xb41]
00000CFC  773E              ja 0xd3c
00000CFE  8846FF            mov [bp-0x1],al
00000D01  EB03              jmp 0xd06
00000D03  FE46FF            inc byte [bp-0x1]
00000D06  8A46FF            mov al,[bp-0x1]
00000D09  30E4              xor ah,ah
00000D0B  BA0300            mov dx,0x3
00000D0E  F7E2              mul dx
00000D10  8BF8              mov di,ax
00000D12  8DBBE4F4          lea di,[bp+di-0xb1c]
00000D16  16                push ss
00000D17  57                push di
00000D18  FF1E816C          call word far [0x6c81]
00000D1C  8BC8              mov cx,ax
00000D1E  8BDA              mov bx,dx
00000D20  8A46FF            mov al,[bp-0x1]
00000D23  30E4              xor ah,ah
00000D25  8BF8              mov di,ax
00000D27  D1E7              shl di,1
00000D29  D1E7              shl di,1
00000D2B  898BE7F7          mov [bp+di-0x819],cx
00000D2F  899BE9F7          mov [bp+di-0x817],bx
00000D33  8A46FF            mov al,[bp-0x1]
00000D36  3A86BFF4          cmp al,[bp-0xb41]
00000D3A  75C7              jnz 0xd03
00000D3C  8B46F5            mov ax,[bp-0xb]
00000D3F  3B86C0F4          cmp ax,[bp-0xb40]
00000D43  7403              jz 0xd48
00000D45  E97DFD            jmp 0xac5
00000D48  FF76F3            push word [bp-0xd]
00000D4B  FF1E716C          call word far [0x6c71]
00000D4F  FF1E756C          call word far [0x6c75]
00000D53  8B86E2F4          mov ax,[bp-0xb1e]
00000D57  48                dec ax
00000D58  8886C1F4          mov [bp-0xb3f],al
00000D5C  B000              mov al,0x0
00000D5E  3A86C1F4          cmp al,[bp-0xb3f]
00000D62  773B              ja 0xd9f
00000D64  8846FF            mov [bp-0x1],al
00000D67  EB03              jmp 0xd6c
00000D69  FE46FF            inc byte [bp-0x1]
00000D6C  8A46FF            mov al,[bp-0x1]
00000D6F  50                push ax
00000D70  8A46FF            mov al,[bp-0x1]
00000D73  30E4              xor ah,ah
00000D75  8BF8              mov di,ax
00000D77  D1E7              shl di,1
00000D79  D1E7              shl di,1
00000D7B  FFB3E9F7          push word [bp+di-0x817]
00000D7F  FFB3E7F7          push word [bp+di-0x819]
00000D83  FF1E7D6C          call word far [0x6c7d]
00000D87  8AD0              mov dl,al
00000D89  8A46FF            mov al,[bp-0x1]
00000D8C  30E4              xor ah,ah
00000D8E  C47E06            les di,word [bp+0x6]
00000D91  03F8              add di,ax
00000D93  268815            mov [es:di],dl
00000D96  8A46FF            mov al,[bp-0x1]
00000D99  3A86C1F4          cmp al,[bp-0xb3f]
00000D9D  75CA              jnz 0xd69
00000D9F  89EC              mov sp,bp
00000DA1  5D                pop bp
00000DA2  CA0800            retf word 0x8
00000DA5  55                push bp
00000DA6  89E5              mov bp,sp
00000DA8  81EC0A05          sub sp,0x50a
00000DAC  FA                cli
00000DAD  FE064A6C          inc byte [0x6c4a]
00000DB1  C4460A            les ax,word [bp+0xa]
00000DB4  8CC2              mov dx,es
00000DB6  A34767            mov [0x6747],ax
00000DB9  89164967          mov [0x6749],dx
00000DBD  C44606            les ax,word [bp+0x6]
00000DC0  8CC2              mov dx,es
00000DC2  A34B67            mov [0x674b],ax
00000DC5  89164D67          mov [0x674d],dx
00000DC9  C47E06            les di,word [bp+0x6]
00000DCC  268A4502          mov al,[es:di+0x2]
00000DD0  98                cbw
00000DD1  8BD0              mov dx,ax
00000DD3  B80100            mov ax,0x1
00000DD6  8BCA              mov cx,dx
00000DD8  D3E0              shl ax,cl
00000DDA  50                push ax
00000DDB  C47E0A            les di,word [bp+0xa]
00000DDE  268B05            mov ax,[es:di]
00000DE1  050200            add ax,0x2
00000DE4  99                cwd
00000DE5  B90200            mov cx,0x2
00000DE8  F7F9              idiv cx
00000DEA  50                push ax
00000DEB  FF364F67          push word [0x674f]
00000DEF  5B                pop bx
00000DF0  58                pop ax
00000DF1  39D8              cmp ax,bx
00000DF3  7802              js 0xdf7
00000DF5  89D8              mov ax,bx
00000DF7  50                push ax
00000DF8  5B                pop bx
00000DF9  58                pop ax
00000DFA  39D8              cmp ax,bx
00000DFC  7802              js 0xe00
00000DFE  89D8              mov ax,bx
00000E00  8986FCFE          mov [bp-0x104],ax
00000E04  B88200            mov ax,0x82
00000E07  31DB              xor bx,bx
00000E09  31D2              xor dx,dx
00000E0B  9A790E561A        call word 0x1a56:word 0xe79
00000E10  52                push dx
00000E11  53                push bx
00000E12  50                push ax
00000E13  8B86FCFE          mov ax,[bp-0x104]
00000E17  99                cwd
00000E18  9AC90C561A        call word 0x1a56:word 0xcc9
00000E1D  9A790E561A        call word 0x1a56:word 0xe79
00000E22  59                pop cx
00000E23  5E                pop si
00000E24  5F                pop di
00000E25  9ABB0C561A        call word 0x1a56:word 0xcbb
00000E2A  B9701B            mov cx,0x1b70
00000E2D  BE47AC            mov si,0xac47
00000E30  BFC527            mov di,0x27c5
00000E33  9AA30C561A        call word 0x1a56:word 0xca3
00000E38  9ACD0C561A        call word 0x1a56:word 0xccd
00000E3D  8BC8              mov cx,ax
00000E3F  8BDA              mov bx,dx
00000E41  B80100            mov ax,0x1
00000E44  31D2              xor dx,dx
00000E46  9A7203561A        call word 0x1a56:word 0x372
00000E4B  8986FCFE          mov [bp-0x104],ax
00000E4F  B88200            mov ax,0x82
00000E52  31DB              xor bx,bx
00000E54  31D2              xor dx,dx
00000E56  9A790E561A        call word 0x1a56:word 0xe79
00000E5B  52                push dx
00000E5C  53                push bx
00000E5D  50                push ax
00000E5E  8B86FCFE          mov ax,[bp-0x104]
00000E62  99                cwd
00000E63  9AC90C561A        call word 0x1a56:word 0xcc9
00000E68  9A790E561A        call word 0x1a56:word 0xe79
00000E6D  59                pop cx
00000E6E  5E                pop si
00000E6F  5F                pop di
00000E70  9ABB0C561A        call word 0x1a56:word 0xcbb
00000E75  9AD50C561A        call word 0x1a56:word 0xcd5
00000E7A  8986FAFE          mov [bp-0x106],ax
00000E7E  8B86FCFE          mov ax,[bp-0x104]
00000E82  2D0200            sub ax,0x2
00000E85  D1E0              shl ax,1
00000E87  D1E0              shl ax,1
00000E89  C47E0A            les di,word [bp+0xa]
00000E8C  03F8              add di,ax
00000E8E  81C70200          add di,0x2
00000E92  06                push es
00000E93  57                push di
00000E94  8DBEFAFA          lea di,[bp-0x506]
00000E98  16                push ss
00000E99  57                push di
00000E9A  8B86FCFE          mov ax,[bp-0x104]
00000E9E  B90200            mov cx,0x2
00000EA1  D3E0              shl ax,cl
00000EA3  50                push ax
00000EA4  9A641B561A        call word 0x1a56:word 0x1b64
00000EA9  8B86FCFE          mov ax,[bp-0x104]
00000EAD  8986F8FA          mov [bp-0x508],ax
00000EB1  8D86F8FA          lea ax,[bp-0x508]
00000EB5  8CD2              mov dx,ss
00000EB7  52                push dx
00000EB8  50                push ax
00000EB9  8DBEFEFE          lea di,[bp-0x102]
00000EBD  16                push ss
00000EBE  57                push di
00000EBF  0E                push cs
00000EC0  E87AFB            call 0xa3d
00000EC3  C47E06            les di,word [bp+0x6]
00000EC6  268B05            mov ax,[es:di]
00000EC9  48                dec ax
00000ECA  8986F6FA          mov [bp-0x50a],ax
00000ECE  31C0              xor ax,ax
00000ED0  3B86F6FA          cmp ax,[bp-0x50a]
00000ED4  7F35              jg 0xf0b
00000ED6  8946FE            mov [bp-0x2],ax
00000ED9  EB03              jmp 0xede
00000EDB  FF46FE            inc word [bp-0x2]
00000EDE  8B86FAFE          mov ax,[bp-0x106]
00000EE2  48                dec ax
00000EE3  C47E06            les di,word [bp+0x6]
00000EE6  26F72D            imul word [es:di]
00000EE9  0346FE            add ax,[bp-0x2]
00000EEC  D1E0              shl ax,1
00000EEE  C47E06            les di,word [bp+0x6]
00000EF1  03F8              add di,ax
00000EF3  268B7D03          mov di,[es:di+0x3]
00000EF7  8A83FEFE          mov al,[bp+di-0x102]
00000EFB  8B7EFE            mov di,[bp-0x2]
00000EFE  88854766          mov [di+0x6647],al
00000F02  8B46FE            mov ax,[bp-0x2]
00000F05  3B86F6FA          cmp ax,[bp-0x50a]
00000F09  75D0              jnz 0xedb
00000F0B  FA                cli
00000F0C  FE0E4A6C          dec byte [0x6c4a]
00000F10  7501              jnz 0xf13
00000F12  FB                sti
00000F13  89EC              mov sp,bp
00000F15  5D                pop bp
00000F16  CA0800            retf word 0x8
00000F19  55                push bp
00000F1A  89E5              mov bp,sp
00000F1C  83EC06            sub sp,0x6
00000F1F  803EAE6B00        cmp byte [0x6bae],0x0
00000F24  740C              jz 0xf32
00000F26  8B7E06            mov di,[bp+0x6]
00000F29  8A854766          mov al,[di+0x6647]
00000F2D  30E4              xor ah,ah
00000F2F  894606            mov [bp+0x6],ax
00000F32  8D7EFC            lea di,[bp-0x4]
00000F35  16                push ss
00000F36  57                push di
00000F37  A14F67            mov ax,[0x674f]
00000F3A  050200            add ax,0x2
00000F3D  50                push ax
00000F3E  9A7804C317        call word 0x17c3:word 0x478
00000F43  A14F67            mov ax,[0x674f]
00000F46  C47EFC            les di,word [bp-0x4]
00000F49  268905            mov [es:di],ax
00000F4C  C47EFC            les di,word [bp-0x4]
00000F4F  26C745020100      mov word [es:di+0x2],0x1
00000F55  C47EFC            les di,word [bp-0x4]
00000F58  81C70400          add di,0x4
00000F5C  06                push es
00000F5D  57                push di
00000F5E  FF364F67          push word [0x674f]
00000F62  A04666            mov al,[0x6646]
00000F65  F6D0              not al
00000F67  50                push ax
00000F68  9A871B561A        call word 0x1a56:word 0x1b87
00000F6D  8A164666          mov dl,[0x6646]
00000F71  8B4606            mov ax,[bp+0x6]
00000F74  C47EFC            les di,word [bp-0x4]
00000F77  03F8              add di,ax
00000F79  26885504          mov [es:di+0x4],dl
00000F7D  C47E08            les di,word [bp+0x8]
00000F80  06                push es
00000F81  57                push di
00000F82  0E                push cs
00000F83  E87600            call 0xffc
00000F86  C47E08            les di,word [bp+0x8]
00000F89  26FF7502          push word [es:di+0x2]
00000F8D  26FF35            push word [es:di]
00000F90  31C0              xor ax,ax
00000F92  50                push ax
00000F93  31C0              xor ax,ax
00000F95  50                push ax
00000F96  C47E08            les di,word [bp+0x8]
00000F99  26C43D            les di,word [es:di]
00000F9C  26FF35            push word [es:di]
00000F9F  C47E08            les di,word [bp+0x8]
00000FA2  26C43D            les di,word [es:di]
00000FA5  26FF7502          push word [es:di+0x2]
00000FA9  C47E08            les di,word [bp+0x8]
00000FAC  26C43D            les di,word [es:di]
00000FAF  81C70E00          add di,0xe
00000FB3  06                push es
00000FB4  57                push di
00000FB5  B83D66            mov ax,0x663d
00000FB8  8CDA              mov dx,ds
00000FBA  52                push dx
00000FBB  50                push ax
00000FBC  C47E08            les di,word [bp+0x8]
00000FBF  26C43D            les di,word [es:di]
00000FC2  26FF35            push word [es:di]
00000FC5  C47E08            les di,word [bp+0x8]
00000FC8  26C43D            les di,word [es:di]
00000FCB  26FF7502          push word [es:di+0x2]
00000FCF  FF76FE            push word [bp-0x2]
00000FD2  FF76FC            push word [bp-0x4]
00000FD5  9A1702F714        call word 0x14f7:word 0x217
00000FDA  8A4606            mov al,[bp+0x6]
00000FDD  C47E08            les di,word [bp+0x8]
00000FE0  26C43D            les di,word [es:di]
00000FE3  26884509          mov [es:di+0x9],al
00000FE7  C47E08            les di,word [bp+0x8]
00000FEA  26C43D            les di,word [es:di]
00000FED  26C47D0E          les di,word [es:di+0xe]
00000FF1  26C6450901        mov byte [es:di+0x9],0x1
00000FF6  89EC              mov sp,bp
00000FF8  5D                pop bp
00000FF9  CA0600            retf word 0x6
00000FFC  55                push bp
00000FFD  89E5              mov bp,sp
00000FFF  83EC04            sub sp,0x4
00001002  C47E06            les di,word [bp+0x6]
00001005  268B05            mov ax,[es:di]
00001008  260B4502          or ax,[es:di+0x2]
0000100C  7427              jz 0x1035
0000100E  C47E06            les di,word [bp+0x6]
00001011  26C43D            les di,word [es:di]
00001014  897EFC            mov [bp-0x4],di
00001017  8C46FE            mov word [bp-0x2],es
0000101A  C47EFC            les di,word [bp-0x4]
0000101D  268B450E          mov ax,[es:di+0xe]
00001021  260B4510          or ax,[es:di+0x10]
00001025  740E              jz 0x1035
00001027  C47EFC            les di,word [bp-0x4]
0000102A  81C70E00          add di,0xe
0000102E  06                push es
0000102F  57                push di
00001030  9A67012A15        call word 0x152a:word 0x167
00001035  89EC              mov sp,bp
00001037  5D                pop bp
00001038  CA0400            retf word 0x4
0000103B  55                push bp
0000103C  89E5              mov bp,sp
0000103E  8B4608            mov ax,[bp+0x8]
00001041  A3B56B            mov [0x6bb5],ax
00001044  8B4606            mov ax,[bp+0x6]
00001047  A3B76B            mov [0x6bb7],ax
0000104A  89EC              mov sp,bp
0000104C  5D                pop bp
0000104D  CA0400            retf word 0x4
00001050  55                push bp
00001051  89E5              mov bp,sp
00001053  A1B56B            mov ax,[0x6bb5]
00001056  3D0000            cmp ax,0x0
00001059  7502              jnz 0x105d
0000105B  EB20              jmp 0x107d
0000105D  3D0100            cmp ax,0x1
00001060  750F              jnz 0x1071
00001062  A1D16B            mov ax,[0x6bd1]
00001065  99                cwd
00001066  B90200            mov cx,0x2
00001069  F7F9              idiv cx
0000106B  2906956B          sub [0x6b95],ax
0000106F  EB0C              jmp 0x107d
00001071  3D0200            cmp ax,0x2
00001074  7507              jnz 0x107d
00001076  A1D16B            mov ax,[0x6bd1]
00001079  2906956B          sub [0x6b95],ax
0000107D  A1B76B            mov ax,[0x6bb7]
00001080  3D0000            cmp ax,0x0
00001083  7502              jnz 0x1087
00001085  EB20              jmp 0x10a7
00001087  3D0100            cmp ax,0x1
0000108A  750F              jnz 0x109b
0000108C  A1D36B            mov ax,[0x6bd3]
0000108F  99                cwd
00001090  B90200            mov cx,0x2
00001093  F7F9              idiv cx
00001095  2906976B          sub [0x6b97],ax
00001099  EB0C              jmp 0x10a7
0000109B  3D0200            cmp ax,0x2
0000109E  7507              jnz 0x10a7
000010A0  A1D36B            mov ax,[0x6bd3]
000010A3  2906976B          sub [0x6b97],ax
000010A7  FF36956B          push word [0x6b95]
000010AB  FF36976B          push word [0x6b97]
000010AF  8A4606            mov al,[bp+0x6]
000010B2  50                push ax
000010B3  0E                push cs
000010B4  E8521B            call 0x2c09
000010B7  A1D16B            mov ax,[0x6bd1]
000010BA  0106956B          add [0x6b95],ax
000010BE  803EAD6B00        cmp byte [0x6bad],0x0
000010C3  7415              jz 0x10da
000010C5  C406956B          les ax,word [0x6b95]
000010C9  8CC2              mov dx,es
000010CB  A3856B            mov [0x6b85],ax
000010CE  8916876B          mov [0x6b87],dx
000010D2  BF856B            mov di,0x6b85
000010D5  1E                push ds
000010D6  57                push di
000010D7  E859F0            call 0x133
000010DA  89EC              mov sp,bp
000010DC  5D                pop bp
000010DD  CA0200            retf word 0x2
000010E0  55                push bp
000010E1  89E5              mov bp,sp
000010E3  81EC0401          sub sp,0x104
000010E7  C47E06            les di,word [bp+0x6]
000010EA  06                push es
000010EB  57                push di
000010EC  8DBE00FF          lea di,[bp-0x100]
000010F0  16                push ss
000010F1  57                push di
000010F2  B8FF00            mov ax,0xff
000010F5  50                push ax
000010F6  9AAD06561A        call word 0x1a56:word 0x6ad
000010FB  A1B56B            mov ax,[0x6bb5]
000010FE  3D0000            cmp ax,0x0
00001101  7502              jnz 0x1105
00001103  EB2E              jmp 0x1133
00001105  3D0100            cmp ax,0x1
00001108  7516              jnz 0x1120
0000110A  8A8600FF          mov al,[bp-0x100]
0000110E  30E4              xor ah,ah
00001110  F72ED16B          imul word [0x6bd1]
00001114  99                cwd
00001115  B90200            mov cx,0x2
00001118  F7F9              idiv cx
0000111A  2906956B          sub [0x6b95],ax
0000111E  EB13              jmp 0x1133
00001120  3D0200            cmp ax,0x2
00001123  750E              jnz 0x1133
00001125  8A8600FF          mov al,[bp-0x100]
00001129  30E4              xor ah,ah
0000112B  F72ED16B          imul word [0x6bd1]
0000112F  2906956B          sub [0x6b95],ax
00001133  A1B76B            mov ax,[0x6bb7]
00001136  3D0000            cmp ax,0x0
00001139  7502              jnz 0x113d
0000113B  EB20              jmp 0x115d
0000113D  3D0100            cmp ax,0x1
00001140  750F              jnz 0x1151
00001142  A1D36B            mov ax,[0x6bd3]
00001145  99                cwd
00001146  B90200            mov cx,0x2
00001149  F7F9              idiv cx
0000114B  2906976B          sub [0x6b97],ax
0000114F  EB0C              jmp 0x115d
00001151  3D0200            cmp ax,0x2
00001154  7507              jnz 0x115d
00001156  A1D36B            mov ax,[0x6bd3]
00001159  2906976B          sub [0x6b97],ax
0000115D  8A8600FF          mov al,[bp-0x100]
00001161  30E4              xor ah,ah
00001163  8986FCFE          mov [bp-0x104],ax
00001167  B80100            mov ax,0x1
0000116A  3B86FCFE          cmp ax,[bp-0x104]
0000116E  7F30              jg 0x11a0
00001170  8986FEFE          mov [bp-0x102],ax
00001174  EB04              jmp 0x117a
00001176  FF86FEFE          inc word [bp-0x102]
0000117A  FF36956B          push word [0x6b95]
0000117E  FF36976B          push word [0x6b97]
00001182  8BBEFEFE          mov di,[bp-0x102]
00001186  8A8300FF          mov al,[bp+di-0x100]
0000118A  50                push ax
0000118B  0E                push cs
0000118C  E87A1A            call 0x2c09
0000118F  A1D16B            mov ax,[0x6bd1]
00001192  0106956B          add [0x6b95],ax
00001196  8B86FEFE          mov ax,[bp-0x102]
0000119A  3B86FCFE          cmp ax,[bp-0x104]
0000119E  75D6              jnz 0x1176
000011A0  803EAD6B00        cmp byte [0x6bad],0x0
000011A5  7415              jz 0x11bc
000011A7  C406956B          les ax,word [0x6b95]
000011AB  8CC2              mov dx,es
000011AD  A3856B            mov [0x6b85],ax
000011B0  8916876B          mov [0x6b87],dx
000011B4  BF856B            mov di,0x6b85
000011B7  1E                push ds
000011B8  57                push di
000011B9  E877EF            call 0x133
000011BC  89EC              mov sp,bp
000011BE  5D                pop bp
000011BF  CA0400            retf word 0x4
000011C2  55                push bp
000011C3  89E5              mov bp,sp
000011C5  83EC02            sub sp,0x2
000011C8  31C0              xor ax,ax
000011CA  8946FE            mov [bp-0x2],ax
000011CD  8B46FE            mov ax,[bp-0x2]
000011D0  89EC              mov sp,bp
000011D2  5D                pop bp
000011D3  CA0400            retf word 0x4
000011D6  0308              add cx,[bx+si]
000011D8  2008              and [bx+si],cl
000011DA  55                push bp
000011DB  89E5              mov bp,sp
000011DD  83EC09            sub sp,0x9
000011E0  C47E06            les di,word [bp+0x6]
000011E3  897EF7            mov [bp-0x9],di
000011E6  8C46F9            mov word [bp-0x7],es
000011E9  31C0              xor ax,ax
000011EB  8946FC            mov [bp-0x4],ax
000011EE  0E                push cs
000011EF  E8A804            call 0x169a
000011F2  8846FB            mov [bp-0x5],al
000011F5  807EFB20          cmp byte [bp-0x5],0x20
000011F9  722E              jc 0x1229
000011FB  8A56FB            mov dl,[bp-0x5]
000011FE  8B46FC            mov ax,[bp-0x4]
00001201  C47EF7            les di,word [bp-0x9]
00001204  26C47D0C          les di,word [es:di+0xc]
00001208  03F8              add di,ax
0000120A  268815            mov [es:di],dl
0000120D  BF856D            mov di,0x6d85
00001210  1E                push ds
00001211  57                push di
00001212  8A46FB            mov al,[bp-0x5]
00001215  50                push ax
00001216  31C0              xor ax,ax
00001218  50                push ax
00001219  9A9917561A        call word 0x1a56:word 0x1799
0000121E  9A5517561A        call word 0x1a56:word 0x1755
00001223  FF46FC            inc word [bp-0x4]
00001226  E94401            jmp 0x136d
00001229  8A46FB            mov al,[bp-0x5]
0000122C  3C13              cmp al,0x13
0000122E  7404              jz 0x1234
00001230  3C08              cmp al,0x8
00001232  7523              jnz 0x1257
00001234  837EFC00          cmp word [bp-0x4],0x0
00001238  7E1A              jng 0x1254
0000123A  FF4EFC            dec word [bp-0x4]
0000123D  BF856D            mov di,0x6d85
00001240  1E                push ds
00001241  57                push di
00001242  BFD611            mov di,0x11d6
00001245  0E                push cs
00001246  57                push di
00001247  31C0              xor ax,ax
00001249  50                push ax
0000124A  9AF717561A        call word 0x1a56:word 0x17f7
0000124F  9A5517561A        call word 0x1a56:word 0x1755
00001254  E91601            jmp 0x136d
00001257  3C01              cmp al,0x1
00001259  7404              jz 0x125f
0000125B  3C1B              cmp al,0x1b
0000125D  7525              jnz 0x1284
0000125F  837EFC00          cmp word [bp-0x4],0x0
00001263  7E1C              jng 0x1281
00001265  BF856D            mov di,0x6d85
00001268  1E                push ds
00001269  57                push di
0000126A  BFD611            mov di,0x11d6
0000126D  0E                push cs
0000126E  57                push di
0000126F  31C0              xor ax,ax
00001271  50                push ax
00001272  9AF717561A        call word 0x1a56:word 0x17f7
00001277  9A5517561A        call word 0x1a56:word 0x1755
0000127C  FF4EFC            dec word [bp-0x4]
0000127F  EBDE              jmp 0x125f
00001281  E9E900            jmp 0x136d
00001284  3C04              cmp al,0x4
00001286  754B              jnz 0x12d3
00001288  A0856C            mov al,[0x6c85]
0000128B  30E4              xor ah,ah
0000128D  3B46FC            cmp ax,[bp-0x4]
00001290  7E3E              jng 0x12d0
00001292  8B46FC            mov ax,[bp-0x4]
00001295  40                inc ax
00001296  8BF8              mov di,ax
00001298  8A95856C          mov dl,[di+0x6c85]
0000129C  8B46FC            mov ax,[bp-0x4]
0000129F  C47EF7            les di,word [bp-0x9]
000012A2  26C47D0C          les di,word [es:di+0xc]
000012A6  03F8              add di,ax
000012A8  268815            mov [es:di],dl
000012AB  BF856D            mov di,0x6d85
000012AE  1E                push ds
000012AF  57                push di
000012B0  8B46FC            mov ax,[bp-0x4]
000012B3  C47EF7            les di,word [bp-0x9]
000012B6  26C47D0C          les di,word [es:di+0xc]
000012BA  03F8              add di,ax
000012BC  268A05            mov al,[es:di]
000012BF  50                push ax
000012C0  31C0              xor ax,ax
000012C2  50                push ax
000012C3  9A9917561A        call word 0x1a56:word 0x1799
000012C8  9A5517561A        call word 0x1a56:word 0x1755
000012CD  FF46FC            inc word [bp-0x4]
000012D0  E99A00            jmp 0x136d
000012D3  3C06              cmp al,0x6
000012D5  7403              jz 0x12da
000012D7  E97E00            jmp 0x1358
000012DA  837EFC00          cmp word [bp-0x4],0x0
000012DE  7E1C              jng 0x12fc
000012E0  BF856D            mov di,0x6d85
000012E3  1E                push ds
000012E4  57                push di
000012E5  BFD611            mov di,0x11d6
000012E8  0E                push cs
000012E9  57                push di
000012EA  31C0              xor ax,ax
000012EC  50                push ax
000012ED  9AF717561A        call word 0x1a56:word 0x17f7
000012F2  9A5517561A        call word 0x1a56:word 0x1755
000012F7  FF4EFC            dec word [bp-0x4]
000012FA  EBDE              jmp 0x12da
000012FC  BF856D            mov di,0x6d85
000012FF  1E                push ds
00001300  57                push di
00001301  BF856C            mov di,0x6c85
00001304  1E                push ds
00001305  57                push di
00001306  31C0              xor ax,ax
00001308  50                push ax
00001309  9AF717561A        call word 0x1a56:word 0x17f7
0000130E  9A5517561A        call word 0x1a56:word 0x1755
00001313  A0856C            mov al,[0x6c85]
00001316  30E4              xor ah,ah
00001318  8946FC            mov [bp-0x4],ax
0000131B  C47EF7            les di,word [bp-0x9]
0000131E  268B4504          mov ax,[es:di+0x4]
00001322  31D2              xor dx,dx
00001324  8BC8              mov cx,ax
00001326  8BDA              mov bx,dx
00001328  8B46FC            mov ax,[bp-0x4]
0000132B  99                cwd
0000132C  3BD3              cmp dx,bx
0000132E  7F06              jg 0x1336
00001330  7C0E              jl 0x1340
00001332  3BC1              cmp ax,cx
00001334  760A              jna 0x1340
00001336  C47EF7            les di,word [bp-0x9]
00001339  268B4504          mov ax,[es:di+0x4]
0000133D  8946FC            mov [bp-0x4],ax
00001340  BF866C            mov di,0x6c86
00001343  1E                push ds
00001344  57                push di
00001345  C47EF7            les di,word [bp-0x9]
00001348  26C47D0C          les di,word [es:di+0xc]
0000134C  06                push es
0000134D  57                push di
0000134E  FF76FC            push word [bp-0x4]
00001351  9A641B561A        call word 0x1a56:word 0x1b64
00001356  EB15              jmp 0x136d
00001358  3C0D              cmp al,0xd
0000135A  7504              jnz 0x1360
0000135C  EB31              jmp 0x138f
0000135E  EB0D              jmp 0x136d
00001360  3C1A              cmp al,0x1a
00001362  7509              jnz 0x136d
00001364  803E4B6C00        cmp byte [0x6c4b],0x0
00001369  7402              jz 0x136d
0000136B  EB22              jmp 0x138f
0000136D  C47EF7            les di,word [bp-0x9]
00001370  268B4504          mov ax,[es:di+0x4]
00001374  48                dec ax
00001375  31D2              xor dx,dx
00001377  8BC8              mov cx,ax
00001379  8BDA              mov bx,dx
0000137B  8B46FC            mov ax,[bp-0x4]
0000137E  99                cwd
0000137F  3BD3              cmp dx,bx
00001381  7F0C              jg 0x138f
00001383  7D03              jnl 0x1388
00001385  E966FE            jmp 0x11ee
00001388  3BC1              cmp ax,cx
0000138A  7303              jnc 0x138f
0000138C  E95FFE            jmp 0x11ee
0000138F  C47EF7            les di,word [bp-0x9]
00001392  26C47D0C          les di,word [es:di+0xc]
00001396  06                push es
00001397  57                push di
00001398  BF866C            mov di,0x6c86
0000139B  1E                push ds
0000139C  57                push di
0000139D  FF76FC            push word [bp-0x4]
000013A0  9A641B561A        call word 0x1a56:word 0x1b64
000013A5  8A46FC            mov al,[bp-0x4]
000013A8  A2856C            mov [0x6c85],al
000013AB  807EFB0D          cmp byte [bp-0x5],0xd
000013AF  7550              jnz 0x1401
000013B1  8B46FC            mov ax,[bp-0x4]
000013B4  C47EF7            les di,word [bp-0x9]
000013B7  26C47D0C          les di,word [es:di+0xc]
000013BB  03F8              add di,ax
000013BD  26C6050D          mov byte [es:di],0xd
000013C1  BF856D            mov di,0x6d85
000013C4  1E                push ds
000013C5  57                push di
000013C6  B00D              mov al,0xd
000013C8  50                push ax
000013C9  31C0              xor ax,ax
000013CB  50                push ax
000013CC  9A9917561A        call word 0x1a56:word 0x1799
000013D1  9A5517561A        call word 0x1a56:word 0x1755
000013D6  FF46FC            inc word [bp-0x4]
000013D9  8B46FC            mov ax,[bp-0x4]
000013DC  C47EF7            les di,word [bp-0x9]
000013DF  26C47D0C          les di,word [es:di+0xc]
000013E3  03F8              add di,ax
000013E5  26C6050A          mov byte [es:di],0xa
000013E9  BF856D            mov di,0x6d85
000013EC  1E                push ds
000013ED  57                push di
000013EE  B00A              mov al,0xa
000013F0  50                push ax
000013F1  31C0              xor ax,ax
000013F3  50                push ax
000013F4  9A9917561A        call word 0x1a56:word 0x1799
000013F9  9A5517561A        call word 0x1a56:word 0x1755
000013FE  FF46FC            inc word [bp-0x4]
00001401  C47EF7            les di,word [bp-0x9]
00001404  31C0              xor ax,ax
00001406  26894508          mov [es:di+0x8],ax
0000140A  8B46FC            mov ax,[bp-0x4]
0000140D  C47EF7            les di,word [bp-0x9]
00001410  2689450A          mov [es:di+0xa],ax
00001414  31C0              xor ax,ax
00001416  8946FE            mov [bp-0x2],ax
00001419  8B46FE            mov ax,[bp-0x2]
0000141C  89EC              mov sp,bp
0000141E  5D                pop bp
0000141F  CA0400            retf word 0x4
00001422  55                push bp
00001423  89E5              mov bp,sp
00001425  83EC0B            sub sp,0xb
00001428  A0AD6B            mov al,[0x6bad]
0000142B  8846FB            mov [bp-0x5],al
0000142E  807EFB00          cmp byte [bp-0x5],0x0
00001432  7404              jz 0x1438
00001434  0E                push cs
00001435  E876F1            call 0x5ae
00001438  C47E06            les di,word [bp+0x6]
0000143B  897EF7            mov [bp-0x9],di
0000143E  8C46F9            mov word [bp-0x7],es
00001441  C47EF7            les di,word [bp-0x9]
00001444  268B4508          mov ax,[es:di+0x8]
00001448  48                dec ax
00001449  8946F5            mov [bp-0xb],ax
0000144C  31C0              xor ax,ax
0000144E  3B46F5            cmp ax,[bp-0xb]
00001451  7E03              jng 0x1456
00001453  E9FB00            jmp 0x1551
00001456  8946FC            mov [bp-0x4],ax
00001459  EB03              jmp 0x145e
0000145B  FF46FC            inc word [bp-0x4]
0000145E  8B46FC            mov ax,[bp-0x4]
00001461  C47EF7            les di,word [bp-0x9]
00001464  26C47D0C          les di,word [es:di+0xc]
00001468  03F8              add di,ax
0000146A  268A05            mov al,[es:di]
0000146D  3C07              cmp al,0x7
0000146F  7503              jnz 0x1474
00001471  E9D200            jmp 0x1546
00001474  3C08              cmp al,0x8
00001476  7525              jnz 0x149d
00001478  A1D16B            mov ax,[0x6bd1]
0000147B  F7D8              neg ax
0000147D  50                push ax
0000147E  31C0              xor ax,ax
00001480  50                push ax
00001481  0E                push cs
00001482  E803F2            call 0x688
00001485  A1956B            mov ax,[0x6b95]
00001488  3B06996B          cmp ax,[0x6b99]
0000148C  7D0C              jnl 0x149a
0000148E  FF36996B          push word [0x6b99]
00001492  FF36976B          push word [0x6b97]
00001496  0E                push cs
00001497  E8F006            call 0x1b8a
0000149A  E9A900            jmp 0x1546
0000149D  3C0A              cmp al,0xa
0000149F  752C              jnz 0x14cd
000014A1  31C0              xor ax,ax
000014A3  50                push ax
000014A4  A1D36B            mov ax,[0x6bd3]
000014A7  F7D8              neg ax
000014A9  50                push ax
000014AA  0E                push cs
000014AB  E8DAF1            call 0x688
000014AE  A1976B            mov ax,[0x6b97]
000014B1  3B069B6B          cmp ax,[0x6b9b]
000014B5  7D14              jnl 0x14cb
000014B7  FF36956B          push word [0x6b95]
000014BB  A19B6B            mov ax,[0x6b9b]
000014BE  03069F6B          add ax,[0x6b9f]
000014C2  2B06D36B          sub ax,[0x6bd3]
000014C6  50                push ax
000014C7  0E                push cs
000014C8  E8BF06            call 0x1b8a
000014CB  EB79              jmp 0x1546
000014CD  3C0D              cmp al,0xd
000014CF  7515              jnz 0x14e6
000014D1  C43EC16B          les di,word [0x6bc1]
000014D5  26FF35            push word [es:di]
000014D8  C43EBD6B          les di,word [0x6bbd]
000014DC  26FF7502          push word [es:di+0x2]
000014E0  0E                push cs
000014E1  E8A606            call 0x1b8a
000014E4  EB60              jmp 0x1546
000014E6  A1996B            mov ax,[0x6b99]
000014E9  03069D6B          add ax,[0x6b9d]
000014ED  3B06956B          cmp ax,[0x6b95]
000014F1  7F35              jg 0x1528
000014F3  C43EC16B          les di,word [0x6bc1]
000014F7  26FF35            push word [es:di]
000014FA  C43EBD6B          les di,word [0x6bbd]
000014FE  268B4502          mov ax,[es:di+0x2]
00001502  2B06D36B          sub ax,[0x6bd3]
00001506  50                push ax
00001507  0E                push cs
00001508  E87F06            call 0x1b8a
0000150B  A1976B            mov ax,[0x6b97]
0000150E  3B069B6B          cmp ax,[0x6b9b]
00001512  7D14              jnl 0x1528
00001514  FF36956B          push word [0x6b95]
00001518  A19B6B            mov ax,[0x6b9b]
0000151B  03069F6B          add ax,[0x6b9f]
0000151F  2B06D36B          sub ax,[0x6bd3]
00001523  50                push ax
00001524  0E                push cs
00001525  E86206            call 0x1b8a
00001528  31C0              xor ax,ax
0000152A  50                push ax
0000152B  31C0              xor ax,ax
0000152D  50                push ax
0000152E  0E                push cs
0000152F  E809FB            call 0x103b
00001532  8B46FC            mov ax,[bp-0x4]
00001535  C47EF7            les di,word [bp-0x9]
00001538  26C47D0C          les di,word [es:di+0xc]
0000153C  03F8              add di,ax
0000153E  268A05            mov al,[es:di]
00001541  50                push ax
00001542  0E                push cs
00001543  E80AFB            call 0x1050
00001546  8B46FC            mov ax,[bp-0x4]
00001549  3B46F5            cmp ax,[bp-0xb]
0000154C  7403              jz 0x1551
0000154E  E90AFF            jmp 0x145b
00001551  C47EF7            les di,word [bp-0x9]
00001554  31C0              xor ax,ax
00001556  26894508          mov [es:di+0x8],ax
0000155A  807EFB00          cmp byte [bp-0x5],0x0
0000155E  7404              jz 0x1564
00001560  0E                push cs
00001561  E8E4EF            call 0x548
00001564  31C0              xor ax,ax
00001566  8946FE            mov [bp-0x2],ax
00001569  8B46FE            mov ax,[bp-0x2]
0000156C  89EC              mov sp,bp
0000156E  5D                pop bp
0000156F  CA0400            retf word 0x4
00001572  55                push bp
00001573  89E5              mov bp,sp
00001575  83EC06            sub sp,0x6
00001578  C47E06            les di,word [bp+0x6]
0000157B  897EFA            mov [bp-0x6],di
0000157E  8C46FC            mov word [bp-0x4],es
00001581  C47EFA            les di,word [bp-0x6]
00001584  26817D02B1D7      cmp word [es:di+0x2],0xd7b1
0000158A  7522              jnz 0x15ae
0000158C  B8DA11            mov ax,0x11da
0000158F  8CCA              mov dx,cs
00001591  C47EFA            les di,word [bp-0x6]
00001594  26894514          mov [es:di+0x14],ax
00001598  26895516          mov [es:di+0x16],dx
0000159C  B8C211            mov ax,0x11c2
0000159F  8CCA              mov dx,cs
000015A1  C47EFA            les di,word [bp-0x6]
000015A4  26894518          mov [es:di+0x18],ax
000015A8  2689551A          mov [es:di+0x1a],dx
000015AC  EB29              jmp 0x15d7
000015AE  C47EFA            les di,word [bp-0x6]
000015B1  26C74502B2D7      mov word [es:di+0x2],0xd7b2
000015B7  B82214            mov ax,0x1422
000015BA  8CCA              mov dx,cs
000015BC  C47EFA            les di,word [bp-0x6]
000015BF  26894514          mov [es:di+0x14],ax
000015C3  26895516          mov [es:di+0x16],dx
000015C7  B82214            mov ax,0x1422
000015CA  8CCA              mov dx,cs
000015CC  C47EFA            les di,word [bp-0x6]
000015CF  26894518          mov [es:di+0x18],ax
000015D3  2689551A          mov [es:di+0x1a],dx
000015D7  B8C211            mov ax,0x11c2
000015DA  8CCA              mov dx,cs
000015DC  C47EFA            les di,word [bp-0x6]
000015DF  2689451C          mov [es:di+0x1c],ax
000015E3  2689551E          mov [es:di+0x1e],dx
000015E7  31C0              xor ax,ax
000015E9  8946FE            mov [bp-0x2],ax
000015EC  8B46FE            mov ax,[bp-0x2]
000015EF  89EC              mov sp,bp
000015F1  5D                pop bp
000015F2  CA0400            retf word 0x4
000015F5  55                push bp
000015F6  89E5              mov bp,sp
000015F8  83EC04            sub sp,0x4
000015FB  C47E06            les di,word [bp+0x6]
000015FE  897EFC            mov [bp-0x4],di
00001601  8C46FE            mov word [bp-0x2],es
00001604  C47EFC            les di,word [bp-0x4]
00001607  26C705FFFF        mov word [es:di],0xffff
0000160C  C47EFC            les di,word [bp-0x4]
0000160F  26C74502B0D7      mov word [es:di+0x2],0xd7b0
00001615  C47EFC            les di,word [bp-0x4]
00001618  26C745048000      mov word [es:di+0x4],0x80
0000161E  C47EFC            les di,word [bp-0x4]
00001621  268D858000        lea ax,[es:di+0x80]
00001626  8CC2              mov dx,es
00001628  C47EFC            les di,word [bp-0x4]
0000162B  2689450C          mov [es:di+0xc],ax
0000162F  2689550E          mov [es:di+0xe],dx
00001633  B87215            mov ax,0x1572
00001636  8CCA              mov dx,cs
00001638  C47EFC            les di,word [bp-0x4]
0000163B  26894510          mov [es:di+0x10],ax
0000163F  26895512          mov [es:di+0x12],dx
00001643  C47EFC            les di,word [bp-0x4]
00001646  26C6453000        mov byte [es:di+0x30],0x0
0000164B  89EC              mov sp,bp
0000164D  5D                pop bp
0000164E  CA0400            retf word 0x4
00001651  55                push bp
00001652  89E5              mov bp,sp
00001654  83EC02            sub sp,0x2
00001657  B406              mov ah,0x6
00001659  B2FF              mov dl,0xff
0000165B  CD21              int byte 0x21
0000165D  9F                lahf
0000165E  B106              mov cl,0x6
00001660  D2EC              shr ah,cl
00001662  80E401            and ah,0x1
00001665  8946FE            mov [bp-0x2],ax
00001668  8B46FE            mov ax,[bp-0x2]
0000166B  89EC              mov sp,bp
0000166D  5D                pop bp
0000166E  CB                retf
0000166F  55                push bp
00001670  89E5              mov bp,sp
00001672  83EC01            sub sp,0x1
00001675  803E866E01        cmp byte [0x6e86],0x1
0000167A  7507              jnz 0x1683
0000167C  FF1E4C6C          call word far [0x6c4c]
00001680  A3856E            mov [0x6e85],ax
00001683  803E866E00        cmp byte [0x6e86],0x0
00001688  7404              jz 0x168e
0000168A  B000              mov al,0x0
0000168C  EB02              jmp 0x1690
0000168E  B001              mov al,0x1
00001690  8846FF            mov [bp-0x1],al
00001693  8A46FF            mov al,[bp-0x1]
00001696  89EC              mov sp,bp
00001698  5D                pop bp
00001699  CB                retf
0000169A  55                push bp
0000169B  89E5              mov bp,sp
0000169D  83EC03            sub sp,0x3
000016A0  A0AF6B            mov al,[0x6baf]
000016A3  8846FE            mov [bp-0x2],al
000016A6  A0AD6B            mov al,[0x6bad]
000016A9  8846FD            mov [bp-0x3],al
000016AC  0E                push cs
000016AD  E8FEEE            call 0x5ae
000016B0  B002              mov al,0x2
000016B2  50                push ax
000016B3  0E                push cs
000016B4  E88304            call 0x1b3a
000016B7  31C0              xor ax,ax
000016B9  50                push ax
000016BA  FF36D36B          push word [0x6bd3]
000016BE  0E                push cs
000016BF  E858F0            call 0x71a
000016C2  0E                push cs
000016C3  E8A9FF            call 0x166f
000016C6  08C0              or al,al
000016C8  74F8              jz 0x16c2
000016CA  31C0              xor ax,ax
000016CC  50                push ax
000016CD  A1D36B            mov ax,[0x6bd3]
000016D0  F7D8              neg ax
000016D2  50                push ax
000016D3  0E                push cs
000016D4  E843F0            call 0x71a
000016D7  807EFD00          cmp byte [bp-0x3],0x0
000016DB  7404              jz 0x16e1
000016DD  0E                push cs
000016DE  E867EE            call 0x548
000016E1  8A46FE            mov al,[bp-0x2]
000016E4  50                push ax
000016E5  0E                push cs
000016E6  E85104            call 0x1b3a
000016E9  A0856E            mov al,[0x6e85]
000016EC  8846FF            mov [bp-0x1],al
000016EF  C706856E0001      mov word [0x6e85],0x100
000016F5  8A46FF            mov al,[bp-0x1]
000016F8  89EC              mov sp,bp
000016FA  5D                pop bp
000016FB  CB                retf
000016FC  55                push bp
000016FD  89E5              mov bp,sp
000016FF  FA                cli
00001700  C47E06            les di,word [bp+0x6]
00001703  06                push es
00001704  57                push di
00001705  BFE76B            mov di,0x6be7
00001708  1E                push ds
00001709  57                push di
0000170A  B80800            mov ax,0x8
0000170D  50                push ax
0000170E  9AC002561A        call word 0x1a56:word 0x2c0
00001713  FB                sti
00001714  89EC              mov sp,bp
00001716  5D                pop bp
00001717  CA0400            retf word 0x4
0000171A  55                push bp
0000171B  89E5              mov bp,sp
0000171D  83EC26            sub sp,0x26
00001720  C47E0A            les di,word [bp+0xa]
00001723  06                push es
00001724  57                push di
00001725  8D7EE0            lea di,[bp-0x20]
00001728  16                push ss
00001729  57                push di
0000172A  B82000            mov ax,0x20
0000172D  50                push ax
0000172E  9AC002561A        call word 0x1a56:word 0x2c0
00001733  C47E06            les di,word [bp+0x6]
00001736  26C47D28          les di,word [es:di+0x28]
0000173A  26C47D0A          les di,word [es:di+0xa]
0000173E  268A4501          mov al,[es:di+0x1]
00001742  A2BC11            mov [0x11bc],al
00001745  C47E06            les di,word [bp+0x6]
00001748  26C47D28          les di,word [es:di+0x28]
0000174C  26FF750C          push word [es:di+0xc]
00001750  26FF750A          push word [es:di+0xa]
00001754  B81000            mov ax,0x10
00001757  50                push ax
00001758  9A00002A15        call word 0x152a:word 0x0
0000175D  A3BA11            mov [0x11ba],ax
00001760  C47E06            les di,word [bp+0x6]
00001763  26C47D28          les di,word [es:di+0x28]
00001767  26C47D0A          les di,word [es:di+0xa]
0000176B  268A05            mov al,[es:di]
0000176E  A2BD11            mov [0x11bd],al
00001771  BFB411            mov di,0x11b4
00001774  1E                push ds
00001775  57                push di
00001776  C47E06            les di,word [bp+0x6]
00001779  26C47D28          les di,word [es:di+0x28]
0000177D  81C71200          add di,0x12
00001781  06                push es
00001782  57                push di
00001783  B80A00            mov ax,0xa
00001786  50                push ax
00001787  9A641B561A        call word 0x1a56:word 0x1b64
0000178C  C746DA0F00        mov word [bp-0x26],0xf
00001791  EB03              jmp 0x1796
00001793  FF4EDA            dec word [bp-0x26]
00001796  B80F00            mov ax,0xf
00001799  2B46DA            sub ax,[bp-0x26]
0000179C  8BF8              mov di,ax
0000179E  D1E7              shl di,1
000017A0  8B43E0            mov ax,[bp+di-0x20]
000017A3  8946DE            mov [bp-0x22],ax
000017A6  C746DC0F00        mov word [bp-0x24],0xf
000017AB  EB03              jmp 0x17b0
000017AD  FF4EDC            dec word [bp-0x24]
000017B0  C47E06            les di,word [bp+0x6]
000017B3  06                push es
000017B4  57                push di
000017B5  FF76DC            push word [bp-0x24]
000017B8  FF76DA            push word [bp-0x26]
000017BB  8B46DE            mov ax,[bp-0x22]
000017BE  250100            and ax,0x1
000017C1  31D2              xor dx,dx
000017C3  F7D0              not ax
000017C5  F7D2              not dx
000017C7  050100            add ax,0x1
000017CA  83D200            adc dx,0x0
000017CD  50                push ax
000017CE  9AE3042A15        call word 0x152a:word 0x4e3
000017D3  8B46DE            mov ax,[bp-0x22]
000017D6  D1E8              shr ax,1
000017D8  8946DE            mov [bp-0x22],ax
000017DB  837EDC00          cmp word [bp-0x24],0x0
000017DF  75CC              jnz 0x17ad
000017E1  837EDA00          cmp word [bp-0x26],0x0
000017E5  75AC              jnz 0x1793
000017E7  89EC              mov sp,bp
000017E9  5D                pop bp
000017EA  C20A00            ret word 0xa
000017ED  55                push bp
000017EE  89E5              mov bp,sp
000017F0  83EC70            sub sp,0x70
000017F3  C47E04            les di,word [bp+0x4]
000017F6  06                push es
000017F7  57                push di
000017F8  8D7EBC            lea di,[bp-0x44]
000017FB  16                push ss
000017FC  57                push di
000017FD  B84400            mov ax,0x44
00001800  50                push ax
00001801  9AC002561A        call word 0x1a56:word 0x2c0
00001806  8B46FC            mov ax,[bp-0x4]
00001809  C47E08            les di,word [bp+0x8]
0000180C  268905            mov [es:di],ax
0000180F  8B46FE            mov ax,[bp-0x2]
00001812  C47E08            les di,word [bp+0x8]
00001815  26894502          mov [es:di+0x2],ax
00001819  B8D56B            mov ax,0x6bd5
0000181C  8CDA              mov dx,ds
0000181E  52                push dx
0000181F  50                push ax
00001820  C47E08            les di,word [bp+0x8]
00001823  81C70400          add di,0x4
00001827  06                push es
00001828  57                push di
00001829  B81000            mov ax,0x10
0000182C  50                push ax
0000182D  B81000            mov ax,0x10
00001830  50                push ax
00001831  B001              mov al,0x1
00001833  50                push ax
00001834  9AC3002A15        call word 0x152a:word 0xc3
00001839  B8DE6B            mov ax,0x6bde
0000183C  8CDA              mov dx,ds
0000183E  52                push dx
0000183F  50                push ax
00001840  C47E08            les di,word [bp+0x8]
00001843  26C47D04          les di,word [es:di+0x4]
00001847  81C70E00          add di,0xe
0000184B  06                push es
0000184C  57                push di
0000184D  B81000            mov ax,0x10
00001850  50                push ax
00001851  B81000            mov ax,0x10
00001854  50                push ax
00001855  B001              mov al,0x1
00001857  50                push ax
00001858  9AC3002A15        call word 0x152a:word 0xc3
0000185D  8D7E90            lea di,[bp-0x70]
00001860  16                push ss
00001861  57                push di
00001862  C47E08            les di,word [bp+0x8]
00001865  26FF7506          push word [es:di+0x6]
00001869  26FF7504          push word [es:di+0x4]
0000186D  9A10022A15        call word 0x152a:word 0x210
00001872  8D7EDC            lea di,[bp-0x24]
00001875  16                push ss
00001876  57                push di
00001877  8D7E90            lea di,[bp-0x70]
0000187A  16                push ss
0000187B  57                push di
0000187C  55                push bp
0000187D  E89AFE            call 0x171a
00001880  8D7E90            lea di,[bp-0x70]
00001883  16                push ss
00001884  57                push di
00001885  9A8B042A15        call word 0x152a:word 0x48b
0000188A  8D7E90            lea di,[bp-0x70]
0000188D  16                push ss
0000188E  57                push di
0000188F  C47E08            les di,word [bp+0x8]
00001892  26C47D04          les di,word [es:di+0x4]
00001896  26FF7510          push word [es:di+0x10]
0000189A  26FF750E          push word [es:di+0xe]
0000189E  9A10022A15        call word 0x152a:word 0x210
000018A3  8D7EBC            lea di,[bp-0x44]
000018A6  16                push ss
000018A7  57                push di
000018A8  8D7E90            lea di,[bp-0x70]
000018AB  16                push ss
000018AC  57                push di
000018AD  55                push bp
000018AE  E869FE            call 0x171a
000018B1  8D7E90            lea di,[bp-0x70]
000018B4  16                push ss
000018B5  57                push di
000018B6  9A8B042A15        call word 0x152a:word 0x48b
000018BB  89EC              mov sp,bp
000018BD  5D                pop bp
000018BE  C20800            ret word 0x8
000018C1  55                push bp
000018C2  89E5              mov bp,sp
000018C4  83EC09            sub sp,0x9
000018C7  FA                cli
000018C8  FE064A6C          inc byte [0x6c4a]
000018CC  833E456C00        cmp word [0x6c45],0x0
000018D1  7F03              jg 0x18d6
000018D3  E90701            jmp 0x19dd
000018D6  803E8F6E00        cmp byte [0x6e8f],0x0
000018DB  7507              jnz 0x18e4
000018DD  833E476C00        cmp word [0x6c47],0x0
000018E2  7405              jz 0x18e9
000018E4  C606496C01        mov byte [0x6c49],0x1
000018E9  833E476C00        cmp word [0x6c47],0x0
000018EE  7507              jnz 0x18f7
000018F0  803E8F6E00        cmp byte [0x6e8f],0x0
000018F5  7404              jz 0x18fb
000018F7  B000              mov al,0x0
000018F9  EB02              jmp 0x18fd
000018FB  B001              mov al,0x1
000018FD  8846FF            mov [bp-0x1],al
00001900  A1376C            mov ax,[0x6c37]
00001903  8946F7            mov [bp-0x9],ax
00001906  A1396C            mov ax,[0x6c39]
00001909  8946F9            mov [bp-0x7],ax
0000190C  A13B6C            mov ax,[0x6c3b]
0000190F  8946FB            mov [bp-0x5],ax
00001912  A13D6C            mov ax,[0x6c3d]
00001915  8946FD            mov [bp-0x3],ax
00001918  FF06476C          inc word [0x6c47]
0000191C  FA                cli
0000191D  FE0E4A6C          dec byte [0x6c4a]
00001921  7501              jnz 0x1924
00001923  FB                sti
00001924  837EF700          cmp word [bp-0x9],0x0
00001928  7D0A              jnl 0x1934
0000192A  31C0              xor ax,ax
0000192C  8946F7            mov [bp-0x9],ax
0000192F  C746F90F00        mov word [bp-0x7],0xf
00001934  8B46FD            mov ax,[bp-0x3]
00001937  3B066B6B          cmp ax,[0x6b6b]
0000193B  7C10              jl 0x194d
0000193D  A16B6B            mov ax,[0x6b6b]
00001940  48                dec ax
00001941  8946FD            mov [bp-0x3],ax
00001944  8B46FD            mov ax,[bp-0x3]
00001947  2D0F00            sub ax,0xf
0000194A  8946FB            mov [bp-0x5],ax
0000194D  807EFF00          cmp byte [bp-0x1],0x0
00001951  7503              jnz 0x1956
00001953  E97E00            jmp 0x19d4
00001956  C6068F6E01        mov byte [0x6e8f],0x1
0000195B  8B46F7            mov ax,[bp-0x9]
0000195E  A3946E            mov [0x6e94],ax
00001961  8B46F9            mov ax,[bp-0x7]
00001964  A3986E            mov [0x6e98],ax
00001967  8B46FB            mov ax,[bp-0x5]
0000196A  A3966E            mov [0x6e96],ax
0000196D  8B46FD            mov ax,[bp-0x3]
00001970  A39A6E            mov [0x6e9a],ax
00001973  BF946E            mov di,0x6e94
00001976  1E                push ds
00001977  57                push di
00001978  C43E906E          les di,word [0x6e90]
0000197C  268D4512          lea ax,[es:di+0x12]
00001980  8CC2              mov dx,es
00001982  52                push dx
00001983  50                push ax
00001984  9AE805CE18        call word 0x18ce:word 0x5e8
00001989  B80700            mov ax,0x7
0000198C  50                push ax
0000198D  9ABA0ACE18        call word 0x18ce:word 0xaba
00001992  BF946E            mov di,0x6e94
00001995  1E                push ds
00001996  57                push di
00001997  C43EEB6B          les di,word [0x6beb]
0000199B  26C47D0E          les di,word [es:di+0xe]
0000199F  268D4512          lea ax,[es:di+0x12]
000019A3  8CC2              mov dx,es
000019A5  52                push dx
000019A6  50                push ax
000019A7  9A8700CE18        call word 0x18ce:word 0x87
000019AC  B80200            mov ax,0x2
000019AF  50                push ax
000019B0  9ABA0ACE18        call word 0x18ce:word 0xaba
000019B5  BF946E            mov di,0x6e94
000019B8  1E                push ds
000019B9  57                push di
000019BA  C43EEB6B          les di,word [0x6beb]
000019BE  268D4512          lea ax,[es:di+0x12]
000019C2  8CC2              mov dx,es
000019C4  52                push dx
000019C5  50                push ax
000019C6  9A8700CE18        call word 0x18ce:word 0x87
000019CB  FF36BE11          push word [0x11be]
000019CF  9ABA0ACE18        call word 0x18ce:word 0xaba
000019D4  FA                cli
000019D5  FE064A6C          inc byte [0x6c4a]
000019D9  FF0E476C          dec word [0x6c47]
000019DD  FA                cli
000019DE  FE0E4A6C          dec byte [0x6c4a]
000019E2  7501              jnz 0x19e5
000019E4  FB                sti
000019E5  89EC              mov sp,bp
000019E7  5D                pop bp
000019E8  CB                retf
000019E9  55                push bp
000019EA  89E5              mov bp,sp
000019EC  83EC01            sub sp,0x1
000019EF  FA                cli
000019F0  FE064A6C          inc byte [0x6c4a]
000019F4  803E8F6E00        cmp byte [0x6e8f],0x0
000019F9  740C              jz 0x1a07
000019FB  833E476C00        cmp word [0x6c47],0x0
00001A00  7405              jz 0x1a07
00001A02  C606496C01        mov byte [0x6c49],0x1
00001A07  803E8F6E00        cmp byte [0x6e8f],0x0
00001A0C  7407              jz 0x1a15
00001A0E  833E476C00        cmp word [0x6c47],0x0
00001A13  7404              jz 0x1a19
00001A15  B000              mov al,0x0
00001A17  EB02              jmp 0x1a1b
00001A19  B001              mov al,0x1
00001A1B  8846FF            mov [bp-0x1],al
00001A1E  FF06476C          inc word [0x6c47]
00001A22  FA                cli
00001A23  FE0E4A6C          dec byte [0x6c4a]
00001A27  7501              jnz 0x1a2a
00001A29  FB                sti
00001A2A  807EFF00          cmp byte [bp-0x1],0x0
00001A2E  743A              jz 0x1a6a
00001A30  C6068F6E00        mov byte [0x6e8f],0x0
00001A35  833EBE1100        cmp word [0x11be],0x0
00001A3A  7408              jz 0x1a44
00001A3C  31C0              xor ax,ax
00001A3E  50                push ax
00001A3F  9ABA0ACE18        call word 0x18ce:word 0xaba
00001A44  BF946E            mov di,0x6e94
00001A47  1E                push ds
00001A48  57                push di
00001A49  C43E906E          les di,word [0x6e90]
00001A4D  268D4512          lea ax,[es:di+0x12]
00001A51  8CC2              mov dx,es
00001A53  52                push dx
00001A54  50                push ax
00001A55  9A8700CE18        call word 0x18ce:word 0x87
00001A5A  833EBE1100        cmp word [0x11be],0x0
00001A5F  7409              jz 0x1a6a
00001A61  FF36BE11          push word [0x11be]
00001A65  9ABA0ACE18        call word 0x18ce:word 0xaba
00001A6A  FA                cli
00001A6B  FE064A6C          inc byte [0x6c4a]
00001A6F  FF0E476C          dec word [0x6c47]
00001A73  FA                cli
00001A74  FE0E4A6C          dec byte [0x6c4a]
00001A78  7501              jnz 0x1a7b
00001A7A  FB                sti
00001A7B  89EC              mov sp,bp
00001A7D  5D                pop bp
00001A7E  CB                retf
00001A7F  55                push bp
00001A80  89E5              mov bp,sp
00001A82  FA                cli
00001A83  FF06476C          inc word [0x6c47]
00001A87  FB                sti
00001A88  803EAE6B00        cmp byte [0x6bae],0x0
00001A8D  7412              jz 0x1aa1
00001A8F  8B4606            mov ax,[bp+0x6]
00001A92  A3916B            mov [0x6b91],ax
00001A95  8B7E06            mov di,[bp+0x6]
00001A98  8A854766          mov al,[di+0x6647]
00001A9C  30E4              xor ah,ah
00001A9E  894606            mov [bp+0x6],ax
00001AA1  8B4606            mov ax,[bp+0x6]
00001AA4  A3A16B            mov [0x6ba1],ax
00001AA7  FF7606            push word [bp+0x6]
00001AAA  9A210BCE18        call word 0x18ce:word 0xb21
00001AAF  FA                cli
00001AB0  FE064A6C          inc byte [0x6c4a]
00001AB4  FF0E476C          dec word [0x6c47]
00001AB8  803E496C01        cmp byte [0x6c49],0x1
00001ABD  750F              jnz 0x1ace
00001ABF  C606496C00        mov byte [0x6c49],0x0
00001AC4  FF1E876E          call word far [0x6e87]
00001AC8  FF1E8B6E          call word far [0x6e8b]
00001ACC  EBEA              jmp 0x1ab8
00001ACE  FE0E4A6C          dec byte [0x6c4a]
00001AD2  FB                sti
00001AD3  89EC              mov sp,bp
00001AD5  5D                pop bp
00001AD6  CA0200            retf word 0x2
00001AD9  55                push bp
00001ADA  89E5              mov bp,sp
00001ADC  FA                cli
00001ADD  FF06476C          inc word [0x6c47]
00001AE1  FB                sti
00001AE2  803EAE6B00        cmp byte [0x6bae],0x0
00001AE7  7412              jz 0x1afb
00001AE9  8B4606            mov ax,[bp+0x6]
00001AEC  A3936B            mov [0x6b93],ax
00001AEF  8B7E06            mov di,[bp+0x6]
00001AF2  8A854766          mov al,[di+0x6647]
00001AF6  30E4              xor ah,ah
00001AF8  894606            mov [bp+0x6],ax
00001AFB  8B4606            mov ax,[bp+0x6]
00001AFE  A3A36B            mov [0x6ba3],ax
00001B01  FF7606            push word [bp+0x6]
00001B04  9A1C18CE18        call word 0x18ce:word 0x181c
00001B09  FA                cli
00001B0A  FE064A6C          inc byte [0x6c4a]
00001B0E  FF0E476C          dec word [0x6c47]
00001B12  803E496C01        cmp byte [0x6c49],0x1
00001B17  750F              jnz 0x1b28
00001B19  C606496C00        mov byte [0x6c49],0x0
00001B1E  FF1E876E          call word far [0x6e87]
00001B22  FF1E8B6E          call word far [0x6e8b]
00001B26  EBEA              jmp 0x1b12
00001B28  FE0E4A6C          dec byte [0x6c4a]
00001B2C  FB                sti
00001B2D  89EC              mov sp,bp
00001B2F  5D                pop bp
00001B30  CA0200            retf word 0x2
00001B33  55                push bp
00001B34  89E5              mov bp,sp
00001B36  89EC              mov sp,bp
00001B38  5D                pop bp
00001B39  C3                ret
00001B3A  55                push bp
00001B3B  89E5              mov bp,sp
00001B3D  FA                cli
00001B3E  FF06476C          inc word [0x6c47]
00001B42  FB                sti
00001B43  8A4606            mov al,[bp+0x6]
00001B46  A2AF6B            mov [0x6baf],al
00001B49  8A4606            mov al,[bp+0x6]
00001B4C  98                cbw
00001B4D  8BF8              mov di,ax
00001B4F  8A85C011          mov al,[di+0x11c0]
00001B53  98                cbw
00001B54  A3BE11            mov [0x11be],ax
00001B57  FF36BE11          push word [0x11be]
00001B5B  9A0A06CE18        call word 0x18ce:word 0x60a
00001B60  FA                cli
00001B61  FE064A6C          inc byte [0x6c4a]
00001B65  FF0E476C          dec word [0x6c47]
00001B69  803E496C01        cmp byte [0x6c49],0x1
00001B6E  750F              jnz 0x1b7f
00001B70  C606496C00        mov byte [0x6c49],0x0
00001B75  FF1E876E          call word far [0x6e87]
00001B79  FF1E8B6E          call word far [0x6e8b]
00001B7D  EBEA              jmp 0x1b69
00001B7F  FE0E4A6C          dec byte [0x6c4a]
00001B83  FB                sti
00001B84  89EC              mov sp,bp
00001B86  5D                pop bp
00001B87  CA0200            retf word 0x2
00001B8A  55                push bp
00001B8B  89E5              mov bp,sp
00001B8D  FA                cli
00001B8E  FF06476C          inc word [0x6c47]
00001B92  FB                sti
00001B93  FF7608            push word [bp+0x8]
00001B96  FF7606            push word [bp+0x6]
00001B99  BF956B            mov di,0x6b95
00001B9C  1E                push ds
00001B9D  57                push di
00001B9E  9A81001B18        call word 0x181b:word 0x81
00001BA3  803EAD6B00        cmp byte [0x6bad],0x0
00001BA8  7415              jz 0x1bbf
00001BAA  C406956B          les ax,word [0x6b95]
00001BAE  8CC2              mov dx,es
00001BB0  A3856B            mov [0x6b85],ax
00001BB3  8916876B          mov [0x6b87],dx
00001BB7  BF956B            mov di,0x6b95
00001BBA  1E                push ds
00001BBB  57                push di
00001BBC  E82FE5            call 0xee
00001BBF  FF36956B          push word [0x6b95]
00001BC3  FF36976B          push word [0x6b97]
00001BC7  9A850CCE18        call word 0x18ce:word 0xc85
00001BCC  FA                cli
00001BCD  FE064A6C          inc byte [0x6c4a]
00001BD1  FF0E476C          dec word [0x6c47]
00001BD5  803E496C01        cmp byte [0x6c49],0x1
00001BDA  750F              jnz 0x1beb
00001BDC  C606496C00        mov byte [0x6c49],0x0
00001BE1  FF1E876E          call word far [0x6e87]
00001BE5  FF1E8B6E          call word far [0x6e8b]
00001BE9  EBEA              jmp 0x1bd5
00001BEB  FE0E4A6C          dec byte [0x6c4a]
00001BEF  FB                sti
00001BF0  89EC              mov sp,bp
00001BF2  5D                pop bp
00001BF3  CA0400            retf word 0x4
00001BF6  55                push bp
00001BF7  89E5              mov bp,sp
00001BF9  83EC08            sub sp,0x8
00001BFC  B83466            mov ax,0x6634
00001BFF  8CDA              mov dx,ds
00001C01  52                push dx
00001C02  50                push ax
00001C03  C47E0E            les di,word [bp+0xe]
00001C06  06                push es
00001C07  57                push di
00001C08  8B4608            mov ax,[bp+0x8]
00001C0B  2B460C            sub ax,[bp+0xc]
00001C0E  40                inc ax
00001C0F  50                push ax
00001C10  8B4606            mov ax,[bp+0x6]
00001C13  2B460A            sub ax,[bp+0xa]
00001C16  40                inc ax
00001C17  50                push ax
00001C18  8A4604            mov al,[bp+0x4]
00001C1B  50                push ax
00001C1C  9AC3002A15        call word 0x152a:word 0xc3
00001C21  8B460C            mov ax,[bp+0xc]
00001C24  C47E0E            les di,word [bp+0xe]
00001C27  26C43D            les di,word [es:di]
00001C2A  26894504          mov [es:di+0x4],ax
00001C2E  A16B6B            mov ax,[0x6b6b]
00001C31  2B4606            sub ax,[bp+0x6]
00001C34  48                dec ax
00001C35  C47E0E            les di,word [bp+0xe]
00001C38  26C43D            les di,word [es:di]
00001C3B  26894506          mov [es:di+0x6],ax
00001C3F  8B460C            mov ax,[bp+0xc]
00001C42  8946F8            mov [bp-0x8],ax
00001C45  8B4608            mov ax,[bp+0x8]
00001C48  8946FC            mov [bp-0x4],ax
00001C4B  8B460A            mov ax,[bp+0xa]
00001C4E  8946FA            mov [bp-0x6],ax
00001C51  8B4606            mov ax,[bp+0x6]
00001C54  8946FE            mov [bp-0x2],ax
00001C57  FF760C            push word [bp+0xc]
00001C5A  FF760A            push word [bp+0xa]
00001C5D  FF7608            push word [bp+0x8]
00001C60  FF7606            push word [bp+0x6]
00001C63  FA                cli
00001C64  FE064A6C          inc byte [0x6c4a]
00001C68  5A                pop dx
00001C69  59                pop cx
00001C6A  5B                pop bx
00001C6B  58                pop ax
00001C6C  39C8              cmp ax,cx
00001C6E  7E02              jng 0x1c72
00001C70  87C1              xchg ax,cx
00001C72  39D3              cmp bx,dx
00001C74  7E02              jng 0x1c78
00001C76  87DA              xchg bx,dx
00001C78  803E8F6E01        cmp byte [0x6e8f],0x1
00001C7D  7521              jnz 0x1ca0
00001C7F  3906986E          cmp [0x6e98],ax
00001C83  7C1B              jl 0x1ca0
00001C85  391E9A6E          cmp [0x6e9a],bx
00001C89  7C15              jl 0x1ca0
00001C8B  3B0E946E          cmp cx,[0x6e94]
00001C8F  7C0F              jl 0x1ca0
00001C91  3B16966E          cmp dx,[0x6e96]
00001C95  7C09              jl 0x1ca0
00001C97  FF1E876E          call word far [0x6e87]
00001C9B  C606496C01        mov byte [0x6c49],0x1
00001CA0  FF06476C          inc word [0x6c47]
00001CA4  FE0E4A6C          dec byte [0x6c4a]
00001CA8  FB                sti
00001CA9  8D7EF8            lea di,[bp-0x8]
00001CAC  16                push ss
00001CAD  57                push di
00001CAE  C47E0E            les di,word [bp+0xe]
00001CB1  26C43D            les di,word [es:di]
00001CB4  268D4512          lea ax,[es:di+0x12]
00001CB8  8CC2              mov dx,es
00001CBA  52                push dx
00001CBB  50                push ax
00001CBC  9AE805CE18        call word 0x18ce:word 0x5e8
00001CC1  FA                cli
00001CC2  FE064A6C          inc byte [0x6c4a]
00001CC6  FF0E476C          dec word [0x6c47]
00001CCA  803E496C01        cmp byte [0x6c49],0x1
00001CCF  750F              jnz 0x1ce0
00001CD1  C606496C00        mov byte [0x6c49],0x0
00001CD6  FF1E876E          call word far [0x6e87]
00001CDA  FF1E8B6E          call word far [0x6e8b]
00001CDE  EBEA              jmp 0x1cca
00001CE0  FE0E4A6C          dec byte [0x6c4a]
00001CE4  FB                sti
00001CE5  C47E0E            les di,word [bp+0xe]
00001CE8  26C43D            les di,word [es:di]
00001CEB  268D4512          lea ax,[es:di+0x12]
00001CEF  8CC2              mov dx,es
00001CF1  89C7              mov di,ax
00001CF3  8EC2              mov es,dx
00001CF5  268A4504          mov al,[es:di+0x4]
00001CF9  C47E0E            les di,word [bp+0xe]
00001CFC  26C43D            les di,word [es:di]
00001CFF  26884508          mov [es:di+0x8],al
00001D03  89EC              mov sp,bp
00001D05  5D                pop bp
00001D06  C20E00            ret word 0xe
00001D09  55                push bp
00001D0A  89E5              mov bp,sp
00001D0C  FF760E            push word [bp+0xe]
00001D0F  FF760C            push word [bp+0xc]
00001D12  FF760A            push word [bp+0xa]
00001D15  FF7608            push word [bp+0x8]
00001D18  E8E5E2            call 0x0
00001D1B  C47E10            les di,word [bp+0x10]
00001D1E  06                push es
00001D1F  57                push di
00001D20  FF36506C          push word [0x6c50]
00001D24  FF36546C          push word [0x6c54]
00001D28  FF36526C          push word [0x6c52]
00001D2C  FF36566C          push word [0x6c56]
00001D30  8A4606            mov al,[bp+0x6]
00001D33  50                push ax
00001D34  E8BFFE            call 0x1bf6
00001D37  89EC              mov sp,bp
00001D39  5D                pop bp
00001D3A  CA0E00            retf word 0xe
00001D3D  55                push bp
00001D3E  89E5              mov bp,sp
00001D40  83EC04            sub sp,0x4
00001D43  C47E04            les di,word [bp+0x4]
00001D46  268D4512          lea ax,[es:di+0x12]
00001D4A  8CC2              mov dx,es
00001D4C  89C7              mov di,ax
00001D4E  8EC2              mov es,dx
00001D50  897EFC            mov [bp-0x4],di
00001D53  8C46FE            mov word [bp-0x2],es
00001D56  C47E04            les di,word [bp+0x4]
00001D59  268B05            mov ax,[es:di]
00001D5C  C47EFC            les di,word [bp-0x4]
00001D5F  268905            mov [es:di],ax
00001D62  C47E04            les di,word [bp+0x4]
00001D65  268B4502          mov ax,[es:di+0x2]
00001D69  C47EFC            les di,word [bp-0x4]
00001D6C  26894502          mov [es:di+0x2],ax
00001D70  C47E04            les di,word [bp+0x4]
00001D73  268A4508          mov al,[es:di+0x8]
00001D77  30E4              xor ah,ah
00001D79  C47EFC            les di,word [bp-0x4]
00001D7C  26894504          mov [es:di+0x4],ax
00001D80  B83466            mov ax,0x6634
00001D83  8CDA              mov dx,ds
00001D85  52                push dx
00001D86  50                push ax
00001D87  C47EFC            les di,word [bp-0x4]
00001D8A  26FF35            push word [es:di]
00001D8D  9A00002A15        call word 0x152a:word 0x0
00001D92  C47EFC            les di,word [bp-0x4]
00001D95  26894506          mov [es:di+0x6],ax
00001D99  A03566            mov al,[0x6635]
00001D9C  C47EFC            les di,word [bp-0x4]
00001D9F  26884508          mov [es:di+0x8],al
00001DA3  A03466            mov al,[0x6634]
00001DA6  C47EFC            les di,word [bp-0x4]
00001DA9  26884509          mov [es:di+0x9],al
00001DAD  89EC              mov sp,bp
00001DAF  5D                pop bp
00001DB0  C20400            ret word 0x4
00001DB3  55                push bp
00001DB4  89E5              mov bp,sp
00001DB6  1E                push ds
00001DB7  C5B60C00          lds si,word [bp+0xc]
00001DBB  C4BE0800          les di,word [bp+0x8]
00001DBF  8B8E0600          mov cx,[bp+0x6]
00001DC3  83F900            cmp cx,0x0
00001DC6  7407              jz 0x1dcf
00001DC8  AC                lodsb
00001DC9  262005            and [es:di],al
00001DCC  47                inc di
00001DCD  E2F9              loop 0x1dc8
00001DCF  1F                pop ds
00001DD0  89EC              mov sp,bp
00001DD2  5D                pop bp
00001DD3  C20C00            ret word 0xc
00001DD6  55                push bp
00001DD7  89E5              mov bp,sp
00001DD9  83EC64            sub sp,0x64
00001DDC  A03466            mov al,[0x6634]
00001DDF  FEC8              dec al
00001DE1  30E4              xor ah,ah
00001DE3  8946B6            mov [bp-0x4a],ax
00001DE6  C47E0C            les di,word [bp+0xc]
00001DE9  268B05            mov ax,[es:di]
00001DEC  8946AE            mov [bp-0x52],ax
00001DEF  C47E0C            les di,word [bp+0xc]
00001DF2  268B4502          mov ax,[es:di+0x2]
00001DF6  8946B0            mov [bp-0x50],ax
00001DF9  B83466            mov ax,0x6634
00001DFC  8CDA              mov dx,ds
00001DFE  52                push dx
00001DFF  50                push ax
00001E00  FF76AE            push word [bp-0x52]
00001E03  9A00002A15        call word 0x152a:word 0x0
00001E08  8946B4            mov [bp-0x4c],ax
00001E0B  B83466            mov ax,0x6634
00001E0E  8CDA              mov dx,ds
00001E10  52                push dx
00001E11  50                push ax
00001E12  FF76AE            push word [bp-0x52]
00001E15  FF76B0            push word [bp-0x50]
00001E18  9A53002A15        call word 0x152a:word 0x53
00001E1D  8946B2            mov [bp-0x4e],ax
00001E20  B83466            mov ax,0x6634
00001E23  8CDA              mov dx,ds
00001E25  52                push dx
00001E26  50                push ax
00001E27  8D7EFC            lea di,[bp-0x4]
00001E2A  16                push ss
00001E2B  57                push di
00001E2C  FF76AE            push word [bp-0x52]
00001E2F  B80100            mov ax,0x1
00001E32  50                push ax
00001E33  B001              mov al,0x1
00001E35  50                push ax
00001E36  9AC3002A15        call word 0x152a:word 0xc3
00001E3B  FF76FE            push word [bp-0x2]
00001E3E  FF76FC            push word [bp-0x4]
00001E41  E8F9FE            call 0x1d3d
00001E44  A03C66            mov al,[0x663c]
00001E47  30E4              xor ah,ah
00001E49  C47E0C            les di,word [bp+0xc]
00001E4C  03F8              add di,ax
00001E4E  268D4512          lea ax,[es:di+0x12]
00001E52  8CC2              mov dx,es
00001E54  8946AA            mov [bp-0x56],ax
00001E57  8956AC            mov [bp-0x54],dx
00001E5A  8B46B6            mov ax,[bp-0x4a]
00001E5D  89469C            mov [bp-0x64],ax
00001E60  31C0              xor ax,ax
00001E62  3B469C            cmp ax,[bp-0x64]
00001E65  7745              ja 0x1eac
00001E67  8946A8            mov [bp-0x58],ax
00001E6A  EB03              jmp 0x1e6f
00001E6C  FF46A8            inc word [bp-0x58]
00001E6F  C446AA            les ax,word [bp-0x56]
00001E72  8CC2              mov dx,es
00001E74  8B7EA8            mov di,[bp-0x58]
00001E77  D1E7              shl di,1
00001E79  D1E7              shl di,1
00001E7B  8943BC            mov [bp+di-0x44],ax
00001E7E  8953BE            mov [bp+di-0x42],dx
00001E81  FF76AC            push word [bp-0x54]
00001E84  FF76AA            push word [bp-0x56]
00001E87  FF76B2            push word [bp-0x4e]
00001E8A  5B                pop bx
00001E8B  58                pop ax
00001E8C  5A                pop dx
00001E8D  01C3              add bx,ax
00001E8F  89D8              mov ax,bx
00001E91  250F00            and ax,0xf
00001E94  D1EB              shr bx,1
00001E96  D1EB              shr bx,1
00001E98  D1EB              shr bx,1
00001E9A  D1EB              shr bx,1
00001E9C  01DA              add dx,bx
00001E9E  8946AA            mov [bp-0x56],ax
00001EA1  8956AC            mov [bp-0x54],dx
00001EA4  8B46A8            mov ax,[bp-0x58]
00001EA7  3B469C            cmp ax,[bp-0x64]
00001EAA  75C0              jnz 0x1e6c
00001EAC  A04566            mov al,[0x6645]
00001EAF  30E4              xor ah,ah
00001EB1  C47E08            les di,word [bp+0x8]
00001EB4  03F8              add di,ax
00001EB6  268D4512          lea ax,[es:di+0x12]
00001EBA  8CC2              mov dx,es
00001EBC  8946B8            mov [bp-0x48],ax
00001EBF  8956BA            mov [bp-0x46],dx
00001EC2  A03C66            mov al,[0x663c]
00001EC5  30E4              xor ah,ah
00001EC7  C47EFC            les di,word [bp-0x4]
00001ECA  03F8              add di,ax
00001ECC  268D4512          lea ax,[es:di+0x12]
00001ED0  8CC2              mov dx,es
00001ED2  8946AA            mov [bp-0x56],ax
00001ED5  8956AC            mov [bp-0x54],dx
00001ED8  8B46B6            mov ax,[bp-0x4a]
00001EDB  89469C            mov [bp-0x64],ax
00001EDE  31C0              xor ax,ax
00001EE0  3B469C            cmp ax,[bp-0x64]
00001EE3  7745              ja 0x1f2a
00001EE5  8946A8            mov [bp-0x58],ax
00001EE8  EB03              jmp 0x1eed
00001EEA  FF46A8            inc word [bp-0x58]
00001EED  C446AA            les ax,word [bp-0x56]
00001EF0  8CC2              mov dx,es
00001EF2  8B7EA8            mov di,[bp-0x58]
00001EF5  D1E7              shl di,1
00001EF7  D1E7              shl di,1
00001EF9  8943DC            mov [bp+di-0x24],ax
00001EFC  8953DE            mov [bp+di-0x22],dx
00001EFF  FF76AC            push word [bp-0x54]
00001F02  FF76AA            push word [bp-0x56]
00001F05  FF76B4            push word [bp-0x4c]
00001F08  5B                pop bx
00001F09  58                pop ax
00001F0A  5A                pop dx
00001F0B  01C3              add bx,ax
00001F0D  89D8              mov ax,bx
00001F0F  250F00            and ax,0xf
00001F12  D1EB              shr bx,1
00001F14  D1EB              shr bx,1
00001F16  D1EB              shr bx,1
00001F18  D1EB              shr bx,1
00001F1A  01DA              add dx,bx
00001F1C  8946AA            mov [bp-0x56],ax
00001F1F  8956AC            mov [bp-0x54],dx
00001F22  8B46A8            mov ax,[bp-0x58]
00001F25  3B469C            cmp ax,[bp-0x64]
00001F28  75C0              jnz 0x1eea
00001F2A  8B4606            mov ax,[bp+0x6]
00001F2D  8946A0            mov [bp-0x60],ax
00001F30  8B46AE            mov ax,[bp-0x52]
00001F33  31D2              xor dx,dx
00001F35  8BC8              mov cx,ax
00001F37  8BDA              mov bx,dx
00001F39  8B4606            mov ax,[bp+0x6]
00001F3C  99                cwd
00001F3D  03C1              add ax,cx
00001F3F  13D3              adc dx,bx
00001F41  2D0100            sub ax,0x1
00001F44  83DA00            sbb dx,0x0
00001F47  8946A4            mov [bp-0x5c],ax
00001F4A  8B46B0            mov ax,[bp-0x50]
00001F4D  48                dec ax
00001F4E  09C0              or ax,ax
00001F50  7303              jnc 0x1f55
00001F52  E94101            jmp 0x2096
00001F55  89469E            mov [bp-0x62],ax
00001F58  EB03              jmp 0x1f5d
00001F5A  FF4E9E            dec word [bp-0x62]
00001F5D  8B4604            mov ax,[bp+0x4]
00001F60  8946A2            mov [bp-0x5e],ax
00001F63  8B4604            mov ax,[bp+0x4]
00001F66  8946A6            mov [bp-0x5a],ax
00001F69  8B46B6            mov ax,[bp-0x4a]
00001F6C  89469C            mov [bp-0x64],ax
00001F6F  31C0              xor ax,ax
00001F71  3B469C            cmp ax,[bp-0x64]
00001F74  7729              ja 0x1f9f
00001F76  8946A8            mov [bp-0x58],ax
00001F79  EB03              jmp 0x1f7e
00001F7B  FF46A8            inc word [bp-0x58]
00001F7E  C47EB8            les di,word [bp-0x48]
00001F81  06                push es
00001F82  57                push di
00001F83  8B7EA8            mov di,[bp-0x58]
00001F86  D1E7              shl di,1
00001F88  D1E7              shl di,1
00001F8A  C47BDC            les di,word [bp+di-0x24]
00001F8D  06                push es
00001F8E  57                push di
00001F8F  FF76B4            push word [bp-0x4c]
00001F92  9A641B561A        call word 0x1a56:word 0x1b64
00001F97  8B46A8            mov ax,[bp-0x58]
00001F9A  3B469C            cmp ax,[bp-0x64]
00001F9D  75DC              jnz 0x1f7b
00001F9F  B80300            mov ax,0x3
00001FA2  50                push ax
00001FA3  9ABA0ACE18        call word 0x18ce:word 0xaba
00001FA8  8D7EA0            lea di,[bp-0x60]
00001FAB  16                push ss
00001FAC  57                push di
00001FAD  C47EFC            les di,word [bp-0x4]
00001FB0  268D4512          lea ax,[es:di+0x12]
00001FB4  8CC2              mov dx,es
00001FB6  52                push dx
00001FB7  50                push ax
00001FB8  9A8700CE18        call word 0x18ce:word 0x87
00001FBD  8B46B6            mov ax,[bp-0x4a]
00001FC0  89469C            mov [bp-0x64],ax
00001FC3  31C0              xor ax,ax
00001FC5  3B469C            cmp ax,[bp-0x64]
00001FC8  7731              ja 0x1ffb
00001FCA  8946A8            mov [bp-0x58],ax
00001FCD  EB03              jmp 0x1fd2
00001FCF  FF46A8            inc word [bp-0x58]
00001FD2  8B7EA8            mov di,[bp-0x58]
00001FD5  D1E7              shl di,1
00001FD7  D1E7              shl di,1
00001FD9  FF73BE            push word [bp+di-0x42]
00001FDC  FF73BC            push word [bp+di-0x44]
00001FDF  8B7EA8            mov di,[bp-0x58]
00001FE2  D1E7              shl di,1
00001FE4  D1E7              shl di,1
00001FE6  FF73DE            push word [bp+di-0x22]
00001FE9  FF73DC            push word [bp+di-0x24]
00001FEC  FF76B4            push word [bp-0x4c]
00001FEF  55                push bp
00001FF0  E8C0FD            call 0x1db3
00001FF3  8B46A8            mov ax,[bp-0x58]
00001FF6  3B469C            cmp ax,[bp-0x64]
00001FF9  75D4              jnz 0x1fcf
00001FFB  B80100            mov ax,0x1
00001FFE  50                push ax
00001FFF  9ABA0ACE18        call word 0x18ce:word 0xaba
00002004  8D7EA0            lea di,[bp-0x60]
00002007  16                push ss
00002008  57                push di
00002009  C47EFC            les di,word [bp-0x4]
0000200C  268D4512          lea ax,[es:di+0x12]
00002010  8CC2              mov dx,es
00002012  52                push dx
00002013  50                push ax
00002014  9A8700CE18        call word 0x18ce:word 0x87
00002019  FF4E04            dec word [bp+0x4]
0000201C  8B46B6            mov ax,[bp-0x4a]
0000201F  89469C            mov [bp-0x64],ax
00002022  31C0              xor ax,ax
00002024  3B469C            cmp ax,[bp-0x64]
00002027  7741              ja 0x206a
00002029  8946A8            mov [bp-0x58],ax
0000202C  EB03              jmp 0x2031
0000202E  FF46A8            inc word [bp-0x58]
00002031  8B7EA8            mov di,[bp-0x58]
00002034  D1E7              shl di,1
00002036  D1E7              shl di,1
00002038  FF73BE            push word [bp+di-0x42]
0000203B  FF73BC            push word [bp+di-0x44]
0000203E  FF76B4            push word [bp-0x4c]
00002041  5B                pop bx
00002042  58                pop ax
00002043  5A                pop dx
00002044  01C3              add bx,ax
00002046  89D8              mov ax,bx
00002048  250F00            and ax,0xf
0000204B  D1EB              shr bx,1
0000204D  D1EB              shr bx,1
0000204F  D1EB              shr bx,1
00002051  D1EB              shr bx,1
00002053  01DA              add dx,bx
00002055  8B7EA8            mov di,[bp-0x58]
00002058  D1E7              shl di,1
0000205A  D1E7              shl di,1
0000205C  8943BC            mov [bp+di-0x44],ax
0000205F  8953BE            mov [bp+di-0x42],dx
00002062  8B46A8            mov ax,[bp-0x58]
00002065  3B469C            cmp ax,[bp-0x64]
00002068  75C4              jnz 0x202e
0000206A  FF76BA            push word [bp-0x46]
0000206D  FF76B8            push word [bp-0x48]
00002070  FF76B4            push word [bp-0x4c]
00002073  5B                pop bx
00002074  58                pop ax
00002075  5A                pop dx
00002076  01C3              add bx,ax
00002078  89D8              mov ax,bx
0000207A  250F00            and ax,0xf
0000207D  D1EB              shr bx,1
0000207F  D1EB              shr bx,1
00002081  D1EB              shr bx,1
00002083  D1EB              shr bx,1
00002085  01DA              add dx,bx
00002087  8946B8            mov [bp-0x48],ax
0000208A  8956BA            mov [bp-0x46],dx
0000208D  837E9E00          cmp word [bp-0x62],0x0
00002091  7403              jz 0x2096
00002093  E9C4FE            jmp 0x1f5a
00002096  FF36BE11          push word [0x11be]
0000209A  9ABA0ACE18        call word 0x18ce:word 0xaba
0000209F  8D7EFC            lea di,[bp-0x4]
000020A2  16                push ss
000020A3  57                push di
000020A4  9A67012A15        call word 0x152a:word 0x167
000020A9  89EC              mov sp,bp
000020AB  5D                pop bp
000020AC  C20C00            ret word 0xc
000020AF  55                push bp
000020B0  89E5              mov bp,sp
000020B2  83EC0C            sub sp,0xc
000020B5  C47E0C            les di,word [bp+0xc]
000020B8  268B05            mov ax,[es:di]
000020BB  260B4502          or ax,[es:di+0x2]
000020BF  7503              jnz 0x20c4
000020C1  E9DC01            jmp 0x22a0
000020C4  C47E0C            les di,word [bp+0xc]
000020C7  26C43D            les di,word [es:di]
000020CA  268B05            mov ax,[es:di]
000020CD  8946FC            mov [bp-0x4],ax
000020D0  C47E0C            les di,word [bp+0xc]
000020D3  26C43D            les di,word [es:di]
000020D6  268B4502          mov ax,[es:di+0x2]
000020DA  8946FE            mov [bp-0x2],ax
000020DD  803EAD6B00        cmp byte [0x6bad],0x0
000020E2  7430              jz 0x2114
000020E4  FF760A            push word [bp+0xa]
000020E7  58                pop ax
000020E8  2B06896B          sub ax,[0x6b89]
000020EC  F72E9D6B          imul word [0x6b9d]
000020F0  F73E8D6B          idiv word [0x6b8d]
000020F4  0306996B          add ax,[0x6b99]
000020F8  A3506C            mov [0x6c50],ax
000020FB  FF7608            push word [bp+0x8]
000020FE  58                pop ax
000020FF  2B068B6B          sub ax,[0x6b8b]
00002103  F72E9F6B          imul word [0x6b9f]
00002107  F73E8F6B          idiv word [0x6b8f]
0000210B  03069B6B          add ax,[0x6b9b]
0000210F  A3546C            mov [0x6c54],ax
00002112  EB0C              jmp 0x2120
00002114  8B460A            mov ax,[bp+0xa]
00002117  A3506C            mov [0x6c50],ax
0000211A  8B4608            mov ax,[bp+0x8]
0000211D  A3546C            mov [0x6c54],ax
00002120  C43EC56B          les di,word [0x6bc5]
00002124  26833D00          cmp word [es:di],0x0
00002128  7D08              jnl 0x2132
0000212A  8B46FC            mov ax,[bp-0x4]
0000212D  48                dec ax
0000212E  2906506C          sub [0x6c50],ax
00002132  C43EC56B          les di,word [0x6bc5]
00002136  26837D0200        cmp word [es:di+0x2],0x0
0000213B  7D08              jnl 0x2145
0000213D  8B46FE            mov ax,[bp-0x2]
00002140  48                dec ax
00002141  2906546C          sub [0x6c54],ax
00002145  8B46FC            mov ax,[bp-0x4]
00002148  48                dec ax
00002149  0306506C          add ax,[0x6c50]
0000214D  A3526C            mov [0x6c52],ax
00002150  8B46FE            mov ax,[bp-0x2]
00002153  48                dec ax
00002154  0306546C          add ax,[0x6c54]
00002158  A3566C            mov [0x6c56],ax
0000215B  FF36506C          push word [0x6c50]
0000215F  FF36546C          push word [0x6c54]
00002163  FF36526C          push word [0x6c52]
00002167  FF36566C          push word [0x6c56]
0000216B  FA                cli
0000216C  FE064A6C          inc byte [0x6c4a]
00002170  5A                pop dx
00002171  59                pop cx
00002172  5B                pop bx
00002173  58                pop ax
00002174  39C8              cmp ax,cx
00002176  7E02              jng 0x217a
00002178  87C1              xchg ax,cx
0000217A  39D3              cmp bx,dx
0000217C  7E02              jng 0x2180
0000217E  87DA              xchg bx,dx
00002180  803E8F6E01        cmp byte [0x6e8f],0x1
00002185  7521              jnz 0x21a8
00002187  3906986E          cmp [0x6e98],ax
0000218B  7C1B              jl 0x21a8
0000218D  391E9A6E          cmp [0x6e9a],bx
00002191  7C15              jl 0x21a8
00002193  3B0E946E          cmp cx,[0x6e94]
00002197  7C0F              jl 0x21a8
00002199  3B16966E          cmp dx,[0x6e96]
0000219D  7C09              jl 0x21a8
0000219F  FF1E876E          call word far [0x6e87]
000021A3  C606496C01        mov byte [0x6c49],0x1
000021A8  FF06476C          inc word [0x6c47]
000021AC  FE0E4A6C          dec byte [0x6c4a]
000021B0  FB                sti
000021B1  803EAF6B01        cmp byte [0x6baf],0x1
000021B6  7577              jnz 0x222f
000021B8  C47E0C            les di,word [bp+0xc]
000021BB  26C43D            les di,word [es:di]
000021BE  268B450E          mov ax,[es:di+0xe]
000021C2  260B4510          or ax,[es:di+0x10]
000021C6  7423              jz 0x21eb
000021C8  C47E0C            les di,word [bp+0xc]
000021CB  26C43D            les di,word [es:di]
000021CE  268A4509          mov al,[es:di+0x9]
000021D2  30E4              xor ah,ah
000021D4  3B06A36B          cmp ax,[0x6ba3]
000021D8  7430              jz 0x220a
000021DA  C47E0C            les di,word [bp+0xc]
000021DD  26C43D            les di,word [es:di]
000021E0  26C47D0E          les di,word [es:di+0xe]
000021E4  26807D0900        cmp byte [es:di+0x9],0x0
000021E9  751F              jnz 0x220a
000021EB  C47E0C            les di,word [bp+0xc]
000021EE  06                push es
000021EF  57                push di
000021F0  C43ECD6B          les di,word [0x6bcd]
000021F4  26FF35            push word [es:di]
000021F7  0E                push cs
000021F8  E81EED            call 0xf19
000021FB  C47E0C            les di,word [bp+0xc]
000021FE  26C43D            les di,word [es:di]
00002201  26C47D0E          les di,word [es:di+0xe]
00002205  26C6450900        mov byte [es:di+0x9],0x0
0000220A  C47E0C            les di,word [bp+0xc]
0000220D  26FF7502          push word [es:di+0x2]
00002211  26FF35            push word [es:di]
00002214  C47E0C            les di,word [bp+0xc]
00002217  26C43D            les di,word [es:di]
0000221A  26FF7510          push word [es:di+0x10]
0000221E  26FF750E          push word [es:di+0xe]
00002222  FF36506C          push word [0x6c50]
00002226  FF36566C          push word [0x6c56]
0000222A  E8A9FB            call 0x1dd6
0000222D  EB3D              jmp 0x226c
0000222F  C47E0C            les di,word [bp+0xc]
00002232  26FF7502          push word [es:di+0x2]
00002236  26FF35            push word [es:di]
00002239  E801FB            call 0x1d3d
0000223C  A1506C            mov ax,[0x6c50]
0000223F  8946F4            mov [bp-0xc],ax
00002242  A1546C            mov ax,[0x6c54]
00002245  8946F6            mov [bp-0xa],ax
00002248  A1526C            mov ax,[0x6c52]
0000224B  8946F8            mov [bp-0x8],ax
0000224E  A1566C            mov ax,[0x6c56]
00002251  8946FA            mov [bp-0x6],ax
00002254  8D7EF4            lea di,[bp-0xc]
00002257  16                push ss
00002258  57                push di
00002259  C47E0C            les di,word [bp+0xc]
0000225C  26C43D            les di,word [es:di]
0000225F  268D4512          lea ax,[es:di+0x12]
00002263  8CC2              mov dx,es
00002265  52                push dx
00002266  50                push ax
00002267  9A8700CE18        call word 0x18ce:word 0x87
0000226C  FA                cli
0000226D  FE064A6C          inc byte [0x6c4a]
00002271  FF0E476C          dec word [0x6c47]
00002275  803E496C01        cmp byte [0x6c49],0x1
0000227A  750F              jnz 0x228b
0000227C  C606496C00        mov byte [0x6c49],0x0
00002281  FF1E876E          call word far [0x6e87]
00002285  FF1E8B6E          call word far [0x6e8b]
00002289  EBEA              jmp 0x2275
0000228B  FE0E4A6C          dec byte [0x6c4a]
0000228F  FB                sti
00002290  807E0600          cmp byte [bp+0x6],0x0
00002294  740A              jz 0x22a0
00002296  C47E0C            les di,word [bp+0xc]
00002299  06                push es
0000229A  57                push di
0000229B  9A67012A15        call word 0x152a:word 0x167
000022A0  89EC              mov sp,bp
000022A2  5D                pop bp
000022A3  CA0A00            retf word 0xa
000022A6  55                push bp
000022A7  89E5              mov bp,sp
000022A9  FF760A            push word [bp+0xa]
000022AC  FF7608            push word [bp+0x8]
000022AF  FF7606            push word [bp+0x6]
000022B2  FF7604            push word [bp+0x4]
000022B5  FA                cli
000022B6  FE064A6C          inc byte [0x6c4a]
000022BA  5A                pop dx
000022BB  59                pop cx
000022BC  5B                pop bx
000022BD  58                pop ax
000022BE  39C8              cmp ax,cx
000022C0  7E02              jng 0x22c4
000022C2  87C1              xchg ax,cx
000022C4  39D3              cmp bx,dx
000022C6  7E02              jng 0x22ca
000022C8  87DA              xchg bx,dx
000022CA  803E8F6E01        cmp byte [0x6e8f],0x1
000022CF  7521              jnz 0x22f2
000022D1  3906986E          cmp [0x6e98],ax
000022D5  7C1B              jl 0x22f2
000022D7  391E9A6E          cmp [0x6e9a],bx
000022DB  7C15              jl 0x22f2
000022DD  3B0E946E          cmp cx,[0x6e94]
000022E1  7C0F              jl 0x22f2
000022E3  3B16966E          cmp dx,[0x6e96]
000022E7  7C09              jl 0x22f2
000022E9  FF1E876E          call word far [0x6e87]
000022ED  C606496C01        mov byte [0x6c49],0x1
000022F2  FF06476C          inc word [0x6c47]
000022F6  FE0E4A6C          dec byte [0x6c4a]
000022FA  FB                sti
000022FB  FF760A            push word [bp+0xa]
000022FE  FF7608            push word [bp+0x8]
00002301  9A850CCE18        call word 0x18ce:word 0xc85
00002306  FF7606            push word [bp+0x6]
00002309  FF7604            push word [bp+0x4]
0000230C  9A1F0ECE18        call word 0x18ce:word 0xe1f
00002311  FA                cli
00002312  FE064A6C          inc byte [0x6c4a]
00002316  FF0E476C          dec word [0x6c47]
0000231A  803E496C01        cmp byte [0x6c49],0x1
0000231F  750F              jnz 0x2330
00002321  C606496C00        mov byte [0x6c49],0x0
00002326  FF1E876E          call word far [0x6e87]
0000232A  FF1E8B6E          call word far [0x6e8b]
0000232E  EBEA              jmp 0x231a
00002330  FE0E4A6C          dec byte [0x6c4a]
00002334  FB                sti
00002335  89EC              mov sp,bp
00002337  5D                pop bp
00002338  C20800            ret word 0x8
0000233B  55                push bp
0000233C  89E5              mov bp,sp
0000233E  83EC08            sub sp,0x8
00002341  837E0800          cmp word [bp+0x8],0x0
00002345  7406              jz 0x234d
00002347  837E0600          cmp word [bp+0x6],0x0
0000234B  7503              jnz 0x2350
0000234D  E9AB00            jmp 0x23fb
00002350  FF760C            push word [bp+0xc]
00002353  FF760A            push word [bp+0xa]
00002356  FF7608            push word [bp+0x8]
00002359  FF7606            push word [bp+0x6]
0000235C  E8A1DC            call 0x0
0000235F  A1506C            mov ax,[0x6c50]
00002362  8946F8            mov [bp-0x8],ax
00002365  A1546C            mov ax,[0x6c54]
00002368  8946FA            mov [bp-0x6],ax
0000236B  A1526C            mov ax,[0x6c52]
0000236E  8946FC            mov [bp-0x4],ax
00002371  A1566C            mov ax,[0x6c56]
00002374  8946FE            mov [bp-0x2],ax
00002377  FF36506C          push word [0x6c50]
0000237B  FF36546C          push word [0x6c54]
0000237F  FF36526C          push word [0x6c52]
00002383  FF36566C          push word [0x6c56]
00002387  FA                cli
00002388  FE064A6C          inc byte [0x6c4a]
0000238C  5A                pop dx
0000238D  59                pop cx
0000238E  5B                pop bx
0000238F  58                pop ax
00002390  39C8              cmp ax,cx
00002392  7E02              jng 0x2396
00002394  87C1              xchg ax,cx
00002396  39D3              cmp bx,dx
00002398  7E02              jng 0x239c
0000239A  87DA              xchg bx,dx
0000239C  803E8F6E01        cmp byte [0x6e8f],0x1
000023A1  7521              jnz 0x23c4
000023A3  3906986E          cmp [0x6e98],ax
000023A7  7C1B              jl 0x23c4
000023A9  391E9A6E          cmp [0x6e9a],bx
000023AD  7C15              jl 0x23c4
000023AF  3B0E946E          cmp cx,[0x6e94]
000023B3  7C0F              jl 0x23c4
000023B5  3B16966E          cmp dx,[0x6e96]
000023B9  7C09              jl 0x23c4
000023BB  FF1E876E          call word far [0x6e87]
000023BF  C606496C01        mov byte [0x6c49],0x1
000023C4  FF06476C          inc word [0x6c47]
000023C8  FE0E4A6C          dec byte [0x6c4a]
000023CC  FB                sti
000023CD  8D7EF8            lea di,[bp-0x8]
000023D0  16                push ss
000023D1  57                push di
000023D2  9A8412CE18        call word 0x18ce:word 0x1284
000023D7  FA                cli
000023D8  FE064A6C          inc byte [0x6c4a]
000023DC  FF0E476C          dec word [0x6c47]
000023E0  803E496C01        cmp byte [0x6c49],0x1
000023E5  750F              jnz 0x23f6
000023E7  C606496C00        mov byte [0x6c49],0x0
000023EC  FF1E876E          call word far [0x6e87]
000023F0  FF1E8B6E          call word far [0x6e8b]
000023F4  EBEA              jmp 0x23e0
000023F6  FE0E4A6C          dec byte [0x6c4a]
000023FA  FB                sti
000023FB  89EC              mov sp,bp
000023FD  5D                pop bp
000023FE  CA0800            retf word 0x8
00002401  55                push bp
00002402  89E5              mov bp,sp
00002404  83EC08            sub sp,0x8
00002407  837E0800          cmp word [bp+0x8],0x0
0000240B  7406              jz 0x2413
0000240D  837E0600          cmp word [bp+0x6],0x0
00002411  7503              jnz 0x2416
00002413  E9D000            jmp 0x24e6
00002416  FF760C            push word [bp+0xc]
00002419  FF760A            push word [bp+0xa]
0000241C  FF7608            push word [bp+0x8]
0000241F  FF7606            push word [bp+0x6]
00002422  E8DBDB            call 0x0
00002425  A1506C            mov ax,[0x6c50]
00002428  8946F8            mov [bp-0x8],ax
0000242B  A1546C            mov ax,[0x6c54]
0000242E  8946FA            mov [bp-0x6],ax
00002431  A1526C            mov ax,[0x6c52]
00002434  8946FC            mov [bp-0x4],ax
00002437  A1566C            mov ax,[0x6c56]
0000243A  8946FE            mov [bp-0x2],ax
0000243D  FF36506C          push word [0x6c50]
00002441  FF36546C          push word [0x6c54]
00002445  FF36526C          push word [0x6c52]
00002449  FF36566C          push word [0x6c56]
0000244D  FA                cli
0000244E  FE064A6C          inc byte [0x6c4a]
00002452  5A                pop dx
00002453  59                pop cx
00002454  5B                pop bx
00002455  58                pop ax
00002456  39C8              cmp ax,cx
00002458  7E02              jng 0x245c
0000245A  87C1              xchg ax,cx
0000245C  39D3              cmp bx,dx
0000245E  7E02              jng 0x2462
00002460  87DA              xchg bx,dx
00002462  803E8F6E01        cmp byte [0x6e8f],0x1
00002467  7521              jnz 0x248a
00002469  3906986E          cmp [0x6e98],ax
0000246D  7C1B              jl 0x248a
0000246F  391E9A6E          cmp [0x6e9a],bx
00002473  7C15              jl 0x248a
00002475  3B0E946E          cmp cx,[0x6e94]
00002479  7C0F              jl 0x248a
0000247B  3B16966E          cmp dx,[0x6e96]
0000247F  7C09              jl 0x248a
00002481  FF1E876E          call word far [0x6e87]
00002485  C606496C01        mov byte [0x6c49],0x1
0000248A  FF06476C          inc word [0x6c47]
0000248E  FE0E4A6C          dec byte [0x6c4a]
00002492  FB                sti
00002493  833E9E6E08        cmp word [0x6e9e],0x8
00002498  751E              jnz 0x24b8
0000249A  B80800            mov ax,0x8
0000249D  50                push ax
0000249E  9A8D0ACE18        call word 0x18ce:word 0xa8d
000024A3  8D7EF8            lea di,[bp-0x8]
000024A6  16                push ss
000024A7  57                push di
000024A8  9A940BCE18        call word 0x18ce:word 0xb94
000024AD  B80100            mov ax,0x1
000024B0  50                push ax
000024B1  9A8D0ACE18        call word 0x18ce:word 0xa8d
000024B6  EB0A              jmp 0x24c2
000024B8  8D7EF8            lea di,[bp-0x8]
000024BB  16                push ss
000024BC  57                push di
000024BD  9A940BCE18        call word 0x18ce:word 0xb94
000024C2  FA                cli
000024C3  FE064A6C          inc byte [0x6c4a]
000024C7  FF0E476C          dec word [0x6c47]
000024CB  803E496C01        cmp byte [0x6c49],0x1
000024D0  750F              jnz 0x24e1
000024D2  C606496C00        mov byte [0x6c49],0x0
000024D7  FF1E876E          call word far [0x6e87]
000024DB  FF1E8B6E          call word far [0x6e8b]
000024DF  EBEA              jmp 0x24cb
000024E1  FE0E4A6C          dec byte [0x6c4a]
000024E5  FB                sti
000024E6  89EC              mov sp,bp
000024E8  5D                pop bp
000024E9  CA0800            retf word 0x8
000024EC  55                push bp
000024ED  89E5              mov bp,sp
000024EF  83EC0C            sub sp,0xc
000024F2  803EAD6B00        cmp byte [0x6bad],0x0
000024F7  742C              jz 0x2525
000024F9  FF7606            push word [bp+0x6]
000024FC  58                pop ax
000024FD  F72E9D6B          imul word [0x6b9d]
00002501  F73E8D6B          idiv word [0x6b8d]
00002505  09C0              or ax,ax
00002507  7902              jns 0x250b
00002509  F7D8              neg ax
0000250B  8946FC            mov [bp-0x4],ax
0000250E  FF7606            push word [bp+0x6]
00002511  58                pop ax
00002512  F72E9F6B          imul word [0x6b9f]
00002516  F73E8F6B          idiv word [0x6b8f]
0000251A  09C0              or ax,ax
0000251C  7902              jns 0x2520
0000251E  F7D8              neg ax
00002520  8946FE            mov [bp-0x2],ax
00002523  EB0C              jmp 0x2531
00002525  8B4606            mov ax,[bp+0x6]
00002528  8946FC            mov [bp-0x4],ax
0000252B  8B4606            mov ax,[bp+0x6]
0000252E  8946FE            mov [bp-0x2],ax
00002531  A1956B            mov ax,[0x6b95]
00002534  2B46FC            sub ax,[bp-0x4]
00002537  8946F4            mov [bp-0xc],ax
0000253A  A1976B            mov ax,[0x6b97]
0000253D  2B46FE            sub ax,[bp-0x2]
00002540  8946F6            mov [bp-0xa],ax
00002543  A1956B            mov ax,[0x6b95]
00002546  0346FC            add ax,[bp-0x4]
00002549  8946F8            mov [bp-0x8],ax
0000254C  A1976B            mov ax,[0x6b97]
0000254F  0346FE            add ax,[bp-0x2]
00002552  8946FA            mov [bp-0x6],ax
00002555  FF76F4            push word [bp-0xc]
00002558  FF76F6            push word [bp-0xa]
0000255B  FF76F8            push word [bp-0x8]
0000255E  FF76FA            push word [bp-0x6]
00002561  FA                cli
00002562  FE064A6C          inc byte [0x6c4a]
00002566  5A                pop dx
00002567  59                pop cx
00002568  5B                pop bx
00002569  58                pop ax
0000256A  39C8              cmp ax,cx
0000256C  7E02              jng 0x2570
0000256E  87C1              xchg ax,cx
00002570  39D3              cmp bx,dx
00002572  7E02              jng 0x2576
00002574  87DA              xchg bx,dx
00002576  803E8F6E01        cmp byte [0x6e8f],0x1
0000257B  7521              jnz 0x259e
0000257D  3906986E          cmp [0x6e98],ax
00002581  7C1B              jl 0x259e
00002583  391E9A6E          cmp [0x6e9a],bx
00002587  7C15              jl 0x259e
00002589  3B0E946E          cmp cx,[0x6e94]
0000258D  7C0F              jl 0x259e
0000258F  3B16966E          cmp dx,[0x6e96]
00002593  7C09              jl 0x259e
00002595  FF1E876E          call word far [0x6e87]
00002599  C606496C01        mov byte [0x6c49],0x1
0000259E  FF06476C          inc word [0x6c47]
000025A2  FE0E4A6C          dec byte [0x6c4a]
000025A6  FB                sti
000025A7  8D7EF4            lea di,[bp-0xc]
000025AA  16                push ss
000025AB  57                push di
000025AC  9AC512CE18        call word 0x18ce:word 0x12c5
000025B1  FA                cli
000025B2  FE064A6C          inc byte [0x6c4a]
000025B6  FF0E476C          dec word [0x6c47]
000025BA  803E496C01        cmp byte [0x6c49],0x1
000025BF  750F              jnz 0x25d0
000025C1  C606496C00        mov byte [0x6c49],0x0
000025C6  FF1E876E          call word far [0x6e87]
000025CA  FF1E8B6E          call word far [0x6e8b]
000025CE  EBEA              jmp 0x25ba
000025D0  FE0E4A6C          dec byte [0x6c4a]
000025D4  FB                sti
000025D5  89EC              mov sp,bp
000025D7  5D                pop bp
000025D8  CA0200            retf word 0x2
000025DB  55                push bp
000025DC  89E5              mov bp,sp
000025DE  83EC0C            sub sp,0xc
000025E1  803EAD6B00        cmp byte [0x6bad],0x0
000025E6  742C              jz 0x2614
000025E8  FF7606            push word [bp+0x6]
000025EB  58                pop ax
000025EC  F72E9D6B          imul word [0x6b9d]
000025F0  F73E8D6B          idiv word [0x6b8d]
000025F4  09C0              or ax,ax
000025F6  7902              jns 0x25fa
000025F8  F7D8              neg ax
000025FA  8946FC            mov [bp-0x4],ax
000025FD  FF7606            push word [bp+0x6]
00002600  58                pop ax
00002601  F72E9F6B          imul word [0x6b9f]
00002605  F73E8F6B          idiv word [0x6b8f]
00002609  09C0              or ax,ax
0000260B  7902              jns 0x260f
0000260D  F7D8              neg ax
0000260F  8946FE            mov [bp-0x2],ax
00002612  EB0C              jmp 0x2620
00002614  8B4606            mov ax,[bp+0x6]
00002617  8946FC            mov [bp-0x4],ax
0000261A  8B4606            mov ax,[bp+0x6]
0000261D  8946FE            mov [bp-0x2],ax
00002620  FF76FC            push word [bp-0x4]
00002623  A03266            mov al,[0x6632]
00002626  30E4              xor ah,ah
00002628  50                push ax
00002629  A03366            mov al,[0x6633]
0000262C  30E4              xor ah,ah
0000262E  50                push ax
0000262F  59                pop cx
00002630  5B                pop bx
00002631  58                pop ax
00002632  F7E3              mul bx
00002634  F7F1              div cx
00002636  8946FE            mov [bp-0x2],ax
00002639  A1956B            mov ax,[0x6b95]
0000263C  2B46FC            sub ax,[bp-0x4]
0000263F  8946F4            mov [bp-0xc],ax
00002642  A1976B            mov ax,[0x6b97]
00002645  2B46FE            sub ax,[bp-0x2]
00002648  8946F6            mov [bp-0xa],ax
0000264B  A1956B            mov ax,[0x6b95]
0000264E  0346FC            add ax,[bp-0x4]
00002651  8946F8            mov [bp-0x8],ax
00002654  A1976B            mov ax,[0x6b97]
00002657  0346FE            add ax,[bp-0x2]
0000265A  8946FA            mov [bp-0x6],ax
0000265D  FF76F4            push word [bp-0xc]
00002660  FF76F6            push word [bp-0xa]
00002663  FF76F8            push word [bp-0x8]
00002666  FF76FA            push word [bp-0x6]
00002669  FA                cli
0000266A  FE064A6C          inc byte [0x6c4a]
0000266E  5A                pop dx
0000266F  59                pop cx
00002670  5B                pop bx
00002671  58                pop ax
00002672  39C8              cmp ax,cx
00002674  7E02              jng 0x2678
00002676  87C1              xchg ax,cx
00002678  39D3              cmp bx,dx
0000267A  7E02              jng 0x267e
0000267C  87DA              xchg bx,dx
0000267E  803E8F6E01        cmp byte [0x6e8f],0x1
00002683  7521              jnz 0x26a6
00002685  3906986E          cmp [0x6e98],ax
00002689  7C1B              jl 0x26a6
0000268B  391E9A6E          cmp [0x6e9a],bx
0000268F  7C15              jl 0x26a6
00002691  3B0E946E          cmp cx,[0x6e94]
00002695  7C0F              jl 0x26a6
00002697  3B16966E          cmp dx,[0x6e96]
0000269B  7C09              jl 0x26a6
0000269D  FF1E876E          call word far [0x6e87]
000026A1  C606496C01        mov byte [0x6c49],0x1
000026A6  FF06476C          inc word [0x6c47]
000026AA  FE0E4A6C          dec byte [0x6c4a]
000026AE  FB                sti
000026AF  833E9E6E08        cmp word [0x6e9e],0x8
000026B4  751E              jnz 0x26d4
000026B6  B80800            mov ax,0x8
000026B9  50                push ax
000026BA  9A8D0ACE18        call word 0x18ce:word 0xa8d
000026BF  8D7EF4            lea di,[bp-0xc]
000026C2  16                push ss
000026C3  57                push di
000026C4  9AD50BCE18        call word 0x18ce:word 0xbd5
000026C9  B80100            mov ax,0x1
000026CC  50                push ax
000026CD  9A8D0ACE18        call word 0x18ce:word 0xa8d
000026D2  EB0A              jmp 0x26de
000026D4  8D7EF4            lea di,[bp-0xc]
000026D7  16                push ss
000026D8  57                push di
000026D9  9AD50BCE18        call word 0x18ce:word 0xbd5
000026DE  FA                cli
000026DF  FE064A6C          inc byte [0x6c4a]
000026E3  FF0E476C          dec word [0x6c47]
000026E7  803E496C01        cmp byte [0x6c49],0x1
000026EC  750F              jnz 0x26fd
000026EE  C606496C00        mov byte [0x6c49],0x0
000026F3  FF1E876E          call word far [0x6e87]
000026F7  FF1E8B6E          call word far [0x6e8b]
000026FB  EBEA              jmp 0x26e7
000026FD  FE0E4A6C          dec byte [0x6c4a]
00002701  FB                sti
00002702  89EC              mov sp,bp
00002704  5D                pop bp
00002705  CA0200            retf word 0x2
00002708  55                push bp
00002709  89E5              mov bp,sp
0000270B  83EC0C            sub sp,0xc
0000270E  803EAD6B00        cmp byte [0x6bad],0x0
00002713  745A              jz 0x276f
00002715  FF760C            push word [bp+0xc]
00002718  58                pop ax
00002719  2B06896B          sub ax,[0x6b89]
0000271D  F72E9D6B          imul word [0x6b9d]
00002721  F73E8D6B          idiv word [0x6b8d]
00002725  0306996B          add ax,[0x6b99]
00002729  89460C            mov [bp+0xc],ax
0000272C  FF760A            push word [bp+0xa]
0000272F  58                pop ax
00002730  2B068B6B          sub ax,[0x6b8b]
00002734  F72E9F6B          imul word [0x6b9f]
00002738  F73E8F6B          idiv word [0x6b8f]
0000273C  03069B6B          add ax,[0x6b9b]
00002740  89460A            mov [bp+0xa],ax
00002743  FF7604            push word [bp+0x4]
00002746  58                pop ax
00002747  F72E9D6B          imul word [0x6b9d]
0000274B  F73E8D6B          idiv word [0x6b8d]
0000274F  09C0              or ax,ax
00002751  7902              jns 0x2755
00002753  F7D8              neg ax
00002755  8946FC            mov [bp-0x4],ax
00002758  FF7604            push word [bp+0x4]
0000275B  58                pop ax
0000275C  F72E9F6B          imul word [0x6b9f]
00002760  F73E8F6B          idiv word [0x6b8f]
00002764  09C0              or ax,ax
00002766  7902              jns 0x276a
00002768  F7D8              neg ax
0000276A  8946FE            mov [bp-0x2],ax
0000276D  EB0C              jmp 0x277b
0000276F  8B4604            mov ax,[bp+0x4]
00002772  8946FC            mov [bp-0x4],ax
00002775  8B4604            mov ax,[bp+0x4]
00002778  8946FE            mov [bp-0x2],ax
0000277B  C43EC56B          les di,word [0x6bc5]
0000277F  26FF35            push word [es:di]
00002782  58                pop ax
00002783  3D0000            cmp ax,0x0
00002786  740A              jz 0x2792
00002788  7805              js 0x278f
0000278A  B80100            mov ax,0x1
0000278D  EB03              jmp 0x2792
0000278F  B8FFFF            mov ax,0xffff
00002792  09C0              or ax,ax
00002794  7D11              jnl 0x27a7
00002796  B80807            mov ax,0x708
00002799  2B4608            sub ax,[bp+0x8]
0000279C  894608            mov [bp+0x8],ax
0000279F  8B4606            mov ax,[bp+0x6]
000027A2  F7D8              neg ax
000027A4  894606            mov [bp+0x6],ax
000027A7  C43EC56B          les di,word [0x6bc5]
000027AB  26FF7502          push word [es:di+0x2]
000027AF  58                pop ax
000027B0  3D0000            cmp ax,0x0
000027B3  740A              jz 0x27bf
000027B5  7805              js 0x27bc
000027B7  B80100            mov ax,0x1
000027BA  EB03              jmp 0x27bf
000027BC  B8FFFF            mov ax,0xffff
000027BF  09C0              or ax,ax
000027C1  7D11              jnl 0x27d4
000027C3  B8100E            mov ax,0xe10
000027C6  2B4608            sub ax,[bp+0x8]
000027C9  894608            mov [bp+0x8],ax
000027CC  8B4606            mov ax,[bp+0x6]
000027CF  F7D8              neg ax
000027D1  894606            mov [bp+0x6],ax
000027D4  837E0600          cmp word [bp+0x6],0x0
000027D8  7D0E              jnl 0x27e8
000027DA  8B4606            mov ax,[bp+0x6]
000027DD  014608            add [bp+0x8],ax
000027E0  8B4606            mov ax,[bp+0x6]
000027E3  F7D8              neg ax
000027E5  894606            mov [bp+0x6],ax
000027E8  8B460C            mov ax,[bp+0xc]
000027EB  2B46FC            sub ax,[bp-0x4]
000027EE  8946F4            mov [bp-0xc],ax
000027F1  8B460A            mov ax,[bp+0xa]
000027F4  2B46FE            sub ax,[bp-0x2]
000027F7  8946F6            mov [bp-0xa],ax
000027FA  8B460C            mov ax,[bp+0xc]
000027FD  0346FC            add ax,[bp-0x4]
00002800  8946F8            mov [bp-0x8],ax
00002803  8B460A            mov ax,[bp+0xa]
00002806  0346FE            add ax,[bp-0x2]
00002809  8946FA            mov [bp-0x6],ax
0000280C  FF76F4            push word [bp-0xc]
0000280F  FF76F6            push word [bp-0xa]
00002812  FF76F8            push word [bp-0x8]
00002815  FF76FA            push word [bp-0x6]
00002818  FA                cli
00002819  FE064A6C          inc byte [0x6c4a]
0000281D  5A                pop dx
0000281E  59                pop cx
0000281F  5B                pop bx
00002820  58                pop ax
00002821  39C8              cmp ax,cx
00002823  7E02              jng 0x2827
00002825  87C1              xchg ax,cx
00002827  39D3              cmp bx,dx
00002829  7E02              jng 0x282d
0000282B  87DA              xchg bx,dx
0000282D  803E8F6E01        cmp byte [0x6e8f],0x1
00002832  7521              jnz 0x2855
00002834  3906986E          cmp [0x6e98],ax
00002838  7C1B              jl 0x2855
0000283A  391E9A6E          cmp [0x6e9a],bx
0000283E  7C15              jl 0x2855
00002840  3B0E946E          cmp cx,[0x6e94]
00002844  7C0F              jl 0x2855
00002846  3B16966E          cmp dx,[0x6e96]
0000284A  7C09              jl 0x2855
0000284C  FF1E876E          call word far [0x6e87]
00002850  C606496C01        mov byte [0x6c49],0x1
00002855  FF06476C          inc word [0x6c47]
00002859  FE0E4A6C          dec byte [0x6c4a]
0000285D  FB                sti
0000285E  8D7EF4            lea di,[bp-0xc]
00002861  16                push ss
00002862  57                push di
00002863  FF7608            push word [bp+0x8]
00002866  FF7606            push word [bp+0x6]
00002869  9AE112CE18        call word 0x18ce:word 0x12e1
0000286E  FA                cli
0000286F  FE064A6C          inc byte [0x6c4a]
00002873  FF0E476C          dec word [0x6c47]
00002877  803E496C01        cmp byte [0x6c49],0x1
0000287C  750F              jnz 0x288d
0000287E  C606496C00        mov byte [0x6c49],0x0
00002883  FF1E876E          call word far [0x6e87]
00002887  FF1E8B6E          call word far [0x6e8b]
0000288B  EBEA              jmp 0x2877
0000288D  FE0E4A6C          dec byte [0x6c4a]
00002891  FB                sti
00002892  89EC              mov sp,bp
00002894  5D                pop bp
00002895  C20A00            ret word 0xa
00002898  55                push bp
00002899  89E5              mov bp,sp
0000289B  83EC0E            sub sp,0xe
0000289E  C43EBD6B          les di,word [0x6bbd]
000028A2  268B05            mov ax,[es:di]
000028A5  8946FC            mov [bp-0x4],ax
000028A8  C43EBD6B          les di,word [0x6bbd]
000028AC  268B4502          mov ax,[es:di+0x2]
000028B0  8946FE            mov [bp-0x2],ax
000028B3  837E0800          cmp word [bp+0x8],0x0
000028B7  7C5E              jl 0x2917
000028B9  8B4606            mov ax,[bp+0x6]
000028BC  99                cwd
000028BD  9AC90C561A        call word 0x1a56:word 0xcc9
000028C2  8B0E586C          mov cx,[0x6c58]
000028C6  8B365A6C          mov si,[0x6c5a]
000028CA  8B3E5C6C          mov di,[0x6c5c]
000028CE  9AB50C561A        call word 0x1a56:word 0xcb5
000028D3  9AD50C561A        call word 0x1a56:word 0xcd5
000028D8  8BC8              mov cx,ax
000028DA  8BDA              mov bx,dx
000028DC  8B46FC            mov ax,[bp-0x4]
000028DF  99                cwd
000028E0  2BC1              sub ax,cx
000028E2  1BD3              sbb dx,bx
000028E4  8946F8            mov [bp-0x8],ax
000028E7  8B4606            mov ax,[bp+0x6]
000028EA  99                cwd
000028EB  9AC90C561A        call word 0x1a56:word 0xcc9
000028F0  8B0E5E6C          mov cx,[0x6c5e]
000028F4  8B36606C          mov si,[0x6c60]
000028F8  8B3E626C          mov di,[0x6c62]
000028FC  9AB50C561A        call word 0x1a56:word 0xcb5
00002901  9AD50C561A        call word 0x1a56:word 0xcd5
00002906  8BC8              mov cx,ax
00002908  8BDA              mov bx,dx
0000290A  8B46FE            mov ax,[bp-0x2]
0000290D  99                cwd
0000290E  03C1              add ax,cx
00002910  13D3              adc dx,bx
00002912  8946FA            mov [bp-0x6],ax
00002915  EB5C              jmp 0x2973
00002917  8B4606            mov ax,[bp+0x6]
0000291A  99                cwd
0000291B  9AC90C561A        call word 0x1a56:word 0xcc9
00002920  8B0E586C          mov cx,[0x6c58]
00002924  8B365A6C          mov si,[0x6c5a]
00002928  8B3E5C6C          mov di,[0x6c5c]
0000292C  9AB50C561A        call word 0x1a56:word 0xcb5
00002931  9AD50C561A        call word 0x1a56:word 0xcd5
00002936  8BC8              mov cx,ax
00002938  8BDA              mov bx,dx
0000293A  8B46FC            mov ax,[bp-0x4]
0000293D  99                cwd
0000293E  03C1              add ax,cx
00002940  13D3              adc dx,bx
00002942  8946F8            mov [bp-0x8],ax
00002945  8B4606            mov ax,[bp+0x6]
00002948  99                cwd
00002949  9AC90C561A        call word 0x1a56:word 0xcc9
0000294E  8B0E5E6C          mov cx,[0x6c5e]
00002952  8B36606C          mov si,[0x6c60]
00002956  8B3E626C          mov di,[0x6c62]
0000295A  9AB50C561A        call word 0x1a56:word 0xcb5
0000295F  9AD50C561A        call word 0x1a56:word 0xcd5
00002964  8BC8              mov cx,ax
00002966  8BDA              mov bx,dx
00002968  8B46FE            mov ax,[bp-0x2]
0000296B  99                cwd
0000296C  2BC1              sub ax,cx
0000296E  1BD3              sbb dx,bx
00002970  8946FA            mov [bp-0x6],ax
00002973  FF7606            push word [bp+0x6]
00002976  58                pop ax
00002977  3D0000            cmp ax,0x0
0000297A  740A              jz 0x2986
0000297C  7805              js 0x2983
0000297E  B80100            mov ax,0x1
00002981  EB03              jmp 0x2986
00002983  B8FFFF            mov ax,0xffff
00002986  50                push ax
00002987  FF7608            push word [bp+0x8]
0000298A  58                pop ax
0000298B  3D0000            cmp ax,0x0
0000298E  740A              jz 0x299a
00002990  7805              js 0x2997
00002992  B80100            mov ax,0x1
00002995  EB03              jmp 0x299a
00002997  B8FFFF            mov ax,0xffff
0000299A  5A                pop dx
0000299B  3BC2              cmp ax,dx
0000299D  750B              jnz 0x29aa
0000299F  A1B06B            mov ax,[0x6bb0]
000029A2  058C0A            add ax,0xa8c
000029A5  8946F2            mov [bp-0xe],ax
000029A8  EB09              jmp 0x29b3
000029AA  A1B06B            mov ax,[0x6bb0]
000029AD  058403            add ax,0x384
000029B0  8946F2            mov [bp-0xe],ax
000029B3  FF76F8            push word [bp-0x8]
000029B6  FF76FA            push word [bp-0x6]
000029B9  FF76F2            push word [bp-0xe]
000029BC  FF7608            push word [bp+0x8]
000029BF  FF7606            push word [bp+0x6]
000029C2  E843FD            call 0x2708
000029C5  FF7608            push word [bp+0x8]
000029C8  0E                push cs
000029C9  E823D8            call 0x1ef
000029CC  837E0800          cmp word [bp+0x8],0x0
000029D0  7C67              jl 0x2a39
000029D2  8B4606            mov ax,[bp+0x6]
000029D5  99                cwd
000029D6  9AC90C561A        call word 0x1a56:word 0xcc9
000029DB  8B0E586C          mov cx,[0x6c58]
000029DF  8B365A6C          mov si,[0x6c5a]
000029E3  8B3E5C6C          mov di,[0x6c5c]
000029E7  9AB50C561A        call word 0x1a56:word 0xcb5
000029EC  9AD50C561A        call word 0x1a56:word 0xcd5
000029F1  8BC8              mov cx,ax
000029F3  8BDA              mov bx,dx
000029F5  8B46F8            mov ax,[bp-0x8]
000029F8  99                cwd
000029F9  03C1              add ax,cx
000029FB  13D3              adc dx,bx
000029FD  C43EBD6B          les di,word [0x6bbd]
00002A01  268905            mov [es:di],ax
00002A04  8B4606            mov ax,[bp+0x6]
00002A07  99                cwd
00002A08  9AC90C561A        call word 0x1a56:word 0xcc9
00002A0D  8B0E5E6C          mov cx,[0x6c5e]
00002A11  8B36606C          mov si,[0x6c60]
00002A15  8B3E626C          mov di,[0x6c62]
00002A19  9AB50C561A        call word 0x1a56:word 0xcb5
00002A1E  9AD50C561A        call word 0x1a56:word 0xcd5
00002A23  8BC8              mov cx,ax
00002A25  8BDA              mov bx,dx
00002A27  8B46FA            mov ax,[bp-0x6]
00002A2A  99                cwd
00002A2B  2BC1              sub ax,cx
00002A2D  1BD3              sbb dx,bx
00002A2F  C43EBD6B          les di,word [0x6bbd]
00002A33  26894502          mov [es:di+0x2],ax
00002A37  EB65              jmp 0x2a9e
00002A39  8B4606            mov ax,[bp+0x6]
00002A3C  99                cwd
00002A3D  9AC90C561A        call word 0x1a56:word 0xcc9
00002A42  8B0E586C          mov cx,[0x6c58]
00002A46  8B365A6C          mov si,[0x6c5a]
00002A4A  8B3E5C6C          mov di,[0x6c5c]
00002A4E  9AB50C561A        call word 0x1a56:word 0xcb5
00002A53  9AD50C561A        call word 0x1a56:word 0xcd5
00002A58  8BC8              mov cx,ax
00002A5A  8BDA              mov bx,dx
00002A5C  8B46F8            mov ax,[bp-0x8]
00002A5F  99                cwd
00002A60  2BC1              sub ax,cx
00002A62  1BD3              sbb dx,bx
00002A64  C43EBD6B          les di,word [0x6bbd]
00002A68  268905            mov [es:di],ax
00002A6B  8B4606            mov ax,[bp+0x6]
00002A6E  99                cwd
00002A6F  9AC90C561A        call word 0x1a56:word 0xcc9
00002A74  8B0E5E6C          mov cx,[0x6c5e]
00002A78  8B36606C          mov si,[0x6c60]
00002A7C  8B3E626C          mov di,[0x6c62]
00002A80  9AB50C561A        call word 0x1a56:word 0xcb5
00002A85  9AD50C561A        call word 0x1a56:word 0xcd5
00002A8A  8BC8              mov cx,ax
00002A8C  8BDA              mov bx,dx
00002A8E  8B46FA            mov ax,[bp-0x6]
00002A91  99                cwd
00002A92  03C1              add ax,cx
00002A94  13D3              adc dx,bx
00002A96  C43EBD6B          les di,word [0x6bbd]
00002A9A  26894502          mov [es:di+0x2],ax
00002A9E  803EAD6B00        cmp byte [0x6bad],0x0
00002AA3  7415              jz 0x2aba
00002AA5  C406856B          les ax,word [0x6b85]
00002AA9  8CC2              mov dx,es
00002AAB  A3956B            mov [0x6b95],ax
00002AAE  8916976B          mov [0x6b97],dx
00002AB2  BF956B            mov di,0x6b95
00002AB5  1E                push ds
00002AB6  57                push di
00002AB7  E834D6            call 0xee
00002ABA  FA                cli
00002ABB  FF06476C          inc word [0x6c47]
00002ABF  FB                sti
00002AC0  FF36956B          push word [0x6b95]
00002AC4  FF36976B          push word [0x6b97]
00002AC8  9A850CCE18        call word 0x18ce:word 0xc85
00002ACD  FA                cli
00002ACE  FE064A6C          inc byte [0x6c4a]
00002AD2  FF0E476C          dec word [0x6c47]
00002AD6  803E496C01        cmp byte [0x6c49],0x1
00002ADB  750F              jnz 0x2aec
00002ADD  C606496C00        mov byte [0x6c49],0x0
00002AE2  FF1E876E          call word far [0x6e87]
00002AE6  FF1E8B6E          call word far [0x6e8b]
00002AEA  EBEA              jmp 0x2ad6
00002AEC  FE0E4A6C          dec byte [0x6c4a]
00002AF0  FB                sti
00002AF1  89EC              mov sp,bp
00002AF3  5D                pop bp
00002AF4  CA0400            retf word 0x4
00002AF7  55                push bp
00002AF8  89E5              mov bp,sp
00002AFA  89EC              mov sp,bp
00002AFC  5D                pop bp
00002AFD  CB                retf
00002AFE  55                push bp
00002AFF  89E5              mov bp,sp
00002B01  83EC04            sub sp,0x4
00002B04  C43EAC6E          les di,word [0x6eac]
00002B08  81C70400          add di,0x4
00002B0C  897EFC            mov [bp-0x4],di
00002B0F  8C46FE            mov word [bp-0x2],es
00002B12  31C0              xor ax,ax
00002B14  50                push ax
00002B15  31C0              xor ax,ax
00002B17  50                push ax
00002B18  C47EFC            les di,word [bp-0x4]
00002B1B  26FF7504          push word [es:di+0x4]
00002B1F  C47EFC            les di,word [bp-0x4]
00002B22  26FF7506          push word [es:di+0x6]
00002B26  FA                cli
00002B27  FE064A6C          inc byte [0x6c4a]
00002B2B  5A                pop dx
00002B2C  59                pop cx
00002B2D  5B                pop bx
00002B2E  58                pop ax
00002B2F  39C8              cmp ax,cx
00002B31  7E02              jng 0x2b35
00002B33  87C1              xchg ax,cx
00002B35  39D3              cmp bx,dx
00002B37  7E02              jng 0x2b3b
00002B39  87DA              xchg bx,dx
00002B3B  803E8F6E01        cmp byte [0x6e8f],0x1
00002B40  7521              jnz 0x2b63
00002B42  3906986E          cmp [0x6e98],ax
00002B46  7C1B              jl 0x2b63
00002B48  391E9A6E          cmp [0x6e9a],bx
00002B4C  7C15              jl 0x2b63
00002B4E  3B0E946E          cmp cx,[0x6e94]
00002B52  7C0F              jl 0x2b63
00002B54  3B16966E          cmp dx,[0x6e96]
00002B58  7C09              jl 0x2b63
00002B5A  FF1E876E          call word far [0x6e87]
00002B5E  C606496C01        mov byte [0x6c49],0x1
00002B63  FF06476C          inc word [0x6c47]
00002B67  FE0E4A6C          dec byte [0x6c4a]
00002B6B  FB                sti
00002B6C  C43EAC6E          les di,word [0x6eac]
00002B70  81C70400          add di,0x4
00002B74  06                push es
00002B75  57                push di
00002B76  9ADF14CE18        call word 0x18ce:word 0x14df
00002B7B  FA                cli
00002B7C  FE064A6C          inc byte [0x6c4a]
00002B80  FF0E476C          dec word [0x6c47]
00002B84  803E496C01        cmp byte [0x6c49],0x1
00002B89  750F              jnz 0x2b9a
00002B8B  C606496C00        mov byte [0x6c49],0x0
00002B90  FF1E876E          call word far [0x6e87]
00002B94  FF1E8B6E          call word far [0x6e8b]
00002B98  EBEA              jmp 0x2b84
00002B9A  FE0E4A6C          dec byte [0x6c4a]
00002B9E  FB                sti
00002B9F  89EC              mov sp,bp
00002BA1  5D                pop bp
00002BA2  CB                retf
00002BA3  55                push bp
00002BA4  89E5              mov bp,sp
00002BA6  89EC              mov sp,bp
00002BA8  5D                pop bp
00002BA9  CA0200            retf word 0x2
00002BAC  55                push bp
00002BAD  89E5              mov bp,sp
00002BAF  FA                cli
00002BB0  FF06476C          inc word [0x6c47]
00002BB4  FB                sti
00002BB5  8A4606            mov al,[bp+0x6]
00002BB8  A2B26B            mov [0x6bb2],al
00002BBB  8A4606            mov al,[bp+0x6]
00002BBE  98                cbw
00002BBF  8BF8              mov di,ax
00002BC1  8A85DB11          mov al,[di+0x11db]
00002BC5  30E4              xor ah,ah
00002BC7  50                push ax
00002BC8  9A4E02CE18        call word 0x18ce:word 0x24e
00002BCD  8A4606            mov al,[bp+0x6]
00002BD0  2402              and al,0x2
00002BD2  08C0              or al,al
00002BD4  7504              jnz 0x2bda
00002BD6  B000              mov al,0x0
00002BD8  EB02              jmp 0x2bdc
00002BDA  B001              mov al,0x1
00002BDC  A2DA11            mov [0x11da],al
00002BDF  FA                cli
00002BE0  FE064A6C          inc byte [0x6c4a]
00002BE4  FF0E476C          dec word [0x6c47]
00002BE8  803E496C01        cmp byte [0x6c49],0x1
00002BED  750F              jnz 0x2bfe
00002BEF  C606496C00        mov byte [0x6c49],0x0
00002BF4  FF1E876E          call word far [0x6e87]
00002BF8  FF1E8B6E          call word far [0x6e8b]
00002BFC  EBEA              jmp 0x2be8
00002BFE  FE0E4A6C          dec byte [0x6c4a]
00002C02  FB                sti
00002C03  89EC              mov sp,bp
00002C05  5D                pop bp
00002C06  CA0200            retf word 0x2
00002C09  55                push bp
00002C0A  89E5              mov bp,sp
00002C0C  FF760A            push word [bp+0xa]
00002C0F  FF7608            push word [bp+0x8]
00002C12  A1D16B            mov ax,[0x6bd1]
00002C15  48                dec ax
00002C16  03460A            add ax,[bp+0xa]
00002C19  50                push ax
00002C1A  A1D36B            mov ax,[0x6bd3]
00002C1D  48                dec ax
00002C1E  034608            add ax,[bp+0x8]
00002C21  50                push ax
00002C22  FA                cli
00002C23  FE064A6C          inc byte [0x6c4a]
00002C27  5A                pop dx
00002C28  59                pop cx
00002C29  5B                pop bx
00002C2A  58                pop ax
00002C2B  39C8              cmp ax,cx
00002C2D  7E02              jng 0x2c31
00002C2F  87C1              xchg ax,cx
00002C31  39D3              cmp bx,dx
00002C33  7E02              jng 0x2c37
00002C35  87DA              xchg bx,dx
00002C37  803E8F6E01        cmp byte [0x6e8f],0x1
00002C3C  7521              jnz 0x2c5f
00002C3E  3906986E          cmp [0x6e98],ax
00002C42  7C1B              jl 0x2c5f
00002C44  391E9A6E          cmp [0x6e9a],bx
00002C48  7C15              jl 0x2c5f
00002C4A  3B0E946E          cmp cx,[0x6e94]
00002C4E  7C0F              jl 0x2c5f
00002C50  3B16966E          cmp dx,[0x6e96]
00002C54  7C09              jl 0x2c5f
00002C56  FF1E876E          call word far [0x6e87]
00002C5A  C606496C01        mov byte [0x6c49],0x1
00002C5F  FF06476C          inc word [0x6c47]
00002C63  FE0E4A6C          dec byte [0x6c4a]
00002C67  FB                sti
00002C68  FF760A            push word [bp+0xa]
00002C6B  FF7608            push word [bp+0x8]
00002C6E  9A850CCE18        call word 0x18ce:word 0xc85
00002C73  803EDA1100        cmp byte [0x11da],0x0
00002C78  7403              jz 0x2c7d
00002C7A  E98300            jmp 0x2d00
00002C7D  803EAF6B01        cmp byte [0x6baf],0x1
00002C82  740B              jz 0x2c8f
00002C84  8A4606            mov al,[bp+0x6]
00002C87  50                push ax
00002C88  9A2C16CE18        call word 0x18ce:word 0x162c
00002C8D  EB6F              jmp 0x2cfe
00002C8F  B80700            mov ax,0x7
00002C92  50                push ax
00002C93  9A3502CE18        call word 0x18ce:word 0x235
00002C98  31C0              xor ax,ax
00002C9A  50                push ax
00002C9B  9A210BCE18        call word 0x18ce:word 0xb21
00002CA0  A14F67            mov ax,[0x674f]
00002CA3  48                dec ax
00002CA4  50                push ax
00002CA5  9A1C18CE18        call word 0x18ce:word 0x181c
00002CAA  8A4606            mov al,[bp+0x6]
00002CAD  50                push ax
00002CAE  9A2C16CE18        call word 0x18ce:word 0x162c
00002CB3  FF36A16B          push word [0x6ba1]
00002CB7  9A210BCE18        call word 0x18ce:word 0xb21
00002CBC  833EA16B00        cmp word [0x6ba1],0x0
00002CC1  742E              jz 0x2cf1
00002CC3  FF760A            push word [bp+0xa]
00002CC6  FF7608            push word [bp+0x8]
00002CC9  9A850CCE18        call word 0x18ce:word 0xc85
00002CCE  B80100            mov ax,0x1
00002CD1  50                push ax
00002CD2  9A3502CE18        call word 0x18ce:word 0x235
00002CD7  31C0              xor ax,ax
00002CD9  50                push ax
00002CDA  9A1C18CE18        call word 0x18ce:word 0x181c
00002CDF  8A4606            mov al,[bp+0x6]
00002CE2  50                push ax
00002CE3  9A2C16CE18        call word 0x18ce:word 0x162c
00002CE8  FF36A36B          push word [0x6ba3]
00002CEC  9A1C18CE18        call word 0x18ce:word 0x181c
00002CF1  C43EAC6E          les di,word [0x6eac]
00002CF5  26FF7538          push word [es:di+0x38]
00002CF9  9A3502CE18        call word 0x18ce:word 0x235
00002CFE  EB2D              jmp 0x2d2d
00002D00  FF36A36B          push word [0x6ba3]
00002D04  9A210BCE18        call word 0x18ce:word 0xb21
00002D09  FF36A16B          push word [0x6ba1]
00002D0D  9A1C18CE18        call word 0x18ce:word 0x181c
00002D12  8A4606            mov al,[bp+0x6]
00002D15  50                push ax
00002D16  9A2C16CE18        call word 0x18ce:word 0x162c
00002D1B  FF36A16B          push word [0x6ba1]
00002D1F  9A210BCE18        call word 0x18ce:word 0xb21
00002D24  FF36A36B          push word [0x6ba3]
00002D28  9A1C18CE18        call word 0x18ce:word 0x181c
00002D2D  FA                cli
00002D2E  FE064A6C          inc byte [0x6c4a]
00002D32  FF0E476C          dec word [0x6c47]
00002D36  803E496C01        cmp byte [0x6c49],0x1
00002D3B  750F              jnz 0x2d4c
00002D3D  C606496C00        mov byte [0x6c49],0x0
00002D42  FF1E876E          call word far [0x6e87]
00002D46  FF1E8B6E          call word far [0x6e8b]
00002D4A  EBEA              jmp 0x2d36
00002D4C  FE0E4A6C          dec byte [0x6c4a]
00002D50  FB                sti
00002D51  89EC              mov sp,bp
00002D53  5D                pop bp
00002D54  CA0600            retf word 0x6
00002D57  55                push bp
00002D58  89E5              mov bp,sp
00002D5A  83EC02            sub sp,0x2
00002D5D  A1646C            mov ax,[0x6c64]
00002D60  A34F67            mov [0x674f],ax
00002D63  A1646C            mov ax,[0x6c64]
00002D66  48                dec ax
00002D67  8846FE            mov [bp-0x2],al
00002D6A  B000              mov al,0x0
00002D6C  3A46FE            cmp al,[bp-0x2]
00002D6F  7738              ja 0x2da9
00002D71  8846FF            mov [bp-0x1],al
00002D74  EB03              jmp 0x2d79
00002D76  FE46FF            inc byte [bp-0x1]
00002D79  8A46FF            mov al,[bp-0x1]
00002D7C  30E4              xor ah,ah
00002D7E  BA0300            mov dx,0x3
00002D81  F7E2              mul dx
00002D83  8BF8              mov di,ax
00002D85  81C7B26E          add di,0x6eb2
00002D89  1E                push ds
00002D8A  57                push di
00002D8B  8A46FF            mov al,[bp-0x1]
00002D8E  30E4              xor ah,ah
00002D90  8BF8              mov di,ax
00002D92  D1E7              shl di,1
00002D94  D1E7              shl di,1
00002D96  81C75167          add di,0x6751
00002D9A  1E                push ds
00002D9B  57                push di
00002D9C  9A00009A16        call word 0x169a:word 0x0
00002DA1  8A46FF            mov al,[bp-0x1]
00002DA4  3A46FE            cmp al,[bp-0x2]
00002DA7  75CD              jnz 0x2d76
00002DA9  89EC              mov sp,bp
00002DAB  5D                pop bp
00002DAC  CB                retf
00002DAD  55                push bp
00002DAE  89E5              mov bp,sp
00002DB0  89EC              mov sp,bp
00002DB2  5D                pop bp
00002DB3  CA0200            retf word 0x2
00002DB6  55                push bp
00002DB7  89E5              mov bp,sp
00002DB9  89EC              mov sp,bp
00002DBB  5D                pop bp
00002DBC  CB                retf
00002DBD  55                push bp
00002DBE  89E5              mov bp,sp
00002DC0  8A460A            mov al,[bp+0xa]
00002DC3  30E4              xor ah,ah
00002DC5  BA0300            mov dx,0x3
00002DC8  F7E2              mul dx
00002DCA  8BF8              mov di,ax
00002DCC  81C7B26E          add di,0x6eb2
00002DD0  1E                push ds
00002DD1  57                push di
00002DD2  C47E06            les di,word [bp+0x6]
00002DD5  06                push es
00002DD6  57                push di
00002DD7  B80300            mov ax,0x3
00002DDA  50                push ax
00002DDB  9AC002561A        call word 0x1a56:word 0x2c0
00002DE0  89EC              mov sp,bp
00002DE2  5D                pop bp
00002DE3  CA0800            retf word 0x8
00002DE6  55                push bp
00002DE7  89E5              mov bp,sp
00002DE9  83EC04            sub sp,0x4
00002DEC  FF7608            push word [bp+0x8]
00002DEF  FF7606            push word [bp+0x6]
00002DF2  8D7EFC            lea di,[bp-0x4]
00002DF5  16                push ss
00002DF6  57                push di
00002DF7  FF1E796C          call word far [0x6c79]
00002DFB  8D7EFC            lea di,[bp-0x4]
00002DFE  16                push ss
00002DFF  57                push di
00002E00  8A4606            mov al,[bp+0x6]
00002E03  30E4              xor ah,ah
00002E05  8BF8              mov di,ax
00002E07  D1E7              shl di,1
00002E09  D1E7              shl di,1
00002E0B  81C75167          add di,0x6751
00002E0F  1E                push ds
00002E10  57                push di
00002E11  9A00009A16        call word 0x169a:word 0x0
00002E16  8A4606            mov al,[bp+0x6]
00002E19  8846FF            mov [bp-0x1],al
00002E1C  8A46FF            mov al,[bp-0x1]
00002E1F  89EC              mov sp,bp
00002E21  5D                pop bp
00002E22  CA0600            retf word 0x6
00002E25  55                push bp
00002E26  89E5              mov bp,sp
00002E28  83EC14            sub sp,0x14
00002E2B  C47E06            les di,word [bp+0x6]
00002E2E  06                push es
00002E2F  57                push di
00002E30  8D7EF9            lea di,[bp-0x7]
00002E33  16                push ss
00002E34  57                push di
00002E35  B80300            mov ax,0x3
00002E38  50                push ax
00002E39  9AC002561A        call word 0x1a56:word 0x2c0
00002E3E  31C0              xor ax,ax
00002E40  8946F5            mov [bp-0xb],ax
00002E43  C746F1FFFF        mov word [bp-0xf],0xffff
00002E48  C406666C          les ax,word [0x6c66]
00002E4C  8CC2              mov dx,es
00002E4E  2D0100            sub ax,0x1
00002E51  83DA00            sbb dx,0x0
00002E54  8946EC            mov [bp-0x14],ax
00002E57  31C0              xor ax,ax
00002E59  3B46EC            cmp ax,[bp-0x14]
00002E5C  7E03              jng 0x2e61
00002E5E  E99200            jmp 0x2ef3
00002E61  8946F7            mov [bp-0x9],ax
00002E64  EB03              jmp 0x2e69
00002E66  FF46F7            inc word [bp-0x9]
00002E69  8B46F7            mov ax,[bp-0x9]
00002E6C  99                cwd
00002E6D  52                push dx
00002E6E  50                push ax
00002E6F  8D7EEE            lea di,[bp-0x12]
00002E72  16                push ss
00002E73  57                push di
00002E74  FF1E796C          call word far [0x6c79]
00002E78  803E6C6C00        cmp byte [0x6c6c],0x0
00002E7D  7414              jz 0x2e93
00002E7F  8D7EF9            lea di,[bp-0x7]
00002E82  16                push ss
00002E83  57                push di
00002E84  8D7EEE            lea di,[bp-0x12]
00002E87  16                push ss
00002E88  57                push di
00002E89  9A1D059A16        call word 0x169a:word 0x51d
00002E8E  8946F3            mov [bp-0xd],ax
00002E91  EB41              jmp 0x2ed4
00002E93  8D7EF9            lea di,[bp-0x7]
00002E96  16                push ss
00002E97  57                push di
00002E98  8D7EEE            lea di,[bp-0x12]
00002E9B  16                push ss
00002E9C  57                push di
00002E9D  8CDA              mov dx,ds
00002E9F  5E                pop si
00002EA0  1F                pop ds
00002EA1  5F                pop di
00002EA2  07                pop es
00002EA3  AC                lodsb
00002EA4  268A1D            mov bl,[es:di]
00002EA7  47                inc di
00002EA8  D0E8              shr al,1
00002EAA  D0EB              shr bl,1
00002EAC  28D8              sub al,bl
00002EAE  F6E8              imul al
00002EB0  89C1              mov cx,ax
00002EB2  AC                lodsb
00002EB3  268A1D            mov bl,[es:di]
00002EB6  47                inc di
00002EB7  D0E8              shr al,1
00002EB9  D0EB              shr bl,1
00002EBB  28D8              sub al,bl
00002EBD  F6E8              imul al
00002EBF  01C1              add cx,ax
00002EC1  AC                lodsb
00002EC2  268A1D            mov bl,[es:di]
00002EC5  D0E8              shr al,1
00002EC7  D0EB              shr bl,1
00002EC9  28D8              sub al,bl
00002ECB  F6E8              imul al
00002ECD  01C8              add ax,cx
00002ECF  8EDA              mov ds,dx
00002ED1  8946F3            mov [bp-0xd],ax
00002ED4  8B46F3            mov ax,[bp-0xd]
00002ED7  3B46F1            cmp ax,[bp-0xf]
00002EDA  770C              ja 0x2ee8
00002EDC  8B46F3            mov ax,[bp-0xd]
00002EDF  8946F1            mov [bp-0xf],ax
00002EE2  8B46F7            mov ax,[bp-0x9]
00002EE5  8946F5            mov [bp-0xb],ax
00002EE8  8B46F7            mov ax,[bp-0x9]
00002EEB  3B46EC            cmp ax,[bp-0x14]
00002EEE  7403              jz 0x2ef3
00002EF0  E973FF            jmp 0x2e66
00002EF3  8B46F5            mov ax,[bp-0xb]
00002EF6  99                cwd
00002EF7  8946FC            mov [bp-0x4],ax
00002EFA  8956FE            mov [bp-0x2],dx
00002EFD  8B46FC            mov ax,[bp-0x4]
00002F00  8B56FE            mov dx,[bp-0x2]
00002F03  89EC              mov sp,bp
00002F05  5D                pop bp
00002F06  CA0400            retf word 0x4
00002F09  55                push bp
00002F0A  89E5              mov bp,sp
00002F0C  83EC04            sub sp,0x4
00002F0F  BE4000            mov si,0x40
00002F12  8EC6              mov es,si
00002F14  26A06600          mov al,[es:0x66]
00002F18  240F              and al,0xf
00002F1A  A22B12            mov [0x122b],al
00002F1D  C7064F670200      mov word [0x674f],0x2
00002F23  C646FF00          mov byte [bp-0x1],0x0
00002F27  EB03              jmp 0x2f2c
00002F29  FE46FF            inc byte [bp-0x1]
00002F2C  8A46FF            mov al,[bp-0x1]
00002F2F  98                cbw
00002F30  99                cwd
00002F31  52                push dx
00002F32  50                push ax
00002F33  8D7EFC            lea di,[bp-0x4]
00002F36  16                push ss
00002F37  57                push di
00002F38  FF1E796C          call word far [0x6c79]
00002F3C  8D7EFC            lea di,[bp-0x4]
00002F3F  16                push ss
00002F40  57                push di
00002F41  8A46FF            mov al,[bp-0x1]
00002F44  98                cbw
00002F45  8BF8              mov di,ax
00002F47  D1E7              shl di,1
00002F49  D1E7              shl di,1
00002F4B  81C75167          add di,0x6751
00002F4F  1E                push ds
00002F50  57                push di
00002F51  9A00009A16        call word 0x169a:word 0x0
00002F56  807EFF01          cmp byte [bp-0x1],0x1
00002F5A  75CD              jnz 0x2f29
00002F5C  89EC              mov sp,bp
00002F5E  5D                pop bp
00002F5F  CB                retf
00002F60  55                push bp
00002F61  89E5              mov bp,sp
00002F63  8A4606            mov al,[bp+0x6]
00002F66  A22B12            mov [0x122b],al
00002F69  89EC              mov sp,bp
00002F6B  5D                pop bp
00002F6C  CA0200            retf word 0x2
00002F6F  55                push bp
00002F70  89E5              mov bp,sp
00002F72  A02B12            mov al,[0x122b]
00002F75  0C80              or al,0x80
00002F77  50                push ax
00002F78  5B                pop bx
00002F79  B700              mov bh,0x0
00002F7B  B40B              mov ah,0xb
00002F7D  55                push bp
00002F7E  CD10              int byte 0x10
00002F80  5D                pop bp
00002F81  89EC              mov sp,bp
00002F83  5D                pop bp
00002F84  CB                retf
00002F85  55                push bp
00002F86  89E5              mov bp,sp
00002F88  807E0A00          cmp byte [bp+0xa],0x0
00002F8C  7515              jnz 0x2fa3
00002F8E  BFFB11            mov di,0x11fb
00002F91  1E                push ds
00002F92  57                push di
00002F93  C47E06            les di,word [bp+0x6]
00002F96  06                push es
00002F97  57                push di
00002F98  B80300            mov ax,0x3
00002F9B  50                push ax
00002F9C  9AC002561A        call word 0x1a56:word 0x2c0
00002FA1  EB1F              jmp 0x2fc2
00002FA3  A02B12            mov al,[0x122b]
00002FA6  98                cbw
00002FA7  BA0300            mov dx,0x3
00002FAA  F7E2              mul dx
00002FAC  8BF8              mov di,ax
00002FAE  81C7FB11          add di,0x11fb
00002FB2  1E                push ds
00002FB3  57                push di
00002FB4  C47E06            les di,word [bp+0x6]
00002FB7  06                push es
00002FB8  57                push di
00002FB9  B80300            mov ax,0x3
00002FBC  50                push ax
00002FBD  9AC002561A        call word 0x1a56:word 0x2c0
00002FC2  89EC              mov sp,bp
00002FC4  5D                pop bp
00002FC5  CA0800            retf word 0x8
00002FC8  55                push bp
00002FC9  89E5              mov bp,sp
00002FCB  83EC04            sub sp,0x4
00002FCE  BE4000            mov si,0x40
00002FD1  8EC6              mov es,si
00002FD3  26A06500          mov al,[es:0x65]
00002FD7  2402              and al,0x2
00002FD9  08C0              or al,al
00002FDB  7407              jz 0x2fe4
00002FDD  C6062D1202        mov byte [0x122d],0x2
00002FE2  EB1B              jmp 0x2fff
00002FE4  BE4000            mov si,0x40
00002FE7  8EC6              mov es,si
00002FE9  26A06600          mov al,[es:0x66]
00002FED  2410              and al,0x10
00002FEF  08C0              or al,al
00002FF1  7407              jz 0x2ffa
00002FF3  C6062D1201        mov byte [0x122d],0x1
00002FF8  EB05              jmp 0x2fff
00002FFA  C6062D1200        mov byte [0x122d],0x0
00002FFF  BE4000            mov si,0x40
00003002  8EC6              mov es,si
00003004  26A06600          mov al,[es:0x66]
00003008  240F              and al,0xf
0000300A  A22C12            mov [0x122c],al
0000300D  C7064F670400      mov word [0x674f],0x4
00003013  C646FF00          mov byte [bp-0x1],0x0
00003017  EB03              jmp 0x301c
00003019  FE46FF            inc byte [bp-0x1]
0000301C  8A46FF            mov al,[bp-0x1]
0000301F  98                cbw
00003020  99                cwd
00003021  52                push dx
00003022  50                push ax
00003023  8D7EFC            lea di,[bp-0x4]
00003026  16                push ss
00003027  57                push di
00003028  FF1E796C          call word far [0x6c79]
0000302C  8D7EFC            lea di,[bp-0x4]
0000302F  16                push ss
00003030  57                push di
00003031  8A46FF            mov al,[bp-0x1]
00003034  98                cbw
00003035  8BF8              mov di,ax
00003037  D1E7              shl di,1
00003039  D1E7              shl di,1
0000303B  81C75167          add di,0x6751
0000303F  1E                push ds
00003040  57                push di
00003041  9A00009A16        call word 0x169a:word 0x0
00003046  807EFF03          cmp byte [bp-0x1],0x3
0000304A  75CD              jnz 0x3019
0000304C  89EC              mov sp,bp
0000304E  5D                pop bp
0000304F  CB                retf
00003050  55                push bp
00003051  89E5              mov bp,sp
00003053  8B4606            mov ax,[bp+0x6]
00003056  250F00            and ax,0xf
00003059  A22C12            mov [0x122c],al
0000305C  8B4606            mov ax,[bp+0x6]
0000305F  B90400            mov cx,0x4
00003062  D3E8              shr ax,cl
00003064  A22D12            mov [0x122d],al
00003067  89EC              mov sp,bp
00003069  5D                pop bp
0000306A  CA0200            retf word 0x2
0000306D  55                push bp
0000306E  89E5              mov bp,sp
00003070  83EC01            sub sp,0x1
00003073  A02D12            mov al,[0x122d]
00003076  98                cbw
00003077  D1E8              shr ax,1
00003079  050400            add ax,0x4
0000307C  50                push ax
0000307D  58                pop ax
0000307E  B400              mov ah,0x0
00003080  55                push bp
00003081  CD10              int byte 0x10
00003083  5D                pop bp
00003084  A02C12            mov al,[0x122c]
00003087  0C10              or al,0x10
00003089  8846FF            mov [bp-0x1],al
0000308C  A02D12            mov al,[0x122d]
0000308F  2401              and al,0x1
00003091  08C0              or al,al
00003093  7408              jz 0x309d
00003095  8A46FF            mov al,[bp-0x1]
00003098  0C20              or al,0x20
0000309A  8846FF            mov [bp-0x1],al
0000309D  8A46FF            mov al,[bp-0x1]
000030A0  50                push ax
000030A1  5B                pop bx
000030A2  B700              mov bh,0x0
000030A4  B40B              mov ah,0xb
000030A6  55                push bp
000030A7  CD10              int byte 0x10
000030A9  5D                pop bp
000030AA  A02D12            mov al,[0x122d]
000030AD  2401              and al,0x1
000030AF  50                push ax
000030B0  5B                pop bx
000030B1  B701              mov bh,0x1
000030B3  B40B              mov ah,0xb
000030B5  55                push bp
000030B6  CD10              int byte 0x10
000030B8  5D                pop bp
000030B9  89EC              mov sp,bp
000030BB  5D                pop bp
000030BC  CB                retf
000030BD  55                push bp
000030BE  89E5              mov bp,sp
000030C0  807E0A00          cmp byte [bp+0xa],0x0
000030C4  7521              jnz 0x30e7
000030C6  A02C12            mov al,[0x122c]
000030C9  98                cbw
000030CA  BA0300            mov dx,0x3
000030CD  F7E2              mul dx
000030CF  8BF8              mov di,ax
000030D1  81C7FB11          add di,0x11fb
000030D5  1E                push ds
000030D6  57                push di
000030D7  C47E06            les di,word [bp+0x6]
000030DA  06                push es
000030DB  57                push di
000030DC  B80300            mov ax,0x3
000030DF  50                push ax
000030E0  9AC002561A        call word 0x1a56:word 0x2c0
000030E5  EB35              jmp 0x311c
000030E7  8A460A            mov al,[bp+0xa]
000030EA  30E4              xor ah,ah
000030EC  8BC8              mov cx,ax
000030EE  A02D12            mov al,[0x122d]
000030F1  98                cbw
000030F2  BA0300            mov dx,0x3
000030F5  F7E2              mul dx
000030F7  8BF8              mov di,ax
000030F9  03F9              add di,cx
000030FB  8A852D12          mov al,[di+0x122d]
000030FF  30E4              xor ah,ah
00003101  BA0300            mov dx,0x3
00003104  F7E2              mul dx
00003106  8BF8              mov di,ax
00003108  81C7FB11          add di,0x11fb
0000310C  1E                push ds
0000310D  57                push di
0000310E  C47E06            les di,word [bp+0x6]
00003111  06                push es
00003112  57                push di
00003113  B80300            mov ax,0x3
00003116  50                push ax
00003117  9AC002561A        call word 0x1a56:word 0x2c0
0000311C  89EC              mov sp,bp
0000311E  5D                pop bp
0000311F  CA0800            retf word 0x8
00003122  55                push bp
00003123  89E5              mov bp,sp
00003125  83EC02            sub sp,0x2
00003128  C7064F671000      mov word [0x674f],0x10
0000312E  C646FE00          mov byte [bp-0x2],0x0
00003132  EB03              jmp 0x3137
00003134  FE46FE            inc byte [bp-0x2]
00003137  8A46FE            mov al,[bp-0x2]
0000313A  50                push ax
0000313B  8A46FE            mov al,[bp-0x2]
0000313E  98                cbw
0000313F  BA0300            mov dx,0x3
00003142  F7E2              mul dx
00003144  8BF8              mov di,ax
00003146  81C7FB11          add di,0x11fb
0000314A  1E                push ds
0000314B  57                push di
0000314C  FF1E816C          call word far [0x6c81]
00003150  52                push dx
00003151  50                push ax
00003152  FF1E7D6C          call word far [0x6c7d]
00003156  8846FF            mov [bp-0x1],al
00003159  807EFE0F          cmp byte [bp-0x2],0xf
0000315D  75D5              jnz 0x3134
0000315F  89EC              mov sp,bp
00003161  5D                pop bp
00003162  CB                retf
00003163  55                push bp
00003164  89E5              mov bp,sp
00003166  8A460A            mov al,[bp+0xa]
00003169  30E4              xor ah,ah
0000316B  B90500            mov cx,0x5
0000316E  D3E8              shr ax,cl
00003170  250100            and ax,0x1
00003173  B95500            mov cx,0x55
00003176  F7E9              imul cx
00003178  8BD8              mov bx,ax
0000317A  8A460A            mov al,[bp+0xa]
0000317D  30E4              xor ah,ah
0000317F  B90200            mov cx,0x2
00003182  D3E8              shr ax,cl
00003184  250100            and ax,0x1
00003187  B9AA00            mov cx,0xaa
0000318A  F7E9              imul cx
0000318C  03C3              add ax,bx
0000318E  C47E06            les di,word [bp+0x6]
00003191  268805            mov [es:di],al
00003194  8A460A            mov al,[bp+0xa]
00003197  30E4              xor ah,ah
00003199  B90400            mov cx,0x4
0000319C  D3E8              shr ax,cl
0000319E  250100            and ax,0x1
000031A1  B95500            mov cx,0x55
000031A4  F7E9              imul cx
000031A6  8BD8              mov bx,ax
000031A8  8A460A            mov al,[bp+0xa]
000031AB  30E4              xor ah,ah
000031AD  D1E8              shr ax,1
000031AF  250100            and ax,0x1
000031B2  B9AA00            mov cx,0xaa
000031B5  F7E9              imul cx
000031B7  03C3              add ax,bx
000031B9  C47E06            les di,word [bp+0x6]
000031BC  26884501          mov [es:di+0x1],al
000031C0  8A460A            mov al,[bp+0xa]
000031C3  30E4              xor ah,ah
000031C5  B90300            mov cx,0x3
000031C8  D3E8              shr ax,cl
000031CA  250100            and ax,0x1
000031CD  B95500            mov cx,0x55
000031D0  F7E9              imul cx
000031D2  8BD8              mov bx,ax
000031D4  8A460A            mov al,[bp+0xa]
000031D7  30E4              xor ah,ah
000031D9  31C9              xor cx,cx
000031DB  D3E8              shr ax,cl
000031DD  250100            and ax,0x1
000031E0  B9AA00            mov cx,0xaa
000031E3  F7E9              imul cx
000031E5  03C3              add ax,bx
000031E7  C47E06            les di,word [bp+0x6]
000031EA  26884502          mov [es:di+0x2],al
000031EE  89EC              mov sp,bp
000031F0  5D                pop bp
000031F1  CA0800            retf word 0x8
000031F4  55                push bp
000031F5  89E5              mov bp,sp
000031F7  83EC04            sub sp,0x4
000031FA  8A460A            mov al,[bp+0xa]
000031FD  50                push ax
000031FE  8A4606            mov al,[bp+0x6]
00003201  50                push ax
00003202  58                pop ax
00003203  5B                pop bx
00003204  88C7              mov bh,al
00003206  B80010            mov ax,0x1000
00003209  55                push bp
0000320A  CD10              int byte 0x10
0000320C  5D                pop bp
0000320D  8A460A            mov al,[bp+0xa]
00003210  8846FF            mov [bp-0x1],al
00003213  FF7608            push word [bp+0x8]
00003216  FF7606            push word [bp+0x6]
00003219  8D7EFC            lea di,[bp-0x4]
0000321C  16                push ss
0000321D  57                push di
0000321E  0E                push cs
0000321F  E841FF            call 0x3163
00003222  8D7EFC            lea di,[bp-0x4]
00003225  16                push ss
00003226  57                push di
00003227  8A460A            mov al,[bp+0xa]
0000322A  30E4              xor ah,ah
0000322C  8BF8              mov di,ax
0000322E  D1E7              shl di,1
00003230  D1E7              shl di,1
00003232  81C75167          add di,0x6751
00003236  1E                push ds
00003237  57                push di
00003238  9A00009A16        call word 0x169a:word 0x0
0000323D  8A46FF            mov al,[bp-0x1]
00003240  89EC              mov sp,bp
00003242  5D                pop bp
00003243  CA0600            retf word 0x6
00003246  55                push bp
00003247  89E5              mov bp,sp
00003249  83EC0E            sub sp,0xe
0000324C  C47E06            les di,word [bp+0x6]
0000324F  06                push es
00003250  57                push di
00003251  8D7EF9            lea di,[bp-0x7]
00003254  16                push ss
00003255  57                push di
00003256  B80300            mov ax,0x3
00003259  50                push ax
0000325A  9AC002561A        call word 0x1a56:word 0x2c0
0000325F  8A46F9            mov al,[bp-0x7]
00003262  30E4              xor ah,ah
00003264  50                push ax
00003265  B80400            mov ax,0x4
00003268  50                push ax
00003269  B80001            mov ax,0x100
0000326C  50                push ax
0000326D  59                pop cx
0000326E  5B                pop bx
0000326F  58                pop ax
00003270  F7E3              mul bx
00003272  F7F1              div cx
00003274  8846F6            mov [bp-0xa],al
00003277  8A46FA            mov al,[bp-0x6]
0000327A  30E4              xor ah,ah
0000327C  50                push ax
0000327D  B80400            mov ax,0x4
00003280  50                push ax
00003281  B80001            mov ax,0x100
00003284  50                push ax
00003285  59                pop cx
00003286  5B                pop bx
00003287  58                pop ax
00003288  F7E3              mul bx
0000328A  F7F1              div cx
0000328C  8846F7            mov [bp-0x9],al
0000328F  8A46FB            mov al,[bp-0x5]
00003292  30E4              xor ah,ah
00003294  50                push ax
00003295  B80400            mov ax,0x4
00003298  50                push ax
00003299  B80001            mov ax,0x100
0000329C  50                push ax
0000329D  59                pop cx
0000329E  5B                pop bx
0000329F  58                pop ax
000032A0  F7E3              mul bx
000032A2  F7F1              div cx
000032A4  8846F8            mov [bp-0x8],al
000032A7  31C0              xor ax,ax
000032A9  8946F2            mov [bp-0xe],ax
000032AC  8946F4            mov [bp-0xc],ax
000032AF  8A46F6            mov al,[bp-0xa]
000032B2  2401              and al,0x1
000032B4  08C0              or al,al
000032B6  7408              jz 0x32c0
000032B8  8A46F2            mov al,[bp-0xe]
000032BB  0C20              or al,0x20
000032BD  8846F2            mov [bp-0xe],al
000032C0  8A46F6            mov al,[bp-0xa]
000032C3  2402              and al,0x2
000032C5  08C0              or al,al
000032C7  7408              jz 0x32d1
000032C9  8A46F2            mov al,[bp-0xe]
000032CC  0C04              or al,0x4
000032CE  8846F2            mov [bp-0xe],al
000032D1  8A46F7            mov al,[bp-0x9]
000032D4  2401              and al,0x1
000032D6  08C0              or al,al
000032D8  7408              jz 0x32e2
000032DA  8A46F2            mov al,[bp-0xe]
000032DD  0C10              or al,0x10
000032DF  8846F2            mov [bp-0xe],al
000032E2  8A46F7            mov al,[bp-0x9]
000032E5  2402              and al,0x2
000032E7  08C0              or al,al
000032E9  7408              jz 0x32f3
000032EB  8A46F2            mov al,[bp-0xe]
000032EE  0C02              or al,0x2
000032F0  8846F2            mov [bp-0xe],al
000032F3  8A46F8            mov al,[bp-0x8]
000032F6  2401              and al,0x1
000032F8  08C0              or al,al
000032FA  7408              jz 0x3304
000032FC  8A46F2            mov al,[bp-0xe]
000032FF  0C08              or al,0x8
00003301  8846F2            mov [bp-0xe],al
00003304  8A46F8            mov al,[bp-0x8]
00003307  2402              and al,0x2
00003309  08C0              or al,al
0000330B  7408              jz 0x3315
0000330D  8A46F2            mov al,[bp-0xe]
00003310  0C01              or al,0x1
00003312  8846F2            mov [bp-0xe],al
00003315  C446F2            les ax,word [bp-0xe]
00003318  8CC2              mov dx,es
0000331A  8946FC            mov [bp-0x4],ax
0000331D  8956FE            mov [bp-0x2],dx
00003320  8B46FC            mov ax,[bp-0x4]
00003323  8B56FE            mov dx,[bp-0x2]
00003326  89EC              mov sp,bp
00003328  5D                pop bp
00003329  CA0400            retf word 0x4
0000332C  55                push bp
0000332D  89E5              mov bp,sp
0000332F  83EC04            sub sp,0x4
00003332  C7064F670300      mov word [0x674f],0x3
00003338  C646FF00          mov byte [bp-0x1],0x0
0000333C  EB03              jmp 0x3341
0000333E  FE46FF            inc byte [bp-0x1]
00003341  8A46FF            mov al,[bp-0x1]
00003344  98                cbw
00003345  99                cwd
00003346  52                push dx
00003347  50                push ax
00003348  8D7EFC            lea di,[bp-0x4]
0000334B  16                push ss
0000334C  57                push di
0000334D  FF1E796C          call word far [0x6c79]
00003351  8D7EFC            lea di,[bp-0x4]
00003354  16                push ss
00003355  57                push di
00003356  8A46FF            mov al,[bp-0x1]
00003359  98                cbw
0000335A  8BF8              mov di,ax
0000335C  D1E7              shl di,1
0000335E  D1E7              shl di,1
00003360  81C75167          add di,0x6751
00003364  1E                push ds
00003365  57                push di
00003366  9A00009A16        call word 0x169a:word 0x0
0000336B  807EFF02          cmp byte [bp-0x1],0x2
0000336F  75CD              jnz 0x333e
00003371  89EC              mov sp,bp
00003373  5D                pop bp
00003374  CB                retf
00003375  55                push bp
00003376  89E5              mov bp,sp
00003378  8A460A            mov al,[bp+0xa]
0000337B  30E4              xor ah,ah
0000337D  3D0000            cmp ax,0x0
00003380  7515              jnz 0x3397
00003382  BF3712            mov di,0x1237
00003385  1E                push ds
00003386  57                push di
00003387  C47E06            les di,word [bp+0x6]
0000338A  06                push es
0000338B  57                push di
0000338C  B80300            mov ax,0x3
0000338F  50                push ax
00003390  9AC002561A        call word 0x1a56:word 0x2c0
00003395  EB32              jmp 0x33c9
00003397  3D0100            cmp ax,0x1
0000339A  7515              jnz 0x33b1
0000339C  BF3A12            mov di,0x123a
0000339F  1E                push ds
000033A0  57                push di
000033A1  C47E06            les di,word [bp+0x6]
000033A4  06                push es
000033A5  57                push di
000033A6  B80300            mov ax,0x3
000033A9  50                push ax
000033AA  9AC002561A        call word 0x1a56:word 0x2c0
000033AF  EB18              jmp 0x33c9
000033B1  3D0200            cmp ax,0x2
000033B4  7513              jnz 0x33c9
000033B6  BF3D12            mov di,0x123d
000033B9  1E                push ds
000033BA  57                push di
000033BB  C47E06            les di,word [bp+0x6]
000033BE  06                push es
000033BF  57                push di
000033C0  B80300            mov ax,0x3
000033C3  50                push ax
000033C4  9AC002561A        call word 0x1a56:word 0x2c0
000033C9  89EC              mov sp,bp
000033CB  5D                pop bp
000033CC  CA0800            retf word 0x8
000033CF  55                push bp
000033D0  89E5              mov bp,sp
000033D2  83EC04            sub sp,0x4
000033D5  8A4606            mov al,[bp+0x6]
000033D8  30E4              xor ah,ah
000033DA  8BF8              mov di,ax
000033DC  8A854012          mov al,[di+0x1240]
000033E0  8846FF            mov [bp-0x1],al
000033E3  FF7608            push word [bp+0x8]
000033E6  FF7606            push word [bp+0x6]
000033E9  8D7EFC            lea di,[bp-0x4]
000033EC  16                push ss
000033ED  57                push di
000033EE  0E                push cs
000033EF  E883FF            call 0x3375
000033F2  8D7EFC            lea di,[bp-0x4]
000033F5  16                push ss
000033F6  57                push di
000033F7  8A460A            mov al,[bp+0xa]
000033FA  30E4              xor ah,ah
000033FC  8BF8              mov di,ax
000033FE  D1E7              shl di,1
00003400  D1E7              shl di,1
00003402  81C75167          add di,0x6751
00003406  1E                push ds
00003407  57                push di
00003408  9A00009A16        call word 0x169a:word 0x0
0000340D  8A46FF            mov al,[bp-0x1]
00003410  89EC              mov sp,bp
00003412  5D                pop bp
00003413  CA0600            retf word 0x6
00003416  55                push bp
00003417  89E5              mov bp,sp
00003419  83EC07            sub sp,0x7
0000341C  C47E06            les di,word [bp+0x6]
0000341F  06                push es
00003420  57                push di
00003421  8D7EF9            lea di,[bp-0x7]
00003424  16                push ss
00003425  57                push di
00003426  B80300            mov ax,0x3
00003429  50                push ax
0000342A  9AC002561A        call word 0x1a56:word 0x2c0
0000342F  8D7EF9            lea di,[bp-0x7]
00003432  16                push ss
00003433  57                push di
00003434  9AB9049A16        call word 0x169a:word 0x4b9
00003439  50                push ax
0000343A  B80300            mov ax,0x3
0000343D  50                push ax
0000343E  B80001            mov ax,0x100
00003441  50                push ax
00003442  59                pop cx
00003443  5B                pop bx
00003444  58                pop ax
00003445  F7E3              mul bx
00003447  F7F1              div cx
00003449  31D2              xor dx,dx
0000344B  8946FC            mov [bp-0x4],ax
0000344E  8956FE            mov [bp-0x2],dx
00003451  8B46FC            mov ax,[bp-0x4]
00003454  8B56FE            mov dx,[bp-0x2]
00003457  89EC              mov sp,bp
00003459  5D                pop bp
0000345A  CA0400            retf word 0x4
0000345D  55                push bp
0000345E  89E5              mov bp,sp
00003460  83EC0A            sub sp,0xa
00003463  8B4606            mov ax,[bp+0x6]
00003466  A34F67            mov [0x674f],ax
00003469  8B4606            mov ax,[bp+0x6]
0000346C  48                dec ax
0000346D  8946F6            mov [bp-0xa],ax
00003470  31C0              xor ax,ax
00003472  3B46F6            cmp ax,[bp-0xa]
00003475  7603              jna 0x347a
00003477  E99C00            jmp 0x3516
0000347A  8946FE            mov [bp-0x2],ax
0000347D  EB03              jmp 0x3482
0000347F  FF46FE            inc word [bp-0x2]
00003482  8D7EF8            lea di,[bp-0x8]
00003485  16                push ss
00003486  57                push di
00003487  8D7EF9            lea di,[bp-0x7]
0000348A  16                push ss
0000348B  57                push di
0000348C  8D7EFA            lea di,[bp-0x6]
0000348F  16                push ss
00003490  57                push di
00003491  8A46FE            mov al,[bp-0x2]
00003494  50                push ax
00003495  5B                pop bx
00003496  B81510            mov ax,0x1015
00003499  55                push bp
0000349A  CD10              int byte 0x10
0000349C  5D                pop bp
0000349D  5F                pop di
0000349E  07                pop es
0000349F  26880D            mov [es:di],cl
000034A2  5F                pop di
000034A3  07                pop es
000034A4  26882D            mov [es:di],ch
000034A7  5F                pop di
000034A8  07                pop es
000034A9  268835            mov [es:di],dh
000034AC  8A46F8            mov al,[bp-0x8]
000034AF  30E4              xor ah,ah
000034B1  50                push ax
000034B2  B8FF00            mov ax,0xff
000034B5  50                push ax
000034B6  B83F00            mov ax,0x3f
000034B9  50                push ax
000034BA  59                pop cx
000034BB  5B                pop bx
000034BC  58                pop ax
000034BD  F7E3              mul bx
000034BF  F7F1              div cx
000034C1  8846FB            mov [bp-0x5],al
000034C4  8A46F9            mov al,[bp-0x7]
000034C7  30E4              xor ah,ah
000034C9  50                push ax
000034CA  B8FF00            mov ax,0xff
000034CD  50                push ax
000034CE  B83F00            mov ax,0x3f
000034D1  50                push ax
000034D2  59                pop cx
000034D3  5B                pop bx
000034D4  58                pop ax
000034D5  F7E3              mul bx
000034D7  F7F1              div cx
000034D9  8846FC            mov [bp-0x4],al
000034DC  8A46FA            mov al,[bp-0x6]
000034DF  30E4              xor ah,ah
000034E1  50                push ax
000034E2  B8FF00            mov ax,0xff
000034E5  50                push ax
000034E6  B83F00            mov ax,0x3f
000034E9  50                push ax
000034EA  59                pop cx
000034EB  5B                pop bx
000034EC  58                pop ax
000034ED  F7E3              mul bx
000034EF  F7F1              div cx
000034F1  8846FD            mov [bp-0x3],al
000034F4  8D7EFB            lea di,[bp-0x5]
000034F7  16                push ss
000034F8  57                push di
000034F9  8B7EFE            mov di,[bp-0x2]
000034FC  D1E7              shl di,1
000034FE  D1E7              shl di,1
00003500  81C75167          add di,0x6751
00003504  1E                push ds
00003505  57                push di
00003506  9A00009A16        call word 0x169a:word 0x0
0000350B  8B46FE            mov ax,[bp-0x2]
0000350E  3B46F6            cmp ax,[bp-0xa]
00003511  7403              jz 0x3516
00003513  E969FF            jmp 0x347f
00003516  89EC              mov sp,bp
00003518  5D                pop bp
00003519  CA0200            retf word 0x2
0000351C  55                push bp
0000351D  89E5              mov bp,sp
0000351F  C4460A            les ax,word [bp+0xa]
00003522  8CC2              mov dx,es
00003524  B90C00            mov cx,0xc
00003527  31DB              xor bx,bx
00003529  9A6503561A        call word 0x1a56:word 0x365
0000352E  50                push ax
0000352F  B8FF00            mov ax,0xff
00003532  50                push ax
00003533  B83F00            mov ax,0x3f
00003536  50                push ax
00003537  59                pop cx
00003538  5B                pop bx
00003539  58                pop ax
0000353A  F7E3              mul bx
0000353C  F7F1              div cx
0000353E  C47E06            les di,word [bp+0x6]
00003541  268805            mov [es:di],al
00003544  C4460A            les ax,word [bp+0xa]
00003547  8CC2              mov dx,es
00003549  B90600            mov cx,0x6
0000354C  31DB              xor bx,bx
0000354E  9A6503561A        call word 0x1a56:word 0x365
00003553  253F00            and ax,0x3f
00003556  81E20000          and dx,0x0
0000355A  50                push ax
0000355B  B8FF00            mov ax,0xff
0000355E  50                push ax
0000355F  B83F00            mov ax,0x3f
00003562  50                push ax
00003563  59                pop cx
00003564  5B                pop bx
00003565  58                pop ax
00003566  F7E3              mul bx
00003568  F7F1              div cx
0000356A  C47E06            les di,word [bp+0x6]
0000356D  26884501          mov [es:di+0x1],al
00003571  C4460A            les ax,word [bp+0xa]
00003574  8CC2              mov dx,es
00003576  253F00            and ax,0x3f
00003579  81E20000          and dx,0x0
0000357D  50                push ax
0000357E  B8FF00            mov ax,0xff
00003581  50                push ax
00003582  B83F00            mov ax,0x3f
00003585  50                push ax
00003586  59                pop cx
00003587  5B                pop bx
00003588  58                pop ax
00003589  F7E3              mul bx
0000358B  F7F1              div cx
0000358D  C47E06            les di,word [bp+0x6]
00003590  26884502          mov [es:di+0x2],al
00003594  89EC              mov sp,bp
00003596  5D                pop bp
00003597  CA0800            retf word 0x8
0000359A  55                push bp
0000359B  89E5              mov bp,sp
0000359D  83EC0A            sub sp,0xa
000035A0  C44606            les ax,word [bp+0x6]
000035A3  8CC2              mov dx,es
000035A5  B90C00            mov cx,0xc
000035A8  31DB              xor bx,bx
000035AA  9A6503561A        call word 0x1a56:word 0x365
000035AF  8946F9            mov [bp-0x7],ax
000035B2  C44606            les ax,word [bp+0x6]
000035B5  8CC2              mov dx,es
000035B7  B90600            mov cx,0x6
000035BA  31DB              xor bx,bx
000035BC  9A6503561A        call word 0x1a56:word 0x365
000035C1  253F00            and ax,0x3f
000035C4  81E20000          and dx,0x0
000035C8  8946FB            mov [bp-0x5],ax
000035CB  C44606            les ax,word [bp+0x6]
000035CE  8CC2              mov dx,es
000035D0  253F00            and ax,0x3f
000035D3  81E20000          and dx,0x0
000035D7  8946FD            mov [bp-0x3],ax
000035DA  8A460A            mov al,[bp+0xa]
000035DD  30E4              xor ah,ah
000035DF  50                push ax
000035E0  FF76F9            push word [bp-0x7]
000035E3  FF76FB            push word [bp-0x5]
000035E6  FF76FD            push word [bp-0x3]
000035E9  59                pop cx
000035EA  5A                pop dx
000035EB  88D5              mov ch,dl
000035ED  5A                pop dx
000035EE  88D6              mov dh,dl
000035F0  5B                pop bx
000035F1  B81010            mov ax,0x1010
000035F4  55                push bp
000035F5  CD10              int byte 0x10
000035F7  5D                pop bp
000035F8  8A460A            mov al,[bp+0xa]
000035FB  8846FF            mov [bp-0x1],al
000035FE  FF76F9            push word [bp-0x7]
00003601  B8FF00            mov ax,0xff
00003604  50                push ax
00003605  B83F00            mov ax,0x3f
00003608  50                push ax
00003609  59                pop cx
0000360A  5B                pop bx
0000360B  58                pop ax
0000360C  F7E3              mul bx
0000360E  F7F1              div cx
00003610  8846F6            mov [bp-0xa],al
00003613  FF76FB            push word [bp-0x5]
00003616  B8FF00            mov ax,0xff
00003619  50                push ax
0000361A  B83F00            mov ax,0x3f
0000361D  50                push ax
0000361E  59                pop cx
0000361F  5B                pop bx
00003620  58                pop ax
00003621  F7E3              mul bx
00003623  F7F1              div cx
00003625  8846F7            mov [bp-0x9],al
00003628  FF76FD            push word [bp-0x3]
0000362B  B8FF00            mov ax,0xff
0000362E  50                push ax
0000362F  B83F00            mov ax,0x3f
00003632  50                push ax
00003633  59                pop cx
00003634  5B                pop bx
00003635  58                pop ax
00003636  F7E3              mul bx
00003638  F7F1              div cx
0000363A  8846F8            mov [bp-0x8],al
0000363D  8D7EF6            lea di,[bp-0xa]
00003640  16                push ss
00003641  57                push di
00003642  8A460A            mov al,[bp+0xa]
00003645  30E4              xor ah,ah
00003647  8BF8              mov di,ax
00003649  D1E7              shl di,1
0000364B  D1E7              shl di,1
0000364D  81C75167          add di,0x6751
00003651  1E                push ds
00003652  57                push di
00003653  9A00009A16        call word 0x169a:word 0x0
00003658  8A46FF            mov al,[bp-0x1]
0000365B  89EC              mov sp,bp
0000365D  5D                pop bp
0000365E  CA0600            retf word 0x6
00003661  55                push bp
00003662  89E5              mov bp,sp
00003664  83EC0A            sub sp,0xa
00003667  C47E06            les di,word [bp+0x6]
0000366A  06                push es
0000366B  57                push di
0000366C  8D7EF9            lea di,[bp-0x7]
0000366F  16                push ss
00003670  57                push di
00003671  B80300            mov ax,0x3
00003674  50                push ax
00003675  9AC002561A        call word 0x1a56:word 0x2c0
0000367A  8A46F9            mov al,[bp-0x7]
0000367D  30E4              xor ah,ah
0000367F  50                push ax
00003680  B83F00            mov ax,0x3f
00003683  50                push ax
00003684  B8FF00            mov ax,0xff
00003687  50                push ax
00003688  59                pop cx
00003689  5B                pop bx
0000368A  58                pop ax
0000368B  F7E3              mul bx
0000368D  F7F1              div cx
0000368F  8846F6            mov [bp-0xa],al
00003692  8A46FA            mov al,[bp-0x6]
00003695  30E4              xor ah,ah
00003697  50                push ax
00003698  B83F00            mov ax,0x3f
0000369B  50                push ax
0000369C  B8FF00            mov ax,0xff
0000369F  50                push ax
000036A0  59                pop cx
000036A1  5B                pop bx
000036A2  58                pop ax
000036A3  F7E3              mul bx
000036A5  F7F1              div cx
000036A7  8846F7            mov [bp-0x9],al
000036AA  8A46FB            mov al,[bp-0x5]
000036AD  30E4              xor ah,ah
000036AF  50                push ax
000036B0  B83F00            mov ax,0x3f
000036B3  50                push ax
000036B4  B8FF00            mov ax,0xff
000036B7  50                push ax
000036B8  59                pop cx
000036B9  5B                pop bx
000036BA  58                pop ax
000036BB  F7E3              mul bx
000036BD  F7F1              div cx
000036BF  8846F8            mov [bp-0x8],al
000036C2  8A46F7            mov al,[bp-0x9]
000036C5  30E4              xor ah,ah
000036C7  31D2              xor dx,dx
000036C9  B90600            mov cx,0x6
000036CC  31DB              xor bx,bx
000036CE  9A7203561A        call word 0x1a56:word 0x372
000036D3  52                push dx
000036D4  50                push ax
000036D5  8A46F6            mov al,[bp-0xa]
000036D8  30E4              xor ah,ah
000036DA  31D2              xor dx,dx
000036DC  B90C00            mov cx,0xc
000036DF  31DB              xor bx,bx
000036E1  9A7203561A        call word 0x1a56:word 0x372
000036E6  59                pop cx
000036E7  5B                pop bx
000036E8  0BC1              or ax,cx
000036EA  0BD3              or dx,bx
000036EC  8BC8              mov cx,ax
000036EE  8BDA              mov bx,dx
000036F0  8A46F8            mov al,[bp-0x8]
000036F3  30E4              xor ah,ah
000036F5  31D2              xor dx,dx
000036F7  0BC1              or ax,cx
000036F9  0BD3              or dx,bx
000036FB  8946FC            mov [bp-0x4],ax
000036FE  8956FE            mov [bp-0x2],dx
00003701  8B46FC            mov ax,[bp-0x4]
00003704  8B56FE            mov dx,[bp-0x2]
00003707  89EC              mov sp,bp
00003709  5D                pop bp
0000370A  CA0400            retf word 0x4
0000370D  55                push bp
0000370E  89E5              mov bp,sp
00003710  FF760A            push word [bp+0xa]
00003713  B8FF00            mov ax,0xff
00003716  50                push ax
00003717  B83F00            mov ax,0x3f
0000371A  50                push ax
0000371B  59                pop cx
0000371C  5B                pop bx
0000371D  58                pop ax
0000371E  F7E3              mul bx
00003720  F7F1              div cx
00003722  C47E06            les di,word [bp+0x6]
00003725  268805            mov [es:di],al
00003728  C47E06            les di,word [bp+0x6]
0000372B  268A05            mov al,[es:di]
0000372E  C47E06            les di,word [bp+0x6]
00003731  26884501          mov [es:di+0x1],al
00003735  C47E06            les di,word [bp+0x6]
00003738  268A05            mov al,[es:di]
0000373B  C47E06            les di,word [bp+0x6]
0000373E  26884502          mov [es:di+0x2],al
00003742  89EC              mov sp,bp
00003744  5D                pop bp
00003745  CA0800            retf word 0x8
00003748  55                push bp
00003749  89E5              mov bp,sp
0000374B  83EC04            sub sp,0x4
0000374E  8A460A            mov al,[bp+0xa]
00003751  30E4              xor ah,ah
00003753  50                push ax
00003754  FF7606            push word [bp+0x6]
00003757  FF7606            push word [bp+0x6]
0000375A  FF7606            push word [bp+0x6]
0000375D  59                pop cx
0000375E  5A                pop dx
0000375F  88D5              mov ch,dl
00003761  5A                pop dx
00003762  88D6              mov dh,dl
00003764  5B                pop bx
00003765  B81010            mov ax,0x1010
00003768  55                push bp
00003769  CD10              int byte 0x10
0000376B  5D                pop bp
0000376C  8A460A            mov al,[bp+0xa]
0000376F  8846FF            mov [bp-0x1],al
00003772  FF7606            push word [bp+0x6]
00003775  B8FF00            mov ax,0xff
00003778  50                push ax
00003779  B83F00            mov ax,0x3f
0000377C  50                push ax
0000377D  59                pop cx
0000377E  5B                pop bx
0000377F  58                pop ax
00003780  F7E3              mul bx
00003782  F7F1              div cx
00003784  8846FC            mov [bp-0x4],al
00003787  8A46FC            mov al,[bp-0x4]
0000378A  8846FD            mov [bp-0x3],al
0000378D  8A46FC            mov al,[bp-0x4]
00003790  8846FE            mov [bp-0x2],al
00003793  8D7EFC            lea di,[bp-0x4]
00003796  16                push ss
00003797  57                push di
00003798  8A460A            mov al,[bp+0xa]
0000379B  30E4              xor ah,ah
0000379D  8BF8              mov di,ax
0000379F  D1E7              shl di,1
000037A1  D1E7              shl di,1
000037A3  81C75167          add di,0x6751
000037A7  1E                push ds
000037A8  57                push di
000037A9  9A00009A16        call word 0x169a:word 0x0
000037AE  8A46FF            mov al,[bp-0x1]
000037B1  89EC              mov sp,bp
000037B3  5D                pop bp
000037B4  CA0600            retf word 0x6
000037B7  55                push bp
000037B8  89E5              mov bp,sp
000037BA  83EC07            sub sp,0x7
000037BD  C47E06            les di,word [bp+0x6]
000037C0  06                push es
000037C1  57                push di
000037C2  8D7EF9            lea di,[bp-0x7]
000037C5  16                push ss
000037C6  57                push di
000037C7  B80300            mov ax,0x3
000037CA  50                push ax
000037CB  9AC002561A        call word 0x1a56:word 0x2c0
000037D0  8D7EF9            lea di,[bp-0x7]
000037D3  16                push ss
000037D4  57                push di
000037D5  9AB9049A16        call word 0x169a:word 0x4b9
000037DA  50                push ax
000037DB  B83F00            mov ax,0x3f
000037DE  50                push ax
000037DF  B8FF00            mov ax,0xff
000037E2  50                push ax
000037E3  59                pop cx
000037E4  5B                pop bx
000037E5  58                pop ax
000037E6  F7E3              mul bx
000037E8  F7F1              div cx
000037EA  31D2              xor dx,dx
000037EC  8946FC            mov [bp-0x4],ax
000037EF  8956FE            mov [bp-0x2],dx
000037F2  8B46FC            mov ax,[bp-0x4]
000037F5  8B56FE            mov dx,[bp-0x2]
000037F8  89EC              mov sp,bp
000037FA  5D                pop bp
000037FB  CA0400            retf word 0x4
000037FE  55                push bp
000037FF  89E5              mov bp,sp
00003801  BE4000            mov si,0x40
00003804  8EC6              mov es,si
00003806  26C606660001      mov byte [es:0x66],0x1
0000380C  BE4000            mov si,0x40
0000380F  8EC6              mov es,si
00003811  26A06600          mov al,[es:0x66]
00003815  BAD903            mov dx,0x3d9
00003818  EE                out dx,al
00003819  BE4000            mov si,0x40
0000381C  8EC6              mov es,si
0000381E  26A06500          mov al,[es:0x65]
00003822  BAD803            mov dx,0x3d8
00003825  EE                out dx,al
00003826  BE4000            mov si,0x40
00003829  8EC6              mov es,si
0000382B  26A06500          mov al,[es:0x65]
0000382F  24FB              and al,0xfb
00003831  BE4000            mov si,0x40
00003834  8EC6              mov es,si
00003836  26A26500          mov [es:0x65],al
0000383A  B80200            mov ax,0x2
0000383D  50                push ax
0000383E  0E                push cs
0000383F  E81BFC            call 0x345d
00003842  89EC              mov sp,bp
00003844  5D                pop bp
00003845  CB                retf
00003846  55                push bp
00003847  89E5              mov bp,sp
00003849  83EC01            sub sp,0x1
0000384C  B0FF              mov al,0xff
0000384E  50                push ax
0000384F  5B                pop bx
00003850  B81810            mov ax,0x1018
00003853  55                push bp
00003854  CD10              int byte 0x10
00003856  5D                pop bp
00003857  B80001            mov ax,0x100
0000385A  50                push ax
0000385B  5B                pop bx
0000385C  B81310            mov ax,0x1013
0000385F  55                push bp
00003860  CD10              int byte 0x10
00003862  5D                pop bp
00003863  B80100            mov ax,0x1
00003866  50                push ax
00003867  5B                pop bx
00003868  B81310            mov ax,0x1013
0000386B  55                push bp
0000386C  CD10              int byte 0x10
0000386E  5D                pop bp
0000386F  B011              mov al,0x11
00003871  50                push ax
00003872  B010              mov al,0x10
00003874  50                push ax
00003875  58                pop ax
00003876  5B                pop bx
00003877  88C7              mov bh,al
00003879  B80010            mov ax,0x1000
0000387C  55                push bp
0000387D  CD10              int byte 0x10
0000387F  5D                pop bp
00003880  B81000            mov ax,0x10
00003883  50                push ax
00003884  31C0              xor ax,ax
00003886  50                push ax
00003887  31C0              xor ax,ax
00003889  50                push ax
0000388A  31C0              xor ax,ax
0000388C  50                push ax
0000388D  59                pop cx
0000388E  5A                pop dx
0000388F  88D5              mov ch,dl
00003891  5A                pop dx
00003892  88D6              mov dh,dl
00003894  5B                pop bx
00003895  B81010            mov ax,0x1010
00003898  55                push bp
00003899  CD10              int byte 0x10
0000389B  5D                pop bp
0000389C  C646FF00          mov byte [bp-0x1],0x0
000038A0  EB03              jmp 0x38a5
000038A2  FE46FF            inc byte [bp-0x1]
000038A5  8A46FF            mov al,[bp-0x1]
000038A8  50                push ax
000038A9  8A46FF            mov al,[bp-0x1]
000038AC  50                push ax
000038AD  58                pop ax
000038AE  5B                pop bx
000038AF  88C7              mov bh,al
000038B1  B80010            mov ax,0x1000
000038B4  55                push bp
000038B5  CD10              int byte 0x10
000038B7  5D                pop bp
000038B8  807EFF0F          cmp byte [bp-0x1],0xf
000038BC  75E4              jnz 0x38a2
000038BE  B81000            mov ax,0x10
000038C1  50                push ax
000038C2  0E                push cs
000038C3  E897FB            call 0x345d
000038C6  89EC              mov sp,bp
000038C8  5D                pop bp
000038C9  CB                retf
000038CA  55                push bp
000038CB  89E5              mov bp,sp
000038CD  FF36646C          push word [0x6c64]
000038D1  0E                push cs
000038D2  E888FB            call 0x345d
000038D5  89EC              mov sp,bp
000038D7  5D                pop bp
000038D8  CB                retf
000038D9  005589            add [di-0x77],dl
000038DC  E581              in ax,byte 0x81
000038DE  EC                in al,dx
000038DF  0301              add ax,[bx+di]
000038E1  C47E06            les di,word [bp+0x6]
000038E4  06                push es
000038E5  57                push di
000038E6  8DBEFFFE          lea di,[bp-0x101]
000038EA  16                push ss
000038EB  57                push di
000038EC  B8FF00            mov ax,0xff
000038EF  50                push ax
000038F0  9AAD06561A        call word 0x1a56:word 0x6ad
000038F5  C646FF01          mov byte [bp-0x1],0x1
000038F9  80BE00FF2F        cmp byte [bp-0x100],0x2f
000038FE  7407              jz 0x3907
00003900  80BE00FF2D        cmp byte [bp-0x100],0x2d
00003905  7513              jnz 0x391a
00003907  8DBEFFFE          lea di,[bp-0x101]
0000390B  16                push ss
0000390C  57                push di
0000390D  B80100            mov ax,0x1
00003910  50                push ax
00003911  B80100            mov ax,0x1
00003914  50                push ax
00003915  9A2F08561A        call word 0x1a56:word 0x82f
0000391A  8A8600FF          mov al,[bp-0x100]
0000391E  50                push ax
0000391F  9ACF1C561A        call word 0x1a56:word 0x1ccf
00003924  888600FF          mov [bp-0x100],al
00003928  8DBEFFFE          lea di,[bp-0x101]
0000392C  16                push ss
0000392D  57                push di
0000392E  BFD938            mov di,0x38d9
00003931  0E                push cs
00003932  57                push di
00003933  9A8307561A        call word 0x1a56:word 0x783
00003938  744E              jz 0x3988
0000393A  31C0              xor ax,ax
0000393C  8986FDFE          mov [bp-0x103],ax
00003940  EB04              jmp 0x3946
00003942  FF86FDFE          inc word [bp-0x103]
00003946  8DBEFFFE          lea di,[bp-0x101]
0000394A  16                push ss
0000394B  57                push di
0000394C  8BBEFDFE          mov di,[bp-0x103]
00003950  D1E7              shl di,1
00003952  8BF7              mov si,di
00003954  D1E7              shl di,1
00003956  03FE              add di,si
00003958  81C72313          add di,0x1323
0000395C  1E                push ds
0000395D  57                push di
0000395E  9A8307561A        call word 0x1a56:word 0x783
00003963  751C              jnz 0x3981
00003965  8BBEFDFE          mov di,[bp-0x103]
00003969  D1E7              shl di,1
0000396B  8BF7              mov si,di
0000396D  D1E7              shl di,1
0000396F  03FE              add di,si
00003971  8B852713          mov ax,[di+0x1327]
00003975  8B7E04            mov di,[bp+0x4]
00003978  36C47D06          les di,word [ss:di+0x6]
0000397C  268905            mov [es:di],ax
0000397F  EB0B              jmp 0x398c
00003981  83BEFDFE38        cmp word [bp-0x103],0x38
00003986  75BA              jnz 0x3942
00003988  C646FF00          mov byte [bp-0x1],0x0
0000398C  8A46FF            mov al,[bp-0x1]
0000398F  89EC              mov sp,bp
00003991  5D                pop bp
00003992  C20600            ret word 0x6
00003995  054752            add ax,0x5247
00003998  44                inc sp
00003999  45                inc bp
0000399A  56                push si
0000399B  55                push bp
0000399C  89E5              mov bp,sp
0000399E  81EC0201          sub sp,0x102
000039A2  C47E06            les di,word [bp+0x6]
000039A5  31C0              xor ax,ax
000039A7  268905            mov [es:di],ax
000039AA  8DBEFEFE          lea di,[bp-0x102]
000039AE  16                push ss
000039AF  57                push di
000039B0  BF9539            mov di,0x3995
000039B3  0E                push cs
000039B4  57                push di
000039B5  9A3503C612        call word 0x12c6:word 0x335
000039BA  55                push bp
000039BB  E81CFF            call 0x38da
000039BE  08C0              or al,al
000039C0  7403              jz 0x39c5
000039C2  E97602            jmp 0x3c3b
000039C5  BF4B12            mov di,0x124b
000039C8  1E                push ds
000039C9  57                push di
000039CA  55                push bp
000039CB  E80CFF            call 0x38da
000039CE  08C0              or al,al
000039D0  7403              jz 0x39d5
000039D2  E96602            jmp 0x3c3b
000039D5  9A8F06CE18        call word 0x18ce:word 0x68f
000039DA  C47E06            les di,word [bp+0x6]
000039DD  268905            mov [es:di],ax
000039E0  C47E06            les di,word [bp+0x6]
000039E3  268B05            mov ax,[es:di]
000039E6  250802            and ax,0x208
000039E9  3D0802            cmp ax,0x208
000039EC  7523              jnz 0x3a11
000039EE  C47E06            les di,word [bp+0x6]
000039F1  268B05            mov ax,[es:di]
000039F4  253000            and ax,0x30
000039F7  3D1000            cmp ax,0x10
000039FA  750A              jnz 0x3a06
000039FC  C47E06            les di,word [bp+0x6]
000039FF  26C7050002        mov word [es:di],0x200
00003A04  EB08              jmp 0x3a0e
00003A06  C47E06            les di,word [bp+0x6]
00003A09  26C7053002        mov word [es:di],0x230
00003A0E  E92A02            jmp 0x3c3b
00003A11  C47E06            les di,word [bp+0x6]
00003A14  268B05            mov ax,[es:di]
00003A17  250402            and ax,0x204
00003A1A  3D0402            cmp ax,0x204
00003A1D  7523              jnz 0x3a42
00003A1F  C47E06            les di,word [bp+0x6]
00003A22  268B05            mov ax,[es:di]
00003A25  253000            and ax,0x30
00003A28  3D1000            cmp ax,0x10
00003A2B  750A              jnz 0x3a37
00003A2D  C47E06            les di,word [bp+0x6]
00003A30  26C7050002        mov word [es:di],0x200
00003A35  EB08              jmp 0x3a3f
00003A37  C47E06            les di,word [bp+0x6]
00003A3A  26C7053002        mov word [es:di],0x230
00003A3F  E9F901            jmp 0x3c3b
00003A42  C47E06            les di,word [bp+0x6]
00003A45  268B05            mov ax,[es:di]
00003A48  250002            and ax,0x200
00003A4B  09C0              or ax,ax
00003A4D  7476              jz 0x3ac5
00003A4F  C47E06            les di,word [bp+0x6]
00003A52  268B05            mov ax,[es:di]
00003A55  250001            and ax,0x100
00003A58  09C0              or ax,ax
00003A5A  7421              jz 0x3a7d
00003A5C  C47E06            les di,word [bp+0x6]
00003A5F  268B05            mov ax,[es:di]
00003A62  251000            and ax,0x10
00003A65  09C0              or ax,ax
00003A67  740A              jz 0x3a73
00003A69  C47E06            les di,word [bp+0x6]
00003A6C  26C7053302        mov word [es:di],0x233
00003A71  EB08              jmp 0x3a7b
00003A73  C47E06            les di,word [bp+0x6]
00003A76  26C7053202        mov word [es:di],0x232
00003A7B  EB45              jmp 0x3ac2
00003A7D  C47E06            les di,word [bp+0x6]
00003A80  268B05            mov ax,[es:di]
00003A83  253000            and ax,0x30
00003A86  3D1000            cmp ax,0x10
00003A89  750A              jnz 0x3a95
00003A8B  C47E06            les di,word [bp+0x6]
00003A8E  26C7050002        mov word [es:di],0x200
00003A93  EB2D              jmp 0x3ac2
00003A95  C47E06            les di,word [bp+0x6]
00003A98  268B05            mov ax,[es:di]
00003A9B  253000            and ax,0x30
00003A9E  3D3000            cmp ax,0x30
00003AA1  7517              jnz 0x3aba
00003AA3  C47E06            les di,word [bp+0x6]
00003AA6  268B05            mov ax,[es:di]
00003AA9  25C000            and ax,0xc0
00003AAC  09C0              or ax,ax
00003AAE  740A              jz 0x3aba
00003AB0  C47E06            les di,word [bp+0x6]
00003AB3  26C7053002        mov word [es:di],0x230
00003AB8  EB08              jmp 0x3ac2
00003ABA  C47E06            les di,word [bp+0x6]
00003ABD  26C7051002        mov word [es:di],0x210
00003AC2  E97601            jmp 0x3c3b
00003AC5  C47E06            les di,word [bp+0x6]
00003AC8  268B05            mov ax,[es:di]
00003ACB  258000            and ax,0x80
00003ACE  09C0              or ax,ax
00003AD0  7422              jz 0x3af4
00003AD2  C47E06            les di,word [bp+0x6]
00003AD5  268B05            mov ax,[es:di]
00003AD8  250100            and ax,0x1
00003ADB  09C0              or ax,ax
00003ADD  750A              jnz 0x3ae9
00003ADF  C47E06            les di,word [bp+0x6]
00003AE2  26C7058000        mov word [es:di],0x80
00003AE7  EB08              jmp 0x3af1
00003AE9  C47E06            les di,word [bp+0x6]
00003AEC  26C7058200        mov word [es:di],0x82
00003AF1  E94701            jmp 0x3c3b
00003AF4  C47E06            les di,word [bp+0x6]
00003AF7  268B05            mov ax,[es:di]
00003AFA  250040            and ax,0x4000
00003AFD  09C0              or ax,ax
00003AFF  740B              jz 0x3b0c
00003B01  C47E06            les di,word [bp+0x6]
00003B04  26C7050040        mov word [es:di],0x4000
00003B09  E92F01            jmp 0x3c3b
00003B0C  C47E06            les di,word [bp+0x6]
00003B0F  268B05            mov ax,[es:di]
00003B12  250400            and ax,0x4
00003B15  09C0              or ax,ax
00003B17  740B              jz 0x3b24
00003B19  C47E06            les di,word [bp+0x6]
00003B1C  26C7050600        mov word [es:di],0x6
00003B21  E91701            jmp 0x3c3b
00003B24  C47E06            les di,word [bp+0x6]
00003B27  268B05            mov ax,[es:di]
00003B2A  250800            and ax,0x8
00003B2D  09C0              or ax,ax
00003B2F  740B              jz 0x3b3c
00003B31  C47E06            les di,word [bp+0x6]
00003B34  26C7050800        mov word [es:di],0x8
00003B39  E9FF00            jmp 0x3c3b
00003B3C  C47E06            les di,word [bp+0x6]
00003B3F  268B05            mov ax,[es:di]
00003B42  251000            and ax,0x10
00003B45  09C0              or ax,ax
00003B47  7422              jz 0x3b6b
00003B49  C47E06            les di,word [bp+0x6]
00003B4C  268B05            mov ax,[es:di]
00003B4F  250200            and ax,0x2
00003B52  09C0              or ax,ax
00003B54  750A              jnz 0x3b60
00003B56  C47E06            les di,word [bp+0x6]
00003B59  26C7051000        mov word [es:di],0x10
00003B5E  EB08              jmp 0x3b68
00003B60  C47E06            les di,word [bp+0x6]
00003B63  26C7051300        mov word [es:di],0x13
00003B68  E9D000            jmp 0x3c3b
00003B6B  C47E06            les di,word [bp+0x6]
00003B6E  268B05            mov ax,[es:di]
00003B71  250004            and ax,0x400
00003B74  09C0              or ax,ax
00003B76  740B              jz 0x3b83
00003B78  C47E06            les di,word [bp+0x6]
00003B7B  26C7050004        mov word [es:di],0x400
00003B80  E9B800            jmp 0x3c3b
00003B83  C47E06            les di,word [bp+0x6]
00003B86  268B05            mov ax,[es:di]
00003B89  250020            and ax,0x2000
00003B8C  09C0              or ax,ax
00003B8E  740B              jz 0x3b9b
00003B90  C47E06            les di,word [bp+0x6]
00003B93  26C7050020        mov word [es:di],0x2000
00003B98  E9A000            jmp 0x3c3b
00003B9B  C47E06            les di,word [bp+0x6]
00003B9E  268B05            mov ax,[es:di]
00003BA1  250001            and ax,0x100
00003BA4  09C0              or ax,ax
00003BA6  740B              jz 0x3bb3
00003BA8  C47E06            les di,word [bp+0x6]
00003BAB  26C7050001        mov word [es:di],0x100
00003BB0  E98800            jmp 0x3c3b
00003BB3  C47E06            les di,word [bp+0x6]
00003BB6  268B05            mov ax,[es:di]
00003BB9  250008            and ax,0x800
00003BBC  09C0              or ax,ax
00003BBE  7421              jz 0x3be1
00003BC0  C47E06            les di,word [bp+0x6]
00003BC3  268B05            mov ax,[es:di]
00003BC6  250100            and ax,0x1
00003BC9  09C0              or ax,ax
00003BCB  750A              jnz 0x3bd7
00003BCD  C47E06            les di,word [bp+0x6]
00003BD0  26C7050008        mov word [es:di],0x800
00003BD5  EB08              jmp 0x3bdf
00003BD7  C47E06            les di,word [bp+0x6]
00003BDA  26C7050108        mov word [es:di],0x801
00003BDF  EB5A              jmp 0x3c3b
00003BE1  C47E06            les di,word [bp+0x6]
00003BE4  268B05            mov ax,[es:di]
00003BE7  252000            and ax,0x20
00003BEA  09C0              or ax,ax
00003BEC  740A              jz 0x3bf8
00003BEE  C47E06            les di,word [bp+0x6]
00003BF1  26C7052000        mov word [es:di],0x20
00003BF6  EB43              jmp 0x3c3b
00003BF8  C47E06            les di,word [bp+0x6]
00003BFB  268B05            mov ax,[es:di]
00003BFE  250040            and ax,0x4000
00003C01  09C0              or ax,ax
00003C03  740A              jz 0x3c0f
00003C05  C47E06            les di,word [bp+0x6]
00003C08  26C7050040        mov word [es:di],0x4000
00003C0D  EB2C              jmp 0x3c3b
00003C0F  C47E06            les di,word [bp+0x6]
00003C12  268B05            mov ax,[es:di]
00003C15  254000            and ax,0x40
00003C18  09C0              or ax,ax
00003C1A  740A              jz 0x3c26
00003C1C  C47E06            les di,word [bp+0x6]
00003C1F  26C7054200        mov word [es:di],0x42
00003C24  EB15              jmp 0x3c3b
00003C26  C47E06            les di,word [bp+0x6]
00003C29  268B05            mov ax,[es:di]
00003C2C  250200            and ax,0x2
00003C2F  09C0              or ax,ax
00003C31  7408              jz 0x3c3b
00003C33  C47E06            les di,word [bp+0x6]
00003C36  26C7050200        mov word [es:di],0x2
00003C3B  89EC              mov sp,bp
00003C3D  5D                pop bp
00003C3E  C20600            ret word 0x6
00003C41  55                push bp
00003C42  89E5              mov bp,sp
00003C44  81EC380A          sub sp,0xa38
00003C48  BF9C6E            mov di,0x6e9c
00003C4B  1E                push ds
00003C4C  57                push di
00003C4D  55                push bp
00003C4E  E84AFD            call 0x399b
00003C51  FF369C6E          push word [0x6e9c]
00003C55  9A0010CE18        call word 0x18ce:word 0x1000
00003C5A  3DFFFF            cmp ax,0xffff
00003C5D  750D              jnz 0x3c6c
00003C5F  B009              mov al,0x9
00003C61  50                push ax
00003C62  B001              mov al,0x1
00003C64  50                push ax
00003C65  9A9B009C18        call word 0x189c:word 0x9b
00003C6A  EB10              jmp 0x3c7c
00003C6C  3DFEFF            cmp ax,0xfffe
00003C6F  750B              jnz 0x3c7c
00003C71  B009              mov al,0x9
00003C73  50                push ax
00003C74  B005              mov al,0x5
00003C76  50                push ax
00003C77  9A9B009C18        call word 0x189c:word 0x9b
00003C7C  BFAC6E            mov di,0x6eac
00003C7F  1E                push ds
00003C80  57                push di
00003C81  9A0211CE18        call word 0x18ce:word 0x1102
00003C86  C6063A6601        mov byte [0x663a],0x1
00003C8B  C606366601        mov byte [0x6636],0x1
00003C90  C606376600        mov byte [0x6637],0x0
00003C95  C606386600        mov byte [0x6638],0x0
00003C9A  C606396600        mov byte [0x6639],0x0
00003C9F  C43EAC6E          les di,word [0x6eac]
00003CA3  26C43D            les di,word [es:di]
00003CA6  268A4514          mov al,[es:di+0x14]
00003CAA  A23466            mov [0x6634],al
00003CAD  C43EAC6E          les di,word [0x6eac]
00003CB1  26C43D            les di,word [es:di]
00003CB4  268A4512          mov al,[es:di+0x12]
00003CB8  A23566            mov [0x6635],al
00003CBB  A03566            mov al,[0x6635]
00003CBE  30E4              xor ah,ah
00003CC0  8BD0              mov dx,ax
00003CC2  B80800            mov ax,0x8
00003CC5  2BC2              sub ax,dx
00003CC7  A23B66            mov [0x663b],al
00003CCA  C6063C660A        mov byte [0x663c],0xa
00003CCF  A19C6E            mov ax,[0x6e9c]
00003CD2  A31E13            mov [0x131e],ax
00003CD5  31C0              xor ax,ax
00003CD7  8946FE            mov [bp-0x2],ax
00003CDA  8B46FE            mov ax,[bp-0x2]
00003CDD  BA0500            mov dx,0x5
00003CE0  F7E2              mul dx
00003CE2  8BF8              mov di,ax
00003CE4  8B855112          mov ax,[di+0x1251]
00003CE8  3B069C6E          cmp ax,[0x6e9c]
00003CEC  7405              jz 0x3cf3
00003CEE  FF46FE            inc word [bp-0x2]
00003CF1  EBE7              jmp 0x3cda
00003CF3  8B46FE            mov ax,[bp-0x2]
00003CF6  BA0500            mov dx,0x5
00003CF9  F7E2              mul dx
00003CFB  8BF8              mov di,ax
00003CFD  83BD5112FF        cmp word [di+0x1251],0xffffffffffffffff
00003D02  750B              jnz 0x3d0f
00003D04  B009              mov al,0x9
00003D06  50                push ax
00003D07  B003              mov al,0x3
00003D09  50                push ax
00003D0A  9A9B009C18        call word 0x189c:word 0x9b
00003D0F  8B46FE            mov ax,[bp-0x2]
00003D12  BA0500            mov dx,0x5
00003D15  F7E2              mul dx
00003D17  8BF8              mov di,ax
00003D19  8B855312          mov ax,[di+0x1253]
00003D1D  3D0000            cmp ax,0x0
00003D20  7515              jnz 0x3d37
00003D22  BFE311            mov di,0x11e3
00003D25  1E                push ds
00003D26  57                push di
00003D27  BFB06E            mov di,0x6eb0
00003D2A  1E                push ds
00003D2B  57                push di
00003D2C  B80800            mov ax,0x8
00003D2F  50                push ax
00003D30  9A641B561A        call word 0x1a56:word 0x1b64
00003D35  EB32              jmp 0x3d69
00003D37  3D0300            cmp ax,0x3
00003D3A  7515              jnz 0x3d51
00003D3C  BFEB11            mov di,0x11eb
00003D3F  1E                push ds
00003D40  57                push di
00003D41  BFB06E            mov di,0x6eb0
00003D44  1E                push ds
00003D45  57                push di
00003D46  B80E00            mov ax,0xe
00003D49  50                push ax
00003D4A  9A641B561A        call word 0x1a56:word 0x1b64
00003D4F  EB18              jmp 0x3d69
00003D51  3D0400            cmp ax,0x4
00003D54  7513              jnz 0x3d69
00003D56  BFF911            mov di,0x11f9
00003D59  1E                push ds
00003D5A  57                push di
00003D5B  BFB06E            mov di,0x6eb0
00003D5E  1E                push ds
00003D5F  57                push di
00003D60  B83200            mov ax,0x32
00003D63  50                push ax
00003D64  9A641B561A        call word 0x1a56:word 0x1b64
00003D69  8B46FE            mov ax,[bp-0x2]
00003D6C  BA0500            mov dx,0x5
00003D6F  F7E2              mul dx
00003D71  8BF8              mov di,ax
00003D73  8A855512          mov al,[di+0x1255]
00003D77  3C00              cmp al,0x0
00003D79  7568              jnz 0x3de3
00003D7B  A1B06E            mov ax,[0x6eb0]
00003D7E  A3646C            mov [0x6c64],ax
00003D81  A1B06E            mov ax,[0x6eb0]
00003D84  31D2              xor dx,dx
00003D86  A3666C            mov [0x6c66],ax
00003D89  8916686C          mov [0x6c68],dx
00003D8D  C7066A6C0100      mov word [0x6c6a],0x1
00003D93  C6066C6C00        mov byte [0x6c6c],0x0
00003D98  B8572D            mov ax,0x2d57
00003D9B  8CCA              mov dx,cs
00003D9D  A36D6C            mov [0x6c6d],ax
00003DA0  89166F6C          mov [0x6c6f],dx
00003DA4  B8AD2D            mov ax,0x2dad
00003DA7  8CCA              mov dx,cs
00003DA9  A3716C            mov [0x6c71],ax
00003DAC  8916736C          mov [0x6c73],dx
00003DB0  B8B62D            mov ax,0x2db6
00003DB3  8CCA              mov dx,cs
00003DB5  A3756C            mov [0x6c75],ax
00003DB8  8916776C          mov [0x6c77],dx
00003DBC  B8BD2D            mov ax,0x2dbd
00003DBF  8CCA              mov dx,cs
00003DC1  A3796C            mov [0x6c79],ax
00003DC4  89167B6C          mov [0x6c7b],dx
00003DC8  B8E62D            mov ax,0x2de6
00003DCB  8CCA              mov dx,cs
00003DCD  A37D6C            mov [0x6c7d],ax
00003DD0  89167F6C          mov [0x6c7f],dx
00003DD4  B8252E            mov ax,0x2e25
00003DD7  8CCA              mov dx,cs
00003DD9  A3816C            mov [0x6c81],ax
00003DDC  8916836C          mov [0x6c83],dx
00003DE0  E9D203            jmp 0x41b5
00003DE3  3C01              cmp al,0x1
00003DE5  7568              jnz 0x3e4f
00003DE7  C706646C0200      mov word [0x6c64],0x2
00003DED  C706666C0200      mov word [0x6c66],0x2
00003DF3  C706686C0000      mov word [0x6c68],0x0
00003DF9  C7066A6C1000      mov word [0x6c6a],0x10
00003DFF  C6066C6C00        mov byte [0x6c6c],0x0
00003E04  B8092F            mov ax,0x2f09
00003E07  8CCA              mov dx,cs
00003E09  A36D6C            mov [0x6c6d],ax
00003E0C  89166F6C          mov [0x6c6f],dx
00003E10  B8602F            mov ax,0x2f60
00003E13  8CCA              mov dx,cs
00003E15  A3716C            mov [0x6c71],ax
00003E18  8916736C          mov [0x6c73],dx
00003E1C  B86F2F            mov ax,0x2f6f
00003E1F  8CCA              mov dx,cs
00003E21  A3756C            mov [0x6c75],ax
00003E24  8916776C          mov [0x6c77],dx
00003E28  B8852F            mov ax,0x2f85
00003E2B  8CCA              mov dx,cs
00003E2D  A3796C            mov [0x6c79],ax
00003E30  89167B6C          mov [0x6c7b],dx
00003E34  B8E62D            mov ax,0x2de6
00003E37  8CCA              mov dx,cs
00003E39  A37D6C            mov [0x6c7d],ax
00003E3C  89167F6C          mov [0x6c7f],dx
00003E40  B8252E            mov ax,0x2e25
00003E43  8CCA              mov dx,cs
00003E45  A3816C            mov [0x6c81],ax
00003E48  8916836C          mov [0x6c83],dx
00003E4C  E96603            jmp 0x41b5
00003E4F  3C02              cmp al,0x2
00003E51  7568              jnz 0x3ebb
00003E53  C706646C0400      mov word [0x6c64],0x4
00003E59  C706666C0400      mov word [0x6c66],0x4
00003E5F  C706686C0000      mov word [0x6c68],0x0
00003E65  C7066A6C3000      mov word [0x6c6a],0x30
00003E6B  C6066C6C00        mov byte [0x6c6c],0x0
00003E70  B8C82F            mov ax,0x2fc8
00003E73  8CCA              mov dx,cs
00003E75  A36D6C            mov [0x6c6d],ax
00003E78  89166F6C          mov [0x6c6f],dx
00003E7C  B85030            mov ax,0x3050
00003E7F  8CCA              mov dx,cs
00003E81  A3716C            mov [0x6c71],ax
00003E84  8916736C          mov [0x6c73],dx
00003E88  B86D30            mov ax,0x306d
00003E8B  8CCA              mov dx,cs
00003E8D  A3756C            mov [0x6c75],ax
00003E90  8916776C          mov [0x6c77],dx
00003E94  B8BD30            mov ax,0x30bd
00003E97  8CCA              mov dx,cs
00003E99  A3796C            mov [0x6c79],ax
00003E9C  89167B6C          mov [0x6c7b],dx
00003EA0  B8E62D            mov ax,0x2de6
00003EA3  8CCA              mov dx,cs
00003EA5  A37D6C            mov [0x6c7d],ax
00003EA8  89167F6C          mov [0x6c7f],dx
00003EAC  B8252E            mov ax,0x2e25
00003EAF  8CCA              mov dx,cs
00003EB1  A3816C            mov [0x6c81],ax
00003EB4  8916836C          mov [0x6c83],dx
00003EB8  E9FA02            jmp 0x41b5
00003EBB  3C03              cmp al,0x3
00003EBD  7568              jnz 0x3f27
00003EBF  C706646C0300      mov word [0x6c64],0x3
00003EC5  C706666C0300      mov word [0x6c66],0x3
00003ECB  C706686C0000      mov word [0x6c68],0x0
00003ED1  C7066A6C0100      mov word [0x6c6a],0x1
00003ED7  C6066C6C01        mov byte [0x6c6c],0x1
00003EDC  B82C33            mov ax,0x332c
00003EDF  8CCA              mov dx,cs
00003EE1  A36D6C            mov [0x6c6d],ax
00003EE4  89166F6C          mov [0x6c6f],dx
00003EE8  B8AD2D            mov ax,0x2dad
00003EEB  8CCA              mov dx,cs
00003EED  A3716C            mov [0x6c71],ax
00003EF0  8916736C          mov [0x6c73],dx
00003EF4  B8B62D            mov ax,0x2db6
00003EF7  8CCA              mov dx,cs
00003EF9  A3756C            mov [0x6c75],ax
00003EFC  8916776C          mov [0x6c77],dx
00003F00  B87533            mov ax,0x3375
00003F03  8CCA              mov dx,cs
00003F05  A3796C            mov [0x6c79],ax
00003F08  89167B6C          mov [0x6c7b],dx
00003F0C  B8CF33            mov ax,0x33cf
00003F0F  8CCA              mov dx,cs
00003F11  A37D6C            mov [0x6c7d],ax
00003F14  89167F6C          mov [0x6c7f],dx
00003F18  B81634            mov ax,0x3416
00003F1B  8CCA              mov dx,cs
00003F1D  A3816C            mov [0x6c81],ax
00003F20  8916836C          mov [0x6c83],dx
00003F24  E98E02            jmp 0x41b5
00003F27  3C04              cmp al,0x4
00003F29  7568              jnz 0x3f93
00003F2B  C706646C1000      mov word [0x6c64],0x10
00003F31  C706666C4000      mov word [0x6c66],0x40
00003F37  C706686C0000      mov word [0x6c68],0x0
00003F3D  C7066A6C0100      mov word [0x6c6a],0x1
00003F43  C6066C6C00        mov byte [0x6c6c],0x0
00003F48  B82231            mov ax,0x3122
00003F4B  8CCA              mov dx,cs
00003F4D  A36D6C            mov [0x6c6d],ax
00003F50  89166F6C          mov [0x6c6f],dx
00003F54  B8AD2D            mov ax,0x2dad
00003F57  8CCA              mov dx,cs
00003F59  A3716C            mov [0x6c71],ax
00003F5C  8916736C          mov [0x6c73],dx
00003F60  B8B62D            mov ax,0x2db6
00003F63  8CCA              mov dx,cs
00003F65  A3756C            mov [0x6c75],ax
00003F68  8916776C          mov [0x6c77],dx
00003F6C  B86331            mov ax,0x3163
00003F6F  8CCA              mov dx,cs
00003F71  A3796C            mov [0x6c79],ax
00003F74  89167B6C          mov [0x6c7b],dx
00003F78  B8F431            mov ax,0x31f4
00003F7B  8CCA              mov dx,cs
00003F7D  A37D6C            mov [0x6c7d],ax
00003F80  89167F6C          mov [0x6c7f],dx
00003F84  B84632            mov ax,0x3246
00003F87  8CCA              mov dx,cs
00003F89  A3816C            mov [0x6c81],ax
00003F8C  8916836C          mov [0x6c83],dx
00003F90  E92202            jmp 0x41b5
00003F93  3C05              cmp al,0x5
00003F95  7403              jz 0x3f9a
00003F97  E9AE00            jmp 0x4048
00003F9A  C706646C0200      mov word [0x6c64],0x2
00003FA0  C7066A6C0100      mov word [0x6c6a],0x1
00003FA6  B8FE37            mov ax,0x37fe
00003FA9  8CCA              mov dx,cs
00003FAB  A36D6C            mov [0x6c6d],ax
00003FAE  89166F6C          mov [0x6c6f],dx
00003FB2  B8AD2D            mov ax,0x2dad
00003FB5  8CCA              mov dx,cs
00003FB7  A3716C            mov [0x6c71],ax
00003FBA  8916736C          mov [0x6c73],dx
00003FBE  B8B62D            mov ax,0x2db6
00003FC1  8CCA              mov dx,cs
00003FC3  A3756C            mov [0x6c75],ax
00003FC6  8916776C          mov [0x6c77],dx
00003FCA  BE4000            mov si,0x40
00003FCD  8EC6              mov es,si
00003FCF  26A08900          mov al,[es:0x89]
00003FD3  2404              and al,0x4
00003FD5  3C04              cmp al,0x4
00003FD7  7537              jnz 0x4010
00003FD9  C706666C4000      mov word [0x6c66],0x40
00003FDF  C706686C0000      mov word [0x6c68],0x0
00003FE5  C6066C6C01        mov byte [0x6c6c],0x1
00003FEA  B80D37            mov ax,0x370d
00003FED  8CCA              mov dx,cs
00003FEF  A3796C            mov [0x6c79],ax
00003FF2  89167B6C          mov [0x6c7b],dx
00003FF6  B84837            mov ax,0x3748
00003FF9  8CCA              mov dx,cs
00003FFB  A37D6C            mov [0x6c7d],ax
00003FFE  89167F6C          mov [0x6c7f],dx
00004002  B8B737            mov ax,0x37b7
00004005  8CCA              mov dx,cs
00004007  A3816C            mov [0x6c81],ax
0000400A  8916836C          mov [0x6c83],dx
0000400E  EB35              jmp 0x4045
00004010  C706666C0000      mov word [0x6c66],0x0
00004016  C706686C0400      mov word [0x6c68],0x4
0000401C  C6066C6C00        mov byte [0x6c6c],0x0
00004021  B81C35            mov ax,0x351c
00004024  8CCA              mov dx,cs
00004026  A3796C            mov [0x6c79],ax
00004029  89167B6C          mov [0x6c7b],dx
0000402D  B89A35            mov ax,0x359a
00004030  8CCA              mov dx,cs
00004032  A37D6C            mov [0x6c7d],ax
00004035  89167F6C          mov [0x6c7f],dx
00004039  B86136            mov ax,0x3661
0000403C  8CCA              mov dx,cs
0000403E  A3816C            mov [0x6c81],ax
00004041  8916836C          mov [0x6c83],dx
00004045  E96D01            jmp 0x41b5
00004048  3C06              cmp al,0x6
0000404A  7403              jz 0x404f
0000404C  E9AE00            jmp 0x40fd
0000404F  C706646C1000      mov word [0x6c64],0x10
00004055  C7066A6C0100      mov word [0x6c6a],0x1
0000405B  B84638            mov ax,0x3846
0000405E  8CCA              mov dx,cs
00004060  A36D6C            mov [0x6c6d],ax
00004063  89166F6C          mov [0x6c6f],dx
00004067  B8AD2D            mov ax,0x2dad
0000406A  8CCA              mov dx,cs
0000406C  A3716C            mov [0x6c71],ax
0000406F  8916736C          mov [0x6c73],dx
00004073  B8B62D            mov ax,0x2db6
00004076  8CCA              mov dx,cs
00004078  A3756C            mov [0x6c75],ax
0000407B  8916776C          mov [0x6c77],dx
0000407F  BE4000            mov si,0x40
00004082  8EC6              mov es,si
00004084  26A08900          mov al,[es:0x89]
00004088  2404              and al,0x4
0000408A  3C04              cmp al,0x4
0000408C  7537              jnz 0x40c5
0000408E  C706666C4000      mov word [0x6c66],0x40
00004094  C706686C0000      mov word [0x6c68],0x0
0000409A  C6066C6C01        mov byte [0x6c6c],0x1
0000409F  B80D37            mov ax,0x370d
000040A2  8CCA              mov dx,cs
000040A4  A3796C            mov [0x6c79],ax
000040A7  89167B6C          mov [0x6c7b],dx
000040AB  B84837            mov ax,0x3748
000040AE  8CCA              mov dx,cs
000040B0  A37D6C            mov [0x6c7d],ax
000040B3  89167F6C          mov [0x6c7f],dx
000040B7  B8B737            mov ax,0x37b7
000040BA  8CCA              mov dx,cs
000040BC  A3816C            mov [0x6c81],ax
000040BF  8916836C          mov [0x6c83],dx
000040C3  EB35              jmp 0x40fa
000040C5  C706666C0000      mov word [0x6c66],0x0
000040CB  C706686C0400      mov word [0x6c68],0x4
000040D1  C6066C6C00        mov byte [0x6c6c],0x0
000040D6  B81C35            mov ax,0x351c
000040D9  8CCA              mov dx,cs
000040DB  A3796C            mov [0x6c79],ax
000040DE  89167B6C          mov [0x6c7b],dx
000040E2  B89A35            mov ax,0x359a
000040E5  8CCA              mov dx,cs
000040E7  A37D6C            mov [0x6c7d],ax
000040EA  89167F6C          mov [0x6c7f],dx
000040EE  B86136            mov ax,0x3661
000040F1  8CCA              mov dx,cs
000040F3  A3816C            mov [0x6c81],ax
000040F6  8916836C          mov [0x6c83],dx
000040FA  E9B800            jmp 0x41b5
000040FD  3C07              cmp al,0x7
000040FF  7403              jz 0x4104
00004101  E9B100            jmp 0x41b5
00004104  B8AD2D            mov ax,0x2dad
00004107  8CCA              mov dx,cs
00004109  A3716C            mov [0x6c71],ax
0000410C  8916736C          mov [0x6c73],dx
00004110  B8B62D            mov ax,0x2db6
00004113  8CCA              mov dx,cs
00004115  A3756C            mov [0x6c75],ax
00004118  8916776C          mov [0x6c77],dx
0000411C  C7066A6C0100      mov word [0x6c6a],0x1
00004122  B8CA38            mov ax,0x38ca
00004125  8CCA              mov dx,cs
00004127  A36D6C            mov [0x6c6d],ax
0000412A  89166F6C          mov [0x6c6f],dx
0000412E  BE4000            mov si,0x40
00004131  8EC6              mov es,si
00004133  26A08900          mov al,[es:0x89]
00004137  2404              and al,0x4
00004139  3C04              cmp al,0x4
0000413B  753D              jnz 0x417a
0000413D  C706646C4000      mov word [0x6c64],0x40
00004143  C706666C4000      mov word [0x6c66],0x40
00004149  C706686C0000      mov word [0x6c68],0x0
0000414F  C6066C6C01        mov byte [0x6c6c],0x1
00004154  B80D37            mov ax,0x370d
00004157  8CCA              mov dx,cs
00004159  A3796C            mov [0x6c79],ax
0000415C  89167B6C          mov [0x6c7b],dx
00004160  B84837            mov ax,0x3748
00004163  8CCA              mov dx,cs
00004165  A37D6C            mov [0x6c7d],ax
00004168  89167F6C          mov [0x6c7f],dx
0000416C  B8B737            mov ax,0x37b7
0000416F  8CCA              mov dx,cs
00004171  A3816C            mov [0x6c81],ax
00004174  8916836C          mov [0x6c83],dx
00004178  EB3B              jmp 0x41b5
0000417A  C706646C0001      mov word [0x6c64],0x100
00004180  C706666C0000      mov word [0x6c66],0x0
00004186  C706686C0400      mov word [0x6c68],0x4
0000418C  C6066C6C00        mov byte [0x6c6c],0x0
00004191  B81C35            mov ax,0x351c
00004194  8CCA              mov dx,cs
00004196  A3796C            mov [0x6c79],ax
00004199  89167B6C          mov [0x6c7b],dx
0000419D  B89A35            mov ax,0x359a
000041A0  8CCA              mov dx,cs
000041A2  A37D6C            mov [0x6c7d],ax
000041A5  89167F6C          mov [0x6c7f],dx
000041A9  B86136            mov ax,0x3661
000041AC  8CCA              mov dx,cs
000041AE  A3816C            mov [0x6c81],ax
000041B1  8916836C          mov [0x6c83],dx
000041B5  31C0              xor ax,ax
000041B7  A3B06B            mov [0x6bb0],ax
000041BA  C606AF6B00        mov byte [0x6baf],0x0
000041BF  C606B26B00        mov byte [0x6bb2],0x0
000041C4  C706B36B0100      mov word [0x6bb3],0x1
000041CA  C606AD6B01        mov byte [0x6bad],0x1
000041CF  C606AE6B00        mov byte [0x6bae],0x0
000041D4  31C0              xor ax,ax
000041D6  50                push ax
000041D7  31C0              xor ax,ax
000041D9  50                push ax
000041DA  BFB56B            mov di,0x6bb5
000041DD  1E                push ds
000041DE  57                push di
000041DF  9A81001B18        call word 0x181b:word 0x81
000041E4  A14F67            mov ax,[0x674f]
000041E7  48                dec ax
000041E8  A3A16B            mov [0x6ba1],ax
000041EB  31C0              xor ax,ax
000041ED  A3A36B            mov [0x6ba3],ax
000041F0  C43EAC6E          les di,word [0x6eac]
000041F4  26C43D            les di,word [es:di]
000041F7  268B450A          mov ax,[es:di+0xa]
000041FB  A39D6B            mov [0x6b9d],ax
000041FE  C43EAC6E          les di,word [0x6eac]
00004202  26C43D            les di,word [es:di]
00004205  268B450C          mov ax,[es:di+0xc]
00004209  A39F6B            mov [0x6b9f],ax
0000420C  31C0              xor ax,ax
0000420E  A3996B            mov [0x6b99],ax
00004211  31C0              xor ax,ax
00004213  A39B6B            mov [0x6b9b],ax
00004216  A1996B            mov ax,[0x6b99]
00004219  A3A56B            mov [0x6ba5],ax
0000421C  A19B6B            mov ax,[0x6b9b]
0000421F  A3A76B            mov [0x6ba7],ax
00004222  A1996B            mov ax,[0x6b99]
00004225  03069D6B          add ax,[0x6b9d]
00004229  A3A96B            mov [0x6ba9],ax
0000422C  A19B6B            mov ax,[0x6b9b]
0000422F  03069F6B          add ax,[0x6b9f]
00004233  A3AB6B            mov [0x6bab],ax
00004236  31C0              xor ax,ax
00004238  50                push ax
00004239  31C0              xor ax,ax
0000423B  50                push ax
0000423C  BF896B            mov di,0x6b89
0000423F  1E                push ds
00004240  57                push di
00004241  9A81001B18        call word 0x181b:word 0x81
00004246  B81027            mov ax,0x2710
00004249  50                push ax
0000424A  B81027            mov ax,0x2710
0000424D  50                push ax
0000424E  BF8D6B            mov di,0x6b8d
00004251  1E                push ds
00004252  57                push di
00004253  9A81001B18        call word 0x181b:word 0x81
00004258  C406996B          les ax,word [0x6b99]
0000425C  8CC2              mov dx,es
0000425E  A3956B            mov [0x6b95],ax
00004261  8916976B          mov [0x6b97],dx
00004265  C406896B          les ax,word [0x6b89]
00004269  8CC2              mov dx,es
0000426B  A3856B            mov [0x6b85],ax
0000426E  8916876B          mov [0x6b87],dx
00004272  B8516B            mov ax,0x6b51
00004275  8CDA              mov dx,ds
00004277  A3B96B            mov [0x6bb9],ax
0000427A  8916BB6B          mov [0x6bbb],dx
0000427E  0E                push cs
0000427F  E8C6C2            call 0x548
00004282  0E                push cs
00004283  E886C7            call 0xa0c
00004286  BF856B            mov di,0x6b85
00004289  1E                push ds
0000428A  57                push di
0000428B  BF516B            mov di,0x6b51
0000428E  1E                push ds
0000428F  57                push di
00004290  B83400            mov ax,0x34
00004293  50                push ax
00004294  9AC002561A        call word 0x1a56:word 0x2c0
00004299  A16B6B            mov ax,[0x6b6b]
0000429C  99                cwd
0000429D  B98002            mov cx,0x280
000042A0  31DB              xor bx,bx
000042A2  9ADC02561A        call word 0x1a56:word 0x2dc
000042A7  52                push dx
000042A8  50                push ax
000042A9  A1696B            mov ax,[0x6b69]
000042AC  99                cwd
000042AD  B99001            mov cx,0x190
000042B0  31DB              xor bx,bx
000042B2  9ADC02561A        call word 0x1a56:word 0x2dc
000042B7  52                push dx
000042B8  50                push ax
000042B9  9A00001B18        call word 0x181b:word 0x0
000042BE  8946F3            mov [bp-0xd],ax
000042C1  8956F5            mov [bp-0xb],dx
000042C4  A1696B            mov ax,[0x6b69]
000042C7  99                cwd
000042C8  B99001            mov cx,0x190
000042CB  31DB              xor bx,bx
000042CD  9ADC02561A        call word 0x1a56:word 0x2dc
000042D2  C44EF3            les cx,word [bp-0xd]
000042D5  8CC3              mov bx,es
000042D7  9AF702561A        call word 0x1a56:word 0x2f7
000042DC  A23366            mov [0x6633],al
000042DF  A16B6B            mov ax,[0x6b6b]
000042E2  99                cwd
000042E3  B98002            mov cx,0x280
000042E6  31DB              xor bx,bx
000042E8  9ADC02561A        call word 0x1a56:word 0x2dc
000042ED  C44EF3            les cx,word [bp-0xd]
000042F0  8CC3              mov bx,es
000042F2  9AF702561A        call word 0x1a56:word 0x2f7
000042F7  A23266            mov [0x6632],al
000042FA  BF3466            mov di,0x6634
000042FD  1E                push ds
000042FE  57                push di
000042FF  BF3D66            mov di,0x663d
00004302  1E                push ds
00004303  57                push di
00004304  B80900            mov ax,0x9
00004307  50                push ax
00004308  9AC002561A        call word 0x1a56:word 0x2c0
0000430D  C6063D6601        mov byte [0x663d],0x1
00004312  C606466600        mov byte [0x6646],0x0
00004317  C43EAC6E          les di,word [0x6eac]
0000431B  26C43D            les di,word [es:di]
0000431E  268B05            mov ax,[es:di]
00004321  8946F1            mov [bp-0xf],ax
00004324  803E346601        cmp byte [0x6634],0x1
00004329  760E              jna 0x4339
0000432B  8B46F1            mov ax,[bp-0xf]
0000432E  99                cwd
0000432F  25F8FF            and ax,0xfff8
00004332  81E20000          and dx,0x0
00004336  8946F1            mov [bp-0xf],ax
00004339  8B46F1            mov ax,[bp-0xf]
0000433C  99                cwd
0000433D  B90A00            mov cx,0xa
00004340  F7F9              idiv cx
00004342  053000            add ax,0x30
00004345  A28614            mov [0x1486],al
00004348  8B46F1            mov ax,[bp-0xf]
0000434B  99                cwd
0000434C  B90A00            mov cx,0xa
0000434F  F7F9              idiv cx
00004351  92                xchg ax,dx
00004352  053000            add ax,0x30
00004355  A28714            mov [0x1487],al
00004358  8DBEC8F5          lea di,[bp-0xa38]
0000435C  16                push ss
0000435D  57                push di
0000435E  BFA014            mov di,0x14a0
00004361  1E                push ds
00004362  57                push di
00004363  9A9306561A        call word 0x1a56:word 0x693
00004368  BF7914            mov di,0x1479
0000436B  1E                push ds
0000436C  57                push di
0000436D  9A2007561A        call word 0x1a56:word 0x720
00004372  8D7EB1            lea di,[bp-0x4f]
00004375  16                push ss
00004376  57                push di
00004377  B83F00            mov ax,0x3f
0000437A  50                push ax
0000437B  9AAD06561A        call word 0x1a56:word 0x6ad
00004380  C406148D          les ax,word [0x8d14]
00004384  8CC2              mov dx,es
00004386  8986CAF6          mov [bp-0x936],ax
0000438A  8996CCF6          mov [bp-0x934],dx
0000438E  8D86CEF6          lea ax,[bp-0x932]
00004392  8CD2              mov dx,ss
00004394  A3148D            mov [0x8d14],ax
00004397  8916168D          mov [0x8d16],dx
0000439B  8DBECEF6          lea di,[bp-0x932]
0000439F  16                push ss
000043A0  57                push di
000043A1  9A0000C818        call word 0x18c8:word 0x0
000043A6  8986C8F6          mov [bp-0x938],ax
000043AA  83BEC8F600        cmp word [bp-0x938],0x0
000043AF  7434              jz 0x43e5
000043B1  8A86C9F6          mov al,[bp-0x937]
000043B5  30E4              xor ah,ah
000043B7  3D0100            cmp ax,0x1
000043BA  7513              jnz 0x43cf
000043BC  FFB6CCF6          push word [bp-0x934]
000043C0  FFB6CAF6          push word [bp-0x936]
000043C4  B80409            mov ax,0x904
000043C7  50                push ax
000043C8  9A85019C18        call word 0x189c:word 0x185
000043CD  EB16              jmp 0x43e5
000043CF  3D0300            cmp ax,0x3
000043D2  7511              jnz 0x43e5
000043D4  FFB6CCF6          push word [bp-0x934]
000043D8  FFB6CAF6          push word [bp-0x936]
000043DC  B80609            mov ax,0x906
000043DF  50                push ax
000043E0  9A85019C18        call word 0x189c:word 0x185
000043E5  8DBEDCF6          lea di,[bp-0x924]
000043E9  16                push ss
000043EA  57                push di
000043EB  8D7EB1            lea di,[bp-0x4f]
000043EE  16                push ss
000043EF  57                push di
000043F0  9AD6002518        call word 0x1825:word 0xd6
000043F5  8D7EA9            lea di,[bp-0x57]
000043F8  16                push ss
000043F9  57                push di
000043FA  8DBEDCF6          lea di,[bp-0x924]
000043FE  16                push ss
000043FF  57                push di
00004400  9A31072518        call word 0x1825:word 0x731
00004405  52                push dx
00004406  50                push ax
00004407  9A4F03C317        call word 0x17c3:word 0x34f
0000440C  8DBEDCF6          lea di,[bp-0x924]
00004410  16                push ss
00004411  57                push di
00004412  C47EA9            les di,word [bp-0x57]
00004415  06                push es
00004416  57                push di
00004417  8DBEDCF6          lea di,[bp-0x924]
0000441B  16                push ss
0000441C  57                push di
0000441D  9A31072518        call word 0x1825:word 0x731
00004422  50                push ax
00004423  9A72032518        call word 0x1825:word 0x372
00004428  8DBEDCF6          lea di,[bp-0x924]
0000442C  16                push ss
0000442D  57                push di
0000442E  9A7A012518        call word 0x1825:word 0x17a
00004433  FF76AB            push word [bp-0x55]
00004436  FF76A9            push word [bp-0x57]
00004439  9ACE04CE18        call word 0x18ce:word 0x4ce
0000443E  31C0              xor ax,ax
00004440  50                push ax
00004441  9A9C01CE18        call word 0x18ce:word 0x19c
00004446  C486CAF6          les ax,word [bp-0x936]
0000444A  8CC2              mov dx,es
0000444C  A3148D            mov [0x8d14],ax
0000444F  8916168D          mov [0x8d16],dx
00004453  C43EAC6E          les di,word [0x6eac]
00004457  26C44546          les ax,word [es:di+0x46]
0000445B  8CC2              mov dx,es
0000445D  8946AD            mov [bp-0x53],ax
00004460  8956AF            mov [bp-0x51],dx
00004463  C47EAD            les di,word [bp-0x53]
00004466  268B4556          mov ax,[es:di+0x56]
0000446A  A3D16B            mov [0x6bd1],ax
0000446D  C47EAD            les di,word [bp-0x53]
00004470  268B4558          mov ax,[es:di+0x58]
00004474  A3D36B            mov [0x6bd3],ax
00004477  BF3466            mov di,0x6634
0000447A  1E                push ds
0000447B  57                push di
0000447C  BFD56B            mov di,0x6bd5
0000447F  1E                push ds
00004480  57                push di
00004481  B80900            mov ax,0x9
00004484  50                push ax
00004485  9AC002561A        call word 0x1a56:word 0x2c0
0000448A  BFD56B            mov di,0x6bd5
0000448D  1E                push ds
0000448E  57                push di
0000448F  BFDE6B            mov di,0x6bde
00004492  1E                push ds
00004493  57                push di
00004494  B80900            mov ax,0x9
00004497  50                push ax
00004498  9AC002561A        call word 0x1a56:word 0x2c0
0000449D  B83466            mov ax,0x6634
000044A0  8CDA              mov dx,ds
000044A2  52                push dx
000044A3  50                push ax
000044A4  BF906E            mov di,0x6e90
000044A7  1E                push ds
000044A8  57                push di
000044A9  B81000            mov ax,0x10
000044AC  50                push ax
000044AD  B81000            mov ax,0x10
000044B0  50                push ax
000044B1  B001              mov al,0x1
000044B3  50                push ax
000044B4  9AC3002A15        call word 0x152a:word 0xc3
000044B9  31C0              xor ax,ax
000044BB  8946FE            mov [bp-0x2],ax
000044BE  EB03              jmp 0x44c3
000044C0  FF46FE            inc word [bp-0x2]
000044C3  8B7EFE            mov di,[bp-0x2]
000044C6  B103              mov cl,0x3
000044C8  D3E7              shl di,cl
000044CA  81C7EF6B          add di,0x6bef
000044CE  1E                push ds
000044CF  57                push di
000044D0  8B46FE            mov ax,[bp-0x2]
000044D3  BA4400            mov dx,0x44
000044D6  F7E2              mul dx
000044D8  8BF8              mov di,ax
000044DA  81C7500F          add di,0xf50
000044DE  1E                push ds
000044DF  57                push di
000044E0  E80AD3            call 0x17ed
000044E3  837EFE08          cmp word [bp-0x2],0x8
000044E7  75D7              jnz 0x44c0
000044E9  B80001            mov ax,0x100
000044EC  50                push ax
000044ED  9AEA04CE18        call word 0x18ce:word 0x4ea
000044F2  FF1E6D6C          call word far [0x6c6d]
000044F6  C43EAC6E          les di,word [0x6eac]
000044FA  81C70400          add di,0x4
000044FE  06                push es
000044FF  57                push di
00004500  9ADF14CE18        call word 0x18ce:word 0x14df
00004505  31C0              xor ax,ax
00004507  50                push ax
00004508  B80100            mov ax,0x1
0000450B  50                push ax
0000450C  9A9902CE18        call word 0x18ce:word 0x299
00004511  C7069E6E0100      mov word [0x6e9e],0x1
00004517  89EC              mov sp,bp
00004519  5D                pop bp
0000451A  C3                ret
0000451B  55                push bp
0000451C  89E5              mov bp,sp
0000451E  31C0              xor ax,ax
00004520  50                push ax
00004521  9AEA04CE18        call word 0x18ce:word 0x4ea
00004526  9A7917CE18        call word 0x18ce:word 0x1779
0000452B  89EC              mov sp,bp
0000452D  5D                pop bp
0000452E  C3                ret
0000452F  005589            add [di-0x77],dl
00004532  E5C4              in ax,byte 0xc4
00004534  06                push es
00004535  B271              mov dl,0x71
00004537  8CC2              mov dx,es
00004539  A3328F            mov [0x8f32],ax
0000453C  8916348F          mov [0x8f34],dx
00004540  BF1E8E            mov di,0x8e1e
00004543  1E                push ds
00004544  57                push di
00004545  BF2F45            mov di,0x452f
00004548  0E                push cs
00004549  57                push di
0000454A  9A8313561A        call word 0x1a56:word 0x1383
0000454F  BF1E8E            mov di,0x8e1e
00004552  1E                push ds
00004553  57                push di
00004554  9AF813561A        call word 0x1a56:word 0x13f8
00004559  BF1E8D            mov di,0x8d1e
0000455C  1E                push ds
0000455D  57                push di
0000455E  BF2F45            mov di,0x452f
00004561  0E                push cs
00004562  57                push di
00004563  9A8313561A        call word 0x1a56:word 0x1383
00004568  BF1E8D            mov di,0x8d1e
0000456B  1E                push ds
0000456C  57                push di
0000456D  9AF313561A        call word 0x1a56:word 0x13f3
00004572  E8A6FF            call 0x451b
00004575  89EC              mov sp,bp
00004577  5D                pop bp
00004578  CB                retf
00004579  89E5              mov bp,sp
0000457B  B8E014            mov ax,0x14e0
0000457E  8CDA              mov dx,ds
00004580  A3A88B            mov [0x8ba8],ax
00004583  8916AA8B          mov [0x8baa],dx
00004587  C6064A6C00        mov byte [0x6c4a],0x0
0000458C  31C0              xor ax,ax
0000458E  A3476C            mov [0x6c47],ax
00004591  C6068F6E00        mov byte [0x6e8f],0x0
00004596  C606496C00        mov byte [0x6c49],0x0
0000459B  31C0              xor ax,ax
0000459D  A3906E            mov [0x6e90],ax
000045A0  A3926E            mov [0x6e92],ax
000045A3  31C0              xor ax,ax
000045A5  A3EB6B            mov [0x6beb],ax
000045A8  A3ED6B            mov [0x6bed],ax
000045AB  31C0              xor ax,ax
000045AD  A3456C            mov [0x6c45],ax
000045B0  B8E919            mov ax,0x19e9
000045B3  8CCA              mov dx,cs
000045B5  A3876E            mov [0x6e87],ax
000045B8  8916896E          mov [0x6e89],dx
000045BC  B8C118            mov ax,0x18c1
000045BF  8CCA              mov dx,cs
000045C1  A38B6E            mov [0x6e8b],ax
000045C4  89168D6E          mov [0x6e8d],dx
000045C8  E876F6            call 0x3c41
000045CB  C6064B6C00        mov byte [0x6c4b],0x0
000045D0  C606856C00        mov byte [0x6c85],0x0
000045D5  C706856E0001      mov word [0x6e85],0x100
000045DB  B85116            mov ax,0x1651
000045DE  8CCA              mov dx,cs
000045E0  A34C6C            mov [0x6c4c],ax
000045E3  89164E6C          mov [0x6c4e],dx
000045E7  BF856D            mov di,0x6d85
000045EA  1E                push ds
000045EB  57                push di
000045EC  0E                push cs
000045ED  E805D0            call 0x15f5
000045F0  BF856D            mov di,0x6d85
000045F3  1E                push ds
000045F4  57                push di
000045F5  9AF813561A        call word 0x1a56:word 0x13f8
000045FA  BF1E8E            mov di,0x8e1e
000045FD  1E                push ds
000045FE  57                push di
000045FF  0E                push cs
00004600  E8F2CF            call 0x15f5
00004603  BF1E8E            mov di,0x8e1e
00004606  1E                push ds
00004607  57                push di
00004608  9AF813561A        call word 0x1a56:word 0x13f8
0000460D  BF1E8D            mov di,0x8d1e
00004610  1E                push ds
00004611  57                push di
00004612  0E                push cs
00004613  E8DFCF            call 0x15f5
00004616  BF1E8D            mov di,0x8d1e
00004619  1E                push ds
0000461A  57                push di
0000461B  9AF313561A        call word 0x1a56:word 0x13f3
00004620  C406328F          les ax,word [0x8f32]
00004624  8CC2              mov dx,es
00004626  A3B271            mov [0x71b2],ax
00004629  8916B471          mov [0x71b4],dx
0000462D  B83045            mov ax,0x4530
00004630  8CCA              mov dx,cs
00004632  A3328F            mov [0x8f32],ax
00004635  8916348F          mov [0x8f34],dx
00004639  89EC              mov sp,bp
0000463B  CB                retf
0000463C  0000              add [bx+si],al
0000463E  0000              add [bx+si],al
