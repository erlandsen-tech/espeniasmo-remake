00000000  55                push bp
00000001  89E5              mov bp,sp
00000003  BFFE74            mov di,0x74fe
00000006  1E                push ds
00000007  57                push di
00000008  9A6C139813        call word 0x1398:word 0x136c
0000000D  3C03              cmp al,0x3
0000000F  75F2              jnz 0x3
00000011  BFFE74            mov di,0x74fe
00000014  1E                push ds
00000015  57                push di
00000016  9A63089813        call word 0x1398:word 0x863
0000001B  BFE57D            mov di,0x7de5
0000001E  1E                push ds
0000001F  57                push di
00000020  9A6C139813        call word 0x1398:word 0x136c
00000025  3C03              cmp al,0x3
00000027  75F2              jnz 0x1b
00000029  BFE57D            mov di,0x7de5
0000002C  1E                push ds
0000002D  57                push di
0000002E  9A63089813        call word 0x1398:word 0x863
00000033  89EC              mov sp,bp
00000035  5D                pop bp
00000036  CB                retf
00000037  55                push bp
00000038  89E5              mov bp,sp
0000003A  81EC0601          sub sp,0x106
0000003E  B462              mov ah,0x62
00000040  CD21              int byte 0x21
00000042  8EC3              mov es,bx
00000044  268B1E2C00        mov bx,[es:0x2c]
00000049  899EFEFF          mov [bp-0x2],bx
0000004D  C786FCFF0000      mov word [bp-0x4],0x0
00000053  FF46FC            inc word [bp-0x4]
00000056  C47EFC            les di,word [bp-0x4]
00000059  26803D00          cmp byte [es:di],0x0
0000005D  75F4              jnz 0x53
0000005F  FF46FC            inc word [bp-0x4]
00000062  C47EFC            les di,word [bp-0x4]
00000065  26803D00          cmp byte [es:di],0x0
00000069  75E8              jnz 0x53
0000006B  8346FC03          add word [bp-0x4],0x3
0000006F  31C0              xor ax,ax
00000071  8946FA            mov [bp-0x6],ax
00000074  C47EFC            les di,word [bp-0x4]
00000077  26803D00          cmp byte [es:di],0x0
0000007B  7415              jz 0x92
0000007D  FF46FA            inc word [bp-0x6]
00000080  C47EFC            les di,word [bp-0x4]
00000083  268A05            mov al,[es:di]
00000086  8B7EFA            mov di,[bp-0x6]
00000089  8883FAFE          mov [bp+di-0x106],al
0000008D  FF46FC            inc word [bp-0x4]
00000090  EBE2              jmp 0x74
00000092  8A46FA            mov al,[bp-0x6]
00000095  8886FAFE          mov [bp-0x106],al
00000099  8DBEFAFE          lea di,[bp-0x106]
0000009D  16                push ss
0000009E  57                push di
0000009F  C47E04            les di,word [bp+0x4]
000000A2  06                push es
000000A3  57                push di
000000A4  B83F00            mov ax,0x3f
000000A7  50                push ax
000000A8  9AAD06561A        call word 0x1a56:word 0x6ad
000000AD  89EC              mov sp,bp
000000AF  5D                pop bp
000000B0  C3                ret
000000B1  012E5589          add [0x8955],bp
000000B5  E583              in ax,byte 0x83
000000B7  EC                in al,dx
000000B8  48                dec ax
000000B9  C47E04            les di,word [bp+0x4]
000000BC  06                push es
000000BD  57                push di
000000BE  8D7EBC            lea di,[bp-0x44]
000000C1  16                push ss
000000C2  57                push di
000000C3  B80300            mov ax,0x3
000000C6  50                push ax
000000C7  9AAD06561A        call word 0x1a56:word 0x6ad
000000CC  C47E08            les di,word [bp+0x8]
000000CF  06                push es
000000D0  57                push di
000000D1  8D7EC0            lea di,[bp-0x40]
000000D4  16                push ss
000000D5  57                push di
000000D6  B83F00            mov ax,0x3f
000000D9  50                push ax
000000DA  9AAD06561A        call word 0x1a56:word 0x6ad
000000DF  BFB100            mov di,0xb1
000000E2  0E                push cs
000000E3  57                push di
000000E4  8D7EC0            lea di,[bp-0x40]
000000E7  16                push ss
000000E8  57                push di
000000E9  9A4C07561A        call word 0x1a56:word 0x74c
000000EE  8946BA            mov [bp-0x46],ax
000000F1  837EBA00          cmp word [bp-0x46],0x0
000000F5  7511              jnz 0x108
000000F7  8A46C0            mov al,[bp-0x40]
000000FA  FEC0              inc al
000000FC  30E4              xor ah,ah
000000FE  8946BA            mov [bp-0x46],ax
00000101  8B7EBA            mov di,[bp-0x46]
00000104  C643C02E          mov byte [bp+di-0x40],0x2e
00000108  B80300            mov ax,0x3
0000010B  50                push ax
0000010C  8A46BC            mov al,[bp-0x44]
0000010F  30E4              xor ah,ah
00000111  50                push ax
00000112  5B                pop bx
00000113  58                pop ax
00000114  39D8              cmp ax,bx
00000116  7802              js 0x11a
00000118  89D8              mov ax,bx
0000011A  8946B8            mov [bp-0x48],ax
0000011D  8D7EBD            lea di,[bp-0x43]
00000120  16                push ss
00000121  57                push di
00000122  8B46BA            mov ax,[bp-0x46]
00000125  40                inc ax
00000126  8BF8              mov di,ax
00000128  8D7BC0            lea di,[bp+di-0x40]
0000012B  16                push ss
0000012C  57                push di
0000012D  FF76B8            push word [bp-0x48]
00000130  9A641B561A        call word 0x1a56:word 0x1b64
00000135  8B46B8            mov ax,[bp-0x48]
00000138  31D2              xor dx,dx
0000013A  8BC8              mov cx,ax
0000013C  8BDA              mov bx,dx
0000013E  8B46BA            mov ax,[bp-0x46]
00000141  99                cwd
00000142  03C1              add ax,cx
00000144  13D3              adc dx,bx
00000146  8846C0            mov [bp-0x40],al
00000149  8D7EC0            lea di,[bp-0x40]
0000014C  16                push ss
0000014D  57                push di
0000014E  C47E0C            les di,word [bp+0xc]
00000151  06                push es
00000152  57                push di
00000153  B83F00            mov ax,0x3f
00000156  50                push ax
00000157  9AAD06561A        call word 0x1a56:word 0x6ad
0000015C  89EC              mov sp,bp
0000015E  5D                pop bp
0000015F  C20800            ret word 0x8
00000162  55                push bp
00000163  89E5              mov bp,sp
00000165  83EC04            sub sp,0x4
00000168  8D7EFC            lea di,[bp-0x4]
0000016B  16                push ss
0000016C  57                push di
0000016D  B80900            mov ax,0x9
00000170  50                push ax
00000171  9A8E03561A        call word 0x1a56:word 0x38e
00000176  8A460A            mov al,[bp+0xa]
00000179  C47EFC            les di,word [bp-0x4]
0000017C  268805            mov [es:di],al
0000017F  C44606            les ax,word [bp+0x6]
00000182  8CC2              mov dx,es
00000184  C47EFC            les di,word [bp-0x4]
00000187  26894501          mov [es:di+0x1],ax
0000018B  26895503          mov [es:di+0x3],dx
0000018F  C47E0C            les di,word [bp+0xc]
00000192  26C405            les ax,word [es:di]
00000195  8CC2              mov dx,es
00000197  C47EFC            les di,word [bp-0x4]
0000019A  26894505          mov [es:di+0x5],ax
0000019E  26895507          mov [es:di+0x7],dx
000001A2  C446FC            les ax,word [bp-0x4]
000001A5  8CC2              mov dx,es
000001A7  C47E0C            les di,word [bp+0xc]
000001AA  268905            mov [es:di],ax
000001AD  26895502          mov [es:di+0x2],dx
000001B1  89EC              mov sp,bp
000001B3  5D                pop bp
000001B4  C20C00            ret word 0xc
000001B7  55                push bp
000001B8  89E5              mov bp,sp
000001BA  C47E0C            les di,word [bp+0xc]
000001BD  268B05            mov ax,[es:di]
000001C0  260B4502          or ax,[es:di+0x2]
000001C4  7515              jnz 0x1db
000001C6  C47E0C            les di,word [bp+0xc]
000001C9  06                push es
000001CA  57                push di
000001CB  8A460A            mov al,[bp+0xa]
000001CE  50                push ax
000001CF  FF7608            push word [bp+0x8]
000001D2  FF7606            push word [bp+0x6]
000001D5  55                push bp
000001D6  E889FF            call 0x162
000001D9  EB73              jmp 0x24e
000001DB  8A460A            mov al,[bp+0xa]
000001DE  C47E0C            les di,word [bp+0xc]
000001E1  26C43D            les di,word [es:di]
000001E4  263A05            cmp al,[es:di]
000001E7  7315              jnc 0x1fe
000001E9  C47E0C            les di,word [bp+0xc]
000001EC  06                push es
000001ED  57                push di
000001EE  8A460A            mov al,[bp+0xa]
000001F1  50                push ax
000001F2  FF7608            push word [bp+0x8]
000001F5  FF7606            push word [bp+0x6]
000001F8  55                push bp
000001F9  E866FF            call 0x162
000001FC  EB50              jmp 0x24e
000001FE  8A460A            mov al,[bp+0xa]
00000201  C47E0C            les di,word [bp+0xc]
00000204  26C43D            les di,word [es:di]
00000207  263A05            cmp al,[es:di]
0000020A  7526              jnz 0x232
0000020C  C47E0C            les di,word [bp+0xc]
0000020F  26C43D            les di,word [es:di]
00000212  81C70100          add di,0x1
00000216  06                push es
00000217  57                push di
00000218  9AB403C317        call word 0x17c3:word 0x3b4
0000021D  C44606            les ax,word [bp+0x6]
00000220  8CC2              mov dx,es
00000222  C47E0C            les di,word [bp+0xc]
00000225  26C43D            les di,word [es:di]
00000228  26894501          mov [es:di+0x1],ax
0000022C  26895503          mov [es:di+0x3],dx
00000230  EB1C              jmp 0x24e
00000232  C47E0C            les di,word [bp+0xc]
00000235  26C43D            les di,word [es:di]
00000238  81C70500          add di,0x5
0000023C  06                push es
0000023D  57                push di
0000023E  8A460A            mov al,[bp+0xa]
00000241  50                push ax
00000242  FF7608            push word [bp+0x8]
00000245  FF7606            push word [bp+0x6]
00000248  FF7604            push word [bp+0x4]
0000024B  E869FF            call 0x1b7
0000024E  89EC              mov sp,bp
00000250  5D                pop bp
00000251  C20C00            ret word 0xc
00000254  55                push bp
00000255  89E5              mov bp,sp
00000257  83EC6E            sub sp,0x6e
0000025A  B8FF00            mov ax,0xff
0000025D  50                push ax
0000025E  C47E06            les di,word [bp+0x6]
00000261  268A85D208        mov al,[es:di+0x8d2]
00000266  30E4              xor ah,ah
00000268  50                push ax
00000269  5B                pop bx
0000026A  58                pop ax
0000026B  39D8              cmp ax,bx
0000026D  7802              js 0x271
0000026F  89D8              mov ax,bx
00000271  99                cwd
00000272  894696            mov [bp-0x6a],ax
00000275  895698            mov [bp-0x68],dx
00000278  C47E06            les di,word [bp+0x6]
0000027B  06                push es
0000027C  57                push di
0000027D  8D469A            lea ax,[bp-0x66]
00000280  8CD2              mov dx,ss
00000282  52                push dx
00000283  50                push ax
00000284  FF7698            push word [bp-0x68]
00000287  FF7696            push word [bp-0x6a]
0000028A  9A0D0C9813        call word 0x1398:word 0xc0d
0000028F  8D7E92            lea di,[bp-0x6e]
00000292  16                push ss
00000293  57                push di
00000294  C44696            les ax,word [bp-0x6a]
00000297  8CC2              mov dx,es
00000299  2D0200            sub ax,0x2
0000029C  83DA00            sbb dx,0x0
0000029F  52                push dx
000002A0  50                push ax
000002A1  9A4F03C317        call word 0x17c3:word 0x34f
000002A6  8D7E9C            lea di,[bp-0x64]
000002A9  16                push ss
000002AA  57                push di
000002AB  C47E92            les di,word [bp-0x6e]
000002AE  06                push es
000002AF  57                push di
000002B0  C44696            les ax,word [bp-0x6a]
000002B3  8CC2              mov dx,es
000002B5  2D0200            sub ax,0x2
000002B8  83DA00            sbb dx,0x0
000002BB  50                push ax
000002BC  9A641B561A        call word 0x1a56:word 0x1b64
000002C1  8A469A            mov al,[bp-0x66]
000002C4  30E4              xor ah,ah
000002C6  8BF8              mov di,ax
000002C8  D1E7              shl di,1
000002CA  D1E7              shl di,1
000002CC  81C7CC86          add di,0x86cc
000002D0  1E                push ds
000002D1  57                push di
000002D2  8A469B            mov al,[bp-0x65]
000002D5  50                push ax
000002D6  FF7694            push word [bp-0x6c]
000002D9  FF7692            push word [bp-0x6e]
000002DC  55                push bp
000002DD  E8D7FE            call 0x1b7
000002E0  89EC              mov sp,bp
000002E2  5D                pop bp
000002E3  CA0400            retf word 0x4
000002E6  0B3C              or di,[si]
000002E8  7564              jnz 0x34e
000002EA  6566696E6572743E  imul ebp,[gs:bp+0x65],0x553e7472
         -55
