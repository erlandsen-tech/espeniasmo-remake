00000000  55                push bp
00000001  89E5              mov bp,sp
00000003  C47E04            les di,word [bp+0x4]
00000006  268B4502          mov ax,[es:di+0x2]
0000000A  C47E08            les di,word [bp+0x8]
0000000D  26894508          mov [es:di+0x8],ax
00000011  C47E08            les di,word [bp+0x8]
00000014  81C73F00          add di,0x3f
00000018  06                push es
00000019  57                push di
0000001A  FF7606            push word [bp+0x6]
0000001D  FF7604            push word [bp+0x4]
00000020  9A10022A15        call word 0x152a:word 0x210
00000025  C47E04            les di,word [bp+0x4]
00000028  26C47D0A          les di,word [es:di+0xa]
0000002C  06                push es
0000002D  57                push di
0000002E  C47E08            les di,word [bp+0x8]
00000031  81C73400          add di,0x34
00000035  06                push es
00000036  57                push di
00000037  B80900            mov ax,0x9
0000003A  50                push ax
0000003B  9AC002561A        call word 0x1a56:word 0x2c0
00000040  C47E04            les di,word [bp+0x4]
00000043  268B05            mov ax,[es:di]
00000046  C47E08            les di,word [bp+0x8]
00000049  26894504          mov [es:di+0x4],ax
0000004D  C47E04            les di,word [bp+0x4]
00000050  268B4502          mov ax,[es:di+0x2]
00000054  C47E08            les di,word [bp+0x8]
00000057  26894506          mov [es:di+0x6],ax
0000005B  C47E08            les di,word [bp+0x8]
0000005E  268D4534          lea ax,[es:di+0x34]
00000062  8CC2              mov dx,es
00000064  52                push dx
00000065  50                push ax
00000066  C47E08            les di,word [bp+0x8]
00000069  26FF7504          push word [es:di+0x4]
0000006D  9A00002A15        call word 0x152a:word 0x0
00000072  C47E08            les di,word [bp+0x8]
00000075  2689450A          mov [es:di+0xa],ax
00000079  C47E08            les di,word [bp+0x8]
0000007C  81C75F00          add di,0x5f
00000080  06                push es
00000081  57                push di
00000082  C47E08            les di,word [bp+0x8]
00000085  81C72C00          add di,0x2c
00000089  06                push es
0000008A  57                push di
0000008B  B80800            mov ax,0x8
0000008E  50                push ax
0000008F  9AC002561A        call word 0x1a56:word 0x2c0
00000094  C47E04            les di,word [bp+0x4]
00000097  268A4508          mov al,[es:di+0x8]
0000009B  30E4              xor ah,ah
0000009D  C47E08            les di,word [bp+0x8]
000000A0  2689453D          mov [es:di+0x3d],ax
000000A4  89EC              mov sp,bp
000000A6  5D                pop bp
000000A7  C20800            ret word 0x8
000000AA  55                push bp
000000AB  89E5              mov bp,sp
000000AD  C47E04            les di,word [bp+0x4]
000000B0  81C73F00          add di,0x3f
000000B4  06                push es
000000B5  57                push di
000000B6  9A8B042A15        call word 0x152a:word 0x48b
000000BB  89EC              mov sp,bp
000000BD  5D                pop bp
000000BE  C20400            ret word 0x4
000000C1  55                push bp
000000C2  89E5              mov bp,sp
000000C4  83EC02            sub sp,0x2
000000C7  C47E06            les di,word [bp+0x6]
000000CA  268A4534          mov al,[es:di+0x34]
000000CE  FEC8              dec al
000000D0  30E4              xor ah,ah
000000D2  09C0              or ax,ax
000000D4  7242              jc 0x118
000000D6  8946FE            mov [bp-0x2],ax
000000D9  EB03              jmp 0xde
000000DB  FF4EFE            dec word [bp-0x2]
000000DE  8B4604            mov ax,[bp+0x4]
000000E1  D1E0              shl ax,1
000000E3  D1E0              shl ax,1
000000E5  8BD0              mov dx,ax
000000E7  8B46FE            mov ax,[bp-0x2]
000000EA  D1E0              shl ax,1
000000EC  D1E0              shl ax,1
000000EE  C47E06            les di,word [bp+0x6]
000000F1  03F8              add di,ax
000000F3  26C47D3F          les di,word [es:di+0x3f]
000000F7  03FA              add di,dx
000000F9  26C40D            les cx,word [es:di]
000000FC  8CC3              mov bx,es
000000FE  8B46FE            mov ax,[bp-0x2]
00000101  D1E0              shl ax,1
00000103  D1E0              shl ax,1
00000105  C47E06            les di,word [bp+0x6]
00000108  03F8              add di,ax
0000010A  26894D0C          mov [es:di+0xc],cx
0000010E  26895D0E          mov [es:di+0xe],bx
00000112  837EFE00          cmp word [bp-0x2],0x0
00000116  75C3              jnz 0xdb
00000118  89EC              mov sp,bp
0000011A  5D                pop bp
0000011B  C20600            ret word 0x6
0000011E  55                push bp
0000011F  89E5              mov bp,sp
00000121  8B4606            mov ax,[bp+0x6]
00000124  C47E08            les di,word [bp+0x8]
00000127  26894508          mov [es:di+0x8],ax
0000012B  C47E08            les di,word [bp+0x8]
0000012E  06                push es
0000012F  57                push di
00000130  FF7606            push word [bp+0x6]
00000133  E88BFF            call 0xc1
00000136  89EC              mov sp,bp
00000138  5D                pop bp
00000139  CA0600            retf word 0x6
0000013C  55                push bp
0000013D  89E5              mov bp,sp
0000013F  C47E0A            les di,word [bp+0xa]
00000142  06                push es
00000143  57                push di
00000144  FF7608            push word [bp+0x8]
00000147  FF7606            push word [bp+0x6]
0000014A  E8B3FE            call 0x0
0000014D  B81E01            mov ax,0x11e
00000150  8CCA              mov dx,cs
00000152  C47E0A            les di,word [bp+0xa]
00000155  268905            mov [es:di],ax
00000158  26895502          mov [es:di+0x2],dx
0000015C  89EC              mov sp,bp
0000015E  5D                pop bp
0000015F  CA0800            retf word 0x8
00000162  55                push bp
00000163  89E5              mov bp,sp
00000165  C47E06            les di,word [bp+0x6]
00000168  06                push es
00000169  57                push di
0000016A  E83DFF            call 0xaa
0000016D  89EC              mov sp,bp
0000016F  5D                pop bp
00000170  CA0400            retf word 0x4
00000173  55                push bp
00000174  89E5              mov bp,sp
00000176  C47E06            les di,word [bp+0x6]
00000179  26FF4D08          dec word [es:di+0x8]
0000017D  C47E06            les di,word [bp+0x6]
00000180  26837D0800        cmp word [es:di+0x8],0x0
00000185  7611              jna 0x198
00000187  C47E06            les di,word [bp+0x6]
0000018A  06                push es
0000018B  57                push di
0000018C  C47E06            les di,word [bp+0x6]
0000018F  268B4508          mov ax,[es:di+0x8]
00000193  48                dec ax
00000194  50                push ax
00000195  E829FF            call 0xc1
00000198  89EC              mov sp,bp
0000019A  5D                pop bp
0000019B  CA0400            retf word 0x4
0000019E  55                push bp
0000019F  89E5              mov bp,sp
000001A1  83EC04            sub sp,0x4
000001A4  FF7608            push word [bp+0x8]
000001A7  FF7606            push word [bp+0x6]
000001AA  8D7EFC            lea di,[bp-0x4]
000001AD  16                push ss
000001AE  57                push di
000001AF  FF760C            push word [bp+0xc]
000001B2  FF760A            push word [bp+0xa]
000001B5  B001              mov al,0x1
000001B7  50                push ax
000001B8  9AC3002A15        call word 0x152a:word 0xc3
000001BD  C47E0E            les di,word [bp+0xe]
000001C0  06                push es
000001C1  57                push di
000001C2  FF76FE            push word [bp-0x2]
000001C5  FF76FC            push word [bp-0x4]
000001C8  E835FE            call 0x0
000001CB  B87301            mov ax,0x173
000001CE  8CCA              mov dx,cs
000001D0  C47E0E            les di,word [bp+0xe]
000001D3  268905            mov [es:di],ax
000001D6  26895502          mov [es:di+0x2],dx
000001DA  837E0A00          cmp word [bp+0xa],0x0
000001DE  760D              jna 0x1ed
000001E0  C47E0E            les di,word [bp+0xe]
000001E3  06                push es
000001E4  57                push di
000001E5  8B460A            mov ax,[bp+0xa]
000001E8  48                dec ax
000001E9  50                push ax
000001EA  E8D4FE            call 0xc1
000001ED  89EC              mov sp,bp
000001EF  5D                pop bp
000001F0  CA0C00            retf word 0xc
000001F3  55                push bp
000001F4  89E5              mov bp,sp
000001F6  C47E0A            les di,word [bp+0xa]
000001F9  26C44567          les ax,word [es:di+0x67]
000001FD  8CC2              mov dx,es
000001FF  C47E06            les di,word [bp+0x6]
00000202  268905            mov [es:di],ax
00000205  26895502          mov [es:di+0x2],dx
00000209  C47E0A            les di,word [bp+0xa]
0000020C  06                push es
0000020D  57                push di
0000020E  E899FE            call 0xaa
00000211  89EC              mov sp,bp
00000213  5D                pop bp
00000214  CA0800            retf word 0x8
00000217  55                push bp
00000218  89E5              mov bp,sp
0000021A  81ECEA00          sub sp,0xea
0000021E  8DBE2AFF          lea di,[bp-0xd6]
00000222  16                push ss
00000223  57                push di
00000224  B86B00            mov ax,0x6b
00000227  50                push ax
00000228  B000              mov al,0x0
0000022A  50                push ax
0000022B  9A871B561A        call word 0x1a56:word 0x1b87
00000230  8D7E95            lea di,[bp-0x6b]
00000233  16                push ss
00000234  57                push di
00000235  B86B00            mov ax,0x6b
00000238  50                push ax
00000239  B000              mov al,0x0
0000023B  50                push ax
0000023C  9A871B561A        call word 0x1a56:word 0x1b87
00000241  C406148D          les ax,word [0x8d14]
00000245  8CC2              mov dx,es
00000247  898618FF          mov [bp-0xe8],ax
0000024B  89961AFF          mov [bp-0xe6],dx
0000024F  8D861CFF          lea ax,[bp-0xe4]
00000253  8CD2              mov dx,ss
00000255  A3148D            mov [0x8d14],ax
00000258  8916168D          mov [0x8d16],dx
0000025C  8DBE1CFF          lea di,[bp-0xe4]
00000260  16                push ss
00000261  57                push di
00000262  9A0000C818        call word 0x18c8:word 0x0
00000267  898616FF          mov [bp-0xea],ax
0000026B  83BE16FF00        cmp word [bp-0xea],0x0
00000270  7433              jz 0x2a5
00000272  8D7E95            lea di,[bp-0x6b]
00000275  16                push ss
00000276  57                push di
00000277  0E                push cs
00000278  E8E7FE            call 0x162
0000027B  8DBE2AFF          lea di,[bp-0xd6]
0000027F  16                push ss
00000280  57                push di
00000281  C47E12            les di,word [bp+0x12]
00000284  06                push es
00000285  57                push di
00000286  0E                push cs
00000287  E869FF            call 0x1f3
0000028A  C47E12            les di,word [bp+0x12]
0000028D  06                push es
0000028E  57                push di
0000028F  9A67012A15        call word 0x152a:word 0x167
00000294  FFB61AFF          push word [bp-0xe6]
00000298  FFB618FF          push word [bp-0xe8]
0000029C  FFB616FF          push word [bp-0xea]
000002A0  9A85019C18        call word 0x189c:word 0x185
000002A5  8DBE2AFF          lea di,[bp-0xd6]
000002A9  16                push ss
000002AA  57                push di
000002AB  FF760C            push word [bp+0xc]
000002AE  FF760A            push word [bp+0xa]
000002B1  FF7610            push word [bp+0x10]
000002B4  FF760E            push word [bp+0xe]
000002B7  0E                push cs
000002B8  E8E3FE            call 0x19e
000002BB  8D7E95            lea di,[bp-0x6b]
000002BE  16                push ss
000002BF  57                push di
000002C0  FF7620            push word [bp+0x20]
000002C3  FF761E            push word [bp+0x1e]
000002C6  0E                push cs
000002C7  E872FE            call 0x13c
000002CA  8D7E95            lea di,[bp-0x6b]
000002CD  16                push ss
000002CE  57                push di
000002CF  8DBE2AFF          lea di,[bp-0xd6]
000002D3  16                push ss
000002D4  57                push di
000002D5  FF761C            push word [bp+0x1c]
000002D8  FF761A            push word [bp+0x1a]
000002DB  FF7618            push word [bp+0x18]
000002DE  FF7616            push word [bp+0x16]
000002E1  FFB630FF          push word [bp-0xd0]
000002E5  FF7608            push word [bp+0x8]
000002E8  FF7606            push word [bp+0x6]
000002EB  9AD70F2A15        call word 0x152a:word 0xfd7
000002F0  8D7E95            lea di,[bp-0x6b]
000002F3  16                push ss
000002F4  57                push di
000002F5  0E                push cs
000002F6  E869FE            call 0x162
000002F9  8DBE2AFF          lea di,[bp-0xd6]
000002FD  16                push ss
000002FE  57                push di
000002FF  C47E12            les di,word [bp+0x12]
00000302  06                push es
00000303  57                push di
00000304  0E                push cs
00000305  E8EBFE            call 0x1f3
00000308  C48618FF          les ax,word [bp-0xe8]
0000030C  8CC2              mov dx,es
0000030E  A3148D            mov [0x8d14],ax
00000311  8916168D          mov [0x8d16],dx
00000315  89EC              mov sp,bp
00000317  5D                pop bp
00000318  CA1C00            retf word 0x1c
0000031B  89E5              mov bp,sp
0000031D  B80415            mov ax,0x1504
00000320  8CDA              mov dx,ds
00000322  A39C8B            mov [0x8b9c],ax
00000325  89169E8B          mov [0x8b9e],dx
00000329  89EC              mov sp,bp
0000032B  CB                retf
0000032C  0000              add [bx+si],al
0000032E  0000              add [bx+si],al
