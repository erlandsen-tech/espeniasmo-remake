00000000  55                push bp
00000001  89E5              mov bp,sp
00000003  81EC0001          sub sp,0x100
00000007  8DBE00FF          lea di,[bp-0x100]
0000000B  16                push ss
0000000C  57                push di
0000000D  8B4606            mov ax,[bp+0x6]
00000010  99                cwd
00000011  52                push dx
00000012  50                push ax
00000013  9A0000C612        call word 0x12c6:word 0x0
00000018  BF8489            mov di,0x8984
0000001B  1E                push ds
0000001C  57                push di
0000001D  B8FF00            mov ax,0xff
00000020  50                push ax
00000021  9AAD06561A        call word 0x1a56:word 0x6ad
00000026  B00C              mov al,0xc
00000028  50                push ax
00000029  B001              mov al,0x1
0000002B  50                push ax
0000002C  9A9B009C18        call word 0x189c:word 0x9b
00000031  89EC              mov sp,bp
00000033  5D                pop bp
00000034  C20400            ret word 0x4
00000037  55                push bp
00000038  89E5              mov bp,sp
0000003A  89EC              mov sp,bp
0000003C  5D                pop bp
0000003D  CA0400            retf word 0x4
00000040  55                push bp
00000041  89E5              mov bp,sp
00000043  83EC04            sub sp,0x4
00000046  C47E04            les di,word [bp+0x4]
00000049  06                push es
0000004A  57                push di
0000004B  B80C00            mov ax,0xc
0000004E  50                push ax
0000004F  9A8E03561A        call word 0x1a56:word 0x38e
00000054  C47E04            les di,word [bp+0x4]
00000057  26C43D            les di,word [es:di]
0000005A  897EFC            mov [bp-0x4],di
0000005D  8C46FE            mov word [bp-0x2],es
00000060  B83700            mov ax,0x37
00000063  8CCA              mov dx,cs
00000065  C47EFC            les di,word [bp-0x4]
00000068  268905            mov [es:di],ax
0000006B  26895502          mov [es:di+0x2],dx
0000006F  C47EFC            les di,word [bp-0x4]
00000072  31C0              xor ax,ax
00000074  26894504          mov [es:di+0x4],ax
00000078  26894506          mov [es:di+0x6],ax
0000007C  C47E04            les di,word [bp+0x4]
0000007F  26C405            les ax,word [es:di]
00000082  8CC2              mov dx,es
00000084  C47EFC            les di,word [bp-0x4]
00000087  26894508          mov [es:di+0x8],ax
0000008B  2689550A          mov [es:di+0xa],dx
0000008F  89EC              mov sp,bp
00000091  5D                pop bp
00000092  C20400            ret word 0x4
00000095  55                push bp
00000096  89E5              mov bp,sp
00000098  83EC08            sub sp,0x8
0000009B  B83700            mov ax,0x37
0000009E  8CCA              mov dx,cs
000000A0  C47E0C            les di,word [bp+0xc]
000000A3  263B5502          cmp dx,[es:di+0x2]
000000A7  7512              jnz 0xbb
000000A9  263B05            cmp ax,[es:di]
000000AC  750D              jnz 0xbb
000000AE  C4460C            les ax,word [bp+0xc]
000000B1  8CC2              mov dx,es
000000B3  8946F8            mov [bp-0x8],ax
000000B6  8956FA            mov [bp-0x6],dx
000000B9  EB0E              jmp 0xc9
000000BB  8D7EF8            lea di,[bp-0x8]
000000BE  16                push ss
000000BF  57                push di
000000C0  B80C00            mov ax,0xc
000000C3  50                push ax
000000C4  9A8E03561A        call word 0x1a56:word 0x38e
000000C9  C44608            les ax,word [bp+0x8]
000000CC  8CC2              mov dx,es
000000CE  C47EF8            les di,word [bp-0x8]
000000D1  268905            mov [es:di],ax
000000D4  26895502          mov [es:di+0x2],dx
000000D8  C44604            les ax,word [bp+0x4]
000000DB  8CC2              mov dx,es
000000DD  C47EF8            les di,word [bp-0x8]
000000E0  26894504          mov [es:di+0x4],ax
000000E4  26895506          mov [es:di+0x6],dx
000000E8  C47E0C            les di,word [bp+0xc]
000000EB  26C44508          les ax,word [es:di+0x8]
000000EF  8CC2              mov dx,es
000000F1  C47EF8            les di,word [bp-0x8]
000000F4  26894508          mov [es:di+0x8],ax
000000F8  2689550A          mov [es:di+0xa],dx
000000FC  C446F8            les ax,word [bp-0x8]
000000FF  8CC2              mov dx,es
00000101  C47E0C            les di,word [bp+0xc]
00000104  26894508          mov [es:di+0x8],ax
00000108  2689550A          mov [es:di+0xa],dx
0000010C  C446F8            les ax,word [bp-0x8]
0000010F  8CC2              mov dx,es
00000111  8946FC            mov [bp-0x4],ax
00000114  8956FE            mov [bp-0x2],dx
00000117  8B46FC            mov ax,[bp-0x4]
0000011A  8B56FE            mov dx,[bp-0x2]
0000011D  89EC              mov sp,bp
0000011F  5D                pop bp
00000120  C20C00            ret word 0xc
00000123  55                push bp
00000124  89E5              mov bp,sp
00000126  83EC04            sub sp,0x4
00000129  C47E06            les di,word [bp+0x6]
0000012C  26C405            les ax,word [es:di]
0000012F  8CC2              mov dx,es
00000131  8946FC            mov [bp-0x4],ax
00000134  8956FE            mov [bp-0x2],dx
00000137  C47E06            les di,word [bp+0x6]
0000013A  26FF7506          push word [es:di+0x6]
0000013E  26FF7504          push word [es:di+0x4]
00000142  FF9EFCFF          call word far [bp-0x4]
00000146  89EC              mov sp,bp
00000148  5D                pop bp
00000149  CA0400            retf word 0x4
0000014C  55                push bp
0000014D  89E5              mov bp,sp
0000014F  C47E04            les di,word [bp+0x4]
00000152  26FF7502          push word [es:di+0x2]
00000156  26FF35            push word [es:di]
00000159  0E                push cs
0000015A  E8C6FF            call 0x123
0000015D  C47E04            les di,word [bp+0x4]
00000160  26C43D            les di,word [es:di]
00000163  26C44508          les ax,word [es:di+0x8]
00000167  8CC2              mov dx,es
00000169  C47E04            les di,word [bp+0x4]
0000016C  268905            mov [es:di],ax
0000016F  26895502          mov [es:di+0x2],dx
00000173  89EC              mov sp,bp
00000175  5D                pop bp
00000176  C20400            ret word 0x4
00000179  55                push bp
0000017A  89E5              mov bp,sp
0000017C  83EC04            sub sp,0x4
0000017F  C44604            les ax,word [bp+0x4]
00000182  8CC2              mov dx,es
00000184  8946FC            mov [bp-0x4],ax
00000187  8956FE            mov [bp-0x2],dx
0000018A  FF76FE            push word [bp-0x2]
0000018D  FF76FC            push word [bp-0x4]
00000190  0E                push cs
00000191  E88FFF            call 0x123
00000194  C47EFC            les di,word [bp-0x4]
00000197  26C44508          les ax,word [es:di+0x8]
0000019B  8CC2              mov dx,es
0000019D  8946FC            mov [bp-0x4],ax
000001A0  8956FE            mov [bp-0x2],dx
000001A3  C446FC            les ax,word [bp-0x4]
000001A6  8CC2              mov dx,es
000001A8  3B5606            cmp dx,[bp+0x6]
000001AB  75DD              jnz 0x18a
000001AD  3B4604            cmp ax,[bp+0x4]
000001B0  75D8              jnz 0x18a
000001B2  89EC              mov sp,bp
000001B4  5D                pop bp
000001B5  C20400            ret word 0x4
000001B8  55                push bp
000001B9  89E5              mov bp,sp
000001BB  BF075B            mov di,0x5b07
000001BE  1E                push ds
000001BF  57                push di
000001C0  E889FF            call 0x14c
000001C3  89EC              mov sp,bp
000001C5  5D                pop bp
000001C6  CB                retf
000001C7  55                push bp
000001C8  89E5              mov bp,sp
000001CA  83EC04            sub sp,0x4
000001CD  FF360D5B          push word [0x5b0d]
000001D1  FF360B5B          push word [0x5b0b]
000001D5  FF760A            push word [bp+0xa]
000001D8  FF7608            push word [bp+0x8]
000001DB  FF7606            push word [bp+0x6]
000001DE  FF7604            push word [bp+0x4]
000001E1  E8B1FE            call 0x95
000001E4  8946FC            mov [bp-0x4],ax
000001E7  8956FE            mov [bp-0x2],dx
000001EA  8B46FC            mov ax,[bp-0x4]
000001ED  8B56FE            mov dx,[bp-0x2]
000001F0  89EC              mov sp,bp
000001F2  5D                pop bp
000001F3  C20800            ret word 0x8
000001F6  55                push bp
000001F7  89E5              mov bp,sp
000001F9  FF360D5B          push word [0x5b0d]
000001FD  FF360B5B          push word [0x5b0b]
00000201  E875FF            call 0x179
00000204  89EC              mov sp,bp
00000206  5D                pop bp
00000207  C3                ret
00000208  55                push bp
00000209  89E5              mov bp,sp
0000020B  E8E8FF            call 0x1f6
0000020E  0E                push cs
0000020F  E8A6FF            call 0x1b8
00000212  FF1E0F5B          call word far [0x5b0f]
00000216  89EC              mov sp,bp
00000218  5D                pop bp
00000219  CB                retf
0000021A  55                push bp
0000021B  89E5              mov bp,sp
0000021D  83EC22            sub sp,0x22
00000220  C47E06            les di,word [bp+0x6]
00000223  06                push es
00000224  57                push di
00000225  8D7EFE            lea di,[bp-0x2]
00000228  16                push ss
00000229  57                push di
0000022A  B80200            mov ax,0x2
0000022D  50                push ax
0000022E  9A1309561A        call word 0x1a56:word 0x913
00000233  FA                cli
00000234  FE064A6C          inc byte [0x6c4a]
00000238  8D7EDE            lea di,[bp-0x22]
0000023B  16                push ss
0000023C  57                push di
0000023D  8D7EFE            lea di,[bp-0x2]
00000240  16                push ss
00000241  57                push di
00000242  B80200            mov ax,0x2
00000245  50                push ax
00000246  9A8508561A        call word 0x1a56:word 0x885
0000024B  BF015F            mov di,0x5f01
0000024E  1E                push ds
0000024F  57                push di
00000250  B80200            mov ax,0x2
00000253  50                push ax
00000254  9A1309561A        call word 0x1a56:word 0x913
00000259  FA                cli
0000025A  FE0E4A6C          dec byte [0x6c4a]
0000025E  7501              jnz 0x261
00000260  FB                sti
00000261  89EC              mov sp,bp
00000263  5D                pop bp
00000264  CA0400            retf word 0x4
00000267  55                push bp
00000268  89E5              mov bp,sp
0000026A  FA                cli
0000026B  FE064A6C          inc byte [0x6c4a]
0000026F  FF7606            push word [bp+0x6]
00000272  0E                push cs
00000273  E83C00            call 0x2b2
00000276  50                push ax
00000277  5B                pop bx
00000278  58                pop ax
00000279  39D8              cmp ax,bx
0000027B  7802              js 0x27f
0000027D  89D8              mov ax,bx
0000027F  894606            mov [bp+0x6],ax
00000282  8B4606            mov ax,[bp+0x6]
00000285  31D2              xor dx,dx
00000287  8BC8              mov cx,ax
00000289  8BDA              mov bx,dx
0000028B  A1155B            mov ax,[0x5b15]
0000028E  99                cwd
0000028F  03C1              add ax,cx
00000291  13D3              adc dx,bx
00000293  B96400            mov cx,0x64
00000296  31DB              xor bx,bx
00000298  9AF702561A        call word 0x1a56:word 0x2f7
0000029D  89C8              mov ax,cx
0000029F  89DA              mov dx,bx
000002A1  A3155B            mov [0x5b15],ax
000002A4  FA                cli
000002A5  FE0E4A6C          dec byte [0x6c4a]
000002A9  7501              jnz 0x2ac
000002AB  FB                sti
000002AC  89EC              mov sp,bp
000002AE  5D                pop bp
000002AF  CA0200            retf word 0x2
000002B2  55                push bp
000002B3  89E5              mov bp,sp
000002B5  83EC02            sub sp,0x2
000002B8  E83BFF            call 0x1f6
000002BB  FA                cli
000002BC  FE064A6C          inc byte [0x6c4a]
000002C0  A1175B            mov ax,[0x5b17]
000002C3  056400            add ax,0x64
000002C6  2B06155B          sub ax,[0x5b15]
000002CA  99                cwd
000002CB  B96400            mov cx,0x64
000002CE  F7F9              idiv cx
000002D0  92                xchg ax,dx
000002D1  8946FE            mov [bp-0x2],ax
000002D4  FA                cli
000002D5  FE0E4A6C          dec byte [0x6c4a]
000002D9  7501              jnz 0x2dc
000002DB  FB                sti
000002DC  8B46FE            mov ax,[bp-0x2]
000002DF  89EC              mov sp,bp
000002E1  5D                pop bp
000002E2  CB                retf
000002E3  55                push bp
000002E4  89E5              mov bp,sp
000002E6  0E                push cs
000002E7  E8C8FF            call 0x2b2
000002EA  09C0              or ax,ax
000002EC  770A              ja 0x2f8
000002EE  0E                push cs
000002EF  E8C6FE            call 0x1b8
000002F2  FF1E0F5B          call word far [0x5b0f]
000002F6  EBEE              jmp 0x2e6
000002F8  FA                cli
000002F9  FE064A6C          inc byte [0x6c4a]
000002FD  A1155B            mov ax,[0x5b15]
00000300  BA0A00            mov dx,0xa
00000303  F7E2              mul dx
00000305  8BF8              mov di,ax
00000307  81C7195B          add di,0x5b19
0000030B  1E                push ds
0000030C  57                push di
0000030D  C47E06            les di,word [bp+0x6]
00000310  06                push es
00000311  57                push di
00000312  B80A00            mov ax,0xa
00000315  50                push ax
00000316  9AC002561A        call word 0x1a56:word 0x2c0
0000031B  A1155B            mov ax,[0x5b15]
0000031E  40                inc ax
0000031F  99                cwd
00000320  B96400            mov cx,0x64
00000323  F7F9              idiv cx
00000325  92                xchg ax,dx
00000326  A3155B            mov [0x5b15],ax
00000329  FA                cli
0000032A  FE0E4A6C          dec byte [0x6c4a]
0000032E  7501              jnz 0x331
00000330  FB                sti
00000331  803EAD6B00        cmp byte [0x6bad],0x0
00000336  743E              jz 0x376
00000338  C47E06            les di,word [bp+0x6]
0000033B  26FF7504          push word [es:di+0x4]
0000033F  58                pop ax
00000340  2B06996B          sub ax,[0x6b99]
00000344  F72E8D6B          imul word [0x6b8d]
00000348  F73E9D6B          idiv word [0x6b9d]
0000034C  0306896B          add ax,[0x6b89]
00000350  C47E06            les di,word [bp+0x6]
00000353  26894504          mov [es:di+0x4],ax
00000357  C47E06            les di,word [bp+0x6]
0000035A  26FF7506          push word [es:di+0x6]
0000035E  58                pop ax
0000035F  2B069B6B          sub ax,[0x6b9b]
00000363  F72E8F6B          imul word [0x6b8f]
00000367  F73E9F6B          idiv word [0x6b9f]
0000036B  03068B6B          add ax,[0x6b8b]
0000036F  C47E06            les di,word [bp+0x6]
00000372  26894506          mov [es:di+0x6],ax
00000376  89EC              mov sp,bp
00000378  5D                pop bp
00000379  CA0400            retf word 0x4
0000037C  55                push bp
0000037D  89E5              mov bp,sp
0000037F  83EC2A            sub sp,0x2a
00000382  C47E04            les di,word [bp+0x4]
00000385  06                push es
00000386  57                push di
00000387  8D7EF6            lea di,[bp-0xa]
0000038A  16                push ss
0000038B  57                push di
0000038C  B80A00            mov ax,0xa
0000038F  50                push ax
00000390  9AC002561A        call word 0x1a56:word 0x2c0
00000395  FF36135B          push word [0x5b13]
00000399  9A3E00330E        call word 0xe33:word 0x3e
0000039E  8946F6            mov [bp-0xa],ax
000003A1  BF135B            mov di,0x5b13
000003A4  1E                push ds
000003A5  57                push di
000003A6  9A2C00330E        call word 0xe33:word 0x2c
000003AB  FA                cli
000003AC  FE064A6C          inc byte [0x6c4a]
000003B0  FA                cli
000003B1  FE0E4A6C          dec byte [0x6c4a]
000003B5  7501              jnz 0x3b8
000003B7  FB                sti
000003B8  FA                cli
000003B9  FE064A6C          inc byte [0x6c4a]
000003BD  8D7EF6            lea di,[bp-0xa]
000003C0  16                push ss
000003C1  57                push di
000003C2  A1175B            mov ax,[0x5b17]
000003C5  BA0A00            mov dx,0xa
000003C8  F7E2              mul dx
000003CA  8BF8              mov di,ax
000003CC  81C7195B          add di,0x5b19
000003D0  1E                push ds
000003D1  57                push di
000003D2  B80A00            mov ax,0xa
000003D5  50                push ax
000003D6  9AC002561A        call word 0x1a56:word 0x2c0
000003DB  8A46F8            mov al,[bp-0x8]
000003DE  50                push ax
000003DF  8D7ED6            lea di,[bp-0x2a]
000003E2  16                push ss
000003E3  57                push di
000003E4  BF015F            mov di,0x5f01
000003E7  1E                push ds
000003E8  57                push di
000003E9  B80200            mov ax,0x2
000003EC  50                push ax
000003ED  9A8508561A        call word 0x1a56:word 0x885
000003F2  9A3309561A        call word 0x1a56:word 0x933
000003F7  7443              jz 0x43c
000003F9  A1175B            mov ax,[0x5b17]
000003FC  40                inc ax
000003FD  99                cwd
000003FE  B96400            mov cx,0x64
00000401  F7F9              idiv cx
00000403  92                xchg ax,dx
00000404  A3175B            mov [0x5b17],ax
00000407  A1175B            mov ax,[0x5b17]
0000040A  3B06155B          cmp ax,[0x5b15]
0000040E  750E              jnz 0x41e
00000410  A1155B            mov ax,[0x5b15]
00000413  40                inc ax
00000414  99                cwd
00000415  B96400            mov cx,0x64
00000418  F7F9              idiv cx
0000041A  92                xchg ax,dx
0000041B  A3155B            mov [0x5b15],ax
0000041E  8D7EF6            lea di,[bp-0xa]
00000421  16                push ss
00000422  57                push di
00000423  A1175B            mov ax,[0x5b17]
00000426  BA0A00            mov dx,0xa
00000429  F7E2              mul dx
0000042B  8BF8              mov di,ax
0000042D  81C7195B          add di,0x5b19
00000431  1E                push ds
00000432  57                push di
00000433  B80A00            mov ax,0xa
00000436  50                push ax
00000437  9AC002561A        call word 0x1a56:word 0x2c0
0000043C  FA                cli
0000043D  FE0E4A6C          dec byte [0x6c4a]
00000441  7501              jnz 0x444
00000443  FB                sti
00000444  89EC              mov sp,bp
00000446  5D                pop bp
00000447  C20400            ret word 0x4
0000044A  55                push bp
0000044B  89E5              mov bp,sp
0000044D  83EC14            sub sp,0x14
00000450  C44604            les ax,word [bp+0x4]
00000453  8CC2              mov dx,es
00000455  A31C0B            mov [0xb1c],ax
00000458  89161E0B          mov [0xb1e],dx
0000045C  C746EC0C00        mov word [bp-0x14],0xc
00000461  8B4608            mov ax,[bp+0x8]
00000464  8946F0            mov [bp-0x10],ax
00000467  8CD8              mov ax,ds
00000469  8946FC            mov [bp-0x4],ax
0000046C  B8200B            mov ax,0xb20
0000046F  8946F2            mov [bp-0xe],ax
00000472  B033              mov al,0x33
00000474  50                push ax
00000475  8D7EEC            lea di,[bp-0x14]
00000478  16                push ss
00000479  57                push di
0000047A  9A5C01A712        call word 0x12a7:word 0x15c
0000047F  89EC              mov sp,bp
00000481  5D                pop bp
00000482  C20600            ret word 0x6
00000485  55                push bp
00000486  89E5              mov bp,sp
00000488  83EC02            sub sp,0x2
0000048B  FA                cli
0000048C  FE064A6C          inc byte [0x6c4a]
00000490  A1456C            mov ax,[0x6c45]
00000493  8946FE            mov [bp-0x2],ax
00000496  FA                cli
00000497  FE0E4A6C          dec byte [0x6c4a]
0000049B  7501              jnz 0x49e
0000049D  FB                sti
0000049E  833E476C00        cmp word [0x6c47],0x0
000004A3  752F              jnz 0x4d4
000004A5  803E496C00        cmp byte [0x6c49],0x0
000004AA  7428              jz 0x4d4
000004AC  B001              mov al,0x1
000004AE  86060D5F          xchg al,[0x5f0d]
000004B2  08C0              or al,al
000004B4  7402              jz 0x4b8
000004B6  EB21              jmp 0x4d9
000004B8  C606496C00        mov byte [0x6c49],0x0
000004BD  9AE919430E        call word 0xe43:word 0x19e9
000004C2  837EFE00          cmp word [bp-0x2],0x0
000004C6  7E05              jng 0x4cd
000004C8  9AC118430E        call word 0xe43:word 0x18c1
000004CD  C6060D5F00        mov byte [0x5f0d],0x0
000004D2  EBCA              jmp 0x49e
000004D4  C6060D5F00        mov byte [0x5f0d],0x0
000004D9  89EC              mov sp,bp
000004DB  5D                pop bp
000004DC  C3                ret
000004DD  55                push bp
000004DE  89E5              mov bp,sp
000004E0  FA                cli
000004E1  FE064A6C          inc byte [0x6c4a]
000004E5  8B4606            mov ax,[bp+0x6]
000004E8  A33F6C            mov [0x6c3f],ax
000004EB  8B4604            mov ax,[bp+0x4]
000004EE  A3416C            mov [0x6c41],ax
000004F1  A13F6C            mov ax,[0x6c3f]
000004F4  2B06E76B          sub ax,[0x6be7]
000004F8  A3376C            mov [0x6c37],ax
000004FB  A1376C            mov ax,[0x6c37]
000004FE  050F00            add ax,0xf
00000501  A3396C            mov [0x6c39],ax
00000504  A1416C            mov ax,[0x6c41]
00000507  2B06E96B          sub ax,[0x6be9]
0000050B  A33B6C            mov [0x6c3b],ax
0000050E  A13B6C            mov ax,[0x6c3b]
00000511  050F00            add ax,0xf
00000514  A33D6C            mov [0x6c3d],ax
00000517  833E456C00        cmp word [0x6c45],0x0
0000051C  7E05              jng 0x523
0000051E  C606496C01        mov byte [0x6c49],0x1
00000523  FA                cli
00000524  FE0E4A6C          dec byte [0x6c4a]
00000528  7501              jnz 0x52b
0000052A  FB                sti
0000052B  E857FF            call 0x485
0000052E  89EC              mov sp,bp
00000530  5D                pop bp
00000531  C20400            ret word 0x4
00000534  55                push bp
00000535  89E5              mov bp,sp
00000537  83EC13            sub sp,0x13
0000053A  803E035F00        cmp byte [0x5f03],0x0
0000053F  7403              jz 0x544
00000541  E9B102            jmp 0x7f5
00000544  C646FF00          mov byte [bp-0x1],0x0
00000548  A16B6B            mov ax,[0x6b6b]
0000054B  2B4606            sub ax,[bp+0x6]
0000054E  48                dec ax
0000054F  894606            mov [bp+0x6],ax
00000552  FF36045F          push word [0x5f04]
00000556  FF36065F          push word [0x5f06]
0000055A  FF7608            push word [bp+0x8]
0000055D  9A4C001B18        call word 0x181b:word 0x4c
00000562  894608            mov [bp+0x8],ax
00000565  FF36085F          push word [0x5f08]
00000569  FF360A5F          push word [0x5f0a]
0000056D  FF7606            push word [bp+0x6]
00000570  9A4C001B18        call word 0x181b:word 0x4c
00000575  894606            mov [bp+0x6],ax
00000578  8B4608            mov ax,[bp+0x8]
0000057B  8946F9            mov [bp-0x7],ax
0000057E  8B4606            mov ax,[bp+0x6]
00000581  8946FB            mov [bp-0x5],ax
00000584  8A460A            mov al,[bp+0xa]
00000587  8846F8            mov [bp-0x8],al
0000058A  8B4608            mov ax,[bp+0x8]
0000058D  3B063F6C          cmp ax,[0x6c3f]
00000591  7509              jnz 0x59c
00000593  8B4606            mov ax,[bp+0x6]
00000596  3B06416C          cmp ax,[0x6c41]
0000059A  7448              jz 0x5e4
0000059C  837E0C00          cmp word [bp+0xc],0x0
000005A0  7519              jnz 0x5bb
000005A2  803EFC5A00        cmp byte [0x5afc],0x0
000005A7  7412              jz 0x5bb
000005A9  FF7608            push word [bp+0x8]
000005AC  A16B6B            mov ax,[0x6b6b]
000005AF  2B4606            sub ax,[bp+0x6]
000005B2  48                dec ax
000005B3  50                push ax
000005B4  B80400            mov ax,0x4
000005B7  5A                pop dx
000005B8  59                pop cx
000005B9  CD33              int byte 0x33
000005BB  C646FF01          mov byte [bp-0x1],0x1
000005BF  C646F700          mov byte [bp-0x9],0x0
000005C3  8D7EF5            lea di,[bp-0xb]
000005C6  16                push ss
000005C7  57                push di
000005C8  E8B1FD            call 0x37c
000005CB  FA                cli
000005CC  FE064A6C          inc byte [0x6c4a]
000005D0  8B4608            mov ax,[bp+0x8]
000005D3  A33F6C            mov [0x6c3f],ax
000005D6  8B4606            mov ax,[bp+0x6]
000005D9  A3416C            mov [0x6c41],ax
000005DC  FA                cli
000005DD  FE0E4A6C          dec byte [0x6c4a]
000005E1  7501              jnz 0x5e4
000005E3  FB                sti
000005E4  A1436C            mov ax,[0x6c43]
000005E7  31D2              xor dx,dx
000005E9  8BC8              mov cx,ax
000005EB  8BDA              mov bx,dx
000005ED  8B460A            mov ax,[bp+0xa]
000005F0  99                cwd
000005F1  3BD3              cmp dx,bx
000005F3  7507              jnz 0x5fc
000005F5  3BC1              cmp ax,cx
000005F7  7503              jnz 0x5fc
000005F9  E9B800            jmp 0x6b4
000005FC  A1436C            mov ax,[0x6c43]
000005FF  250100            and ax,0x1
00000602  31D2              xor dx,dx
00000604  8BC8              mov cx,ax
00000606  8BDA              mov bx,dx
00000608  8B460A            mov ax,[bp+0xa]
0000060B  250100            and ax,0x1
0000060E  99                cwd
0000060F  3BD3              cmp dx,bx
00000611  7504              jnz 0x617
00000613  3BC1              cmp ax,cx
00000615  741C              jz 0x633
00000617  8B460A            mov ax,[bp+0xa]
0000061A  250100            and ax,0x1
0000061D  09C0              or ax,ax
0000061F  7506              jnz 0x627
00000621  C646F702          mov byte [bp-0x9],0x2
00000625  EB04              jmp 0x62b
00000627  C646F701          mov byte [bp-0x9],0x1
0000062B  8D7EF5            lea di,[bp-0xb]
0000062E  16                push ss
0000062F  57                push di
00000630  E849FD            call 0x37c
00000633  A1436C            mov ax,[0x6c43]
00000636  250200            and ax,0x2
00000639  31D2              xor dx,dx
0000063B  8BC8              mov cx,ax
0000063D  8BDA              mov bx,dx
0000063F  8B460A            mov ax,[bp+0xa]
00000642  250200            and ax,0x2
00000645  99                cwd
00000646  3BD3              cmp dx,bx
00000648  7504              jnz 0x64e
0000064A  3BC1              cmp ax,cx
0000064C  741C              jz 0x66a
0000064E  8B460A            mov ax,[bp+0xa]
00000651  250200            and ax,0x2
00000654  09C0              or ax,ax
00000656  7506              jnz 0x65e
00000658  C646F704          mov byte [bp-0x9],0x4
0000065C  EB04              jmp 0x662
0000065E  C646F703          mov byte [bp-0x9],0x3
00000662  8D7EF5            lea di,[bp-0xb]
00000665  16                push ss
00000666  57                push di
00000667  E812FD            call 0x37c
0000066A  A1436C            mov ax,[0x6c43]
0000066D  250400            and ax,0x4
00000670  31D2              xor dx,dx
00000672  8BC8              mov cx,ax
00000674  8BDA              mov bx,dx
00000676  8B460A            mov ax,[bp+0xa]
00000679  250400            and ax,0x4
0000067C  99                cwd
0000067D  3BD3              cmp dx,bx
0000067F  7504              jnz 0x685
00000681  3BC1              cmp ax,cx
00000683  741C              jz 0x6a1
00000685  8B460A            mov ax,[bp+0xa]
00000688  250400            and ax,0x4
0000068B  09C0              or ax,ax
0000068D  7506              jnz 0x695
0000068F  C646F706          mov byte [bp-0x9],0x6
00000693  EB04              jmp 0x699
00000695  C646F705          mov byte [bp-0x9],0x5
00000699  8D7EF5            lea di,[bp-0xb]
0000069C  16                push ss
0000069D  57                push di
0000069E  E8DBFC            call 0x37c
000006A1  FA                cli
000006A2  FE064A6C          inc byte [0x6c4a]
000006A6  8B460A            mov ax,[bp+0xa]
000006A9  A3436C            mov [0x6c43],ax
000006AC  FA                cli
000006AD  FE0E4A6C          dec byte [0x6c4a]
000006B1  7501              jnz 0x6b4
000006B3  FB                sti
000006B4  A1015B            mov ax,[0x5b01]
000006B7  0B06035B          or ax,[0x5b03]
000006BB  7503              jnz 0x6c0
000006BD  E9A500            jmp 0x765
000006C0  C43E015B          les di,word [0x5b01]
000006C4  268B05            mov ax,[es:di]
000006C7  48                dec ax
000006C8  8946F1            mov [bp-0xf],ax
000006CB  31C0              xor ax,ax
000006CD  3B46F1            cmp ax,[bp-0xf]
000006D0  7E03              jng 0x6d5
000006D2  E99000            jmp 0x765
000006D5  8946F3            mov [bp-0xd],ax
000006D8  EB03              jmp 0x6dd
000006DA  FF46F3            inc word [bp-0xd]
000006DD  8B46F3            mov ax,[bp-0xd]
000006E0  B104              mov cl,0x4
000006E2  D3E0              shl ax,cl
000006E4  C43E015B          les di,word [0x5b01]
000006E8  03F8              add di,ax
000006EA  81C70200          add di,0x2
000006EE  897EED            mov [bp-0x13],di
000006F1  8C46EF            mov word [bp-0x11],es
000006F4  FF76FB            push word [bp-0x5]
000006F7  FF76F9            push word [bp-0x7]
000006FA  C47EED            les di,word [bp-0x13]
000006FD  06                push es
000006FE  57                push di
000006FF  9A3D06430E        call word 0xe43:word 0x63d
00000704  08C0              or al,al
00000706  7452              jz 0x75a
00000708  A1436C            mov ax,[0x6c43]
0000070B  C47EED            les di,word [bp-0x13]
0000070E  03F8              add di,ax
00000710  268A4508          mov al,[es:di+0x8]
00000714  3A060C5F          cmp al,[0x5f0c]
00000718  743E              jz 0x758
0000071A  FA                cli
0000071B  FE064A6C          inc byte [0x6c4a]
0000071F  A1436C            mov ax,[0x6c43]
00000722  C47EED            les di,word [bp-0x13]
00000725  03F8              add di,ax
00000727  268A4508          mov al,[es:di+0x8]
0000072B  A20C5F            mov [0x5f0c],al
0000072E  A00C5F            mov al,[0x5f0c]
00000731  98                cbw
00000732  8BF8              mov di,ax
00000734  B103              mov cl,0x3
00000736  D3E7              shl di,cl
00000738  81C7EF6B          add di,0x6bef
0000073C  1E                push ds
0000073D  57                push di
0000073E  BFE76B            mov di,0x6be7
00000741  1E                push ds
00000742  57                push di
00000743  B80800            mov ax,0x8
00000746  50                push ax
00000747  9AC002561A        call word 0x1a56:word 0x2c0
0000074C  FA                cli
0000074D  FE0E4A6C          dec byte [0x6c4a]
00000751  7501              jnz 0x754
00000753  FB                sti
00000754  C646FF01          mov byte [bp-0x1],0x1
00000758  EB53              jmp 0x7ad
0000075A  8B46F3            mov ax,[bp-0xd]
0000075D  3B46F1            cmp ax,[bp-0xf]
00000760  7403              jz 0x765
00000762  E975FF            jmp 0x6da
00000765  8B3E436C          mov di,[0x6c43]
00000769  8A85E80A          mov al,[di+0xae8]
0000076D  3A060C5F          cmp al,[0x5f0c]
00000771  743A              jz 0x7ad
00000773  FA                cli
00000774  FE064A6C          inc byte [0x6c4a]
00000778  8B3E436C          mov di,[0x6c43]
0000077C  8A85E80A          mov al,[di+0xae8]
00000780  A20C5F            mov [0x5f0c],al
00000783  A00C5F            mov al,[0x5f0c]
00000786  98                cbw
00000787  8BF8              mov di,ax
00000789  B103              mov cl,0x3
0000078B  D3E7              shl di,cl
0000078D  81C7EF6B          add di,0x6bef
00000791  1E                push ds
00000792  57                push di
00000793  BFE76B            mov di,0x6be7
00000796  1E                push ds
00000797  57                push di
00000798  B80800            mov ax,0x8
0000079B  50                push ax
0000079C  9AC002561A        call word 0x1a56:word 0x2c0
000007A1  FA                cli
000007A2  FE0E4A6C          dec byte [0x6c4a]
000007A6  7501              jnz 0x7a9
000007A8  FB                sti
000007A9  C646FF01          mov byte [bp-0x1],0x1
000007AD  807EFF00          cmp byte [bp-0x1],0x0
000007B1  743F              jz 0x7f2
000007B3  FA                cli
000007B4  FE064A6C          inc byte [0x6c4a]
000007B8  A13F6C            mov ax,[0x6c3f]
000007BB  2B06E76B          sub ax,[0x6be7]
000007BF  A3376C            mov [0x6c37],ax
000007C2  A1376C            mov ax,[0x6c37]
000007C5  050F00            add ax,0xf
000007C8  A3396C            mov [0x6c39],ax
000007CB  A1416C            mov ax,[0x6c41]
000007CE  2B06E96B          sub ax,[0x6be9]
000007D2  A33B6C            mov [0x6c3b],ax
000007D5  A13B6C            mov ax,[0x6c3b]
000007D8  050F00            add ax,0xf
000007DB  A33D6C            mov [0x6c3d],ax
000007DE  FA                cli
000007DF  FE0E4A6C          dec byte [0x6c4a]
000007E3  7501              jnz 0x7e6
000007E5  FB                sti
000007E6  833E456C00        cmp word [0x6c45],0x0
000007EB  7E05              jng 0x7f2
000007ED  C606496C01        mov byte [0x6c49],0x1
000007F2  E890FC            call 0x485
000007F5  89EC              mov sp,bp
000007F7  5D                pop bp
000007F8  CA0800            retf word 0x8
000007FB  55                push bp
000007FC  89E5              mov bp,sp
000007FE  83EC08            sub sp,0x8
00000801  BFFE74            mov di,0x74fe
00000804  1E                push ds
00000805  57                push di
00000806  8D46F8            lea ax,[bp-0x8]
00000809  8CD2              mov dx,ss
0000080B  52                push dx
0000080C  50                push ax
0000080D  B80800            mov ax,0x8
00000810  31D2              xor dx,dx
00000812  52                push dx
00000813  50                push ax
00000814  9A0D0C9813        call word 0x1398:word 0xc0d
00000819  FF76FE            push word [bp-0x2]
0000081C  58                pop ax
0000081D  86E0              xchg ah,al
0000081F  A3FD5A            mov [0x5afd],ax
00000822  FF76F8            push word [bp-0x8]
00000825  58                pop ax
00000826  86E0              xchg ah,al
00000828  50                push ax
00000829  FF76FA            push word [bp-0x6]
0000082C  58                pop ax
0000082D  86E0              xchg ah,al
0000082F  50                push ax
00000830  B80F00            mov ax,0xf
00000833  5A                pop dx
00000834  59                pop cx
00000835  CD33              int byte 0x33
00000837  FF76FE            push word [bp-0x2]
0000083A  58                pop ax
0000083B  86E0              xchg ah,al
0000083D  50                push ax
0000083E  B81300            mov ax,0x13
00000841  59                pop cx
00000842  CD33              int byte 0x33
00000844  89EC              mov sp,bp
00000846  5D                pop bp
00000847  CB                retf
00000848  55                push bp
00000849  89E5              mov bp,sp
0000084B  83EC02            sub sp,0x2
0000084E  FA                cli
0000084F  FE064A6C          inc byte [0x6c4a]
00000853  A1456C            mov ax,[0x6c45]
00000856  8946FE            mov [bp-0x2],ax
00000859  FF06456C          inc word [0x6c45]
0000085D  FA                cli
0000085E  FE0E4A6C          dec byte [0x6c4a]
00000862  7501              jnz 0x865
00000864  FB                sti
00000865  837EFE00          cmp word [bp-0x2],0x0
00000869  7505              jnz 0x870
0000086B  9AC118430E        call word 0xe43:word 0x18c1
00000870  89EC              mov sp,bp
00000872  5D                pop bp
00000873  CB                retf
00000874  55                push bp
00000875  89E5              mov bp,sp
00000877  83EC02            sub sp,0x2
0000087A  FA                cli
0000087B  FE064A6C          inc byte [0x6c4a]
0000087F  FF0E456C          dec word [0x6c45]
00000883  A1456C            mov ax,[0x6c45]
00000886  8946FE            mov [bp-0x2],ax
00000889  FA                cli
0000088A  FE0E4A6C          dec byte [0x6c4a]
0000088E  7501              jnz 0x891
00000890  FB                sti
00000891  837EFE00          cmp word [bp-0x2],0x0
00000895  7505              jnz 0x89c
00000897  9AE919430E        call word 0xe43:word 0x19e9
0000089C  89EC              mov sp,bp
0000089E  5D                pop bp
0000089F  CB                retf
000008A0  55                push bp
000008A1  89E5              mov bp,sp
000008A3  83EC01            sub sp,0x1
000008A6  FA                cli
000008A7  FE064A6C          inc byte [0x6c4a]
000008AB  C47E06            les di,word [bp+0x6]
000008AE  06                push es
000008AF  57                push di
000008B0  BFE80A            mov di,0xae8
000008B3  1E                push ds
000008B4  57                push di
000008B5  B80800            mov ax,0x8
000008B8  50                push ax
000008B9  9AC002561A        call word 0x1a56:word 0x2c0
000008BE  8B3E436C          mov di,[0x6c43]
000008C2  8A85E80A          mov al,[di+0xae8]
000008C6  3A060C5F          cmp al,[0x5f0c]
000008CA  7504              jnz 0x8d0
000008CC  B000              mov al,0x0
000008CE  EB02              jmp 0x8d2
000008D0  B001              mov al,0x1
000008D2  8846FF            mov [bp-0x1],al
000008D5  FA                cli
000008D6  FE0E4A6C          dec byte [0x6c4a]
000008DA  7501              jnz 0x8dd
000008DC  FB                sti
000008DD  807EFF00          cmp byte [bp-0x1],0x0
000008E1  7441              jz 0x924
000008E3  FA                cli
000008E4  FE064A6C          inc byte [0x6c4a]
000008E8  8B3E436C          mov di,[0x6c43]
000008EC  8A85E80A          mov al,[di+0xae8]
000008F0  A20C5F            mov [0x5f0c],al
000008F3  A00C5F            mov al,[0x5f0c]
000008F6  98                cbw
000008F7  8BF8              mov di,ax
000008F9  B103              mov cl,0x3
000008FB  D3E7              shl di,cl
000008FD  81C7EF6B          add di,0x6bef
00000901  1E                push ds
00000902  57                push di
00000903  BFE76B            mov di,0x6be7
00000906  1E                push ds
00000907  57                push di
00000908  B80800            mov ax,0x8
0000090B  50                push ax
0000090C  9AC002561A        call word 0x1a56:word 0x2c0
00000911  FA                cli
00000912  FE0E4A6C          dec byte [0x6c4a]
00000916  7501              jnz 0x919
00000918  FB                sti
00000919  FF363F6C          push word [0x6c3f]
0000091D  FF36416C          push word [0x6c41]
00000921  E8B9FB            call 0x4dd
00000924  89EC              mov sp,bp
00000926  5D                pop bp
00000927  CA0400            retf word 0x4
0000092A  55                push bp
0000092B  89E5              mov bp,sp
0000092D  8B4606            mov ax,[bp+0x6]
00000930  3DFEFF            cmp ax,0xfffe
00000933  7508              jnz 0x93d
00000935  C606155F01        mov byte [0x5f15],0x1
0000093A  E9B201            jmp 0xaef
0000093D  3DF6FF            cmp ax,0xfff6
00000940  7C23              jl 0x965
00000942  3DFDFF            cmp ax,0xfffd
00000945  7F1E              jg 0x965
00000947  B8FDFF            mov ax,0xfffd
0000094A  2B4606            sub ax,[bp+0x6]
0000094D  8BD0              mov dx,ax
0000094F  B80100            mov ax,0x1
00000952  8BCA              mov cx,dx
00000954  D3E0              shl ax,cl
00000956  8BD0              mov dx,ax
00000958  A0125F            mov al,[0x5f12]
0000095B  30E4              xor ah,ah
0000095D  33C2              xor ax,dx
0000095F  A2125F            mov [0x5f12],al
00000962  E98A01            jmp 0xaef
00000965  3DF3FF            cmp ax,0xfff3
00000968  7C3A              jl 0x9a4
0000096A  3DF5FF            cmp ax,0xfff5
0000096D  7F35              jg 0x9a4
0000096F  31C0              xor ax,ax
00000971  50                push ax
00000972  B8F5FF            mov ax,0xfff5
00000975  2B4606            sub ax,[bp+0x6]
00000978  8BD0              mov dx,ax
0000097A  B80100            mov ax,0x1
0000097D  8BCA              mov cx,dx
0000097F  D3E0              shl ax,cl
00000981  99                cwd
00000982  8BC8              mov cx,ax
00000984  8BDA              mov bx,dx
00000986  A1436C            mov ax,[0x6c43]
00000989  31D2              xor dx,dx
0000098B  33C1              xor ax,cx
0000098D  33D3              xor dx,bx
0000098F  50                push ax
00000990  FF363F6C          push word [0x6c3f]
00000994  A16B6B            mov ax,[0x6b6b]
00000997  2B06416C          sub ax,[0x6c41]
0000099B  48                dec ax
0000099C  50                push ax
0000099D  0E                push cs
0000099E  E893FB            call 0x534
000009A1  E94B01            jmp 0xaef
000009A4  3DF2FF            cmp ax,0xfff2
000009A7  751F              jnz 0x9c8
000009A9  31C0              xor ax,ax
000009AB  50                push ax
000009AC  FF36436C          push word [0x6c43]
000009B0  A13F6C            mov ax,[0x6c3f]
000009B3  0306135F          add ax,[0x5f13]
000009B7  50                push ax
000009B8  A16B6B            mov ax,[0x6b6b]
000009BB  2B06416C          sub ax,[0x6c41]
000009BF  48                dec ax
000009C0  50                push ax
000009C1  0E                push cs
000009C2  E86FFB            call 0x534
000009C5  E92701            jmp 0xaef
000009C8  3DF1FF            cmp ax,0xfff1
000009CB  7522              jnz 0x9ef
000009CD  31C0              xor ax,ax
000009CF  50                push ax
000009D0  FF36436C          push word [0x6c43]
000009D4  FF363F6C          push word [0x6c3f]
000009D8  A1416C            mov ax,[0x6c41]
000009DB  0306135F          add ax,[0x5f13]
000009DF  8BD0              mov dx,ax
000009E1  A16B6B            mov ax,[0x6b6b]
000009E4  2BC2              sub ax,dx
000009E6  48                dec ax
000009E7  50                push ax
000009E8  0E                push cs
000009E9  E848FB            call 0x534
000009EC  E90001            jmp 0xaef
000009EF  3DF0FF            cmp ax,0xfff0
000009F2  751F              jnz 0xa13
000009F4  31C0              xor ax,ax
000009F6  50                push ax
000009F7  FF36436C          push word [0x6c43]
000009FB  A13F6C            mov ax,[0x6c3f]
000009FE  2B06135F          sub ax,[0x5f13]
00000A02  50                push ax
00000A03  A16B6B            mov ax,[0x6b6b]
00000A06  2B06416C          sub ax,[0x6c41]
00000A0A  48                dec ax
00000A0B  50                push ax
00000A0C  0E                push cs
00000A0D  E824FB            call 0x534
00000A10  E9DC00            jmp 0xaef
00000A13  3DEFFF            cmp ax,0xffef
00000A16  7522              jnz 0xa3a
00000A18  31C0              xor ax,ax
00000A1A  50                push ax
00000A1B  FF36436C          push word [0x6c43]
00000A1F  FF363F6C          push word [0x6c3f]
00000A23  A1416C            mov ax,[0x6c41]
00000A26  2B06135F          sub ax,[0x5f13]
00000A2A  8BD0              mov dx,ax
00000A2C  A16B6B            mov ax,[0x6b6b]
00000A2F  2BC2              sub ax,dx
00000A31  48                dec ax
00000A32  50                push ax
00000A33  0E                push cs
00000A34  E8FDFA            call 0x534
00000A37  E9B500            jmp 0xaef
00000A3A  3DE1FF            cmp ax,0xffe1
00000A3D  751A              jnz 0xa59
00000A3F  31C0              xor ax,ax
00000A41  50                push ax
00000A42  FF36436C          push word [0x6c43]
00000A46  31C0              xor ax,ax
00000A48  50                push ax
00000A49  A16B6B            mov ax,[0x6b6b]
00000A4C  2B06416C          sub ax,[0x6c41]
00000A50  48                dec ax
00000A51  50                push ax
00000A52  0E                push cs
00000A53  E8DEFA            call 0x534
00000A56  E99600            jmp 0xaef
00000A59  3DE0FF            cmp ax,0xffe0
00000A5C  7516              jnz 0xa74
00000A5E  31C0              xor ax,ax
00000A60  50                push ax
00000A61  FF36436C          push word [0x6c43]
00000A65  FF363F6C          push word [0x6c3f]
00000A69  A16B6B            mov ax,[0x6b6b]
00000A6C  48                dec ax
00000A6D  50                push ax
00000A6E  0E                push cs
00000A6F  E8C2FA            call 0x534
00000A72  EB7B              jmp 0xaef
00000A74  3DDFFF            cmp ax,0xffdf
00000A77  751B              jnz 0xa94
00000A79  31C0              xor ax,ax
00000A7B  50                push ax
00000A7C  FF36436C          push word [0x6c43]
00000A80  A1696B            mov ax,[0x6b69]
00000A83  48                dec ax
00000A84  50                push ax
00000A85  A16B6B            mov ax,[0x6b6b]
00000A88  2B06416C          sub ax,[0x6c41]
00000A8C  48                dec ax
00000A8D  50                push ax
00000A8E  0E                push cs
00000A8F  E8A2FA            call 0x534
00000A92  EB5B              jmp 0xaef
00000A94  3DDEFF            cmp ax,0xffde
00000A97  7514              jnz 0xaad
00000A99  31C0              xor ax,ax
00000A9B  50                push ax
00000A9C  FF36436C          push word [0x6c43]
00000AA0  FF363F6C          push word [0x6c3f]
00000AA4  31C0              xor ax,ax
00000AA6  50                push ax
00000AA7  0E                push cs
00000AA8  E889FA            call 0x534
00000AAB  EB42              jmp 0xaef
00000AAD  3DE4FF            cmp ax,0xffe4
00000AB0  7C19              jl 0xacb
00000AB2  3DEEFF            cmp ax,0xffee
00000AB5  7F14              jg 0xacb
00000AB7  B8EEFF            mov ax,0xffee
00000ABA  2B4606            sub ax,[bp+0x6]
00000ABD  8BD0              mov dx,ax
00000ABF  B80100            mov ax,0x1
00000AC2  8BCA              mov cx,dx
00000AC4  D3E0              shl ax,cl
00000AC6  A3135F            mov [0x5f13],ax
00000AC9  EB24              jmp 0xaef
00000ACB  3DE3FF            cmp ax,0xffe3
00000ACE  7506              jnz 0xad6
00000AD0  FF06135F          inc word [0x5f13]
00000AD4  EB19              jmp 0xaef
00000AD6  3DE2FF            cmp ax,0xffe2
00000AD9  7514              jnz 0xaef
00000ADB  B80100            mov ax,0x1
00000ADE  50                push ax
00000ADF  A1135F            mov ax,[0x5f13]
00000AE2  48                dec ax
00000AE3  50                push ax
00000AE4  5B                pop bx
00000AE5  58                pop ax
00000AE6  39D8              cmp ax,bx
00000AE8  7D02              jnl 0xaec
00000AEA  89D8              mov ax,bx
00000AEC  A3135F            mov [0x5f13],ax
00000AEF  89EC              mov sp,bp
00000AF1  5D                pop bp
00000AF2  C20400            ret word 0x4
00000AF5  55                push bp
00000AF6  89E5              mov bp,sp
00000AF8  83EC0E            sub sp,0xe
00000AFB  C646F407          mov byte [bp-0xc],0x7
00000AFF  C4063F6C          les ax,word [0x6c3f]
00000B03  8CC2              mov dx,es
00000B05  8946F6            mov [bp-0xa],ax
00000B08  8956F8            mov [bp-0x8],dx
00000B0B  803E155F00        cmp byte [0x5f15],0x0
00000B10  7425              jz 0xb37
00000B12  8A4604            mov al,[bp+0x4]
00000B15  30E4              xor ah,ah
00000B17  8946FA            mov [bp-0x6],ax
00000B1A  8D7EF2            lea di,[bp-0xe]
00000B1D  16                push ss
00000B1E  57                push di
00000B1F  E85AF8            call 0x37c
00000B22  C606155F00        mov byte [0x5f15],0x0
00000B27  C606165F00        mov byte [0x5f16],0x0
00000B2C  31C0              xor ax,ax
00000B2E  A31B5F            mov [0x5f1b],ax
00000B31  A31D5F            mov [0x5f1d],ax
00000B34  E91701            jmp 0xc4e
00000B37  A11B5F            mov ax,[0x5f1b]
00000B3A  0B061D5F          or ax,[0x5f1d]
00000B3E  7512              jnz 0xb52
00000B40  C406175F          les ax,word [0x5f17]
00000B44  8CC2              mov dx,es
00000B46  A31B5F            mov [0x5f1b],ax
00000B49  89161D5F          mov [0x5f1d],dx
00000B4D  C606165F00        mov byte [0x5f16],0x0
00000B52  C4061B5F          les ax,word [0x5f1b]
00000B56  8CC2              mov dx,es
00000B58  8946FC            mov [bp-0x4],ax
00000B5B  8956FE            mov [bp-0x2],dx
00000B5E  803E165F00        cmp byte [0x5f16],0x0
00000B63  7E30              jng 0xb95
00000B65  807E0400          cmp byte [bp+0x4],0x0
00000B69  7213              jc 0xb7e
00000B6B  807E041D          cmp byte [bp+0x4],0x1d
00000B6F  770D              ja 0xb7e
00000B71  8A4604            mov al,[bp+0x4]
00000B74  30E4              xor ah,ah
00000B76  054000            add ax,0x40
00000B79  884604            mov [bp+0x4],al
00000B7C  EB17              jmp 0xb95
00000B7E  807E0461          cmp byte [bp+0x4],0x61
00000B82  7211              jc 0xb95
00000B84  807E047D          cmp byte [bp+0x4],0x7d
00000B88  770B              ja 0xb95
00000B8A  8A4604            mov al,[bp+0x4]
00000B8D  30E4              xor ah,ah
00000B8F  2D2000            sub ax,0x20
00000B92  884604            mov [bp+0x4],al
00000B95  8B46FC            mov ax,[bp-0x4]
00000B98  0B46FE            or ax,[bp-0x2]
00000B9B  7503              jnz 0xba0
00000B9D  E98A00            jmp 0xc2a
00000BA0  C47EFC            les di,word [bp-0x4]
00000BA3  268A4501          mov al,[es:di+0x1]
00000BA7  3A4604            cmp al,[bp+0x4]
00000BAA  756C              jnz 0xc18
00000BAC  C47EFC            les di,word [bp-0x4]
00000BAF  268A05            mov al,[es:di]
00000BB2  2206125F          and al,[0x5f12]
00000BB6  C47EFC            les di,word [bp-0x4]
00000BB9  263A05            cmp al,[es:di]
00000BBC  755A              jnz 0xc18
00000BBE  C47EFC            les di,word [bp-0x4]
00000BC1  26837D02FF        cmp word [es:di+0x2],0xffffffffffffffff
00000BC6  7516              jnz 0xbde
00000BC8  C47EFC            les di,word [bp-0x4]
00000BCB  26C44504          les ax,word [es:di+0x4]
00000BCF  8CC2              mov dx,es
00000BD1  A31B5F            mov [0x5f1b],ax
00000BD4  89161D5F          mov [0x5f1d],dx
00000BD8  FE06165F          inc byte [0x5f16]
00000BDC  EB36              jmp 0xc14
00000BDE  C47EFC            les di,word [bp-0x4]
00000BE1  26837D0200        cmp word [es:di+0x2],0x0
00000BE6  7D0D              jnl 0xbf5
00000BE8  C47EFC            les di,word [bp-0x4]
00000BEB  26FF7502          push word [es:di+0x2]
00000BEF  55                push bp
00000BF0  E837FD            call 0x92a
00000BF3  EB12              jmp 0xc07
00000BF5  C47EFC            les di,word [bp-0x4]
00000BF8  268B4502          mov ax,[es:di+0x2]
00000BFC  8946FA            mov [bp-0x6],ax
00000BFF  8D7EF2            lea di,[bp-0xe]
00000C02  16                push ss
00000C03  57                push di
00000C04  E875F7            call 0x37c
00000C07  31C0              xor ax,ax
00000C09  A31B5F            mov [0x5f1b],ax
00000C0C  A31D5F            mov [0x5f1d],ax
00000C0F  C606165F00        mov byte [0x5f16],0x0
00000C14  EB38              jmp 0xc4e
00000C16  EB0F              jmp 0xc27
00000C18  C47EFC            les di,word [bp-0x4]
00000C1B  26C44508          les ax,word [es:di+0x8]
00000C1F  8CC2              mov dx,es
00000C21  8946FC            mov [bp-0x4],ax
00000C24  8956FE            mov [bp-0x2],dx
00000C27  E96BFF            jmp 0xb95
00000C2A  803E165F00        cmp byte [0x5f16],0x0
00000C2F  7510              jnz 0xc41
00000C31  8A4604            mov al,[bp+0x4]
00000C34  30E4              xor ah,ah
00000C36  8946FA            mov [bp-0x6],ax
00000C39  8D7EF2            lea di,[bp-0xe]
00000C3C  16                push ss
00000C3D  57                push di
00000C3E  E83BF7            call 0x37c
00000C41  31C0              xor ax,ax
00000C43  A31B5F            mov [0x5f1b],ax
00000C46  A31D5F            mov [0x5f1d],ax
00000C49  C606165F00        mov byte [0x5f16],0x0
00000C4E  89EC              mov sp,bp
00000C50  5D                pop bp
00000C51  C20200            ret word 0x2
00000C54  55                push bp
00000C55  89E5              mov bp,sp
00000C57  83EC08            sub sp,0x8
00000C5A  C47E06            les di,word [bp+0x6]
00000C5D  26C405            les ax,word [es:di]
00000C60  8CC2              mov dx,es
00000C62  8946F8            mov [bp-0x8],ax
00000C65  8956FA            mov [bp-0x6],dx
00000C68  8B46F8            mov ax,[bp-0x8]
00000C6B  0B46FA            or ax,[bp-0x6]
00000C6E  7427              jz 0xc97
00000C70  8B460A            mov ax,[bp+0xa]
00000C73  8B7E04            mov di,[bp+0x4]
00000C76  03F8              add di,ax
00000C78  368A8500FF        mov al,[ss:di-0x100]
00000C7D  C47EF8            les di,word [bp-0x8]
00000C80  263A4501          cmp al,[es:di+0x1]
00000C84  7411              jz 0xc97
00000C86  C47EF8            les di,word [bp-0x8]
00000C89  26C44508          les ax,word [es:di+0x8]
00000C8D  8CC2              mov dx,es
00000C8F  8946F8            mov [bp-0x8],ax
00000C92  8956FA            mov [bp-0x6],dx
00000C95  EBD1              jmp 0xc68
00000C97  8B46F8            mov ax,[bp-0x8]
00000C9A  0B46FA            or ax,[bp-0x6]
00000C9D  7561              jnz 0xd00
00000C9F  8D7EF8            lea di,[bp-0x8]
00000CA2  16                push ss
00000CA3  57                push di
00000CA4  B80C00            mov ax,0xc
00000CA7  50                push ax
00000CA8  9A8E03561A        call word 0x1a56:word 0x38e
00000CAD  C47EF8            les di,word [bp-0x8]
00000CB0  26C60500          mov byte [es:di],0x0
00000CB4  8B460A            mov ax,[bp+0xa]
00000CB7  8B7E04            mov di,[bp+0x4]
00000CBA  03F8              add di,ax
00000CBC  368A8500FF        mov al,[ss:di-0x100]
00000CC1  C47EF8            les di,word [bp-0x8]
00000CC4  26884501          mov [es:di+0x1],al
00000CC8  C47EF8            les di,word [bp-0x8]
00000CCB  26C74502FFFF      mov word [es:di+0x2],0xffff
00000CD1  C47EF8            les di,word [bp-0x8]
00000CD4  31C0              xor ax,ax
00000CD6  26894504          mov [es:di+0x4],ax
00000CDA  26894506          mov [es:di+0x6],ax
00000CDE  C47E06            les di,word [bp+0x6]
00000CE1  26C405            les ax,word [es:di]
00000CE4  8CC2              mov dx,es
00000CE6  C47EF8            les di,word [bp-0x8]
00000CE9  26894508          mov [es:di+0x8],ax
00000CED  2689550A          mov [es:di+0xa],dx
00000CF1  C446F8            les ax,word [bp-0x8]
00000CF4  8CC2              mov dx,es
00000CF6  C47E06            les di,word [bp+0x6]
00000CF9  268905            mov [es:di],ax
00000CFC  26895502          mov [es:di+0x2],dx
00000D00  8B7E04            mov di,[bp+0x4]
00000D03  368A8500FF        mov al,[ss:di-0x100]
00000D08  30E4              xor ah,ah
00000D0A  3B460A            cmp ax,[bp+0xa]
00000D0D  7403              jz 0xd12
00000D0F  E9FA00            jmp 0xe0c
00000D12  C47EF8            les di,word [bp-0x8]
00000D15  268A05            mov al,[es:di]
00000D18  8B7E04            mov di,[bp+0x4]
00000D1B  363A450C          cmp al,[ss:di+0xc]
00000D1F  761E              jna 0xd3f
00000D21  C47EF8            les di,word [bp-0x8]
00000D24  268B4508          mov ax,[es:di+0x8]
00000D28  260B450A          or ax,[es:di+0xa]
00000D2C  7411              jz 0xd3f
00000D2E  C47EF8            les di,word [bp-0x8]
00000D31  26C44508          les ax,word [es:di+0x8]
00000D35  8CC2              mov dx,es
00000D37  8946F8            mov [bp-0x8],ax
00000D3A  8956FA            mov [bp-0x6],dx
00000D3D  EBD3              jmp 0xd12
00000D3F  C47EF8            les di,word [bp-0x8]
00000D42  268A05            mov al,[es:di]
00000D45  8B7E04            mov di,[bp+0x4]
00000D48  363A450C          cmp al,[ss:di+0xc]
00000D4C  7537              jnz 0xd85
00000D4E  C47EF8            les di,word [bp-0x8]
00000D51  26837D02FF        cmp word [es:di+0x2],0xffffffffffffffff
00000D56  7410              jz 0xd68
00000D58  8B7E04            mov di,[bp+0x4]
00000D5B  36FF750A          push word [ss:di+0xa]
00000D5F  B80100            mov ax,0x1
00000D62  50                push ax
00000D63  E89AF2            call 0x0
00000D66  EB1B              jmp 0xd83
00000D68  C47EF8            les di,word [bp-0x8]
00000D6B  268B4504          mov ax,[es:di+0x4]
00000D6F  260B4506          or ax,[es:di+0x6]
00000D73  740E              jz 0xd83
00000D75  8B7E04            mov di,[bp+0x4]
00000D78  36FF750A          push word [ss:di+0xa]
00000D7C  B80200            mov ax,0x2
00000D7F  50                push ax
00000D80  E87DF2            call 0x0
00000D83  EB6A              jmp 0xdef
00000D85  8D7EFC            lea di,[bp-0x4]
00000D88  16                push ss
00000D89  57                push di
00000D8A  B80C00            mov ax,0xc
00000D8D  50                push ax
00000D8E  9A8E03561A        call word 0x1a56:word 0x38e
00000D93  C47EF8            les di,word [bp-0x8]
00000D96  06                push es
00000D97  57                push di
00000D98  C47EFC            les di,word [bp-0x4]
00000D9B  06                push es
00000D9C  57                push di
00000D9D  B80C00            mov ax,0xc
00000DA0  50                push ax
00000DA1  9AC002561A        call word 0x1a56:word 0x2c0
00000DA6  C47EF8            les di,word [bp-0x8]
00000DA9  268A05            mov al,[es:di]
00000DAC  8B7E04            mov di,[bp+0x4]
00000DAF  363A450C          cmp al,[ss:di+0xc]
00000DB3  7312              jnc 0xdc7
00000DB5  C446FC            les ax,word [bp-0x4]
00000DB8  8CC2              mov dx,es
00000DBA  C47EF8            les di,word [bp-0x8]
00000DBD  26894508          mov [es:di+0x8],ax
00000DC1  2689550A          mov [es:di+0xa],dx
00000DC5  EB1B              jmp 0xde2
00000DC7  C446FC            les ax,word [bp-0x4]
00000DCA  8CC2              mov dx,es
00000DCC  C47EF8            les di,word [bp-0x8]
00000DCF  26894508          mov [es:di+0x8],ax
00000DD3  2689550A          mov [es:di+0xa],dx
00000DD7  C446FC            les ax,word [bp-0x4]
00000DDA  8CC2              mov dx,es
00000DDC  8946F8            mov [bp-0x8],ax
00000DDF  8956FA            mov [bp-0x6],dx
00000DE2  C47EF8            les di,word [bp-0x8]
00000DE5  31C0              xor ax,ax
00000DE7  26894504          mov [es:di+0x4],ax
00000DEB  26894506          mov [es:di+0x6],ax
00000DEF  8B7E04            mov di,[bp+0x4]
00000DF2  368B450A          mov ax,[ss:di+0xa]
00000DF6  C47EF8            les di,word [bp-0x8]
00000DF9  26894502          mov [es:di+0x2],ax
00000DFD  8B7E04            mov di,[bp+0x4]
00000E00  368A450C          mov al,[ss:di+0xc]
00000E04  C47EF8            les di,word [bp-0x8]
00000E07  268805            mov [es:di],al
00000E0A  EB2C              jmp 0xe38
00000E0C  C47EF8            les di,word [bp-0x8]
00000E0F  26837D02FF        cmp word [es:di+0x2],0xffffffffffffffff
00000E14  740E              jz 0xe24
00000E16  8B7E04            mov di,[bp+0x4]
00000E19  36FF750A          push word [ss:di+0xa]
00000E1D  B80200            mov ax,0x2
00000E20  50                push ax
00000E21  E8DCF1            call 0x0
00000E24  8B460A            mov ax,[bp+0xa]
00000E27  40                inc ax
00000E28  50                push ax
00000E29  C47EF8            les di,word [bp-0x8]
00000E2C  81C70400          add di,0x4
00000E30  06                push es
00000E31  57                push di
00000E32  FF7604            push word [bp+0x4]
00000E35  E81CFE            call 0xc54
00000E38  89EC              mov sp,bp
00000E3A  5D                pop bp
00000E3B  C20800            ret word 0x8
00000E3E  55                push bp
00000E3F  89E5              mov bp,sp
00000E41  81EC0001          sub sp,0x100
00000E45  C47E06            les di,word [bp+0x6]
00000E48  06                push es
00000E49  57                push di
00000E4A  8DBE00FF          lea di,[bp-0x100]
00000E4E  16                push ss
00000E4F  57                push di
00000E50  B8FF00            mov ax,0xff
00000E53  50                push ax
00000E54  9AAD06561A        call word 0x1a56:word 0x6ad
00000E59  80BE00FF00        cmp byte [bp-0x100],0x0
00000E5E  760D              jna 0xe6d
00000E60  B80100            mov ax,0x1
00000E63  50                push ax
00000E64  BF175F            mov di,0x5f17
00000E67  1E                push ds
00000E68  57                push di
00000E69  55                push bp
00000E6A  E8E7FD            call 0xc54
00000E6D  89EC              mov sp,bp
00000E6F  5D                pop bp
00000E70  CA0800            retf word 0x8
00000E73  55                push bp
00000E74  89E5              mov bp,sp
00000E76  83EC02            sub sp,0x2
00000E79  803E1F5F00        cmp byte [0x5f1f],0x0
00000E7E  7402              jz 0xe82
00000E80  EB2A              jmp 0xeac
00000E82  C6061F5F01        mov byte [0x5f1f],0x1
00000E87  B406              mov ah,0x6
00000E89  B2FF              mov dl,0xff
00000E8B  CD21              int byte 0x21
00000E8D  9F                lahf
00000E8E  B106              mov cl,0x6
00000E90  D2EC              shr ah,cl
00000E92  80E401            and ah,0x1
00000E95  8946FE            mov [bp-0x2],ax
00000E98  807EFF00          cmp byte [bp-0x1],0x0
00000E9C  7509              jnz 0xea7
00000E9E  8A46FE            mov al,[bp-0x2]
00000EA1  50                push ax
00000EA2  E850FC            call 0xaf5
00000EA5  EBE0              jmp 0xe87
00000EA7  C6061F5F00        mov byte [0x5f1f],0x0
00000EAC  89EC              mov sp,bp
00000EAE  5D                pop bp
00000EAF  CA0400            retf word 0x4
00000EB2  55                push bp
00000EB3  89E5              mov bp,sp
00000EB5  83EC0C            sub sp,0xc
00000EB8  803E205F00        cmp byte [0x5f20],0x0
00000EBD  7404              jz 0xec3
00000EBF  0E                push cs
00000EC0  E845F3            call 0x208
00000EC3  C746FE0001        mov word [bp-0x2],0x100
00000EC8  0E                push cs
00000EC9  E8E6F3            call 0x2b2
00000ECC  09C0              or ax,ax
00000ECE  761F              jna 0xeef
00000ED0  8D7EF4            lea di,[bp-0xc]
00000ED3  16                push ss
00000ED4  57                push di
00000ED5  0E                push cs
00000ED6  E80AF4            call 0x2e3
00000ED9  807EF607          cmp byte [bp-0xa],0x7
00000EDD  7509              jnz 0xee8
00000EDF  8B46FC            mov ax,[bp-0x4]
00000EE2  25FF00            and ax,0xff
00000EE5  8946FE            mov [bp-0x2],ax
00000EE8  C606205F00        mov byte [0x5f20],0x0
00000EED  EB05              jmp 0xef4
00000EEF  C606205F01        mov byte [0x5f20],0x1
00000EF4  8B46FE            mov ax,[bp-0x2]
00000EF7  89EC              mov sp,bp
00000EF9  5D                pop bp
00000EFA  CB                retf
00000EFB  55                push bp
00000EFC  89E5              mov bp,sp
00000EFE  81EC0502          sub sp,0x205
00000F02  B80301            mov ax,0x103
00000F05  50                push ax
00000F06  C47E06            les di,word [bp+0x6]
00000F09  268A85D208        mov al,[es:di+0x8d2]
00000F0E  30E4              xor ah,ah
00000F10  50                push ax
00000F11  5B                pop bx
00000F12  58                pop ax
00000F13  39D8              cmp ax,bx
00000F15  7802              js 0xf19
00000F17  89D8              mov ax,bx
00000F19  8986FBFE          mov [bp-0x105],ax
00000F1D  C47E06            les di,word [bp+0x6]
00000F20  06                push es
00000F21  57                push di
00000F22  8D86FDFE          lea ax,[bp-0x103]
00000F26  8CD2              mov dx,ss
00000F28  52                push dx
00000F29  50                push ax
00000F2A  8B86FBFE          mov ax,[bp-0x105]
00000F2E  99                cwd
00000F2F  52                push dx
00000F30  50                push ax
00000F31  9A0D0C9813        call word 0x1398:word 0xc0d
00000F36  8DBE00FF          lea di,[bp-0x100]
00000F3A  16                push ss
00000F3B  57                push di
00000F3C  8DBEFCFD          lea di,[bp-0x204]
00000F40  16                push ss
00000F41  57                push di
00000F42  8B86FBFE          mov ax,[bp-0x105]
00000F46  2D0300            sub ax,0x3
00000F49  50                push ax
00000F4A  9A641B561A        call word 0x1a56:word 0x1b64
00000F4F  8B86FBFE          mov ax,[bp-0x105]
00000F53  2D0300            sub ax,0x3
00000F56  8886FBFD          mov [bp-0x205],al
00000F5A  8A86FDFE          mov al,[bp-0x103]
00000F5E  50                push ax
00000F5F  FFB6FEFE          push word [bp-0x102]
00000F63  58                pop ax
00000F64  86E0              xchg ah,al
00000F66  50                push ax
00000F67  8DBEFBFD          lea di,[bp-0x205]
00000F6B  16                push ss
00000F6C  57                push di
00000F6D  0E                push cs
00000F6E  E8CDFE            call 0xe3e
00000F71  89EC              mov sp,bp
00000F73  5D                pop bp
00000F74  CA0400            retf word 0x4
00000F77  55                push bp
00000F78  89E5              mov bp,sp
00000F7A  83EC12            sub sp,0x12
00000F7D  C4063F6C          les ax,word [0x6c3f]
00000F81  8CC2              mov dx,es
00000F83  8946F6            mov [bp-0xa],ax
00000F86  8956F8            mov [bp-0x8],dx
00000F89  A0436C            mov al,[0x6c43]
00000F8C  8846F5            mov [bp-0xb],al
00000F8F  803E065B00        cmp byte [0x5b06],0x0
00000F94  7457              jz 0xfed
00000F96  C646F407          mov byte [bp-0xc],0x7
00000F9A  8A4604            mov al,[bp+0x4]
00000F9D  30E4              xor ah,ah
00000F9F  8BF8              mov di,ax
00000FA1  D1E7              shl di,1
00000FA3  D1E7              shl di,1
00000FA5  C485215F          les ax,word [di+0x5f21]
00000FA9  8CC2              mov dx,es
00000FAB  8946FC            mov [bp-0x4],ax
00000FAE  8956FE            mov [bp-0x2],dx
00000FB1  8B46FC            mov ax,[bp-0x4]
00000FB4  0B46FE            or ax,[bp-0x2]
00000FB7  7432              jz 0xfeb
00000FB9  C47EFC            les di,word [bp-0x4]
00000FBC  268A05            mov al,[es:di]
00000FBF  30E4              xor ah,ah
00000FC1  8946EE            mov [bp-0x12],ax
00000FC4  B80100            mov ax,0x1
00000FC7  3B46EE            cmp ax,[bp-0x12]
00000FCA  771F              ja 0xfeb
00000FCC  8946F0            mov [bp-0x10],ax
00000FCF  EB03              jmp 0xfd4
00000FD1  FF46F0            inc word [bp-0x10]
00000FD4  8B46F0            mov ax,[bp-0x10]
00000FD7  C47EFC            les di,word [bp-0x4]
00000FDA  03F8              add di,ax
00000FDC  268A05            mov al,[es:di]
00000FDF  50                push ax
00000FE0  E812FB            call 0xaf5
00000FE3  8B46F0            mov ax,[bp-0x10]
00000FE6  3B46EE            cmp ax,[bp-0x12]
00000FE9  75E6              jnz 0xfd1
00000FEB  EB14              jmp 0x1001
00000FED  C646F408          mov byte [bp-0xc],0x8
00000FF1  8A4604            mov al,[bp+0x4]
00000FF4  30E4              xor ah,ah
00000FF6  8946FA            mov [bp-0x6],ax
00000FF9  8D7EF2            lea di,[bp-0xe]
00000FFC  16                push ss
00000FFD  57                push di
00000FFE  E87BF3            call 0x37c
00001001  89EC              mov sp,bp
00001003  5D                pop bp
00001004  C20200            ret word 0x2
00001007  55                push bp
00001008  89E5              mov bp,sp
0000100A  83EC02            sub sp,0x2
0000100D  C47E06            les di,word [bp+0x6]
00001010  268A05            mov al,[es:di]
00001013  30E4              xor ah,ah
00001015  50                push ax
00001016  5A                pop dx
00001017  B403              mov ah,0x3
00001019  CD14              int byte 0x14
0000101B  8946FE            mov [bp-0x2],ax
0000101E  8B46FE            mov ax,[bp-0x2]
00001021  250001            and ax,0x100
00001024  09C0              or ax,ax
00001026  7421              jz 0x1049
00001028  C47E06            les di,word [bp+0x6]
0000102B  268A05            mov al,[es:di]
0000102E  30E4              xor ah,ah
00001030  50                push ax
00001031  5A                pop dx
00001032  B402              mov ah,0x2
00001034  CD14              int byte 0x14
00001036  8946FE            mov [bp-0x2],ax
00001039  8A46FF            mov al,[bp-0x1]
0000103C  2480              and al,0x80
0000103E  08C0              or al,al
00001040  7507              jnz 0x1049
00001042  8A46FE            mov al,[bp-0x2]
00001045  50                push ax
00001046  E82EFF            call 0xf77
00001049  89EC              mov sp,bp
0000104B  5D                pop bp
0000104C  CA0400            retf word 0x4
0000104F  55                push bp
00001050  89E5              mov bp,sp
00001052  BA1003            mov dx,0x310
00001055  EC                in al,dx
00001056  2401              and al,0x1
00001058  08C0              or al,al
0000105A  7408              jz 0x1064
0000105C  BA1103            mov dx,0x311
0000105F  EC                in al,dx
00001060  50                push ax
00001061  E813FF            call 0xf77
00001064  89EC              mov sp,bp
00001066  5D                pop bp
00001067  CA0400            retf word 0x4
0000106A  55                push bp
0000106B  89E5              mov bp,sp
0000106D  83EC08            sub sp,0x8
00001070  8D7EFC            lea di,[bp-0x4]
00001073  16                push ss
00001074  57                push di
00001075  B80100            mov ax,0x1
00001078  31D2              xor dx,dx
0000107A  52                push dx
0000107B  50                push ax
0000107C  9A4F03C317        call word 0x17c3:word 0x34f
00001081  C47E06            les di,word [bp+0x6]
00001084  06                push es
00001085  57                push di
00001086  FF76FE            push word [bp-0x2]
00001089  FF76FC            push word [bp-0x4]
0000108C  B80100            mov ax,0x1
0000108F  31D2              xor dx,dx
00001091  52                push dx
00001092  50                push ax
00001093  9A0D0C9813        call word 0x1398:word 0xc0d
00001098  B80710            mov ax,0x1007
0000109B  8CCA              mov dx,cs
0000109D  52                push dx
0000109E  50                push ax
0000109F  FF76FE            push word [bp-0x2]
000010A2  FF76FC            push word [bp-0x4]
000010A5  E81FF1            call 0x1c7
000010A8  8946F8            mov [bp-0x8],ax
000010AB  8956FA            mov [bp-0x6],dx
000010AE  C606055B01        mov byte [0x5b05],0x1
000010B3  89EC              mov sp,bp
000010B5  5D                pop bp
000010B6  CA0400            retf word 0x4
000010B9  55                push bp
000010BA  89E5              mov bp,sp
000010BC  83EC04            sub sp,0x4
000010BF  B84F10            mov ax,0x104f
000010C2  8CCA              mov dx,cs
000010C4  52                push dx
000010C5  50                push ax
000010C6  31C0              xor ax,ax
000010C8  31D2              xor dx,dx
000010CA  52                push dx
000010CB  50                push ax
000010CC  E8F8F0            call 0x1c7
000010CF  8946FC            mov [bp-0x4],ax
000010D2  8956FE            mov [bp-0x2],dx
000010D5  C606055B01        mov byte [0x5b05],0x1
000010DA  89EC              mov sp,bp
000010DC  5D                pop bp
000010DD  CA0400            retf word 0x4
000010E0  43                inc bx
000010E1  43                inc bx
000010E2  50                push ax
000010E3  54                push sp
000010E4  53                push bx
000010E5  54                push sp
000010E6  52                push dx
000010E7  47                inc di
000010E8  4B                dec bx
000010E9  45                inc bp
000010EA  59                pop cx
000010EB  53                push bx
000010EC  55                push bp
000010ED  89E5              mov bp,sp
000010EF  83EC18            sub sp,0x18
000010F2  C47E06            les di,word [bp+0x6]
000010F5  06                push es
000010F6  57                push di
000010F7  2EFF36E210        push word [cs:0x10e2]
000010FC  2EFF36E010        push word [cs:0x10e0]
00001101  2EFF36E610        push word [cs:0x10e6]
00001106  2EFF36E410        push word [cs:0x10e4]
0000110B  8D7EF4            lea di,[bp-0xc]
0000110E  16                push ss
0000110F  57                push di
00001110  8D7EEC            lea di,[bp-0x14]
00001113  16                push ss
00001114  57                push di
00001115  9A46059813        call word 0x1398:word 0x546
0000111A  08C0              or al,al
0000111C  7503              jnz 0x1121
0000111E  E9A400            jmp 0x11c5
00001121  C47E06            les di,word [bp+0x6]
00001124  06                push es
00001125  57                push di
00001126  2EFF36E210        push word [cs:0x10e2]
0000112B  2EFF36E010        push word [cs:0x10e0]
00001130  2EFF36EA10        push word [cs:0x10ea]
00001135  2EFF36E810        push word [cs:0x10e8]
0000113A  8D7EF8            lea di,[bp-0x8]
0000113D  16                push ss
0000113E  57                push di
0000113F  8D7EF0            lea di,[bp-0x10]
00001142  16                push ss
00001143  57                push di
00001144  9A46059813        call word 0x1398:word 0x546
00001149  08C0              or al,al
0000114B  7478              jz 0x11c5
0000114D  8D7EFC            lea di,[bp-0x4]
00001150  16                push ss
00001151  57                push di
00001152  8A46EC            mov al,[bp-0x14]
00001155  FEC0              inc al
00001157  30E4              xor ah,ah
00001159  31D2              xor dx,dx
0000115B  52                push dx
0000115C  50                push ax
0000115D  9A4F03C317        call word 0x17c3:word 0x34f
00001162  C47EF4            les di,word [bp-0xc]
00001165  06                push es
00001166  57                push di
00001167  C47EFC            les di,word [bp-0x4]
0000116A  81C70100          add di,0x1
0000116E  06                push es
0000116F  57                push di
00001170  8A46EC            mov al,[bp-0x14]
00001173  30E4              xor ah,ah
00001175  50                push ax
00001176  9A641B561A        call word 0x1a56:word 0x1b64
0000117B  8A46EC            mov al,[bp-0x14]
0000117E  C47EFC            les di,word [bp-0x4]
00001181  268805            mov [es:di],al
00001184  8A46F0            mov al,[bp-0x10]
00001187  FEC8              dec al
00001189  30E4              xor ah,ah
0000118B  8946E8            mov [bp-0x18],ax
0000118E  31C0              xor ax,ax
00001190  3B46E8            cmp ax,[bp-0x18]
00001193  7730              ja 0x11c5
00001195  8946EA            mov [bp-0x16],ax
00001198  EB03              jmp 0x119d
0000119A  FF46EA            inc word [bp-0x16]
0000119D  C44EFC            les cx,word [bp-0x4]
000011A0  8CC3              mov bx,es
000011A2  8B46EA            mov ax,[bp-0x16]
000011A5  C47EF8            les di,word [bp-0x8]
000011A8  03F8              add di,ax
000011AA  268A05            mov al,[es:di]
000011AD  30E4              xor ah,ah
000011AF  8BF8              mov di,ax
000011B1  D1E7              shl di,1
000011B3  D1E7              shl di,1
000011B5  898D215F          mov [di+0x5f21],cx
000011B9  899D235F          mov [di+0x5f23],bx
000011BD  8B46EA            mov ax,[bp-0x16]
000011C0  3B46E8            cmp ax,[bp-0x18]
000011C3  75D5              jnz 0x119a
000011C5  89EC              mov sp,bp
000011C7  5D                pop bp
000011C8  CA0400            retf word 0x4
000011CB  55                push bp
000011CC  89E5              mov bp,sp
000011CE  C4062563          les ax,word [0x6325]
000011D2  8CC2              mov dx,es
000011D4  A34C6C            mov [0x6c4c],ax
000011D7  89164E6C          mov [0x6c4e],dx
000011DB  C4062163          les ax,word [0x6321]
000011DF  8CC2              mov dx,es
000011E1  A3328F            mov [0x8f32],ax
000011E4  8916348F          mov [0x8f34],dx
000011E8  803EFC5A00        cmp byte [0x5afc],0x0
000011ED  7415              jz 0x1204
000011EF  B80000            mov ax,0x0
000011F2  CD33              int byte 0x33
000011F4  B021              mov al,0x21
000011F6  50                push ax
000011F7  FF36F20A          push word [0xaf2]
000011FB  FF36F00A          push word [0xaf0]
000011FF  9A3101A712        call word 0x12a7:word 0x131
00001204  89EC              mov sp,bp
00001206  5D                pop bp
00001207  CB                retf
00001208  4D                dec bp
00001209  4F                dec di
0000120A  55                push bp
0000120B  53                push bx
0000120C  4D                dec bp
0000120D  53                push bx
0000120E  48                dec ax
0000120F  44                inc sp
00001210  43                inc bx
00001211  43                inc bx
00001212  50                push ax
00001213  54                push sp
00001214  53                push bx
00001215  45                inc bp
00001216  52                push dx
00001217  49                dec cx
00001218  42                inc dx
00001219  55                push bp
0000121A  53                push bx
0000121B  205354            and [bp+di+0x54],dl
0000121E  52                push dx
0000121F  47                inc di
00001220  4B                dec bx
00001221  45                inc bp
00001222  59                pop cx
00001223  53                push bx
00001224  4B                dec bx
00001225  42                inc dx
00001226  44                inc sp
00001227  204B45            and [bp+di+0x45],cl
0000122A  59                pop cx
0000122B  2089E583          and [bx+di-0x7c1b],cl
0000122F  EC                in al,dx
00001230  20B83D0B          and [bx+si+0xb3d],bh
00001234  8CDA              mov dx,ds
00001236  A3B48B            mov [0x8bb4],ax
00001239  8916B68B          mov [0x8bb6],dx
0000123D  BF075B            mov di,0x5b07
00001240  1E                push ds
00001241  57                push di
00001242  E8FBED            call 0x40
00001245  BF0B5B            mov di,0x5b0b
00001248  1E                push ds
00001249  57                push di
0000124A  E8F3ED            call 0x40
0000124D  8D7EE0            lea di,[bp-0x20]
00001250  16                push ss
00001251  57                push di
00001252  BFE40A            mov di,0xae4
00001255  1E                push ds
00001256  57                push di
00001257  B80200            mov ax,0x2
0000125A  50                push ax
0000125B  9A8508561A        call word 0x1a56:word 0x885
00001260  BF015F            mov di,0x5f01
00001263  1E                push ds
00001264  57                push di
00001265  B80200            mov ax,0x2
00001268  50                push ax
00001269  9A1309561A        call word 0x1a56:word 0x913
0000126E  31C0              xor ax,ax
00001270  A3155B            mov [0x5b15],ax
00001273  31C0              xor ax,ax
00001275  A3175B            mov [0x5b17],ax
00001278  BF135B            mov di,0x5b13
0000127B  1E                push ds
0000127C  57                push di
0000127D  9A2C00330E        call word 0xe33:word 0x2c
00001282  31C0              xor ax,ax
00001284  A3175F            mov [0x5f17],ax
00001287  A3195F            mov [0x5f19],ax
0000128A  31C0              xor ax,ax
0000128C  A31B5F            mov [0x5f1b],ax
0000128F  A31D5F            mov [0x5f1d],ax
00001292  C606165F00        mov byte [0x5f16],0x0
00001297  C606155F00        mov byte [0x5f15],0x0
0000129C  C606125F00        mov byte [0x5f12],0x0
000012A1  C706135F0800      mov word [0x5f13],0x8
000012A7  C6061F5F00        mov byte [0x5f1f],0x0
000012AC  C4064C6C          les ax,word [0x6c4c]
000012B0  8CC2              mov dx,es
000012B2  A32563            mov [0x6325],ax
000012B5  89162763          mov [0x6327],dx
000012B9  B8B20E            mov ax,0xeb2
000012BC  8CCA              mov dx,cs
000012BE  A34C6C            mov [0x6c4c],ax
000012C1  89164E6C          mov [0x6c4e],dx
000012C5  C606035F00        mov byte [0x5f03],0x0
000012CA  C6060D5F00        mov byte [0x5f0d],0x0
000012CF  31C0              xor ax,ax
000012D1  A3015B            mov [0x5b01],ax
000012D4  A3035B            mov [0x5b03],ax
000012D7  31C0              xor ax,ax
000012D9  A30E5F            mov [0x5f0e],ax
000012DC  A3105F            mov [0x5f10],ax
000012DF  31C0              xor ax,ax
000012E1  A3436C            mov [0x6c43],ax
000012E4  C7063F6CFFFF      mov word [0x6c3f],0xffff
000012EA  C706416CFFFF      mov word [0x6c41],0xffff
000012F0  B81A0B            mov ax,0xb1a
000012F3  A3290B            mov [0xb29],ax
000012F6  B81C0B            mov ax,0xb1c
000012F9  A3330B            mov [0xb33],ax
000012FC  8CD8              mov ax,ds
000012FE  A31A0B            mov [0xb1a],ax
00001301  B033              mov al,0x33
00001303  50                push ax
00001304  58                pop ax
00001305  B435              mov ah,0x35
00001307  CD21              int byte 0x21
00001309  8CC0              mov ax,es
0000130B  09D8              or ax,bx
0000130D  7402              jz 0x1311
0000130F  B001              mov al,0x1
00001311  A2FC5A            mov [0x5afc],al
00001314  803EFC5A00        cmp byte [0x5afc],0x0
00001319  7428              jz 0x1343
0000131B  BF2963            mov di,0x6329
0000131E  1E                push ds
0000131F  57                push di
00001320  BFFF5A            mov di,0x5aff
00001323  1E                push ds
00001324  57                push di
00001325  31C0              xor ax,ax
00001327  CD33              int byte 0x33
00001329  5F                pop di
0000132A  07                pop es
0000132B  26891D            mov [es:di],bx
0000132E  5F                pop di
0000132F  07                pop es
00001330  268905            mov [es:di],ax
00001333  833E2963FF        cmp word [0x6329],0xffffffffffffffff
00001338  7404              jz 0x133e
0000133A  B000              mov al,0x0
0000133C  EB02              jmp 0x1340
0000133E  B001              mov al,0x1
00001340  A2FC5A            mov [0x5afc],al
00001343  31C0              xor ax,ax
00001345  A3045F            mov [0x5f04],ax
00001348  A1696B            mov ax,[0x6b69]
0000134B  48                dec ax
0000134C  A3065F            mov [0x5f06],ax
0000134F  31C0              xor ax,ax
00001351  A3085F            mov [0x5f08],ax
00001354  A16B6B            mov ax,[0x6b6b]
00001357  48                dec ax
00001358  A30A5F            mov [0x5f0a],ax
0000135B  C6060C5F00        mov byte [0x5f0c],0x0
00001360  803EFC5A00        cmp byte [0x5afc],0x0
00001365  7503              jnz 0x136a
00001367  E9F800            jmp 0x1462
0000136A  B021              mov al,0x21
0000136C  50                push ax
0000136D  BFF00A            mov di,0xaf0
00001370  1E                push ds
00001371  57                push di
00001372  9A0201A712        call word 0x12a7:word 0x102
00001377  C606035F00        mov byte [0x5f03],0x0
0000137C  B8F00A            mov ax,0xaf0
0000137F  A3FC0A            mov [0xafc],ax
00001382  B8035F            mov ax,0x5f03
00001385  A3010B            mov [0xb01],ax
00001388  B8F00A            mov ax,0xaf0
0000138B  A3070B            mov [0xb07],ax
0000138E  B8035F            mov ax,0x5f03
00001391  A3110B            mov [0xb11],ax
00001394  B021              mov al,0x21
00001396  50                push ax
00001397  B8F40A            mov ax,0xaf4
0000139A  8CDA              mov dx,ds
0000139C  52                push dx
0000139D  50                push ax
0000139E  9A3101A712        call word 0x12a7:word 0x131
000013A3  B8FF00            mov ax,0xff
000013A6  50                push ax
000013A7  B83405            mov ax,0x534
000013AA  8CCA              mov dx,cs
000013AC  52                push dx
000013AD  50                push ax
000013AE  E899F0            call 0x44a
000013B1  BF3563            mov di,0x6335
000013B4  1E                push ds
000013B5  57                push di
000013B6  BF3763            mov di,0x6337
000013B9  1E                push ds
000013BA  57                push di
000013BB  BF3963            mov di,0x6339
000013BE  1E                push ds
000013BF  57                push di
000013C0  B80300            mov ax,0x3
000013C3  CD33              int byte 0x33
000013C5  5F                pop di
000013C6  07                pop es
000013C7  268915            mov [es:di],dx
000013CA  5F                pop di
000013CB  07                pop es
000013CC  26890D            mov [es:di],cx
000013CF  5F                pop di
000013D0  07                pop es
000013D1  26891D            mov [es:di],bx
000013D4  A16B6B            mov ax,[0x6b6b]
000013D7  2B063963          sub ax,[0x6339]
000013DB  48                dec ax
000013DC  A33963            mov [0x6339],ax
000013DF  31C0              xor ax,ax
000013E1  50                push ax
000013E2  FF36696B          push word [0x6b69]
000013E6  B80700            mov ax,0x7
000013E9  5A                pop dx
000013EA  59                pop cx
000013EB  CD33              int byte 0x33
000013ED  31C0              xor ax,ax
000013EF  50                push ax
000013F0  FF366B6B          push word [0x6b6b]
000013F4  B80800            mov ax,0x8
000013F7  5A                pop dx
000013F8  59                pop cx
000013F9  CD33              int byte 0x33
000013FB  A1696B            mov ax,[0x6b69]
000013FE  40                inc ax
000013FF  8BC8              mov cx,ax
00001401  B80014            mov ax,0x1400
00001404  99                cwd
00001405  F7F9              idiv cx
00001407  50                push ax
00001408  A16B6B            mov ax,[0x6b6b]
0000140B  40                inc ax
0000140C  8BC8              mov cx,ax
0000140E  B8800C            mov ax,0xc80
00001411  99                cwd
00001412  F7F9              idiv cx
00001414  50                push ax
00001415  B80F00            mov ax,0xf
00001418  5A                pop dx
00001419  59                pop cx
0000141A  CD33              int byte 0x33
0000141C  BFFE74            mov di,0x74fe
0000141F  1E                push ds
00001420  57                push di
00001421  2EFF360A12        push word [cs:0x120a]
00001426  2EFF360812        push word [cs:0x1208]
0000142B  31C0              xor ax,ax
0000142D  31D2              xor dx,dx
0000142F  52                push dx
00001430  50                push ax
00001431  31C0              xor ax,ax
00001433  31D2              xor dx,dx
00001435  52                push dx
00001436  50                push ax
00001437  9AC7089813        call word 0x1398:word 0x8c7
0000143C  BFFE74            mov di,0x74fe
0000143F  1E                push ds
00001440  57                push di
00001441  2EFF360E12        push word [cs:0x120e]
00001446  2EFF360C12        push word [cs:0x120c]
0000144B  B002              mov al,0x2
0000144D  50                push ax
0000144E  B8FB07            mov ax,0x7fb
00001451  8CCA              mov dx,cs
00001453  52                push dx
00001454  50                push ax
00001455  31C0              xor ax,ax
00001457  31D2              xor dx,dx
00001459  52                push dx
0000145A  50                push ax
0000145B  9A4D099813        call word 0x1398:word 0x94d
00001460  EB22              jmp 0x1484
00001462  31C0              xor ax,ax
00001464  A3FF5A            mov [0x5aff],ax
00001467  31C0              xor ax,ax
00001469  A33563            mov [0x6335],ax
0000146C  A1696B            mov ax,[0x6b69]
0000146F  99                cwd
00001470  B90200            mov cx,0x2
00001473  F7F9              idiv cx
00001475  A33763            mov [0x6337],ax
00001478  A16B6B            mov ax,[0x6b6b]
0000147B  99                cwd
0000147C  B90200            mov cx,0x2
0000147F  F7F9              idiv cx
00001481  A33963            mov [0x6339],ax
00001484  A00C5F            mov al,[0x5f0c]
00001487  98                cbw
00001488  8BF8              mov di,ax
0000148A  B103              mov cl,0x3
0000148C  D3E7              shl di,cl
0000148E  81C7EF6B          add di,0x6bef
00001492  1E                push ds
00001493  57                push di
00001494  9AFC16430E        call word 0xe43:word 0x16fc
00001499  B8730E            mov ax,0xe73
0000149C  8CCA              mov dx,cs
0000149E  52                push dx
0000149F  50                push ax
000014A0  31C0              xor ax,ax
000014A2  31D2              xor dx,dx
000014A4  52                push dx
000014A5  50                push ax
000014A6  E81EED            call 0x1c7
000014A9  A33B63            mov [0x633b],ax
000014AC  89163D63          mov [0x633d],dx
000014B0  C4062466          les ax,word [0x6624]
000014B4  8CC2              mov dx,es
000014B6  A30F5B            mov [0x5b0f],ax
000014B9  8916115B          mov [0x5b11],dx
000014BD  B80802            mov ax,0x208
000014C0  8CCA              mov dx,cs
000014C2  A32466            mov [0x6624],ax
000014C5  89162666          mov [0x6626],dx
000014C9  C606205F00        mov byte [0x5f20],0x0
000014CE  B8FF00            mov ax,0xff
000014D1  50                push ax
000014D2  FF363563          push word [0x6335]
000014D6  FF363763          push word [0x6337]
000014DA  A16B6B            mov ax,[0x6b6b]
000014DD  2B063963          sub ax,[0x6339]
000014E1  48                dec ax
000014E2  50                push ax
000014E3  0E                push cs
000014E4  E84DF0            call 0x534
000014E7  BF215F            mov di,0x5f21
000014EA  1E                push ds
000014EB  57                push di
000014EC  B80004            mov ax,0x400
000014EF  50                push ax
000014F0  B000              mov al,0x0
000014F2  50                push ax
000014F3  9A871B561A        call word 0x1a56:word 0x1b87
000014F8  C606065B01        mov byte [0x5b06],0x1
000014FD  C606055B00        mov byte [0x5b05],0x0
00001502  BFFE74            mov di,0x74fe
00001505  1E                push ds
00001506  57                push di
00001507  2EFF361212        push word [cs:0x1212]
0000150C  2EFF361012        push word [cs:0x1210]
00001511  31C0              xor ax,ax
00001513  31D2              xor dx,dx
00001515  52                push dx
00001516  50                push ax
00001517  31C0              xor ax,ax
00001519  31D2              xor dx,dx
0000151B  52                push dx
0000151C  50                push ax
0000151D  9AC7089813        call word 0x1398:word 0x8c7
00001522  BFFE74            mov di,0x74fe
00001525  1E                push ds
00001526  57                push di
00001527  2EFF361612        push word [cs:0x1216]
0000152C  2EFF361412        push word [cs:0x1214]
00001531  B002              mov al,0x2
00001533  50                push ax
00001534  B86A10            mov ax,0x106a
00001537  8CCA              mov dx,cs
00001539  52                push dx
0000153A  50                push ax
0000153B  31C0              xor ax,ax
0000153D  31D2              xor dx,dx
0000153F  52                push dx
00001540  50                push ax
00001541  9A4D099813        call word 0x1398:word 0x94d
00001546  BFFE74            mov di,0x74fe
00001549  1E                push ds
0000154A  57                push di
0000154B  2EFF361A12        push word [cs:0x121a]
00001550  2EFF361812        push word [cs:0x1218]
00001555  B002              mov al,0x2
00001557  50                push ax
00001558  B8B910            mov ax,0x10b9
0000155B  8CCA              mov dx,cs
0000155D  52                push dx
0000155E  50                push ax
0000155F  31C0              xor ax,ax
00001561  31D2              xor dx,dx
00001563  52                push dx
00001564  50                push ax
00001565  9A4D099813        call word 0x1398:word 0x94d
0000156A  BFE57D            mov di,0x7de5
0000156D  1E                push ds
0000156E  57                push di
0000156F  2EFF361212        push word [cs:0x1212]
00001574  2EFF361012        push word [cs:0x1210]
00001579  31C0              xor ax,ax
0000157B  31D2              xor dx,dx
0000157D  52                push dx
0000157E  50                push ax
0000157F  B8EC10            mov ax,0x10ec
00001582  8CCA              mov dx,cs
00001584  52                push dx
00001585  50                push ax
00001586  9AC7089813        call word 0x1398:word 0x8c7
0000158B  BFE57D            mov di,0x7de5
0000158E  1E                push ds
0000158F  57                push di
00001590  2EFF361E12        push word [cs:0x121e]
00001595  2EFF361C12        push word [cs:0x121c]
0000159A  B000              mov al,0x0
0000159C  50                push ax
0000159D  31C0              xor ax,ax
0000159F  31D2              xor dx,dx
000015A1  52                push dx
000015A2  50                push ax
000015A3  31C0              xor ax,ax
000015A5  31D2              xor dx,dx
000015A7  52                push dx
000015A8  50                push ax
000015A9  9A4D099813        call word 0x1398:word 0x94d
000015AE  BFE57D            mov di,0x7de5
000015B1  1E                push ds
000015B2  57                push di
000015B3  2EFF362212        push word [cs:0x1222]
000015B8  2EFF362012        push word [cs:0x1220]
000015BD  B000              mov al,0x0
000015BF  50                push ax
000015C0  31C0              xor ax,ax
000015C2  31D2              xor dx,dx
000015C4  52                push dx
000015C5  50                push ax
000015C6  31C0              xor ax,ax
000015C8  31D2              xor dx,dx
000015CA  52                push dx
000015CB  50                push ax
000015CC  9A4D099813        call word 0x1398:word 0x94d
000015D1  BFE57D            mov di,0x7de5
000015D4  1E                push ds
000015D5  57                push di
000015D6  2EFF362612        push word [cs:0x1226]
000015DB  2EFF362412        push word [cs:0x1224]
000015E0  31C0              xor ax,ax
000015E2  31D2              xor dx,dx
000015E4  52                push dx
000015E5  50                push ax
000015E6  31C0              xor ax,ax
000015E8  31D2              xor dx,dx
000015EA  52                push dx
000015EB  50                push ax
000015EC  9AC7089813        call word 0x1398:word 0x8c7
000015F1  BFE57D            mov di,0x7de5
000015F4  1E                push ds
000015F5  57                push di
000015F6  2EFF362A12        push word [cs:0x122a]
000015FB  2EFF362812        push word [cs:0x1228]
00001600  B002              mov al,0x2
00001602  50                push ax
00001603  B8FB0E            mov ax,0xefb
00001606  8CCA              mov dx,cs
00001608  52                push dx
00001609  50                push ax
0000160A  31C0              xor ax,ax
0000160C  31D2              xor dx,dx
0000160E  52                push dx
0000160F  50                push ax
00001610  9A4D099813        call word 0x1398:word 0x94d
00001615  C406328F          les ax,word [0x8f32]
00001619  8CC2              mov dx,es
0000161B  A32163            mov [0x6321],ax
0000161E  89162363          mov [0x6323],dx
00001622  B8CB11            mov ax,0x11cb
00001625  8CCA              mov dx,cs
00001627  A3328F            mov [0x8f32],ax
0000162A  8916348F          mov [0x8f34],dx
0000162E  89EC              mov sp,bp
00001630  CB                retf
00001631  0000              add [bx+si],al
00001633  0000              add [bx+si],al
00001635  0000              add [bx+si],al
00001637  0000              add [bx+si],al
00001639  0000              add [bx+si],al
0000163B  0000              add [bx+si],al
0000163D  0000              add [bx+si],al
0000163F  00                db 0x00