000002F3  89E5              mov bp,sp
000002F5  83EC05            sub sp,0x5
000002F8  C646FF00          mov byte [bp-0x1],0x0
000002FC  BFE602            mov di,0x2e6
000002FF  0E                push cs
00000300  57                push di
00000301  C47E06            les di,word [bp+0x6]
00000304  06                push es
00000305  57                push di
00000306  B8FF00            mov ax,0xff
00000309  50                push ax
0000030A  9AAD06561A        call word 0x1a56:word 0x6ad
0000030F  807E0C63          cmp byte [bp+0xc],0x63
00000313  7603              jna 0x318
00000315  E98100            jmp 0x399
00000318  8A460C            mov al,[bp+0xc]
0000031B  30E4              xor ah,ah
0000031D  8BF8              mov di,ax
0000031F  D1E7              shl di,1
00000321  D1E7              shl di,1
00000323  C485CC86          les ax,word [di-0x7934]
00000327  8CC2              mov dx,es
00000329  8946FB            mov [bp-0x5],ax
0000032C  8956FD            mov [bp-0x3],dx
0000032F  8B46FB            mov ax,[bp-0x5]
00000332  0B46FD            or ax,[bp-0x3]
00000335  741E              jz 0x355
00000337  C47EFB            les di,word [bp-0x5]
0000033A  268A05            mov al,[es:di]
0000033D  30E4              xor ah,ah
0000033F  3B460A            cmp ax,[bp+0xa]
00000342  7411              jz 0x355
00000344  C47EFB            les di,word [bp-0x5]
00000347  26C44505          les ax,word [es:di+0x5]
0000034B  8CC2              mov dx,es
0000034D  8946FB            mov [bp-0x5],ax
00000350  8956FD            mov [bp-0x3],dx
00000353  EBDA              jmp 0x32f
00000355  8B46FB            mov ax,[bp-0x5]
00000358  0B46FD            or ax,[bp-0x3]
0000035B  7502              jnz 0x35f
0000035D  EB3A              jmp 0x399
0000035F  C47EFB            les di,word [bp-0x5]
00000362  26FF7503          push word [es:di+0x3]
00000366  26FF7501          push word [es:di+0x1]
0000036A  9A2204C317        call word 0x17c3:word 0x422
0000036F  C47E06            les di,word [bp+0x6]
00000372  268805            mov [es:di],al
00000375  C47EFB            les di,word [bp-0x5]
00000378  26C47D01          les di,word [es:di+0x1]
0000037C  06                push es
0000037D  57                push di
0000037E  C47E06            les di,word [bp+0x6]
00000381  81C70100          add di,0x1
00000385  06                push es
00000386  57                push di
00000387  C47E06            les di,word [bp+0x6]
0000038A  268A05            mov al,[es:di]
0000038D  30E4              xor ah,ah
0000038F  50                push ax
00000390  9A641B561A        call word 0x1a56:word 0x1b64
00000395  C646FF01          mov byte [bp-0x1],0x1
00000399  8A46FF            mov al,[bp-0x1]
0000039C  89EC              mov sp,bp
0000039E  5D                pop bp
0000039F  CA0800            retf word 0x8
000003A2  55                push bp
000003A3  89E5              mov bp,sp
000003A5  81EC0202          sub sp,0x202
000003A9  C47E0A            les di,word [bp+0xa]
000003AC  06                push es
000003AD  57                push di
000003AE  8DBE00FE          lea di,[bp-0x200]
000003B2  16                push ss
000003B3  57                push di
000003B4  B8FF00            mov ax,0xff
000003B7  50                push ax
000003B8  9AAD06561A        call word 0x1a56:word 0x6ad
000003BD  C47E0E            les di,word [bp+0xe]
000003C0  06                push es
000003C1  57                push di
000003C2  8DBE00FF          lea di,[bp-0x100]
000003C6  16                push ss
000003C7  57                push di
000003C8  B8FF00            mov ax,0xff
000003CB  50                push ax
000003CC  9AAD06561A        call word 0x1a56:word 0x6ad
000003D1  8DBE00FF          lea di,[bp-0x100]
000003D5  16                push ss
000003D6  57                push di
000003D7  C47E06            les di,word [bp+0x6]
000003DA  06                push es
000003DB  57                push di
000003DC  9A4C07561A        call word 0x1a56:word 0x74c
000003E1  8986FEFD          mov [bp-0x202],ax
000003E5  83BEFEFD00        cmp word [bp-0x202],0x0
000003EA  7E2D              jng 0x419
000003EC  C47E06            les di,word [bp+0x6]
000003EF  06                push es
000003F0  57                push di
000003F1  FFB6FEFD          push word [bp-0x202]
000003F5  8A8600FF          mov al,[bp-0x100]
000003F9  30E4              xor ah,ah
000003FB  50                push ax
000003FC  9A2F08561A        call word 0x1a56:word 0x82f
00000401  8DBE00FE          lea di,[bp-0x200]
00000405  16                push ss
00000406  57                push di
00000407  C47E06            les di,word [bp+0x6]
0000040A  06                push es
0000040B  57                push di
0000040C  B8FF00            mov ax,0xff
0000040F  50                push ax
00000410  FFB6FEFD          push word [bp-0x202]
00000414  9ADB07561A        call word 0x1a56:word 0x7db
00000419  83BEFEFD00        cmp word [bp-0x202],0x0
0000041E  75B1              jnz 0x3d1
00000420  89EC              mov sp,bp
00000422  5D                pop bp
00000423  C20E00            ret word 0xe
00000426  55                push bp
00000427  89E5              mov bp,sp
00000429  81EC0001          sub sp,0x100
0000042D  FF7608            push word [bp+0x8]
00000430  FF7606            push word [bp+0x6]
00000433  31C0              xor ax,ax
00000435  50                push ax
00000436  8DBE00FF          lea di,[bp-0x100]
0000043A  16                push ss
0000043B  57                push di
0000043C  B8FF00            mov ax,0xff
0000043F  50                push ax
00000440  9A0713561A        call word 0x1a56:word 0x1307
00000445  8DBE00FF          lea di,[bp-0x100]
00000449  16                push ss
0000044A  57                push di
0000044B  C47E0A            les di,word [bp+0xa]
0000044E  06                push es
0000044F  57                push di
00000450  B8FF00            mov ax,0xff
00000453  50                push ax
00000454  9AAD06561A        call word 0x1a56:word 0x6ad
00000459  89EC              mov sp,bp
0000045B  5D                pop bp
0000045C  C20600            ret word 0x6
0000045F  234665            and ax,[bp+0x65]
00000462  696C206E72        imul bp,[si+0x20],0x726e
00000467  2023              and [bp+di],ah
00000469  53                push bx
0000046A  206920            and [bx+di+0x20],ch
0000046D  28756C            sub [di+0x6c],dh
00000470  6F                outsw
00000471  766C              jna 0x4df
00000473  65672920          sub [gs:eax],sp
00000477  6D                insw
00000478  6F                outsw
00000479  64756C            fs jnz 0x4e8
0000047C  6E                outsb
0000047D  722E              jc 0x4ad
0000047F  3A20              cmp ah,[bx+si]
00000481  234D1E            and cx,[di+0x1e]
00000484  46                inc si
00000485  65696C206E72      imul bp,[gs:si+0x20],0x726e
0000048B  2E2023            and [cs:bp+di],ah
0000048E  53                push bx
0000048F  206920            and [bx+di+0x20],ch
00000492  6D                insw
00000493  6F                outsw
00000494  64756C            fs jnz 0x503
00000497  206E72            and [bp+0x72],ch
0000049A  2E2023            and [cs:bp+di],ah
0000049D  4D                dec bp
0000049E  2C20              sub al,0x20
000004A0  235502            and dx,[di+0x2]
000004A3  235302            and dx,[bp+di+0x2]
000004A6  234D02            and cx,[di+0x2]
000004A9  235502            and dx,[di+0x2]
000004AC  2330              and si,[bx+si]
000004AE  0223              add ah,[bp+di]
000004B0  315589            xor [di-0x77],dx
000004B3  E581              in ax,byte 0x81
000004B5  EC                in al,dx
000004B6  0002              add [bp+si],al
000004B8  8A4608            mov al,[bp+0x8]
000004BB  50                push ax
000004BC  FF7606            push word [bp+0x6]
000004BF  8DBE00FF          lea di,[bp-0x100]
000004C3  16                push ss
000004C4  57                push di
000004C5  0E                push cs
000004C6  E829FE            call 0x2f2
000004C9  08C0              or al,al
000004CB  7530              jnz 0x4fd
000004CD  807E0863          cmp byte [bp+0x8],0x63
000004D1  7616              jna 0x4e9
000004D3  BF5F04            mov di,0x45f
000004D6  0E                push cs
000004D7  57                push di
000004D8  8DBE00FF          lea di,[bp-0x100]
000004DC  16                push ss
000004DD  57                push di
000004DE  B8FF00            mov ax,0xff
000004E1  50                push ax
000004E2  9AAD06561A        call word 0x1a56:word 0x6ad
000004E7  EB14              jmp 0x4fd
000004E9  BF8304            mov di,0x483
000004EC  0E                push cs
000004ED  57                push di
000004EE  8DBE00FF          lea di,[bp-0x100]
000004F2  16                push ss
000004F3  57                push di
000004F4  B8FF00            mov ax,0xff
000004F7  50                push ax
000004F8  9AAD06561A        call word 0x1a56:word 0x6ad
000004FD  BFA204            mov di,0x4a2
00000500  0E                push cs
00000501  57                push di
00000502  8DBE00FE          lea di,[bp-0x200]
00000506  16                push ss
00000507  57                push di
00000508  8B4606            mov ax,[bp+0x6]
0000050B  31D2              xor dx,dx
0000050D  52                push dx
0000050E  50                push ax
0000050F  55                push bp
00000510  E813FF            call 0x426
00000513  8DBE00FF          lea di,[bp-0x100]
00000517  16                push ss
00000518  57                push di
00000519  55                push bp
0000051A  E885FE            call 0x3a2
0000051D  BFA504            mov di,0x4a5
00000520  0E                push cs
00000521  57                push di
00000522  8DBE00FE          lea di,[bp-0x200]
00000526  16                push ss
00000527  57                push di
00000528  8A4608            mov al,[bp+0x8]
0000052B  30E4              xor ah,ah
0000052D  31D2              xor dx,dx
0000052F  52                push dx
00000530  50                push ax
00000531  55                push bp
00000532  E8F1FE            call 0x426
00000535  8DBE00FF          lea di,[bp-0x100]
00000539  16                push ss
0000053A  57                push di
0000053B  55                push bp
0000053C  E863FE            call 0x3a2
0000053F  BFA804            mov di,0x4a8
00000542  0E                push cs
00000543  57                push di
00000544  8A4608            mov al,[bp+0x8]
00000547  30E4              xor ah,ah
00000549  8BF8              mov di,ax
0000054B  D1E7              shl di,1
0000054D  D1E7              shl di,1
0000054F  C4BD848B          les di,word [di-0x747c]
00000553  06                push es
00000554  57                push di
00000555  8DBE00FF          lea di,[bp-0x100]
00000559  16                push ss
0000055A  57                push di
0000055B  55                push bp
0000055C  E843FE            call 0x3a2
0000055F  BFAB04            mov di,0x4ab
00000562  0E                push cs
00000563  57                push di
00000564  BF8489            mov di,0x8984
00000567  1E                push ds
00000568  57                push di
00000569  8DBE00FF          lea di,[bp-0x100]
0000056D  16                push ss
0000056E  57                push di
0000056F  55                push bp
00000570  E82FFE            call 0x3a2
00000573  BFAE04            mov di,0x4ae
00000576  0E                push cs
00000577  57                push di
00000578  BF848A            mov di,0x8a84
0000057B  1E                push ds
0000057C  57                push di
0000057D  8DBE00FF          lea di,[bp-0x100]
00000581  16                push ss
00000582  57                push di
00000583  55                push bp
00000584  E81BFE            call 0x3a2
00000587  8DBE00FF          lea di,[bp-0x100]
0000058B  16                push ss
0000058C  57                push di
0000058D  C47E0A            les di,word [bp+0xa]
00000590  06                push es
00000591  57                push di
00000592  B8FF00            mov ax,0xff
00000595  50                push ax
00000596  9AAD06561A        call word 0x1a56:word 0x6ad
0000059B  89EC              mov sp,bp
0000059D  5D                pop bp
0000059E  CA0400            retf word 0x4
000005A1  095345            or [bp+di+0x45],dx
000005A4  54                push sp
000005A5  55                push bp
000005A6  50                push ax
000005A7  2E49              cs dec cx
000005A9  46                inc si
000005AA  46                inc si
000005AB  07                pop es
000005AC  53                push bx
000005AD  54                push sp
000005AE  44                inc sp
000005AF  2E52              cs push dx
000005B1  45                inc bp
000005B2  53                push bx
000005B3  035245            add dx,[bp+si+0x45]
000005B6  53                push bx
000005B7  53                push bx
000005B8  54                push sp
000005B9  52                push dx
000005BA  43                inc bx
000005BB  53                push bx
000005BC  54                push sp
000005BD  52                push dx
000005BE  2089E581          and [bx+di-0x7e1b],cl
000005C2  EC                in al,dx
000005C3  0002              add [bp+si],al
000005C5  B8B104            mov ax,0x4b1
000005C8  8CCA              mov dx,cs
000005CA  A3188D            mov [0x8d18],ax
000005CD  89161A8D          mov [0x8d1a],dx
000005D1  BFFE74            mov di,0x74fe
000005D4  1E                push ds
000005D5  57                push di
000005D6  8DBE00FF          lea di,[bp-0x100]
000005DA  16                push ss
000005DB  57                push di
000005DC  BF5416            mov di,0x1654
000005DF  1E                push ds
000005E0  57                push di
000005E1  9A9306561A        call word 0x1a56:word 0x693
000005E6  BFA105            mov di,0x5a1
000005E9  0E                push cs
000005EA  57                push di
000005EB  9A2007561A        call word 0x1a56:word 0x720
000005F0  9A0D089813        call word 0x1398:word 0x80d
000005F5  C406148D          les ax,word [0x8d14]
000005F9  8CC2              mov dx,es
000005FB  A36A88            mov [0x886a],ax
000005FE  89166C88          mov [0x886c],dx
00000602  B85C88            mov ax,0x885c
00000605  8CDA              mov dx,ds
00000607  A3148D            mov [0x8d14],ax
0000060A  8916168D          mov [0x8d16],dx
0000060E  BF5C88            mov di,0x885c
00000611  1E                push ds
00000612  57                push di
00000613  9A0000C818        call word 0x18c8:word 0x0
00000618  A36E88            mov [0x886e],ax
0000061B  833E6E8800        cmp word [0x886e],0x0
00000620  744B              jz 0x66d
00000622  BF5C88            mov di,0x885c
00000625  1E                push ds
00000626  57                push di
00000627  9A0000C818        call word 0x18c8:word 0x0
0000062C  A36E88            mov [0x886e],ax
0000062F  833E6E8800        cmp word [0x886e],0x0
00000634  7411              jz 0x647
00000636  FF366C88          push word [0x886c]
0000063A  FF366A88          push word [0x886a]
0000063E  FF366E88          push word [0x886e]
00000642  9A85019C18        call word 0x189c:word 0x185
00000647  BFE57D            mov di,0x7de5
0000064A  1E                push ds
0000064B  57                push di
0000064C  8DBE00FF          lea di,[bp-0x100]
00000650  16                push ss
00000651  57                push di
00000652  BF5416            mov di,0x1654
00000655  1E                push ds
00000656  57                push di
00000657  9A9306561A        call word 0x1a56:word 0x693
0000065C  BFAB05            mov di,0x5ab
0000065F  0E                push cs
00000660  57                push di
00000661  9A2007561A        call word 0x1a56:word 0x720
00000666  9A0D089813        call word 0x1398:word 0x80d
0000066B  EB2E              jmp 0x69b
0000066D  BFE57D            mov di,0x7de5
00000670  1E                push ds
00000671  57                push di
00000672  8DBE00FE          lea di,[bp-0x200]
00000676  16                push ss
00000677  57                push di
00000678  8DBE00FF          lea di,[bp-0x100]
0000067C  16                push ss
0000067D  57                push di
0000067E  E8B6F9            call 0x37
00000681  BFB305            mov di,0x5b3
00000684  0E                push cs
00000685  57                push di
00000686  E82AFA            call 0xb3
00000689  9A0D089813        call word 0x1398:word 0x80d
0000068E  C4066A88          les ax,word [0x886a]
00000692  8CC2              mov dx,es
00000694  A3148D            mov [0x8d14],ax
00000697  8916168D          mov [0x8d16],dx
0000069B  31C0              xor ax,ax
0000069D  A37088            mov [0x8870],ax
000006A0  EB04              jmp 0x6a6
000006A2  FF067088          inc word [0x8870]
000006A6  8B3E7088          mov di,[0x8870]
000006AA  D1E7              shl di,1
000006AC  D1E7              shl di,1
000006AE  31C0              xor ax,ax
000006B0  8985CC86          mov [di-0x7934],ax
000006B4  8985CE86          mov [di-0x7932],ax
000006B8  833E708863        cmp word [0x8870],0x63
000006BD  75E3              jnz 0x6a2
000006BF  BFE57D            mov di,0x7de5
000006C2  1E                push ds
000006C3  57                push di
000006C4  2EFF36B905        push word [cs:0x5b9]
000006C9  2EFF36B705        push word [cs:0x5b7]
000006CE  31C0              xor ax,ax
000006D0  31D2              xor dx,dx
000006D2  52                push dx
000006D3  50                push ax
000006D4  31C0              xor ax,ax
000006D6  31D2              xor dx,dx
000006D8  52                push dx
000006D9  50                push ax
000006DA  9AC7089813        call word 0x1398:word 0x8c7
000006DF  BFE57D            mov di,0x7de5
000006E2  1E                push ds
000006E3  57                push di
000006E4  2EFF36BD05        push word [cs:0x5bd]
000006E9  2EFF36BB05        push word [cs:0x5bb]
000006EE  B002              mov al,0x2
000006F0  50                push ax
000006F1  B85402            mov ax,0x254
000006F4  8CCA              mov dx,cs
000006F6  52                push dx
000006F7  50                push ax
000006F8  31C0              xor ax,ax
000006FA  31D2              xor dx,dx
000006FC  52                push dx
000006FD  50                push ax
000006FE  9A4D099813        call word 0x1398:word 0x94d
00000703  BFFE74            mov di,0x74fe
00000706  1E                push ds
00000707  57                push di
00000708  2EFF36B905        push word [cs:0x5b9]
0000070D  2EFF36B705        push word [cs:0x5b7]
00000712  31C0              xor ax,ax
00000714  31D2              xor dx,dx
00000716  52                push dx
00000717  50                push ax
00000718  31C0              xor ax,ax
0000071A  31D2              xor dx,dx
0000071C  52                push dx
0000071D  50                push ax
0000071E  9AC7089813        call word 0x1398:word 0x8c7
00000723  BFFE74            mov di,0x74fe
00000726  1E                push ds
00000727  57                push di
00000728  2EFF36BD05        push word [cs:0x5bd]
0000072D  2EFF36BB05        push word [cs:0x5bb]
00000732  B002              mov al,0x2
00000734  50                push ax
00000735  B85402            mov ax,0x254
00000738  8CCA              mov dx,cs
0000073A  52                push dx
0000073B  50                push ax
0000073C  31C0              xor ax,ax
0000073E  31D2              xor dx,dx
00000740  52                push dx
00000741  50                push ax
00000742  9A4D099813        call word 0x1398:word 0x94d
00000747  89EC              mov sp,bp
00000749  CB                retf
0000074A  0000              add [bx+si],al
0000074C  0000              add [bx+si],al
0000074E  0000              add [bx+si],al
