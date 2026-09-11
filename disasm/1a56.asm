00000000  BA251C            mov dx,0x1c25
00000003  8EDA              mov ds,dx
00000005  8C061E8F          mov word [0x8f1e],es
00000009  8BC4              mov ax,sp
0000000B  051300            add ax,0x13
0000000E  B104              mov cl,0x4
00000010  D3E8              shr ax,cl
00000012  8CD2              mov dx,ss
00000014  03C2              add ax,dx
00000016  A3228F            mov [0x8f22],ax
00000019  A3268F            mov [0x8f26],ax
0000001C  26A10200          mov ax,[es:0x2]
00000020  2D0010            sub ax,0x1000
00000023  A32A8F            mov [0x8f2a],ax
00000026  C7062E8FDD00      mov word [0x8f2e],0xdd
0000002C  8C0E308F          mov word [0x8f30],cs
00000030  C706328FE200      mov word [0x8f32],0xe2
00000036  8C0E348F          mov word [0x8f34],cs
0000003A  C606548F02        mov byte [0x8f54],0x2
0000003F  33C0              xor ax,ax
00000041  A3208F            mov [0x8f20],ax
00000044  A3248F            mov [0x8f24],ax
00000047  A3288F            mov [0x8f28],ax
0000004A  A32C8F            mov [0x8f2c],ax
0000004D  A33C8F            mov [0x8f3c],ax
00000050  A33E8F            mov [0x8f3e],ax
00000053  A3558F            mov [0x8f55],ax
00000056  B80035            mov ax,0x3500
00000059  CD21              int byte 0x21
0000005B  891E408F          mov [0x8f40],bx
0000005F  8C06428F          mov word [0x8f42],es
00000063  B80235            mov ax,0x3502
00000066  CD21              int byte 0x21
00000068  891E448F          mov [0x8f44],bx
0000006C  8C06468F          mov word [0x8f46],es
00000070  B82335            mov ax,0x3523
00000073  CD21              int byte 0x21
00000075  891E488F          mov [0x8f48],bx
00000079  8C064A8F          mov word [0x8f4a],es
0000007D  B82435            mov ax,0x3524
00000080  CD21              int byte 0x21
00000082  891E4C8F          mov [0x8f4c],bx
00000086  8C064E8F          mov word [0x8f4e],es
0000008A  B87535            mov ax,0x3575
0000008D  CD21              int byte 0x21
0000008F  891E508F          mov [0x8f50],bx
00000093  8C06528F          mov word [0x8f52],es
00000097  1E                push ds
00000098  0E                push cs
00000099  1F                pop ds
0000009A  BAE901            mov dx,0x1e9
0000009D  B80025            mov ax,0x2500
000000A0  CD21              int byte 0x21
000000A2  BAF001            mov dx,0x1f0
000000A5  B82325            mov ax,0x2523
000000A8  CD21              int byte 0x21
000000AA  BABF01            mov dx,0x1bf
000000AD  B82425            mov ax,0x2524
000000B0  CD21              int byte 0x21
000000B2  1F                pop ds
000000B3  B81E8D            mov ax,0x8d1e
000000B6  1E                push ds
000000B7  50                push ax
000000B8  1E                push ds
000000B9  50                push ax
000000BA  B8DC00            mov ax,0xdc
000000BD  0E                push cs
000000BE  50                push ax
000000BF  0E                push cs
000000C0  E8C012            call 0x1383
000000C3  0E                push cs
000000C4  E82C13            call 0x13f3
000000C7  B81E8E            mov ax,0x8e1e
000000CA  1E                push ds
000000CB  50                push ax
000000CC  1E                push ds
000000CD  50                push ax
000000CE  B8DC00            mov ax,0xdc
000000D1  0E                push cs
000000D2  50                push ax
000000D3  0E                push cs
000000D4  E8AC12            call 0x1383
000000D7  0E                push cs
000000D8  E81D13            call 0x13f8
000000DB  CB                retf
000000DC  0033              add [bp+di],dh
000000DE  C0CA02            ror dl,byte 0x2
000000E1  00B81E8D          add [bx+si-0x72e2],bh
000000E5  1E                push ds
000000E6  50                push ax
000000E7  0E                push cs
000000E8  E86B13            call 0x1456
000000EB  B81E8E            mov ax,0x8e1e
000000EE  1E                push ds
000000EF  50                push ax
000000F0  0E                push cs
000000F1  E86213            call 0x1456
000000F4  1E                push ds
000000F5  C516408F          lds dx,word [0x8f40]
000000F9  B80025            mov ax,0x2500
000000FC  CD21              int byte 0x21
000000FE  1F                pop ds
000000FF  1E                push ds
00000100  C516448F          lds dx,word [0x8f44]
00000104  B80225            mov ax,0x2502
00000107  CD21              int byte 0x21
00000109  1F                pop ds
0000010A  1E                push ds
0000010B  C516488F          lds dx,word [0x8f48]
0000010F  B82325            mov ax,0x2523
00000112  CD21              int byte 0x21
00000114  1F                pop ds
00000115  1E                push ds
00000116  C5164C8F          lds dx,word [0x8f4c]
0000011A  B82425            mov ax,0x2524
0000011D  CD21              int byte 0x21
0000011F  1F                pop ds
00000120  1E                push ds
00000121  C516508F          lds dx,word [0x8f50]
00000125  B87525            mov ax,0x2575
00000128  CD21              int byte 0x21
0000012A  1F                pop ds
0000012B  A1388F            mov ax,[0x8f38]
0000012E  0B063A8F          or ax,[0x8f3a]
00000132  7429              jz 0x15d
00000134  BBA701            mov bx,0x1a7
00000137  E82400            call 0x15e
0000013A  A1368F            mov ax,[0x8f36]
0000013D  E82C00            call 0x16c
00000140  BBB601            mov bx,0x1b6
00000143  E81800            call 0x15e
00000146  A13A8F            mov ax,[0x8f3a]
00000149  E83A00            call 0x186
0000014C  B03A              mov al,0x3a
0000014E  E84F00            call 0x1a0
00000151  A1388F            mov ax,[0x8f38]
00000154  E82F00            call 0x186
00000157  BBBB01            mov bx,0x1bb
0000015A  E80100            call 0x15e
0000015D  CB                retf
0000015E  2E8A07            mov al,[cs:bx]
00000161  0AC0              or al,al
00000163  7406              jz 0x16b
00000165  E83800            call 0x1a0
00000168  43                inc bx
00000169  EBF3              jmp 0x15e
0000016B  C3                ret
0000016C  B164              mov cl,0x64
0000016E  E80700            call 0x178
00000171  B10A              mov cl,0xa
00000173  E80200            call 0x178
00000176  EB04              jmp 0x17c
00000178  32E4              xor ah,ah
0000017A  F6F1              div cl
0000017C  0430              add al,0x30
0000017E  50                push ax
0000017F  E81E00            call 0x1a0
00000182  58                pop ax
00000183  8AC4              mov al,ah
00000185  C3                ret
00000186  50                push ax
00000187  8AC4              mov al,ah
00000189  E80100            call 0x18d
0000018C  58                pop ax
0000018D  50                push ax
0000018E  B104              mov cl,0x4
00000190  D2E8              shr al,cl
00000192  E80300            call 0x198
00000195  58                pop ax
00000196  240F              and al,0xf
00000198  0430              add al,0x30
0000019A  3C3A              cmp al,0x3a
0000019C  7202              jc 0x1a0
0000019E  0407              add al,0x7
000001A0  8AD0              mov dl,al
000001A2  B406              mov ah,0x6
000001A4  CD21              int byte 0x21
000001A6  C3                ret
000001A7  52                push dx
000001A8  756E              jnz 0x218
000001AA  7469              jz 0x215
000001AC  6D                insw
000001AD  65206572          and [gs:di+0x72],ah
000001B1  726F              jc 0x222
000001B3  7220              jc 0x1d5
000001B5  0020              add [bx+si],ah
000001B7  61                popa
000001B8  7420              jz 0x1da
000001BA  002E0D0A          add [0xa0d],ch
000001BE  00FB              add bl,bh
000001C0  83C406            add sp,0x6
000001C3  58                pop ax
000001C4  81E71F00          and di,0x1f
000001C8  81C79600          add di,0x96
000001CC  80FC39            cmp ah,0x39
000001CF  7303              jnc 0x1d4
000001D1  BFFFFF            mov di,0xffff
000001D4  57                push di
000001D5  B454              mov ah,0x54
000001D7  CD21              int byte 0x21
000001D9  8BEC              mov bp,sp
000001DB  804E1601          or byte [bp+0x16],0x1
000001DF  58                pop ax
000001E0  5B                pop bx
000001E1  59                pop cx
000001E2  5A                pop dx
000001E3  5E                pop si
000001E4  5F                pop di
000001E5  5D                pop bp
000001E6  1F                pop ds
000001E7  07                pop es
000001E8  CF                iret
000001E9  B8C800            mov ax,0xc8
000001EC  59                pop cx
000001ED  5B                pop bx
000001EE  EB07              jmp 0x1f7
000001F0  B8FF00            mov ax,0xff
000001F3  33C9              xor cx,cx
000001F5  33DB              xor bx,bx
000001F7  BA251C            mov dx,0x1c25
000001FA  8EDA              mov ds,dx
000001FC  8BD1              mov dx,cx
000001FE  0BD3              or dx,bx
00000200  7407              jz 0x209
00000202  2B1E1E8F          sub bx,[0x8f1e]
00000206  83EB10            sub bx,0x10
00000209  8E061E8F          mov es,word [0x8f1e]
0000020D  26803E0500C3      cmp byte [es:0x5],0xc3
00000213  740D              jz 0x222
00000215  268E061600        mov es,word [es:0x16]
0000021A  26803E0500C3      cmp byte [es:0x5],0xc3
00000220  7505              jnz 0x227
00000222  26FF1E0600        call word far [es:0x6]
00000227  A3368F            mov [0x8f36],ax
0000022A  890E388F          mov [0x8f38],cx
0000022E  891E3A8F          mov [0x8f3a],bx
00000232  C41E328F          les bx,word [0x8f32]
00000236  8CC0              mov ax,es
00000238  0BC3              or ax,bx
0000023A  7413              jz 0x24f
0000023C  33C0              xor ax,ax
0000023E  A3328F            mov [0x8f32],ax
00000241  A3348F            mov [0x8f34],ax
00000244  A3558F            mov [0x8f55],ax
00000247  B83202            mov ax,0x232
0000024A  0E                push cs
0000024B  50                push ax
0000024C  06                push es
0000024D  53                push bx
0000024E  CB                retf
0000024F  8E061E8F          mov es,word [0x8f1e]
00000253  26803E0500C3      cmp byte [es:0x5],0xc3
00000259  750B              jnz 0x266
0000025B  26C606050000      mov byte [es:0x5],0x0
00000261  26FF2E0600        jmp word far [es:0x6]
00000266  A1368F            mov ax,[0x8f36]
00000269  B44C              mov ah,0x4c
0000026B  CD21              int byte 0x21
0000026D  A1558F            mov ax,[0x8f55]
00000270  C706558F0000      mov word [0x8f55],0x0
00000276  CB                retf
00000277  833E558F00        cmp word [0x8f55],0x0
0000027C  7501              jnz 0x27f
0000027E  CB                retf
0000027F  A1558F            mov ax,[0x8f55]
00000282  E967FF            jmp 0x1ec
00000285  8BF4              mov si,sp
00000287  368E4402          mov es,word [ss:si+0x2]
0000028B  263B5502          cmp dx,[es:di+0x2]
0000028F  7F07              jg 0x298
00000291  7C14              jl 0x2a7
00000293  263B05            cmp ax,[es:di]
00000296  720F              jc 0x2a7
00000298  263B5506          cmp dx,[es:di+0x6]
0000029C  7C08              jl 0x2a6
0000029E  7F07              jg 0x2a7
000002A0  263B4504          cmp ax,[es:di+0x4]
000002A4  7701              ja 0x2a7
000002A6  CB                retf
000002A7  B8C900            mov ax,0xc9
000002AA  E93FFF            jmp 0x1ec
000002AD  8BF4              mov si,sp
000002AF  2BF0              sub si,ax
000002B1  7207              jc 0x2ba
000002B3  81FE0002          cmp si,0x200
000002B7  7201              jc 0x2ba
000002B9  CB                retf
000002BA  B8CA00            mov ax,0xca
000002BD  E92CFF            jmp 0x1ec
000002C0  8BDC              mov bx,sp
000002C2  8CDA              mov dx,ds
000002C4  36C5770A          lds si,word [ss:bx+0xa]
000002C8  36C47F06          les di,word [ss:bx+0x6]
000002CC  368B4F04          mov cx,[ss:bx+0x4]
000002D0  FC                cld
000002D1  F3A4              rep movsb
000002D3  8EDA              mov ds,dx
000002D5  CA0A00            retf word 0xa
000002D8  8BC8              mov cx,ax
000002DA  8BDA              mov bx,dx
000002DC  8BF0              mov si,ax
000002DE  8BFA              mov di,dx
000002E0  F7E1              mul cx
000002E2  50                push ax
000002E3  52                push dx
000002E4  8BC6              mov ax,si
000002E6  F7E3              mul bx
000002E8  8BD8              mov bx,ax
000002EA  8BC7              mov ax,di
000002EC  F7E1              mul cx
000002EE  8BC8              mov cx,ax
000002F0  5A                pop dx
000002F1  58                pop ax
000002F2  03D3              add dx,bx
000002F4  03D1              add dx,cx
000002F6  CB                retf
000002F7  55                push bp
000002F8  8BE9              mov bp,cx
000002FA  0BEB              or bp,bx
000002FC  7460              jz 0x35e
000002FE  0BDB              or bx,bx
00000300  9C                pushf
00000301  790A              jns 0x30d
00000303  F7D1              not cx
00000305  F7D3              not bx
00000307  83C101            add cx,0x1
0000030A  83D300            adc bx,0x0
0000030D  0BD2              or dx,dx
0000030F  9C                pushf
00000310  790A              jns 0x31c
00000312  F7D0              not ax
00000314  F7D2              not dx
00000316  050100            add ax,0x1
00000319  83D200            adc dx,0x0
0000031C  8BF1              mov si,cx
0000031E  8BFB              mov di,bx
00000320  33C9              xor cx,cx
00000322  33DB              xor bx,bx
00000324  BD2100            mov bp,0x21
00000327  D1D1              rcl cx,1
00000329  D1D3              rcl bx,1
0000032B  2BCE              sub cx,si
0000032D  1BDF              sbb bx,di
0000032F  7304              jnc 0x335
00000331  03CE              add cx,si
00000333  13DF              adc bx,di
00000335  F5                cmc
00000336  D1D0              rcl ax,1
00000338  D1D2              rcl dx,1
0000033A  4D                dec bp
0000033B  75EA              jnz 0x327
0000033D  9D                popf
0000033E  790F              jns 0x34f
00000340  F7D1              not cx
00000342  F7D3              not bx
00000344  83C101            add cx,0x1
00000347  83D300            adc bx,0x0
0000034A  9D                popf
0000034B  7905              jns 0x352
0000034D  EB0D              jmp 0x35c
0000034F  9D                popf
00000350  790A              jns 0x35c
00000352  F7D0              not ax
00000354  F7D2              not dx
00000356  050100            add ax,0x1
00000359  83D200            adc dx,0x0
0000035C  5D                pop bp
0000035D  CB                retf
0000035E  5D                pop bp
0000035F  B8C800            mov ax,0xc8
00000362  E987FE            jmp 0x1ec
00000365  81E11F00          and cx,0x1f
00000369  7406              jz 0x371
0000036B  D1EA              shr dx,1
0000036D  D1D8              rcr ax,1
0000036F  E2FA              loop 0x36b
00000371  CB                retf
00000372  81E11F00          and cx,0x1f
00000376  7406              jz 0x37e
00000378  D1E0              shl ax,1
0000037A  D1D2              rcl dx,1
0000037C  E2FA              loop 0x378
0000037E  CB                retf
0000037F  0BD2              or dx,dx
00000381  7D0A              jnl 0x38d
00000383  F7D0              not ax
00000385  F7D2              not dx
00000387  050100            add ax,0x1
0000038A  83D200            adc dx,0x0
0000038D  CB                retf
0000038E  55                push bp
0000038F  8BEC              mov bp,sp
00000391  8B4606            mov ax,[bp+0x6]
00000394  E80B01            call 0x4a2
00000397  7312              jnc 0x3ab
00000399  FF7606            push word [bp+0x6]
0000039C  FF1E2E8F          call word far [0x8f2e]
000003A0  0BC0              or ax,ax
000003A2  7415              jz 0x3b9
000003A4  48                dec ax
000003A5  75EA              jnz 0x391
000003A7  33C9              xor cx,cx
000003A9  33DB              xor bx,bx
000003AB  C47E08            les di,word [bp+0x8]
000003AE  26890D            mov [es:di],cx
000003B1  26895D02          mov [es:di+0x2],bx
000003B5  5D                pop bp
000003B6  CA0600            retf word 0x6
000003B9  5D                pop bp
000003BA  B8CB00            mov ax,0xcb
000003BD  E92CFE            jmp 0x1ec
000003C0  55                push bp
000003C1  8BEC              mov bp,sp
000003C3  8B4606            mov ax,[bp+0x6]
000003C6  C47E08            les di,word [bp+0x8]
000003C9  268B0D            mov cx,[es:di]
000003CC  268B5D02          mov bx,[es:di+0x2]
000003D0  E86B01            call 0x53e
000003D3  7204              jc 0x3d9
000003D5  5D                pop bp
000003D6  CA0600            retf word 0x6
000003D9  5D                pop bp
000003DA  B8CC00            mov ax,0xcc
000003DD  E90CFE            jmp 0x1ec
000003E0  8BDC              mov bx,sp
000003E2  36C47F04          les di,word [ss:bx+0x4]
000003E6  A1248F            mov ax,[0x8f24]
000003E9  268905            mov [es:di],ax
000003EC  A1268F            mov ax,[0x8f26]
000003EF  26894502          mov [es:di+0x2],ax
000003F3  CA0400            retf word 0x4
000003F6  8BDC              mov bx,sp
000003F8  36C47F04          les di,word [ss:bx+0x4]
000003FC  268B05            mov ax,[es:di]
000003FF  A3248F            mov [0x8f24],ax
00000402  268B4502          mov ax,[es:di+0x2]
00000406  A3268F            mov [0x8f26],ax
00000409  33C0              xor ax,ax
0000040B  A3288F            mov [0x8f28],ax
0000040E  CA0400            retf word 0x4
00000411  E81602            call 0x62a
00000414  8BC6              mov ax,si
00000416  8BD7              mov dx,di
00000418  C43E288F          les di,word [0x8f28]
0000041C  2B16268F          sub dx,[0x8f26]
00000420  2B06248F          sub ax,[0x8f24]
00000424  7327              jnc 0x44d
00000426  051000            add ax,0x10
00000429  4A                dec dx
0000042A  EB21              jmp 0x44d
0000042C  26035506          add dx,[es:di+0x6]
00000430  262B5502          sub dx,[es:di+0x2]
00000434  26034504          add ax,[es:di+0x4]
00000438  3D1000            cmp ax,0x10
0000043B  7204              jc 0x441
0000043D  2D1000            sub ax,0x10
00000440  42                inc dx
00000441  262B05            sub ax,[es:di]
00000444  7304              jnc 0x44a
00000446  051000            add ax,0x10
00000449  4A                dec dx
0000044A  83C708            add di,0x8
0000044D  0BFF              or di,di
0000044F  75DB              jnz 0x42c
00000451  E82E02            call 0x682
00000454  CB                retf
00000455  E8D201            call 0x62a
00000458  8BC6              mov ax,si
0000045A  8BD7              mov dx,di
0000045C  C43E288F          les di,word [0x8f28]
00000460  2B16268F          sub dx,[0x8f26]
00000464  2B06248F          sub ax,[0x8f24]
00000468  7330              jnc 0x49a
0000046A  051000            add ax,0x10
0000046D  4A                dec dx
0000046E  EB2A              jmp 0x49a
00000470  268B5D06          mov bx,[es:di+0x6]
00000474  262B5D02          sub bx,[es:di+0x2]
00000478  3BDA              cmp bx,dx
0000047A  721B              jc 0x497
0000047C  268B4D04          mov cx,[es:di+0x4]
00000480  262B0D            sub cx,[es:di]
00000483  7304              jnc 0x489
00000485  83C110            add cx,0x10
00000488  4B                dec bx
00000489  3BDA              cmp bx,dx
0000048B  7706              ja 0x493
0000048D  7208              jc 0x497
0000048F  3BC8              cmp cx,ax
00000491  7204              jc 0x497
00000493  8BC1              mov ax,cx
00000495  8BD3              mov dx,bx
00000497  83C708            add di,0x8
0000049A  0BFF              or di,di
0000049C  75D2              jnz 0x470
0000049E  E8E101            call 0x682
000004A1  CB                retf
000004A2  E8CF01            call 0x674
000004A5  C43E288F          les di,word [0x8f28]
000004A9  EB0F              jmp 0x4ba
000004AB  268B5D06          mov bx,[es:di+0x6]
000004AF  262B5D02          sub bx,[es:di+0x2]
000004B3  3BDA              cmp bx,dx
000004B5  7344              jnc 0x4fb
000004B7  83C708            add di,0x8
000004BA  0BFF              or di,di
000004BC  75ED              jnz 0x4ab
000004BE  E86901            call 0x62a
000004C1  8BCE              mov cx,si
000004C3  8BDF              mov bx,di
000004C5  2B1E268F          sub bx,[0x8f26]
000004C9  2B0E248F          sub cx,[0x8f24]
000004CD  7304              jnc 0x4d3
000004CF  83C110            add cx,0x10
000004D2  4B                dec bx
000004D3  3BDA              cmp bx,dx
000004D5  7706              ja 0x4dd
000004D7  7221              jc 0x4fa
000004D9  3BC8              cmp cx,ax
000004DB  721D              jc 0x4fa
000004DD  8B0E248F          mov cx,[0x8f24]
000004E1  8B1E268F          mov bx,[0x8f26]
000004E5  03D3              add dx,bx
000004E7  03C1              add ax,cx
000004E9  3D1000            cmp ax,0x10
000004EC  7204              jc 0x4f2
000004EE  2D1000            sub ax,0x10
000004F1  42                inc dx
000004F2  A3248F            mov [0x8f24],ax
000004F5  8916268F          mov [0x8f26],dx
000004F9  F8                clc
000004FA  C3                ret
000004FB  268B4D04          mov cx,[es:di+0x4]
000004FF  262B0D            sub cx,[es:di]
00000502  7304              jnc 0x508
00000504  83C110            add cx,0x10
00000507  4B                dec bx
00000508  3BDA              cmp bx,dx
0000050A  7706              ja 0x512
0000050C  72A9              jc 0x4b7
0000050E  3BC8              cmp cx,ax
00000510  72A5              jc 0x4b7
00000512  268B0D            mov cx,[es:di]
00000515  268B5D02          mov bx,[es:di+0x2]
00000519  03D3              add dx,bx
0000051B  03C1              add ax,cx
0000051D  3D1000            cmp ax,0x10
00000520  7204              jc 0x526
00000522  2D1000            sub ax,0x10
00000525  42                inc dx
00000526  268905            mov [es:di],ax
00000529  26895502          mov [es:di+0x2],dx
0000052D  263B5506          cmp dx,[es:di+0x6]
00000531  7509              jnz 0x53c
00000533  263B4504          cmp ax,[es:di+0x4]
00000537  7503              jnz 0x53c
00000539  E8D900            call 0x615
0000053C  F8                clc
0000053D  C3                ret
0000053E  0BC0              or ax,ax
00000540  7433              jz 0x575
00000542  E82F01            call 0x674
00000545  03D3              add dx,bx
00000547  03C1              add ax,cx
00000549  3D1000            cmp ax,0x10
0000054C  7204              jc 0x552
0000054E  2D1000            sub ax,0x10
00000551  42                inc dx
00000552  3B1E228F          cmp bx,[0x8f22]
00000556  721C              jc 0x574
00000558  7706              ja 0x560
0000055A  3B0E208F          cmp cx,[0x8f20]
0000055E  7214              jc 0x574
00000560  3B16268F          cmp dx,[0x8f26]
00000564  770E              ja 0x574
00000566  7206              jc 0x56e
00000568  3B06248F          cmp ax,[0x8f24]
0000056C  7706              ja 0x574
0000056E  C43E288F          les di,word [0x8f28]
00000572  EB4F              jmp 0x5c3
00000574  F9                stc
00000575  C3                ret
00000576  263B5D02          cmp bx,[es:di+0x2]
0000057A  721E              jc 0x59a
0000057C  7705              ja 0x583
0000057E  263B0D            cmp cx,[es:di]
00000581  7217              jc 0x59a
00000583  263B5D06          cmp bx,[es:di+0x6]
00000587  7737              ja 0x5c0
00000589  7206              jc 0x591
0000058B  263B4D04          cmp cx,[es:di+0x4]
0000058F  772F              ja 0x5c0
00000591  268B0D            mov cx,[es:di]
00000594  268B5D02          mov bx,[es:di+0x2]
00000598  EB0D              jmp 0x5a7
0000059A  263B5502          cmp dx,[es:di+0x2]
0000059E  7220              jc 0x5c0
000005A0  7705              ja 0x5a7
000005A2  263B05            cmp ax,[es:di]
000005A5  7219              jc 0x5c0
000005A7  263B5506          cmp dx,[es:di+0x6]
000005AB  7710              ja 0x5bd
000005AD  7206              jc 0x5b5
000005AF  263B4504          cmp ax,[es:di+0x4]
000005B3  7708              ja 0x5bd
000005B5  268B4504          mov ax,[es:di+0x4]
000005B9  268B5506          mov dx,[es:di+0x6]
000005BD  E85500            call 0x615
000005C0  83C708            add di,0x8
000005C3  0BFF              or di,di
000005C5  75AF              jnz 0x576
000005C7  3B16268F          cmp dx,[0x8f26]
000005CB  750F              jnz 0x5dc
000005CD  3B06248F          cmp ax,[0x8f24]
000005D1  7509              jnz 0x5dc
000005D3  890E248F          mov [0x8f24],cx
000005D7  891E268F          mov [0x8f26],bx
000005DB  C3                ret
000005DC  E81200            call 0x5f1
000005DF  720F              jc 0x5f0
000005E1  26890D            mov [es:di],cx
000005E4  26895D02          mov [es:di+0x2],bx
000005E8  26894504          mov [es:di+0x4],ax
000005EC  26895506          mov [es:di+0x6],dx
000005F0  C3                ret
000005F1  8B3E288F          mov di,[0x8f28]
000005F5  83EF08            sub di,0x8
000005F8  7419              jz 0x613
000005FA  8BF7              mov si,di
000005FC  D1EE              shr si,1
000005FE  D1EE              shr si,1
00000600  D1EE              shr si,1
00000602  D1EE              shr si,1
00000604  03362A8F          add si,[0x8f2a]
00000608  3B36268F          cmp si,[0x8f26]
0000060C  7605              jna 0x613
0000060E  893E288F          mov [0x8f28],di
00000612  C3                ret
00000613  F9                stc
00000614  C3                ret
00000615  8B36288F          mov si,[0x8f28]
00000619  FC                cld
0000061A  26A5              es movsw
0000061C  26A5              es movsw
0000061E  26A5              es movsw
00000620  26A5              es movsw
00000622  83EF08            sub di,0x8
00000625  8936288F          mov [0x8f28],si
00000629  C3                ret
0000062A  8B3E288F          mov di,[0x8f28]
0000062E  0BFF              or di,di
00000630  7511              jnz 0x643
00000632  2B3E2C8F          sub di,[0x8f2c]
00000636  7513              jnz 0x64b
00000638  33F6              xor si,si
0000063A  8B3E2A8F          mov di,[0x8f2a]
0000063E  81C70010          add di,0x1000
00000642  C3                ret
00000643  2B3E2C8F          sub di,[0x8f2c]
00000647  7302              jnc 0x64b
00000649  33FF              xor di,di
0000064B  8BF7              mov si,di
0000064D  81E60F00          and si,0xf
00000651  D1EF              shr di,1
00000653  D1EF              shr di,1
00000655  D1EF              shr di,1
00000657  D1EF              shr di,1
00000659  033E2A8F          add di,[0x8f2a]
0000065D  3B3E268F          cmp di,[0x8f26]
00000661  7710              ja 0x673
00000663  7206              jc 0x66b
00000665  3B36248F          cmp si,[0x8f24]
00000669  7308              jnc 0x673
0000066B  8B36248F          mov si,[0x8f24]
0000066F  8B3E268F          mov di,[0x8f26]
00000673  C3                ret
00000674  8BD0              mov dx,ax
00000676  250F00            and ax,0xf
00000679  D1EA              shr dx,1
0000067B  D1EA              shr dx,1
0000067D  D1EA              shr dx,1
0000067F  D1EA              shr dx,1
00000681  C3                ret
00000682  B104              mov cl,0x4
00000684  D3C2              rol dx,cl
00000686  8BCA              mov cx,dx
00000688  81E1F0FF          and cx,0xfff0
0000068C  81E20F00          and dx,0xf
00000690  0BC1              or ax,cx
00000692  C3                ret
00000693  FC                cld
00000694  8BDC              mov bx,sp
00000696  8CDA              mov dx,ds
00000698  36C47F08          les di,word [ss:bx+0x8]
0000069C  36C57704          lds si,word [ss:bx+0x4]
000006A0  AC                lodsb
000006A1  AA                stosb
000006A2  8AC8              mov cl,al
000006A4  32ED              xor ch,ch
000006A6  F3A4              rep movsb
000006A8  8EDA              mov ds,dx
000006AA  CA0400            retf word 0x4
000006AD  FC                cld
000006AE  8BDC              mov bx,sp
000006B0  8CDA              mov dx,ds
000006B2  36C5770A          lds si,word [ss:bx+0xa]
000006B6  36C47F06          les di,word [ss:bx+0x6]
000006BA  368B4F04          mov cx,[ss:bx+0x4]
000006BE  AC                lodsb
000006BF  3AC1              cmp al,cl
000006C1  7602              jna 0x6c5
000006C3  8AC1              mov al,cl
000006C5  AA                stosb
000006C6  8AC8              mov cl,al
000006C8  32ED              xor ch,ch
000006CA  F3A4              rep movsb
000006CC  8EDA              mov ds,dx
000006CE  CA0A00            retf word 0xa
000006D1  8BDC              mov bx,sp
000006D3  36C47F04          les di,word [ss:bx+0x4]
000006D7  268A05            mov al,[es:di]
000006DA  32E4              xor ah,ah
000006DC  CA0400            retf word 0x4
000006DF  FC                cld
000006E0  8BDC              mov bx,sp
000006E2  8CDA              mov dx,ds
000006E4  36C47F0C          les di,word [ss:bx+0xc]
000006E8  36C57708          lds si,word [ss:bx+0x8]
000006EC  8A04              mov al,[si]
000006EE  32E4              xor ah,ah
000006F0  368B4F06          mov cx,[ss:bx+0x6]
000006F4  0BC9              or cx,cx
000006F6  7F03              jg 0x6fb
000006F8  B90100            mov cx,0x1
000006FB  03F1              add si,cx
000006FD  2BC1              sub ax,cx
000006FF  7213              jc 0x714
00000701  40                inc ax
00000702  368B4F04          mov cx,[ss:bx+0x4]
00000706  0BC9              or cx,cx
00000708  7D02              jnl 0x70c
0000070A  33C9              xor cx,cx
0000070C  3BC1              cmp ax,cx
0000070E  7606              jna 0x716
00000710  8BC1              mov ax,cx
00000712  EB02              jmp 0x716
00000714  33C0              xor ax,ax
00000716  AA                stosb
00000717  8BC8              mov cx,ax
00000719  F3A4              rep movsb
0000071B  8EDA              mov ds,dx
0000071D  CA0800            retf word 0x8
00000720  FC                cld
00000721  8BDC              mov bx,sp
00000723  8CDA              mov dx,ds
00000725  36C47F08          les di,word [ss:bx+0x8]
00000729  36C57704          lds si,word [ss:bx+0x4]
0000072D  268A0D            mov cl,[es:di]
00000730  32ED              xor ch,ch
00000732  AC                lodsb
00000733  260005            add [es:di],al
00000736  7308              jnc 0x740
00000738  26C605FF          mov byte [es:di],0xff
0000073C  8AC1              mov al,cl
0000073E  F6D0              not al
00000740  03F9              add di,cx
00000742  47                inc di
00000743  8AC8              mov cl,al
00000745  F3A4              rep movsb
00000747  8EDA              mov ds,dx
00000749  CA0400            retf word 0x4
0000074C  FC                cld
0000074D  8BDC              mov bx,sp
0000074F  1E                push ds
00000750  36C57708          lds si,word [ss:bx+0x8]
00000754  36C47F04          les di,word [ss:bx+0x4]
00000758  8A0C              mov cl,[si]
0000075A  32ED              xor ch,ch
0000075C  268A15            mov dl,[es:di]
0000075F  32F6              xor dh,dh
00000761  2BD1              sub dx,cx
00000763  7218              jc 0x77d
00000765  B80100            mov ax,0x1
00000768  0BC9              or cx,cx
0000076A  7413              jz 0x77f
0000076C  42                inc dx
0000076D  46                inc si
0000076E  47                inc di
0000076F  51                push cx
00000770  56                push si
00000771  57                push di
00000772  F3A6              repe cmpsb
00000774  5F                pop di
00000775  5E                pop si
00000776  59                pop cx
00000777  7406              jz 0x77f
00000779  40                inc ax
0000077A  4A                dec dx
0000077B  75F1              jnz 0x76e
0000077D  33C0              xor ax,ax
0000077F  1F                pop ds
00000780  CA0800            retf word 0x8
00000783  FC                cld
00000784  8BDC              mov bx,sp
00000786  8CDA              mov dx,ds
00000788  36C57708          lds si,word [ss:bx+0x8]
0000078C  36C47F04          les di,word [ss:bx+0x4]
00000790  AC                lodsb
00000791  268A25            mov ah,[es:di]
00000794  47                inc di
00000795  8AC8              mov cl,al
00000797  3ACC              cmp cl,ah
00000799  7602              jna 0x79d
0000079B  8ACC              mov cl,ah
0000079D  0AC9              or cl,cl
0000079F  7406              jz 0x7a7
000007A1  32ED              xor ch,ch
000007A3  F3A6              repe cmpsb
000007A5  7502              jnz 0x7a9
000007A7  3AC4              cmp al,ah
000007A9  8EDA              mov ds,dx
000007AB  CA0800            retf word 0x8
000007AE  FC                cld
000007AF  8BDC              mov bx,sp
000007B1  36C47F06          les di,word [ss:bx+0x6]
000007B5  B001              mov al,0x1
000007B7  AA                stosb
000007B8  368A4704          mov al,[ss:bx+0x4]
000007BC  AA                stosb
000007BD  CA0200            retf word 0x2
000007C0  FC                cld
000007C1  8BDC              mov bx,sp
000007C3  8CDA              mov dx,ds
000007C5  36C47F0A          les di,word [ss:bx+0xa]
000007C9  36C57706          lds si,word [ss:bx+0x6]
000007CD  368B4704          mov ax,[ss:bx+0x4]
000007D1  AA                stosb
000007D2  8BC8              mov cx,ax
000007D4  F3A4              rep movsb
000007D6  8EDA              mov ds,dx
000007D8  CA0600            retf word 0x6
000007DB  55                push bp
000007DC  8BEC              mov bp,sp
000007DE  81EC0002          sub sp,0x200
000007E2  8DBE00FF          lea di,[bp-0x100]
000007E6  16                push ss
000007E7  57                push di
000007E8  C47E0A            les di,word [bp+0xa]
000007EB  06                push es
000007EC  57                push di
000007ED  B80100            mov ax,0x1
000007F0  50                push ax
000007F1  8B4606            mov ax,[bp+0x6]
000007F4  48                dec ax
000007F5  50                push ax
000007F6  0E                push cs
000007F7  E8E5FE            call 0x6df
000007FA  C47E0E            les di,word [bp+0xe]
000007FD  06                push es
000007FE  57                push di
000007FF  0E                push cs
00000800  E81DFF            call 0x720
00000803  8DBE00FE          lea di,[bp-0x200]
00000807  16                push ss
00000808  57                push di
00000809  C47E0A            les di,word [bp+0xa]
0000080C  06                push es
0000080D  57                push di
0000080E  FF7606            push word [bp+0x6]
00000811  B8FF00            mov ax,0xff
00000814  50                push ax
00000815  0E                push cs
00000816  E8C6FE            call 0x6df
00000819  0E                push cs
0000081A  E803FF            call 0x720
0000081D  C47E0A            les di,word [bp+0xa]
00000820  06                push es
00000821  57                push di
00000822  FF7608            push word [bp+0x8]
00000825  0E                push cs
00000826  E884FE            call 0x6ad
00000829  8BE5              mov sp,bp
0000082B  5D                pop bp
0000082C  CA0C00            retf word 0xc
0000082F  55                push bp
00000830  8BEC              mov bp,sp
00000832  81EC0002          sub sp,0x200
00000836  837E0600          cmp word [bp+0x6],0x0
0000083A  7E43              jng 0x87f
0000083C  8DBE00FF          lea di,[bp-0x100]
00000840  16                push ss
00000841  57                push di
00000842  C47E0A            les di,word [bp+0xa]
00000845  06                push es
00000846  57                push di
00000847  B80100            mov ax,0x1
0000084A  50                push ax
0000084B  8B4608            mov ax,[bp+0x8]
0000084E  48                dec ax
0000084F  50                push ax
00000850  0E                push cs
00000851  E88BFE            call 0x6df
00000854  8DBE00FE          lea di,[bp-0x200]
00000858  16                push ss
00000859  57                push di
0000085A  C47E0A            les di,word [bp+0xa]
0000085D  06                push es
0000085E  57                push di
0000085F  8B4608            mov ax,[bp+0x8]
00000862  034606            add ax,[bp+0x6]
00000865  50                push ax
00000866  B8FF00            mov ax,0xff
00000869  50                push ax
0000086A  0E                push cs
0000086B  E871FE            call 0x6df
0000086E  0E                push cs
0000086F  E8AEFE            call 0x720
00000872  C47E0A            les di,word [bp+0xa]
00000875  06                push es
00000876  57                push di
00000877  B8FF00            mov ax,0xff
0000087A  50                push ax
0000087B  0E                push cs
0000087C  E82EFE            call 0x6ad
0000087F  8BE5              mov sp,bp
00000881  5D                pop bp
00000882  CA0800            retf word 0x8
00000885  FC                cld
00000886  8BDC              mov bx,sp
00000888  8CDA              mov dx,ds
0000088A  36C47F0A          les di,word [ss:bx+0xa]
0000088E  36C57706          lds si,word [ss:bx+0x6]
00000892  368B5F04          mov bx,[ss:bx+0x4]
00000896  8ACF              mov cl,bh
00000898  32ED              xor ch,ch
0000089A  32C0              xor al,al
0000089C  F3AA              rep stosb
0000089E  8ACB              mov cl,bl
000008A0  F3A4              rep movsb
000008A2  B120              mov cl,0x20
000008A4  2ACB              sub cl,bl
000008A6  2ACF              sub cl,bh
000008A8  F3AA              rep stosb
000008AA  8EDA              mov ds,dx
000008AC  CA0600            retf word 0x6
000008AF  FC                cld
000008B0  8BDC              mov bx,sp
000008B2  36C47F04          les di,word [ss:bx+0x4]
000008B6  B91000            mov cx,0x10
000008B9  33C0              xor ax,ax
000008BB  F3AB              rep stosw
000008BD  CB                retf
000008BE  8BDC              mov bx,sp
000008C0  36C47F06          les di,word [ss:bx+0x6]
000008C4  368A4704          mov al,[ss:bx+0x4]
000008C8  8AD8              mov bl,al
000008CA  32FF              xor bh,bh
000008CC  B103              mov cl,0x3
000008CE  D3EB              shr bx,cl
000008D0  8AC8              mov cl,al
000008D2  80E107            and cl,0x7
000008D5  B001              mov al,0x1
000008D7  D2E0              shl al,cl
000008D9  260801            or [es:bx+di],al
000008DC  CA0200            retf word 0x2
000008DF  8BDC              mov bx,sp
000008E1  36C47F08          les di,word [ss:bx+0x8]
000008E5  368A4706          mov al,[ss:bx+0x6]
000008E9  368A5704          mov dl,[ss:bx+0x4]
000008ED  2AD0              sub dl,al
000008EF  721F              jc 0x910
000008F1  FEC2              inc dl
000008F3  8AD8              mov bl,al
000008F5  32FF              xor bh,bh
000008F7  B103              mov cl,0x3
000008F9  D3EB              shr bx,cl
000008FB  8AC8              mov cl,al
000008FD  80E107            and cl,0x7
00000900  B001              mov al,0x1
00000902  D2E0              shl al,cl
00000904  260801            or [es:bx+di],al
00000907  D0C0              rol al,1
00000909  83D300            adc bx,0x0
0000090C  FECA              dec dl
0000090E  75F4              jnz 0x904
00000910  CA0400            retf word 0x4
00000913  FC                cld
00000914  8BDC              mov bx,sp
00000916  8CDA              mov dx,ds
00000918  36C5770A          lds si,word [ss:bx+0xa]
0000091C  36C47F06          les di,word [ss:bx+0x6]
00000920  368B5F04          mov bx,[ss:bx+0x4]
00000924  8ACF              mov cl,bh
00000926  32ED              xor ch,ch
00000928  03F1              add si,cx
0000092A  8ACB              mov cl,bl
0000092C  F3A4              rep movsb
0000092E  8EDA              mov ds,dx
00000930  CA0A00            retf word 0xa
00000933  8BDC              mov bx,sp
00000935  36C47F04          les di,word [ss:bx+0x4]
00000939  368A4708          mov al,[ss:bx+0x8]
0000093D  8AD8              mov bl,al
0000093F  32FF              xor bh,bh
00000941  B103              mov cl,0x3
00000943  D3EB              shr bx,cl
00000945  8AC8              mov cl,al
00000947  80E107            and cl,0x7
0000094A  B001              mov al,0x1
0000094C  D2E0              shl al,cl
0000094E  268401            test [es:bx+di],al
00000951  CA0600            retf word 0x6
00000954  FC                cld
00000955  8BDC              mov bx,sp
00000957  8CDA              mov dx,ds
00000959  36C47F08          les di,word [ss:bx+0x8]
0000095D  36C57704          lds si,word [ss:bx+0x4]
00000961  B91000            mov cx,0x10
00000964  AD                lodsw
00000965  0B05              or ax,[di]
00000967  AB                stosw
00000968  E2FA              loop 0x964
0000096A  8EDA              mov ds,dx
0000096C  CA0400            retf word 0x4
0000096F  FC                cld
00000970  8BDC              mov bx,sp
00000972  8CDA              mov dx,ds
00000974  36C47F08          les di,word [ss:bx+0x8]
00000978  36C57704          lds si,word [ss:bx+0x4]
0000097C  B91000            mov cx,0x10
0000097F  AD                lodsw
00000980  F7D0              not ax
00000982  2305              and ax,[di]
00000984  AB                stosw
00000985  E2F8              loop 0x97f
00000987  8EDA              mov ds,dx
00000989  CA0400            retf word 0x4
0000098C  FC                cld
0000098D  8BDC              mov bx,sp
0000098F  8CDA              mov dx,ds
00000991  36C47F08          les di,word [ss:bx+0x8]
00000995  36C57704          lds si,word [ss:bx+0x4]
00000999  B91000            mov cx,0x10
0000099C  AD                lodsw
0000099D  2305              and ax,[di]
0000099F  AB                stosw
000009A0  E2FA              loop 0x99c
000009A2  8EDA              mov ds,dx
000009A4  CA0400            retf word 0x4
000009A7  FC                cld
000009A8  8BDC              mov bx,sp
000009AA  8CDA              mov dx,ds
000009AC  36C47F08          les di,word [ss:bx+0x8]
000009B0  36C57704          lds si,word [ss:bx+0x4]
000009B4  B91000            mov cx,0x10
000009B7  F3A7              repe cmpsw
000009B9  8EDA              mov ds,dx
000009BB  CA0800            retf word 0x8
000009BE  FC                cld
000009BF  8BDC              mov bx,sp
000009C1  8CDA              mov dx,ds
000009C3  36C47F08          les di,word [ss:bx+0x8]
000009C7  36C57704          lds si,word [ss:bx+0x4]
000009CB  B91000            mov cx,0x10
000009CE  AD                lodsw
000009CF  0B05              or ax,[di]
000009D1  AF                scasw
000009D2  7502              jnz 0x9d6
000009D4  E2F8              loop 0x9ce
000009D6  8EDA              mov ds,dx
000009D8  CA0800            retf word 0x8
000009DB  81F70080          xor di,0x8000
000009DF  0AC9              or cl,cl
000009E1  740A              jz 0x9ed
000009E3  0AC0              or al,al
000009E5  7507              jnz 0x9ee
000009E7  8BC1              mov ax,cx
000009E9  8BDE              mov bx,si
000009EB  8BD7              mov dx,di
000009ED  C3                ret
000009EE  3AC1              cmp al,cl
000009F0  7605              jna 0x9f7
000009F2  91                xchg ax,cx
000009F3  87DE              xchg bx,si
000009F5  87D7              xchg dx,di
000009F7  2AC1              sub al,cl
000009F9  F6D8              neg al
000009FB  3C28              cmp al,0x28
000009FD  73E8              jnc 0x9e7
000009FF  86C1              xchg al,cl
00000A01  55                push bp
00000A02  8BEF              mov bp,di
00000A04  33EA              xor bp,dx
00000A06  9C                pushf
00000A07  8BEF              mov bp,di
00000A09  80CE80            or dh,0x80
00000A0C  81CF0080          or di,0x8000
00000A10  80F910            cmp cl,0x10
00000A13  720B              jc 0xa20
00000A15  8AE7              mov ah,bh
00000A17  8BDA              mov bx,dx
00000A19  33D2              xor dx,dx
00000A1B  80E910            sub cl,0x10
00000A1E  EBF0              jmp 0xa10
00000A20  80F908            cmp cl,0x8
00000A23  720D              jc 0xa32
00000A25  8AE3              mov ah,bl
00000A27  8ADF              mov bl,bh
00000A29  8AFA              mov bh,dl
00000A2B  8AD6              mov dl,dh
00000A2D  32F6              xor dh,dh
00000A2F  80E908            sub cl,0x8
00000A32  0AC9              or cl,cl
00000A34  740A              jz 0xa40
00000A36  D1EA              shr dx,1
00000A38  D1DB              rcr bx,1
00000A3A  D0DC              rcr ah,1
00000A3C  FEC9              dec cl
00000A3E  75F6              jnz 0xa36
00000A40  9D                popf
00000A41  7815              js 0xa58
00000A43  02E5              add ah,ch
00000A45  13DE              adc bx,si
00000A47  13D7              adc dx,di
00000A49  735F              jnc 0xaaa
00000A4B  D1DA              rcr dx,1
00000A4D  D1DB              rcr bx,1
00000A4F  D0DC              rcr ah,1
00000A51  FEC0              inc al
00000A53  7555              jnz 0xaaa
00000A55  F9                stc
00000A56  5D                pop bp
00000A57  C3                ret
00000A58  86E5              xchg ah,ch
00000A5A  87DE              xchg bx,si
00000A5C  87D7              xchg dx,di
00000A5E  2AE5              sub ah,ch
00000A60  1BDE              sbb bx,si
00000A62  1BD7              sbb dx,di
00000A64  7313              jnc 0xa79
00000A66  81F50080          xor bp,0x8000
00000A6A  F6D4              not ah
00000A6C  F7D3              not bx
00000A6E  F7D2              not dx
00000A70  80C401            add ah,0x1
00000A73  83D300            adc bx,0x0
00000A76  83D200            adc dx,0x0
00000A79  B105              mov cl,0x5
00000A7B  0AF6              or dh,dh
00000A7D  7514              jnz 0xa93
00000A7F  8AF2              mov dh,dl
00000A81  8AD7              mov dl,bh
00000A83  8AFB              mov bh,bl
00000A85  8ADC              mov bl,ah
00000A87  32E4              xor ah,ah
00000A89  2C08              sub al,0x8
00000A8B  7615              jna 0xaa2
00000A8D  FEC9              dec cl
00000A8F  75EA              jnz 0xa7b
00000A91  EB0F              jmp 0xaa2
00000A93  F6C680            test dh,0x80
00000A96  7512              jnz 0xaaa
00000A98  D0E4              shl ah,1
00000A9A  D1D3              rcl bx,1
00000A9C  D1D2              rcl dx,1
00000A9E  FEC8              dec al
00000AA0  75F1              jnz 0xa93
00000AA2  33C0              xor ax,ax
00000AA4  33DB              xor bx,bx
00000AA6  33D2              xor dx,dx
00000AA8  5D                pop bp
00000AA9  C3                ret
00000AAA  80E67F            and dh,0x7f
00000AAD  81E50080          and bp,0x8000
00000AB1  33D5              xor dx,bp
00000AB3  5D                pop bp
00000AB4  C3                ret
00000AB5  0AC9              or cl,cl
00000AB7  7472              jz 0xb2b
00000AB9  0AC0              or al,al
00000ABB  7474              jz 0xb31
00000ABD  02C1              add al,cl
00000ABF  E8F900            call 0xbbb
00000AC2  766D              jna 0xb31
00000AC4  55                push bp
00000AC5  50                push ax
00000AC6  57                push di
00000AC7  56                push si
00000AC8  51                push cx
00000AC9  8BEC              mov bp,sp
00000ACB  8AEC              mov ch,ah
00000ACD  8BF3              mov si,bx
00000ACF  8BFA              mov di,dx
00000AD1  32E4              xor ah,ah
00000AD3  33DB              xor bx,bx
00000AD5  33D2              xor dx,dx
00000AD7  83ED05            sub bp,0x5
00000ADA  8A4606            mov al,[bp+0x6]
00000ADD  0AC0              or al,al
00000ADF  750C              jnz 0xaed
00000AE1  8AE3              mov ah,bl
00000AE3  8ADF              mov bl,bh
00000AE5  8AFA              mov bh,dl
00000AE7  8AD6              mov dl,dh
00000AE9  32F6              xor dh,dh
00000AEB  EB18              jmp 0xb05
00000AED  B108              mov cl,0x8
00000AEF  D0D8              rcr al,1
00000AF1  7306              jnc 0xaf9
00000AF3  02E5              add ah,ch
00000AF5  13DE              adc bx,si
00000AF7  13D7              adc dx,di
00000AF9  D1DA              rcr dx,1
00000AFB  D1DB              rcr bx,1
00000AFD  D0DC              rcr ah,1
00000AFF  FEC9              dec cl
00000B01  75EC              jnz 0xaef
00000B03  D0D1              rcl cl,1
00000B05  45                inc bp
00000B06  3BEC              cmp bp,sp
00000B08  75D0              jnz 0xada
00000B0A  8A4606            mov al,[bp+0x6]
00000B0D  F6C680            test dh,0x80
00000B10  750E              jnz 0xb20
00000B12  D0D9              rcr cl,1
00000B14  D0D4              rcl ah,1
00000B16  D1D3              rcl bx,1
00000B18  D1D2              rcl dx,1
00000B1A  0AC0              or al,al
00000B1C  7402              jz 0xb20
00000B1E  FEC8              dec al
00000B20  327600            xor dh,[bp+0x0]
00000B23  83C408            add sp,0x8
00000B26  5D                pop bp
00000B27  0AC0              or al,al
00000B29  7506              jnz 0xb31
00000B2B  33C0              xor ax,ax
00000B2D  33DB              xor bx,bx
00000B2F  33D2              xor dx,dx
00000B31  C3                ret
00000B32  0AC0              or al,al
00000B34  743F              jz 0xb75
00000B36  2AC1              sub al,cl
00000B38  F5                cmc
00000B39  E87F00            call 0xbbb
00000B3C  7637              jna 0xb75
00000B3E  55                push bp
00000B3F  51                push cx
00000B40  83EC04            sub sp,0x4
00000B43  50                push ax
00000B44  8BEC              mov bp,sp
00000B46  83C505            add bp,0x5
00000B49  B108              mov cl,0x8
00000B4B  3BD7              cmp dx,di
00000B4D  7506              jnz 0xb55
00000B4F  3BDE              cmp bx,si
00000B51  7502              jnz 0xb55
00000B53  3AE5              cmp ah,ch
00000B55  7206              jc 0xb5d
00000B57  2AE5              sub ah,ch
00000B59  1BDE              sbb bx,si
00000B5B  1BD7              sbb dx,di
00000B5D  F5                cmc
00000B5E  D0D0              rcl al,1
00000B60  FEC9              dec cl
00000B62  7412              jz 0xb76
00000B64  D0E4              shl ah,1
00000B66  D1D3              rcl bx,1
00000B68  D1D2              rcl dx,1
00000B6A  73DF              jnc 0xb4b
00000B6C  2AE5              sub ah,ch
00000B6E  1BDE              sbb bx,si
00000B70  1BD7              sbb dx,di
00000B72  F9                stc
00000B73  EBE9              jmp 0xb5e
00000B75  C3                ret
00000B76  884600            mov [bp+0x0],al
00000B79  B108              mov cl,0x8
00000B7B  4D                dec bp
00000B7C  3BEC              cmp bp,sp
00000B7E  75E4              jnz 0xb64
00000B80  D0E4              shl ah,1
00000B82  D1D3              rcl bx,1
00000B84  D1D2              rcl dx,1
00000B86  720B              jc 0xb93
00000B88  3BD7              cmp dx,di
00000B8A  7506              jnz 0xb92
00000B8C  3BDE              cmp bx,si
00000B8E  7502              jnz 0xb92
00000B90  3AE5              cmp ah,ch
00000B92  F5                cmc
00000B93  D1D6              rcl si,1
00000B95  58                pop ax
00000B96  5B                pop bx
00000B97  5A                pop dx
00000B98  59                pop cx
00000B99  5D                pop bp
00000B9A  F6C680            test dh,0x80
00000B9D  750A              jnz 0xba9
00000B9F  D1DE              rcr si,1
00000BA1  D0D4              rcl ah,1
00000BA3  D1D3              rcl bx,1
00000BA5  D1D2              rcl dx,1
00000BA7  EB05              jmp 0xbae
00000BA9  FEC0              inc al
00000BAB  F9                stc
00000BAC  740C              jz 0xbba
00000BAE  32F1              xor dh,cl
00000BB0  0AC0              or al,al
00000BB2  7506              jnz 0xbba
00000BB4  33C0              xor ax,ax
00000BB6  33DB              xor bx,bx
00000BB8  33D2              xor dx,dx
00000BBA  C3                ret
00000BBB  720B              jc 0xbc8
00000BBD  0480              add al,0x80
00000BBF  720B              jc 0xbcc
00000BC1  33C0              xor ax,ax
00000BC3  33DB              xor bx,bx
00000BC5  33D2              xor dx,dx
00000BC7  C3                ret
00000BC8  0480              add al,0x80
00000BCA  7211              jc 0xbdd
00000BCC  97                xchg ax,di
00000BCD  8ACC              mov cl,ah
00000BCF  32CE              xor cl,dh
00000BD1  F6D1              not cl
00000BD3  80E180            and cl,0x80
00000BD6  80CC80            or ah,0x80
00000BD9  80CE80            or dh,0x80
00000BDC  97                xchg ax,di
00000BDD  C3                ret
00000BDE  52                push dx
00000BDF  33D7              xor dx,di
00000BE1  5A                pop dx
00000BE2  7905              jns 0xbe9
00000BE4  52                push dx
00000BE5  D1D2              rcl dx,1
00000BE7  5A                pop dx
00000BE8  C3                ret
00000BE9  F6C680            test dh,0x80
00000BEC  7407              jz 0xbf5
00000BEE  E80400            call 0xbf5
00000BF1  7414              jz 0xc07
00000BF3  F5                cmc
00000BF4  C3                ret
00000BF5  3AC1              cmp al,cl
00000BF7  750E              jnz 0xc07
00000BF9  0AC0              or al,al
00000BFB  740A              jz 0xc07
00000BFD  3BD7              cmp dx,di
00000BFF  7506              jnz 0xc07
00000C01  3BDE              cmp bx,si
00000C03  7502              jnz 0xc07
00000C05  3AE5              cmp ah,ch
00000C07  C3                ret
00000C08  8BD8              mov bx,ax
00000C0A  0BDA              or bx,dx
00000C0C  7438              jz 0xc46
00000C0E  8AEE              mov ch,dh
00000C10  0BD2              or dx,dx
00000C12  790A              jns 0xc1e
00000C14  F7D0              not ax
00000C16  F7D2              not dx
00000C18  050100            add ax,0x1
00000C1B  83D200            adc dx,0x0
00000C1E  8BD8              mov bx,ax
00000C20  B8A000            mov ax,0xa0
00000C23  0BD2              or dx,dx
00000C25  750C              jnz 0xc33
00000C27  87D3              xchg dx,bx
00000C29  B090              mov al,0x90
00000C2B  0AF6              or dh,dh
00000C2D  7504              jnz 0xc33
00000C2F  86F2              xchg dh,dl
00000C31  B088              mov al,0x88
00000C33  0BD2              or dx,dx
00000C35  7808              js 0xc3f
00000C37  FEC8              dec al
00000C39  03DB              add bx,bx
00000C3B  13D2              adc dx,dx
00000C3D  79F8              jns 0xc37
00000C3F  0AED              or ch,ch
00000C41  7803              js 0xc46
00000C43  80E67F            and dh,0x7f
00000C46  C3                ret
00000C47  93                xchg ax,bx
00000C48  B19F              mov cl,0x9f
00000C4A  2ACB              sub cl,bl
00000C4C  724E              jc 0xc9c
00000C4E  80F91F            cmp cl,0x1f
00000C51  774B              ja 0xc9e
00000C53  FEC1              inc cl
00000C55  8AFE              mov bh,dh
00000C57  80CE80            or dh,0x80
00000C5A  80F911            cmp cl,0x11
00000C5D  7207              jc 0xc66
00000C5F  8BC2              mov ax,dx
00000C61  33D2              xor dx,dx
00000C63  80E910            sub cl,0x10
00000C66  80F909            cmp cl,0x9
00000C69  720B              jc 0xc76
00000C6B  8AC4              mov al,ah
00000C6D  8AE2              mov ah,dl
00000C6F  8AD6              mov dl,dh
00000C71  32F6              xor dh,dh
00000C73  80E908            sub cl,0x8
00000C76  D1EA              shr dx,1
00000C78  D1D8              rcr ax,1
00000C7A  FEC9              dec cl
00000C7C  75F8              jnz 0xc76
00000C7E  730C              jnc 0xc8c
00000C80  0AED              or ch,ch
00000C82  7408              jz 0xc8c
00000C84  050100            add ax,0x1
00000C87  83D200            adc dx,0x0
00000C8A  7810              js 0xc9c
00000C8C  0AFF              or bh,bh
00000C8E  790A              jns 0xc9a
00000C90  F7D0              not ax
00000C92  F7D2              not dx
00000C94  050100            add ax,0x1
00000C97  83D200            adc dx,0x0
00000C9A  F8                clc
00000C9B  C3                ret
00000C9C  F9                stc
00000C9D  C3                ret
00000C9E  33C0              xor ax,ax
00000CA0  33D2              xor dx,dx
00000CA2  C3                ret
00000CA3  E839FD            call 0x9df
00000CA6  723B              jc 0xce3
00000CA8  CB                retf
00000CA9  E82FFD            call 0x9db
00000CAC  7235              jc 0xce3
00000CAE  CB                retf
00000CAF  8BC8              mov cx,ax
00000CB1  8BF3              mov si,bx
00000CB3  8BFA              mov di,dx
00000CB5  E8FDFD            call 0xab5
00000CB8  7229              jc 0xce3
00000CBA  CB                retf
00000CBB  0AC9              or cl,cl
00000CBD  742A              jz 0xce9
00000CBF  E870FE            call 0xb32
00000CC2  721F              jc 0xce3
00000CC4  CB                retf
00000CC5  E816FF            call 0xbde
00000CC8  CB                retf
00000CC9  E83CFF            call 0xc08
00000CCC  CB                retf
00000CCD  B500              mov ch,0x0
00000CCF  E875FF            call 0xc47
00000CD2  7209              jc 0xcdd
00000CD4  CB                retf
00000CD5  B501              mov ch,0x1
00000CD7  E86DFF            call 0xc47
00000CDA  7201              jc 0xcdd
00000CDC  CB                retf
00000CDD  B8CF00            mov ax,0xcf
00000CE0  E909F5            jmp 0x1ec
00000CE3  B8CD00            mov ax,0xcd
00000CE6  E903F5            jmp 0x1ec
00000CE9  B8C800            mov ax,0xc8
00000CEC  E9FDF4            jmp 0x1ec
00000CEF  57                push di
00000CF0  56                push si
00000CF1  51                push cx
00000CF2  E8EAFC            call 0x9df
00000CF5  59                pop cx
00000CF6  5E                pop si
00000CF7  5F                pop di
00000CF8  C3                ret
00000CF9  57                push di
00000CFA  56                push si
00000CFB  51                push cx
00000CFC  E8DCFC            call 0x9db
00000CFF  59                pop cx
00000D00  5E                pop si
00000D01  5F                pop di
00000D02  C3                ret
00000D03  57                push di
00000D04  56                push si
00000D05  51                push cx
00000D06  E8ACFD            call 0xab5
00000D09  59                pop cx
00000D0A  5E                pop si
00000D0B  5F                pop di
00000D0C  C3                ret
00000D0D  57                push di
00000D0E  56                push si
00000D0F  51                push cx
00000D10  E81FFE            call 0xb32
00000D13  59                pop cx
00000D14  5E                pop si
00000D15  5F                pop di
00000D16  C3                ret
00000D17  3CA8              cmp al,0xa8
00000D19  7349              jnc 0xd64
00000D1B  8BC8              mov cx,ax
00000D1D  8BF3              mov si,bx
00000D1F  8BFA              mov di,dx
00000D21  32E4              xor ah,ah
00000D23  33DB              xor bx,bx
00000D25  33D2              xor dx,dx
00000D27  80E980            sub cl,0x80
00000D2A  7639              jna 0xd65
00000D2C  80F910            cmp cl,0x10
00000D2F  720C              jc 0xd3d
00000D31  8AE7              mov ah,bh
00000D33  8BDA              mov bx,dx
00000D35  BAFFFF            mov dx,0xffff
00000D38  80E910            sub cl,0x10
00000D3B  EBEF              jmp 0xd2c
00000D3D  80F908            cmp cl,0x8
00000D40  720D              jc 0xd4f
00000D42  8AE3              mov ah,bl
00000D44  8ADF              mov bl,bh
00000D46  8AFA              mov bh,dl
00000D48  8AD6              mov dl,dh
00000D4A  B6FF              mov dh,0xff
00000D4C  80E908            sub cl,0x8
00000D4F  0AC9              or cl,cl
00000D51  740B              jz 0xd5e
00000D53  F9                stc
00000D54  D1DA              rcr dx,1
00000D56  D1DB              rcr bx,1
00000D58  D0DC              rcr ah,1
00000D5A  FEC9              dec cl
00000D5C  75F5              jnz 0xd53
00000D5E  23D7              and dx,di
00000D60  23DE              and bx,si
00000D62  22E5              and ah,ch
00000D64  CB                retf
00000D65  32C0              xor al,al
00000D67  CB                retf
00000D68  52                push dx
00000D69  53                push bx
00000D6A  50                push ax
00000D6B  0E                push cs
00000D6C  E8A8FF            call 0xd17
00000D6F  8BC8              mov cx,ax
00000D71  8BF3              mov si,bx
00000D73  8BFA              mov di,dx
00000D75  58                pop ax
00000D76  5B                pop bx
00000D77  5A                pop dx
00000D78  E860FC            call 0x9db
00000D7B  CB                retf
00000D7C  55                push bp
00000D7D  8BEC              mov bp,sp
00000D7F  83EC08            sub sp,0x8
00000D82  8BC8              mov cx,ax
00000D84  8BF3              mov si,bx
00000D86  8BFA              mov di,dx
00000D88  0AC0              or al,al
00000D8A  743C              jz 0xdc8
00000D8C  F6C680            test dh,0x80
00000D8F  7541              jnz 0xdd2
00000D91  8946F8            mov [bp-0x8],ax
00000D94  895EFA            mov [bp-0x6],bx
00000D97  8956FC            mov [bp-0x4],dx
00000D9A  80C180            add cl,0x80
00000D9D  D0F9              sar cl,1
00000D9F  80C180            add cl,0x80
00000DA2  8AC1              mov al,cl
00000DA4  2C14              sub al,0x14
00000DA6  8846FE            mov [bp-0x2],al
00000DA9  8B46F8            mov ax,[bp-0x8]
00000DAC  8B5EFA            mov bx,[bp-0x6]
00000DAF  8B56FC            mov dx,[bp-0x4]
00000DB2  E858FF            call 0xd0d
00000DB5  E837FF            call 0xcef
00000DB8  FEC8              dec al
00000DBA  52                push dx
00000DBB  53                push bx
00000DBC  50                push ax
00000DBD  E81BFC            call 0x9db
00000DC0  3A46FE            cmp al,[bp-0x2]
00000DC3  59                pop cx
00000DC4  5E                pop si
00000DC5  5F                pop di
00000DC6  73E1              jnc 0xda9
00000DC8  8BC1              mov ax,cx
00000DCA  8BDE              mov bx,si
00000DCC  8BD7              mov dx,di
00000DCE  8BE5              mov sp,bp
00000DD0  5D                pop bp
00000DD1  CB                retf
00000DD2  8BE5              mov sp,bp
00000DD4  5D                pop bp
00000DD5  B8CF00            mov ax,0xcf
00000DD8  E911F4            jmp 0x1ec
00000DDB  B98121            mov cx,0x2181
00000DDE  BEA2DA            mov si,0xdaa2
00000DE1  BF0FC9            mov di,0xc90f
00000DE4  E8F8FB            call 0x9df
00000DE7  0AC0              or al,al
00000DE9  7403              jz 0xdee
00000DEB  80F680            xor dh,0x80
00000DEE  3C6C              cmp al,0x6c
00000DF0  725C              jc 0xe4e
00000DF2  B98321            mov cx,0x2183
00000DF5  BEA2DA            mov si,0xdaa2
00000DF8  BF0F49            mov di,0x490f
00000DFB  52                push dx
00000DFC  80E67F            and dh,0x7f
00000DFF  E8DCFD            call 0xbde
00000E02  5A                pop dx
00000E03  7210              jc 0xe15
00000E05  E805FF            call 0xd0d
00000E08  57                push di
00000E09  56                push si
00000E0A  51                push cx
00000E0B  0E                push cs
00000E0C  E859FF            call 0xd68
00000E0F  59                pop cx
00000E10  5E                pop si
00000E11  5F                pop di
00000E12  E8EEFE            call 0xd03
00000E15  F6C680            test dh,0x80
00000E18  7403              jz 0xe1d
00000E1A  E8D2FE            call 0xcef
00000E1D  FEC9              dec cl
00000E1F  E8BCFD            call 0xbde
00000E22  9C                pushf
00000E23  7203              jc 0xe28
00000E25  E8D1FE            call 0xcf9
00000E28  FEC9              dec cl
00000E2A  E8B1FD            call 0xbde
00000E2D  7208              jc 0xe37
00000E2F  FEC1              inc cl
00000E31  80CE80            or dh,0x80
00000E34  E8A8FB            call 0x9df
00000E37  3C6C              cmp al,0x6c
00000E39  7209              jc 0xe44
00000E3B  BF4F0E            mov di,0xe4f
00000E3E  B90700            mov cx,0x7
00000E41  E8B602            call 0x10fa
00000E44  9D                popf
00000E45  7207              jc 0xe4e
00000E47  0AC0              or al,al
00000E49  7403              jz 0xe4e
00000E4B  80F680            xor dh,0x80
00000E4E  CB                retf
00000E4F  58                pop ax
00000E50  9D                popf
00000E51  399F3FD7          cmp [bx-0x28c1],bx
00000E55  60                pusha
00000E56  43                inc bx
00000E57  9D                popf
00000E58  30923067          xor [bp+si+0x6730],dl
00000E5C  AA                stosb
00000E5D  3F                aas
00000E5E  2832              sub [bp+si],dh
00000E60  D7                xlatb
00000E61  6E                outsb
00000E62  B62A              mov dh,0x2a
00000E64  1DEF38            sbb ax,0x38ef
00000E67  740D              jz 0xe76
00000E69  D000              rol byte [bx+si],1
00000E6B  0DD07A            or ax,0x7ad0
00000E6E  88888888          mov [bx+si-0x7778],cl
00000E72  087EAB            or [bp-0x55],bh
00000E75  AA                stosb
00000E76  AA                stosb
00000E77  AA                stosb
00000E78  AA                stosb
00000E79  0AC0              or al,al
00000E7B  7405              jz 0xe82
00000E7D  F6C680            test dh,0x80
00000E80  7406              jz 0xe88
00000E82  B8CF00            mov ax,0xcf
00000E85  E964F3            jmp 0x1ec
00000E88  B181              mov cl,0x81
00000E8A  2AC1              sub al,cl
00000E8C  50                push ax
00000E8D  8AC1              mov al,cl
00000E8F  B980FB            mov cx,0xfb80
00000E92  BE33F3            mov si,0xf333
00000E95  BF0435            mov di,0x3504
00000E98  E81AFC            call 0xab5
00000E9B  8BC8              mov cx,ax
00000E9D  8BF3              mov si,bx
00000E9F  8BFA              mov di,dx
00000EA1  B88100            mov ax,0x81
00000EA4  33DB              xor bx,bx
00000EA6  33D2              xor dx,dx
00000EA8  E844FE            call 0xcef
00000EAB  52                push dx
00000EAC  53                push bx
00000EAD  50                push ax
00000EAE  B88100            mov ax,0x81
00000EB1  33DB              xor bx,bx
00000EB3  BA0080            mov dx,0x8000
00000EB6  E826FB            call 0x9df
00000EB9  59                pop cx
00000EBA  5E                pop si
00000EBB  5F                pop di
00000EBC  E873FC            call 0xb32
00000EBF  BFFE0E            mov di,0xefe
00000EC2  B90600            mov cx,0x6
00000EC5  E83202            call 0x10fa
00000EC8  FEC0              inc al
00000ECA  B97FD2            mov cx,0xd27f
00000ECD  BEF717            mov si,0x17f7
00000ED0  BF7231            mov di,0x3172
00000ED3  E809FB            call 0x9df
00000ED6  59                pop cx
00000ED7  52                push dx
00000ED8  53                push bx
00000ED9  50                push ax
00000EDA  8AC1              mov al,cl
00000EDC  98                cbw
00000EDD  99                cwd
00000EDE  E827FD            call 0xc08
00000EE1  B980D2            mov cx,0xd280
00000EE4  BEF717            mov si,0x17f7
00000EE7  BF7231            mov di,0x3172
00000EEA  E8C8FB            call 0xab5
00000EED  59                pop cx
00000EEE  5E                pop si
00000EEF  5F                pop di
00000EF0  E8ECFA            call 0x9df
00000EF3  3C67              cmp al,0x67
00000EF5  7306              jnc 0xefd
00000EF7  33C0              xor ax,ax
00000EF9  33DB              xor bx,bx
00000EFB  33D2              xor dx,dx
00000EFD  CB                retf
00000EFE  7D8A              jnl 0xe8a
00000F00  9D                popf
00000F01  D8891D7D          fmul dword [bx+di+0x7d1d]
00000F05  E9A28B            jmp 0x9aaa
00000F08  2E3A7D8E          cmp bh,[cs:di-0x72]
00000F0C  E338              jcxz 0xf46
00000F0E  8E637E            mov fs,word [bp+di+0x7e]
00000F11  49                dec cx
00000F12  92                xchg ax,dx
00000F13  2449              and al,0x49
00000F15  127ECD            adc bh,[bp-0x33]
00000F18  CC                int3
00000F19  CC                int3
00000F1A  CC                int3
00000F1B  4C                dec sp
00000F1C  7FAB              jg 0xec9
00000F1E  AA                stosb
00000F1F  AA                stosb
00000F20  AA                stosb
00000F21  2AF6              sub dh,dh
00000F23  C6809C80E6        mov byte [bx+si-0x7f64],0xe6
00000F28  7FB9              jg 0xee3
00000F2A  80D2BE            adc dl,0xbe
00000F2D  F717              not word [bx]
00000F2F  BF7231            mov di,0x3172
00000F32  E8FDFB            call 0xb32
00000F35  3C88              cmp al,0x88
00000F37  7355              jnc 0xf8e
00000F39  52                push dx
00000F3A  53                push bx
00000F3B  50                push ax
00000F3C  FEC0              inc al
00000F3E  B5FF              mov ch,0xff
00000F40  E804FD            call 0xc47
00000F43  59                pop cx
00000F44  5E                pop si
00000F45  5F                pop di
00000F46  50                push ax
00000F47  51                push cx
00000F48  E8BDFC            call 0xc08
00000F4B  59                pop cx
00000F4C  0AC0              or al,al
00000F4E  7402              jz 0xf52
00000F50  FEC8              dec al
00000F52  91                xchg ax,cx
00000F53  87DE              xchg bx,si
00000F55  87D7              xchg dx,di
00000F57  E881FA            call 0x9db
00000F5A  BF950F            mov di,0xf95
00000F5D  B90800            mov cx,0x8
00000F60  E8B001            call 0x1113
00000F63  59                pop cx
00000F64  D1E9              shr cx,1
00000F66  730E              jnc 0xf76
00000F68  51                push cx
00000F69  B981FB            mov cx,0xfb81
00000F6C  BE33F3            mov si,0xf333
00000F6F  BF0435            mov di,0x3504
00000F72  E840FB            call 0xab5
00000F75  59                pop cx
00000F76  02C1              add al,cl
00000F78  7214              jc 0xf8e
00000F7A  9D                popf
00000F7B  7410              jz 0xf8d
00000F7D  8BC8              mov cx,ax
00000F7F  8BF3              mov si,bx
00000F81  8BFA              mov di,dx
00000F83  B88100            mov ax,0x81
00000F86  33DB              xor bx,bx
00000F88  33D2              xor dx,dx
00000F8A  E8A5FB            call 0xb32
00000F8D  CB                retf
00000F8E  58                pop ax
00000F8F  B8CD00            mov ax,0xcd
00000F92  E957F2            jmp 0x1ec
00000F95  6D                insw
00000F96  2E1D1160          cs sbb ax,0x6011
00000F9A  317046            xor [bx+si+0x46],si
00000F9D  2CFE              sub al,0xfe
00000F9F  E57F              in ax,byte 0x7f
00000FA1  7436              jz 0xfd9
00000FA3  7C89              jl 0xf2e
00000FA5  8421              test [bx+di],ah
00000FA7  7753              ja 0xffc
00000FA9  3CFF              cmp al,0xff
00000FAB  C3                ret
00000FAC  2E7AD2            {pn} jpe 0xf81
00000FAF  7D5B              jnl 0x100c
00000FB1  95                xchg ax,bp
00000FB2  1D7C25            sbb ax,0x257c
00000FB5  B84658            mov ax,0x5846
00000FB8  637E16            arpl [bp+0x16],di
00000FBB  FC                cld
00000FBC  EF                out dx,ax
00000FBD  FD                std
00000FBE  7580              jnz 0xf40
00000FC0  D2                db 0xd2
00000FC1  F717              not word [bx]
00000FC3  7231              jc 0xff6
00000FC5  55                push bp
00000FC6  8BEC              mov bp,sp
00000FC8  83EC06            sub sp,0x6
00000FCB  0AC0              or al,al
00000FCD  7503              jnz 0xfd2
00000FCF  E9D000            jmp 0x10a2
00000FD2  33C9              xor cx,cx
00000FD4  F6C680            test dh,0x80
00000FD7  7404              jz 0xfdd
00000FD9  41                inc cx
00000FDA  80E67F            and dh,0x7f
00000FDD  51                push cx
00000FDE  B98100            mov cx,0x81
00000FE1  33F6              xor si,si
00000FE3  33FF              xor di,di
00000FE5  E8F6FB            call 0xbde
00000FE8  720C              jc 0xff6
00000FEA  91                xchg ax,cx
00000FEB  87DE              xchg bx,si
00000FED  87D7              xchg dx,di
00000FEF  E840FB            call 0xb32
00000FF2  59                pop cx
00000FF3  41                inc cx
00000FF4  41                inc cx
00000FF5  51                push cx
00000FF6  B97E4A            mov cx,0x4a7e
00000FF9  BE8EE9            mov si,0xe98e
00000FFC  BF6F0C            mov di,0xc6f
00000FFF  E8DCFB            call 0xbde
00001002  7305              jnc 0x1009
00001004  E8ED00            call 0x10f4
00001007  EB77              jmp 0x1080
00001009  BFA610            mov di,0x10a6
0000100C  B90200            mov cx,0x2
0000100F  51                push cx
00001010  57                push di
00001011  2E8B0D            mov cx,[cs:di]
00001014  2E8B7502          mov si,[cs:di+0x2]
00001018  2E8B7D04          mov di,[cs:di+0x4]
0000101C  E8BFFB            call 0xbde
0000101F  5F                pop di
00001020  59                pop cx
00001021  7208              jc 0x102b
00001023  83C712            add di,0x12
00001026  E2E7              loop 0x100f
00001028  83EF06            sub di,0x6
0000102B  83C706            add di,0x6
0000102E  8946FA            mov [bp-0x6],ax
00001031  895EFC            mov [bp-0x4],bx
00001034  8956FE            mov [bp-0x2],dx
00001037  57                push di
00001038  2E8B0D            mov cx,[cs:di]
0000103B  2E8B7502          mov si,[cs:di+0x2]
0000103F  2E8B7D04          mov di,[cs:di+0x4]
00001043  E8B3FC            call 0xcf9
00001046  52                push dx
00001047  53                push bx
00001048  50                push ax
00001049  8B46FA            mov ax,[bp-0x6]
0000104C  8B5EFC            mov bx,[bp-0x4]
0000104F  8B56FE            mov dx,[bp-0x2]
00001052  E860FA            call 0xab5
00001055  B98100            mov cx,0x81
00001058  33F6              xor si,si
0000105A  33FF              xor di,di
0000105C  E880F9            call 0x9df
0000105F  8BC8              mov cx,ax
00001061  8BF3              mov si,bx
00001063  8BFA              mov di,dx
00001065  58                pop ax
00001066  5B                pop bx
00001067  5A                pop dx
00001068  E8C7FA            call 0xb32
0000106B  E88600            call 0x10f4
0000106E  5F                pop di
0000106F  83C706            add di,0x6
00001072  2E8B0D            mov cx,[cs:di]
00001075  2E8B7502          mov si,[cs:di+0x2]
00001079  2E8B7D04          mov di,[cs:di+0x4]
0000107D  E85FF9            call 0x9df
00001080  59                pop cx
00001081  F6C102            test cl,0x2
00001084  7414              jz 0x109a
00001086  51                push cx
00001087  8BC8              mov cx,ax
00001089  8BF3              mov si,bx
0000108B  8BFA              mov di,dx
0000108D  B88121            mov ax,0x2181
00001090  BBA2DA            mov bx,0xdaa2
00001093  BA0F49            mov dx,0x490f
00001096  E842F9            call 0x9db
00001099  59                pop cx
0000109A  F6C101            test cl,0x1
0000109D  7403              jz 0x10a2
0000109F  80CE80            or dh,0x80
000010A2  8BE5              mov sp,bp
000010A4  5D                pop bp
000010A5  CB                retf
000010A6  7FE7              jg 0x108f
000010A8  CF                iret
000010A9  CC                int3
000010AA  13547F            adc dx,[si+0x7f]
000010AD  F6F4              div ah
000010AF  A23009            mov [0x930],al
000010B2  7F6A              jg 0x111e
000010B4  C1910A0680        rcl word [bx+di+0x60a],byte 0x80
000010B9  B59E              mov ch,0x9e
000010BB  8A6F44            mov ch,[bx+0x44]
000010BE  80822C3ACD        add byte [bp+si+0x3a2c],0xcd
000010C3  13806AC1          adc ax,[bx+si-0x3e96]
000010C7  91                xchg ax,cx
000010C8  0A068100          or al,[0x81]
000010CC  0000              add [bx+si],al
000010CE  0000              add [bx+si],al
000010D0  8021A2            and byte [bx+di],0xa2
000010D3  DA0F              fimul dword [bx]
000010D5  49                dec cx
000010D6  7DE8              jnl 0x10c0
000010D8  A28B2E            mov [0x2e8b],al
000010DB  BA7D8E            mov dx,0x8e7d
000010DE  E338              jcxz 0x1118
000010E0  8E637E            mov fs,word [bp+di+0x7e]
000010E3  49                dec cx
000010E4  92                xchg ax,dx
000010E5  2449              and al,0x49
000010E7  92                xchg ax,dx
000010E8  7ECD              jng 0x10b7
000010EA  CC                int3
000010EB  CC                int3
000010EC  CC                int3
000010ED  4C                dec sp
000010EE  7FAB              jg 0x109b
000010F0  AA                stosb
000010F1  AA                stosb
000010F2  AA                stosb
000010F3  AA                stosb
000010F4  BFD610            mov di,0x10d6
000010F7  B90500            mov cx,0x5
000010FA  52                push dx
000010FB  53                push bx
000010FC  50                push ax
000010FD  51                push cx
000010FE  57                push di
000010FF  8BC8              mov cx,ax
00001101  8BF3              mov si,bx
00001103  8BFA              mov di,dx
00001105  E8ADF9            call 0xab5
00001108  5F                pop di
00001109  59                pop cx
0000110A  E80600            call 0x1113
0000110D  59                pop cx
0000110E  5E                pop si
0000110F  5F                pop di
00001110  E9A2F9            jmp 0xab5
00001113  55                push bp
00001114  8BEC              mov bp,sp
00001116  83EC06            sub sp,0x6
00001119  8946FA            mov [bp-0x6],ax
0000111C  895EFC            mov [bp-0x4],bx
0000111F  8956FE            mov [bp-0x2],dx
00001122  2E8B05            mov ax,[cs:di]
00001125  2E8B5D02          mov bx,[cs:di+0x2]
00001129  2E8B5504          mov dx,[cs:di+0x4]
0000112D  51                push cx
0000112E  57                push di
0000112F  EB10              jmp 0x1141
00001131  51                push cx
00001132  57                push di
00001133  2E8B0D            mov cx,[cs:di]
00001136  2E8B7502          mov si,[cs:di+0x2]
0000113A  2E8B7D04          mov di,[cs:di+0x4]
0000113E  E89EF8            call 0x9df
00001141  8B4EFA            mov cx,[bp-0x6]
00001144  8B76FC            mov si,[bp-0x4]
00001147  8B7EFE            mov di,[bp-0x2]
0000114A  E868F9            call 0xab5
0000114D  5F                pop di
0000114E  59                pop cx
0000114F  83C706            add di,0x6
00001152  E2DD              loop 0x1131
00001154  B98100            mov cx,0x81
00001157  33F6              xor si,si
00001159  33FF              xor di,di
0000115B  E881F8            call 0x9df
0000115E  8BE5              mov sp,bp
00001160  5D                pop bp
00001161  C3                ret
00001162  E84B00            call 0x11b0
00001165  33C0              xor ax,ax
00001167  8BDC              mov bx,sp
00001169  368B5F04          mov bx,[ss:bx+0x4]
0000116D  0BDB              or bx,bx
0000116F  7404              jz 0x1175
00001171  92                xchg ax,dx
00001172  F7F3              div bx
00001174  92                xchg ax,dx
00001175  CA0200            retf word 0x2
00001178  E83500            call 0x11b0
0000117B  93                xchg ax,bx
0000117C  B88000            mov ax,0x80
0000117F  B92000            mov cx,0x20
00001182  F6C680            test dh,0x80
00001185  750A              jnz 0x1191
00001187  D1E3              shl bx,1
00001189  D1D2              rcl dx,1
0000118B  FEC8              dec al
0000118D  E2F3              loop 0x1182
0000118F  32C0              xor al,al
00001191  80E67F            and dh,0x7f
00001194  CB                retf
00001195  E81800            call 0x11b0
00001198  9B2EDF06AE11      wait fild word [cs:0x11ae]
0000119E  9BDB063C8F        wait fild dword [0x8f3c]
000011A3  9BD9E1            wait fabs
000011A6  9BD9FD            wait fscale
000011A9  9BDDD9            wait fstp st1
000011AC  9BCB              wait retf
000011AE  E1FF              loope 0x11af
000011B0  A13C8F            mov ax,[0x8f3c]
000011B3  8B1E3E8F          mov bx,[0x8f3e]
000011B7  8BC8              mov cx,ax
000011B9  2EF726E611        mul word [cs:0x11e6]
000011BE  D1E1              shl cx,1
000011C0  D1E1              shl cx,1
000011C2  D1E1              shl cx,1
000011C4  02E9              add ch,cl
000011C6  03D1              add dx,cx
000011C8  03D3              add dx,bx
000011CA  D1E3              shl bx,1
000011CC  D1E3              shl bx,1
000011CE  03D3              add dx,bx
000011D0  02F3              add dh,bl
000011D2  B105              mov cl,0x5
000011D4  D3E3              shl bx,cl
000011D6  02F3              add dh,bl
000011D8  050100            add ax,0x1
000011DB  83D200            adc dx,0x0
000011DE  A33C8F            mov [0x8f3c],ax
000011E1  89163E8F          mov [0x8f3e],dx
000011E5  C3                ret
000011E6  0584B4            add ax,0xb484
000011E9  2CCD              sub al,0xcd
000011EB  21890E3C          and [bx+di+0x3c0e],cx
000011EF  8F                db 0x8f
000011F0  89163E8F          mov [0x8f3e],dx
000011F4  CB                retf
000011F5  57                push di
000011F6  FC                cld
000011F7  8BD8              mov bx,ax
000011F9  0BD2              or dx,dx
000011FB  7D0D              jnl 0x120a
000011FD  F7D3              not bx
000011FF  F7D2              not dx
00001201  83C301            add bx,0x1
00001204  83D200            adc dx,0x0
00001207  B02D              mov al,0x2d
00001209  AA                stosb
0000120A  BE4712            mov si,0x1247
0000120D  B109              mov cl,0x9
0000120F  2E3B5402          cmp dx,[cs:si+0x2]
00001213  7207              jc 0x121c
00001215  770C              ja 0x1223
00001217  2E3B1C            cmp bx,[cs:si]
0000121A  7307              jnc 0x1223
0000121C  83C604            add si,0x4
0000121F  FEC9              dec cl
00001221  75EC              jnz 0x120f
00001223  FEC1              inc cl
00001225  B02F              mov al,0x2f
00001227  FEC0              inc al
00001229  2E2B1C            sub bx,[cs:si]
0000122C  2E1B5402          sbb dx,[cs:si+0x2]
00001230  73F5              jnc 0x1227
00001232  2E031C            add bx,[cs:si]
00001235  2E135402          adc dx,[cs:si+0x2]
00001239  83C604            add si,0x4
0000123C  AA                stosb
0000123D  FEC9              dec cl
0000123F  75E4              jnz 0x1225
00001241  8BCF              mov cx,di
00001243  5F                pop di
00001244  2BCF              sub cx,di
00001246  C3                ret
00001247  00CA              add dl,cl
00001249  9A3B00E1F5        call word 0xf5e1:word 0x3b
0000124E  058096            add ax,0x9680
00001251  98                cbw
00001252  004042            add [bx+si+0x42],al
00001255  0F00A08601        verr [bx+si+0x186]
0000125A  0010              add [bx+si],dl
0000125C  27                daa
0000125D  0000              add [bx+si],al
0000125F  E80300            call 0x1265
00001262  006400            add [si+0x0],ah
00001265  0000              add [bx+si],al
00001267  0A00              or al,[bx+si]
00001269  0000              add [bx+si],al
0000126B  0100              add [bx+si],ax
0000126D  0000              add [bx+si],al
0000126F  33C0              xor ax,ax
00001271  33D2              xor dx,dx
00001273  33F6              xor si,si
00001275  E359              jcxz 0x12d0
00001277  26803D2B          cmp byte [es:di],0x2b
0000127B  7407              jz 0x1284
0000127D  26803D2D          cmp byte [es:di],0x2d
00001281  7505              jnz 0x1288
00001283  46                inc si
00001284  47                inc di
00001285  49                dec cx
00001286  E348              jcxz 0x12d0
00001288  26803D24          cmp byte [es:di],0x24
0000128C  7444              jz 0x12d2
0000128E  268A1D            mov bl,[es:di]
00001291  80EB3A            sub bl,0x3a
00001294  80C30A            add bl,0xa
00001297  7328              jnc 0x12c1
00001299  F7C200F0          test dx,0xf000
0000129D  7531              jnz 0x12d0
0000129F  53                push bx
000012A0  D1E0              shl ax,1
000012A2  D1D2              rcl dx,1
000012A4  52                push dx
000012A5  50                push ax
000012A6  D1E0              shl ax,1
000012A8  D1D2              rcl dx,1
000012AA  D1E0              shl ax,1
000012AC  D1D2              rcl dx,1
000012AE  5B                pop bx
000012AF  03C3              add ax,bx
000012B1  5B                pop bx
000012B2  13D3              adc dx,bx
000012B4  5B                pop bx
000012B5  32FF              xor bh,bh
000012B7  03C3              add ax,bx
000012B9  83D200            adc dx,0x0
000012BC  7812              js 0x12d0
000012BE  47                inc di
000012BF  E2CD              loop 0x128e
000012C1  4E                dec si
000012C2  750A              jnz 0x12ce
000012C4  F7D0              not ax
000012C6  F7D2              not dx
000012C8  050100            add ax,0x1
000012CB  83D200            adc dx,0x0
000012CE  F8                clc
000012CF  C3                ret
000012D0  F9                stc
000012D1  C3                ret
000012D2  47                inc di
000012D3  49                dec cx
000012D4  E3FA              jcxz 0x12d0
000012D6  268A1D            mov bl,[es:di]
000012D9  80FB61            cmp bl,0x61
000012DC  7203              jc 0x12e1
000012DE  80EB20            sub bl,0x20
000012E1  80EB3A            sub bl,0x3a
000012E4  80C30A            add bl,0xa
000012E7  720B              jc 0x12f4
000012E9  80EB17            sub bl,0x17
000012EC  80C306            add bl,0x6
000012EF  73D0              jnc 0x12c1
000012F1  80C30A            add bl,0xa
000012F4  B704              mov bh,0x4
000012F6  D1E0              shl ax,1
000012F8  D1D2              rcl dx,1
000012FA  72D4              jc 0x12d0
000012FC  FECF              dec bh
000012FE  75F6              jnz 0x12f6
00001300  0AC3              or al,bl
00001302  47                inc di
00001303  E2D1              loop 0x12d6
00001305  EBBA              jmp 0x12c1
00001307  55                push bp
00001308  8BEC              mov bp,sp
0000130A  83EC20            sub sp,0x20
0000130D  8B460E            mov ax,[bp+0xe]
00001310  8B5610            mov dx,[bp+0x10]
00001313  8D7EE0            lea di,[bp-0x20]
00001316  16                push ss
00001317  07                pop es
00001318  E8DAFE            call 0x11f5
0000131B  1E                push ds
0000131C  8BF7              mov si,di
0000131E  16                push ss
0000131F  1F                pop ds
00001320  C47E08            les di,word [bp+0x8]
00001323  8B5606            mov dx,[bp+0x6]
00001326  8B460C            mov ax,[bp+0xc]
00001329  3BC2              cmp ax,dx
0000132B  7E02              jng 0x132f
0000132D  8BC2              mov ax,dx
0000132F  3BCA              cmp cx,dx
00001331  7E02              jng 0x1335
00001333  8BCA              mov cx,dx
00001335  3BC1              cmp ax,cx
00001337  7D02              jnl 0x133b
00001339  8BC1              mov ax,cx
0000133B  FC                cld
0000133C  AA                stosb
0000133D  2BC1              sub ax,cx
0000133F  7408              jz 0x1349
00001341  51                push cx
00001342  8BC8              mov cx,ax
00001344  B020              mov al,0x20
00001346  F3AA              rep stosb
00001348  59                pop cx
00001349  F3A4              rep movsb
0000134B  1F                pop ds
0000134C  8BE5              mov sp,bp
0000134E  5D                pop bp
0000134F  CA0C00            retf word 0xc
00001352  55                push bp
00001353  8BEC              mov bp,sp
00001355  C47E0A            les di,word [bp+0xa]
00001358  268A0D            mov cl,[es:di]
0000135B  32ED              xor ch,ch
0000135D  47                inc di
0000135E  E309              jcxz 0x1369
00001360  26803D20          cmp byte [es:di],0x20
00001364  7503              jnz 0x1369
00001366  47                inc di
00001367  E2F7              loop 0x1360
00001369  E803FF            call 0x126f
0000136C  7202              jc 0x1370
0000136E  E309              jcxz 0x1379
00001370  8BCF              mov cx,di
00001372  2B4E0A            sub cx,[bp+0xa]
00001375  33C0              xor ax,ax
00001377  33D2              xor dx,dx
00001379  C47E06            les di,word [bp+0x6]
0000137C  26890D            mov [es:di],cx
0000137F  5D                pop bp
00001380  CA0800            retf word 0x8
00001383  8BDC              mov bx,sp
00001385  1E                push ds
00001386  36C47F08          les di,word [ss:bx+0x8]
0000138A  36C57704          lds si,word [ss:bx+0x4]
0000138E  FC                cld
0000138F  33C0              xor ax,ax
00001391  AB                stosw
00001392  B8B0D7            mov ax,0xd7b0
00001395  AB                stosw
00001396  B88000            mov ax,0x80
00001399  AB                stosw
0000139A  33C0              xor ax,ax
0000139C  AB                stosw
0000139D  AB                stosw
0000139E  AB                stosw
0000139F  8D4574            lea ax,[di+0x74]
000013A2  AB                stosw
000013A3  8CC0              mov ax,es
000013A5  AB                stosw
000013A6  B8A714            mov ax,0x14a7
000013A9  AB                stosw
000013AA  8CC8              mov ax,cs
000013AC  AB                stosw
000013AD  33C0              xor ax,ax
000013AF  B90E00            mov cx,0xe
000013B2  F3AB              rep stosw
000013B4  AC                lodsb
000013B5  3C4F              cmp al,0x4f
000013B7  7602              jna 0x13bb
000013B9  B04F              mov al,0x4f
000013BB  8AC8              mov cl,al
000013BD  32ED              xor ch,ch
000013BF  F3A4              rep movsb
000013C1  32C0              xor al,al
000013C3  AA                stosb
000013C4  1F                pop ds
000013C5  CA0800            retf word 0x8
000013C8  8BDC              mov bx,sp
000013CA  36C47F0A          les di,word [ss:bx+0xa]
000013CE  368B4704          mov ax,[ss:bx+0x4]
000013D2  26894504          mov [es:di+0x4],ax
000013D6  368B4706          mov ax,[ss:bx+0x6]
000013DA  2689450C          mov [es:di+0xc],ax
000013DE  368B4708          mov ax,[ss:bx+0x8]
000013E2  2689450E          mov [es:di+0xe],ax
000013E6  33C0              xor ax,ax
000013E8  26894508          mov [es:di+0x8],ax
000013EC  2689450A          mov [es:di+0xa],ax
000013F0  CA0A00            retf word 0xa
000013F3  BAB1D7            mov dx,0xd7b1
000013F6  EB08              jmp 0x1400
000013F8  BAB2D7            mov dx,0xd7b2
000013FB  EB03              jmp 0x1400
000013FD  BAB3D7            mov dx,0xd7b3
00001400  8BDC              mov bx,sp
00001402  36C47F04          les di,word [ss:bx+0x4]
00001406  268B4502          mov ax,[es:di+0x2]
0000140A  3DB1D7            cmp ax,0xd7b1
0000140D  7412              jz 0x1421
0000140F  3DB2D7            cmp ax,0xd7b2
00001412  740D              jz 0x1421
00001414  3DB0D7            cmp ax,0xd7b0
00001417  740D              jz 0x1426
00001419  C706558F6600      mov word [0x8f55],0x66
0000141F  EB21              jmp 0x1442
00001421  52                push dx
00001422  E86B00            call 0x1490
00001425  5A                pop dx
00001426  33C0              xor ax,ax
00001428  26895502          mov [es:di+0x2],dx
0000142C  26894508          mov [es:di+0x8],ax
00001430  2689450A          mov [es:di+0xa],ax
00001434  BB1000            mov bx,0x10
00001437  E85C00            call 0x1496
0000143A  7406              jz 0x1442
0000143C  26C74502B0D7      mov word [es:di+0x2],0xd7b0
00001442  CA0400            retf word 0x4
00001445  8BDC              mov bx,sp
00001447  36C47F04          les di,word [ss:bx+0x4]
0000144B  E81F00            call 0x146d
0000144E  7503              jnz 0x1453
00001450  E83100            call 0x1484
00001453  CA0400            retf word 0x4
00001456  8BDC              mov bx,sp
00001458  36C47F04          les di,word [ss:bx+0x4]
0000145C  E80E00            call 0x146d
0000145F  7509              jnz 0x146a
00001461  E82C00            call 0x1490
00001464  26C74502B0D7      mov word [es:di+0x2],0xd7b0
0000146A  CA0400            retf word 0x4
0000146D  26817D02B1D7      cmp word [es:di+0x2],0xd7b1
00001473  740E              jz 0x1483
00001475  26817D02B2D7      cmp word [es:di+0x2],0xd7b2
0000147B  7406              jz 0x1483
0000147D  C706558F6700      mov word [0x8f55],0x67
00001483  C3                ret
00001484  BB1400            mov bx,0x14
00001487  26817D02B2D7      cmp word [es:di+0x2],0xd7b2
0000148D  7407              jz 0x1496
0000148F  C3                ret
00001490  E8F1FF            call 0x1484
00001493  BB1C00            mov bx,0x1c
00001496  06                push es
00001497  57                push di
00001498  06                push es
00001499  57                push di
0000149A  26FF19            call word far [es:bx+di]
0000149D  0BC0              or ax,ax
0000149F  7403              jz 0x14a4
000014A1  A3558F            mov [0x8f55],ax
000014A4  5F                pop di
000014A5  07                pop es
000014A6  C3                ret
000014A7  8BDC              mov bx,sp
000014A9  1E                push ds
000014AA  36C57F04          lds di,word [ss:bx+0x4]
000014AE  33C9              xor cx,cx
000014B0  890D              mov [di],cx
000014B2  B8003D            mov ax,0x3d00
000014B5  817D02B1D7        cmp word [di+0x2],0xd7b1
000014BA  740D              jz 0x14c9
000014BC  B002              mov al,0x2
000014BE  FF05              inc word [di]
000014C0  817D02B3D7        cmp word [di+0x2],0xd7b3
000014C5  7402              jz 0x14c9
000014C7  B43C              mov ah,0x3c
000014C9  807D3000          cmp byte [di+0x30],0x0
000014CD  7409              jz 0x14d8
000014CF  8D5530            lea dx,[di+0x30]
000014D2  CD21              int byte 0x21
000014D4  724B              jc 0x1521
000014D6  8905              mov [di],ax
000014D8  B88415            mov ax,0x1584
000014DB  BB7F15            mov bx,0x157f
000014DE  817D02B1D7        cmp word [di+0x2],0xd7b1
000014E3  7426              jz 0x150b
000014E5  8B1D              mov bx,[di]
000014E7  B80044            mov ax,0x4400
000014EA  CD21              int byte 0x21
000014EC  B8DD15            mov ax,0x15dd
000014EF  8BD8              mov bx,ax
000014F1  F6C280            test dl,0x80
000014F4  7510              jnz 0x1506
000014F6  817D02B3D7        cmp word [di+0x2],0xd7b3
000014FB  7503              jnz 0x1500
000014FD  E82500            call 0x1525
00001500  B8B415            mov ax,0x15b4
00001503  BB7F15            mov bx,0x157f
00001506  C74502B2D7        mov word [di+0x2],0xd7b2
0000150B  894514            mov [di+0x14],ax
0000150E  8C4D16            mov word [di+0x16],cs
00001511  895D18            mov [di+0x18],bx
00001514  8C4D1A            mov word [di+0x1a],cs
00001517  C7451C0116        mov word [di+0x1c],0x1601
0000151C  8C4D1E            mov word [di+0x1e],cs
0000151F  33C0              xor ax,ax
00001521  1F                pop ds
00001522  CA0400            retf word 0x4
00001525  33D2              xor dx,dx
00001527  33C9              xor cx,cx
00001529  8B1D              mov bx,[di]
0000152B  B80242            mov ax,0x4202
0000152E  CD21              int byte 0x21
00001530  2D8000            sub ax,0x80
00001533  83DA00            sbb dx,0x0
00001536  7304              jnc 0x153c
00001538  33C0              xor ax,ax
0000153A  33D2              xor dx,dx
0000153C  8BCA              mov cx,dx
0000153E  8BD0              mov dx,ax
00001540  8B1D              mov bx,[di]
00001542  B80042            mov ax,0x4200
00001545  CD21              int byte 0x21
00001547  8D958000          lea dx,[di+0x80]
0000154B  B98000            mov cx,0x80
0000154E  8B1D              mov bx,[di]
00001550  B43F              mov ah,0x3f
00001552  CD21              int byte 0x21
00001554  7302              jnc 0x1558
00001556  33C0              xor ax,ax
00001558  33DB              xor bx,bx
0000155A  3BD8              cmp bx,ax
0000155C  7420              jz 0x157e
0000155E  80B980001A        cmp byte [bx+di+0x80],0x1a
00001563  7403              jz 0x1568
00001565  43                inc bx
00001566  EBF2              jmp 0x155a
00001568  8BD3              mov dx,bx
0000156A  2BD0              sub dx,ax
0000156C  B9FFFF            mov cx,0xffff
0000156F  8B1D              mov bx,[di]
00001571  B80242            mov ax,0x4202
00001574  CD21              int byte 0x21
00001576  33C9              xor cx,cx
00001578  8B1D              mov bx,[di]
0000157A  B440              mov ah,0x40
0000157C  CD21              int byte 0x21
0000157E  C3                ret
0000157F  33C0              xor ax,ax
00001581  CA0400            retf word 0x4
00001584  8BDC              mov bx,sp
00001586  1E                push ds
00001587  36C47F04          les di,word [ss:bx+0x4]
0000158B  26C5550C          lds dx,word [es:di+0xc]
0000158F  268B4D04          mov cx,[es:di+0x4]
00001593  268B1D            mov bx,[es:di]
00001596  B43F              mov ah,0x3f
00001598  CD21              int byte 0x21
0000159A  7210              jc 0x15ac
0000159C  2689450A          mov [es:di+0xa],ax
000015A0  33C0              xor ax,ax
000015A2  26C745080000      mov word [es:di+0x8],0x0
000015A8  1F                pop ds
000015A9  CA0400            retf word 0x4
000015AC  26C7450A0000      mov word [es:di+0xa],0x0
000015B2  EBEE              jmp 0x15a2
000015B4  8BDC              mov bx,sp
000015B6  1E                push ds
000015B7  36C47F04          les di,word [ss:bx+0x4]
000015BB  26C5550C          lds dx,word [es:di+0xc]
000015BF  268B4D08          mov cx,[es:di+0x8]
000015C3  268B1D            mov bx,[es:di]
000015C6  B440              mov ah,0x40
000015C8  CD21              int byte 0x21
000015CA  7207              jc 0x15d3
000015CC  2BC1              sub ax,cx
000015CE  7403              jz 0x15d3
000015D0  B86500            mov ax,0x65
000015D3  26C745080000      mov word [es:di+0x8],0x0
000015D9  1F                pop ds
000015DA  CA0400            retf word 0x4
000015DD  8BDC              mov bx,sp
000015DF  1E                push ds
000015E0  36C47F04          les di,word [ss:bx+0x4]
000015E4  26C5550C          lds dx,word [es:di+0xc]
000015E8  268B4D08          mov cx,[es:di+0x8]
000015EC  268B1D            mov bx,[es:di]
000015EF  B440              mov ah,0x40
000015F1  CD21              int byte 0x21
000015F3  7202              jc 0x15f7
000015F5  33C0              xor ax,ax
000015F7  26C745080000      mov word [es:di+0x8],0x0
000015FD  1F                pop ds
000015FE  CA0400            retf word 0x4
00001601  8BDC              mov bx,sp
00001603  36C47F04          les di,word [ss:bx+0x4]
00001607  268B1D            mov bx,[es:di]
0000160A  83FB04            cmp bx,0x4
0000160D  7604              jna 0x1613
0000160F  B43E              mov ah,0x3e
00001611  CD21              int byte 0x21
00001613  33C0              xor ax,ax
00001615  CA0400            retf word 0x4
00001618  26817D02B1D7      cmp word [es:di+0x2],0xd7b1
0000161E  7519              jnz 0x1639
00001620  833E558F00        cmp word [0x8f55],0x0
00001625  7518              jnz 0x163f
00001627  5E                pop si
00001628  1E                push ds
00001629  06                push es
0000162A  57                push di
0000162B  268B5D08          mov bx,[es:di+0x8]
0000162F  268B550A          mov dx,[es:di+0xa]
00001633  26C47D0C          les di,word [es:di+0xc]
00001637  FFE6              jmp si
00001639  C706558F6800      mov word [0x8f55],0x68
0000163F  C3                ret
00001640  3BDA              cmp bx,dx
00001642  7405              jz 0x1649
00001644  268A01            mov al,[es:bx+di]
00001647  F8                clc
00001648  C3                ret
00001649  51                push cx
0000164A  1E                push ds
0000164B  56                push si
0000164C  8E5EFE            mov ds,word [bp-0x2]
0000164F  C47EFA            les di,word [bp-0x6]
00001652  26895D08          mov [es:di+0x8],bx
00001656  06                push es
00001657  57                push di
00001658  26FF5D14          call word far [es:di+0x14]
0000165C  0BC0              or ax,ax
0000165E  7403              jz 0x1663
00001660  A3558F            mov [0x8f55],ax
00001663  C47EFA            les di,word [bp-0x6]
00001666  268B5D08          mov bx,[es:di+0x8]
0000166A  268B550A          mov dx,[es:di+0xa]
0000166E  26C47D0C          les di,word [es:di+0xc]
00001672  5E                pop si
00001673  1F                pop ds
00001674  59                pop cx
00001675  3BDA              cmp bx,dx
00001677  75CB              jnz 0x1644
00001679  B01A              mov al,0x1a
0000167B  F9                stc
0000167C  C3                ret
0000167D  5E                pop si
0000167E  5F                pop di
0000167F  07                pop es
00001680  1F                pop ds
00001681  26895D08          mov [es:di+0x8],bx
00001685  FFE6              jmp si
00001687  26817D02B2D7      cmp word [es:di+0x2],0xd7b2
0000168D  7519              jnz 0x16a8
0000168F  833E558F00        cmp word [0x8f55],0x0
00001694  7518              jnz 0x16ae
00001696  5E                pop si
00001697  1E                push ds
00001698  06                push es
00001699  57                push di
0000169A  268B5D08          mov bx,[es:di+0x8]
0000169E  268B5504          mov dx,[es:di+0x4]
000016A2  26C47D0C          les di,word [es:di+0xc]
000016A6  FFE6              jmp si
000016A8  C706558F6900      mov word [0x8f55],0x69
000016AE  C3                ret
000016AF  268801            mov [es:bx+di],al
000016B2  43                inc bx
000016B3  3BDA              cmp bx,dx
000016B5  7401              jz 0x16b8
000016B7  C3                ret
000016B8  51                push cx
000016B9  1E                push ds
000016BA  56                push si
000016BB  8E5EFE            mov ds,word [bp-0x2]
000016BE  C47EFA            les di,word [bp-0x6]
000016C1  26895D08          mov [es:di+0x8],bx
000016C5  06                push es
000016C6  57                push di
000016C7  26FF5D14          call word far [es:di+0x14]
000016CB  0BC0              or ax,ax
000016CD  7403              jz 0x16d2
000016CF  A3558F            mov [0x8f55],ax
000016D2  C47EFA            les di,word [bp-0x6]
000016D5  268B5D08          mov bx,[es:di+0x8]
000016D9  268B5504          mov dx,[es:di+0x4]
000016DD  26C47D0C          les di,word [es:di+0xc]
000016E1  5E                pop si
000016E2  1F                pop ds
000016E3  59                pop cx
000016E4  C3                ret
000016E5  5E                pop si
000016E6  5F                pop di
000016E7  07                pop es
000016E8  1F                pop ds
000016E9  26895D08          mov [es:di+0x8],bx
000016ED  FFE6              jmp si
000016EF  55                push bp
000016F0  8BEC              mov bp,sp
000016F2  C47E06            les di,word [bp+0x6]
000016F5  E820FF            call 0x1618
000016F8  7517              jnz 0x1711
000016FA  E843FF            call 0x1640
000016FD  3C1A              cmp al,0x1a
000016FF  740D              jz 0x170e
00001701  43                inc bx
00001702  3C0D              cmp al,0xd
00001704  75F4              jnz 0x16fa
00001706  E837FF            call 0x1640
00001709  3C0A              cmp al,0xa
0000170B  7501              jnz 0x170e
0000170D  43                inc bx
0000170E  E86CFF            call 0x167d
00001711  5D                pop bp
00001712  8BDC              mov bx,sp
00001714  36C47F04          les di,word [ss:bx+0x4]
00001718  26817D02B1D7      cmp word [es:di+0x2],0xd7b1
0000171E  7514              jnz 0x1734
00001720  833E558F00        cmp word [0x8f55],0x0
00001725  750A              jnz 0x1731
00001727  06                push es
00001728  57                push di
00001729  26FF5D18          call word far [es:di+0x18]
0000172D  0BC0              or ax,ax
0000172F  7506              jnz 0x1737
00001731  CA0400            retf word 0x4
00001734  B86800            mov ax,0x68
00001737  A3558F            mov [0x8f55],ax
0000173A  EBF5              jmp 0x1731
0000173C  55                push bp
0000173D  8BEC              mov bp,sp
0000173F  C47E06            les di,word [bp+0x6]
00001742  E842FF            call 0x1687
00001745  750D              jnz 0x1754
00001747  B00D              mov al,0xd
00001749  E863FF            call 0x16af
0000174C  B00A              mov al,0xa
0000174E  E85EFF            call 0x16af
00001751  E891FF            call 0x16e5
00001754  5D                pop bp
00001755  8BDC              mov bx,sp
00001757  36C47F04          les di,word [ss:bx+0x4]
0000175B  26817D02B2D7      cmp word [es:di+0x2],0xd7b2
00001761  7514              jnz 0x1777
00001763  833E558F00        cmp word [0x8f55],0x0
00001768  750A              jnz 0x1774
0000176A  06                push es
0000176B  57                push di
0000176C  26FF5D18          call word far [es:di+0x18]
00001770  0BC0              or ax,ax
00001772  7506              jnz 0x177a
00001774  CA0400            retf word 0x4
00001777  B86900            mov ax,0x69
0000177A  A3558F            mov [0x8f55],ax
0000177D  EBF5              jmp 0x1774
0000177F  55                push bp
00001780  8BEC              mov bp,sp
00001782  C47E06            les di,word [bp+0x6]
00001785  E890FE            call 0x1618
00001788  750B              jnz 0x1795
0000178A  E8B3FE            call 0x1640
0000178D  7201              jc 0x1790
0000178F  43                inc bx
00001790  E8EAFE            call 0x167d
00001793  5D                pop bp
00001794  CB                retf
00001795  B01A              mov al,0x1a
00001797  EBFA              jmp 0x1793
00001799  55                push bp
0000179A  8BEC              mov bp,sp
0000179C  C47E0A            les di,word [bp+0xa]
0000179F  E8E5FE            call 0x1687
000017A2  7516              jnz 0x17ba
000017A4  8B4E06            mov cx,[bp+0x6]
000017A7  49                dec cx
000017A8  7E07              jng 0x17b1
000017AA  B020              mov al,0x20
000017AC  E800FF            call 0x16af
000017AF  E2F9              loop 0x17aa
000017B1  8A4608            mov al,[bp+0x8]
000017B4  E8F8FE            call 0x16af
000017B7  E82BFF            call 0x16e5
000017BA  5D                pop bp
000017BB  CA0400            retf word 0x4
000017BE  55                push bp
000017BF  8BEC              mov bp,sp
000017C1  C47E0C            les di,word [bp+0xc]
000017C4  E851FE            call 0x1618
000017C7  7525              jnz 0x17ee
000017C9  C57608            lds si,word [bp+0x8]
000017CC  33C9              xor cx,cx
000017CE  E86FFE            call 0x1640
000017D1  3C0D              cmp al,0xd
000017D3  740E              jz 0x17e3
000017D5  3C1A              cmp al,0x1a
000017D7  740A              jz 0x17e3
000017D9  43                inc bx
000017DA  41                inc cx
000017DB  46                inc si
000017DC  8804              mov [si],al
000017DE  3B4E06            cmp cx,[bp+0x6]
000017E1  75EB              jnz 0x17ce
000017E3  2BF1              sub si,cx
000017E5  880C              mov [si],cl
000017E7  E893FE            call 0x167d
000017EA  5D                pop bp
000017EB  CA0600            retf word 0x6
000017EE  C47E08            les di,word [bp+0x8]
000017F1  26C60500          mov byte [es:di],0x0
000017F5  EBF3              jmp 0x17ea
000017F7  55                push bp
000017F8  8BEC              mov bp,sp
000017FA  C47E0C            les di,word [bp+0xc]
000017FD  E887FE            call 0x1687
00001800  7525              jnz 0x1827
00001802  C57608            lds si,word [bp+0x8]
00001805  8B4E06            mov cx,[bp+0x6]
00001808  FC                cld
00001809  AC                lodsb
0000180A  32E4              xor ah,ah
0000180C  2BC8              sub cx,ax
0000180E  7E09              jng 0x1819
00001810  50                push ax
00001811  B020              mov al,0x20
00001813  E899FE            call 0x16af
00001816  E2F9              loop 0x1811
00001818  58                pop ax
00001819  8BC8              mov cx,ax
0000181B  E307              jcxz 0x1824
0000181D  FC                cld
0000181E  AC                lodsb
0000181F  E88DFE            call 0x16af
00001822  E2F9              loop 0x181d
00001824  E8BEFE            call 0x16e5
00001827  5D                pop bp
00001828  CA0600            retf word 0x6
0000182B  83EC20            sub sp,0x20
0000182E  55                push bp
0000182F  8BEC              mov bp,sp
00001831  C47E26            les di,word [bp+0x26]
00001834  E8E1FD            call 0x1618
00001837  7543              jnz 0x187c
00001839  33F6              xor si,si
0000183B  E802FE            call 0x1640
0000183E  3C1A              cmp al,0x1a
00001840  741A              jz 0x185c
00001842  3C20              cmp al,0x20
00001844  7703              ja 0x1849
00001846  43                inc bx
00001847  EBF2              jmp 0x183b
00001849  E8F4FD            call 0x1640
0000184C  3C20              cmp al,0x20
0000184E  760C              jna 0x185c
00001850  43                inc bx
00001851  83FE20            cmp si,0x20
00001854  74F3              jz 0x1849
00001856  884202            mov [bp+si+0x2],al
00001859  46                inc si
0000185A  EBED              jmp 0x1849
0000185C  8BCE              mov cx,si
0000185E  E81CFE            call 0x167d
00001861  E319              jcxz 0x187c
00001863  8D7E02            lea di,[bp+0x2]
00001866  16                push ss
00001867  07                pop es
00001868  E804FA            call 0x126f
0000186B  7209              jc 0x1876
0000186D  0BC9              or cx,cx
0000186F  7505              jnz 0x1876
00001871  5D                pop bp
00001872  83C420            add sp,0x20
00001875  CB                retf
00001876  C706558F6A00      mov word [0x8f55],0x6a
0000187C  33C0              xor ax,ax
0000187E  33D2              xor dx,dx
00001880  EBEF              jmp 0x1871
00001882  83EC20            sub sp,0x20
00001885  55                push bp
00001886  8BEC              mov bp,sp
00001888  8B4628            mov ax,[bp+0x28]
0000188B  8B562A            mov dx,[bp+0x2a]
0000188E  8D7E02            lea di,[bp+0x2]
00001891  16                push ss
00001892  07                pop es
00001893  E85FF9            call 0x11f5
00001896  C47E2C            les di,word [bp+0x2c]
00001899  E8EBFD            call 0x1687
0000189C  7521              jnz 0x18bf
0000189E  8B4626            mov ax,[bp+0x26]
000018A1  2BC1              sub ax,cx
000018A3  7E0B              jng 0x18b0
000018A5  51                push cx
000018A6  8BC8              mov cx,ax
000018A8  B020              mov al,0x20
000018AA  E802FE            call 0x16af
000018AD  E2F9              loop 0x18a8
000018AF  59                pop cx
000018B0  8D7602            lea si,[bp+0x2]
000018B3  16                push ss
000018B4  1F                pop ds
000018B5  FC                cld
000018B6  AC                lodsb
000018B7  E8F5FD            call 0x16af
000018BA  E2F9              loop 0x18b5
000018BC  E826FE            call 0x16e5
000018BF  5D                pop bp
000018C0  83C420            add sp,0x20
000018C3  CA0600            retf word 0x6
000018C6  8BDC              mov bx,sp
000018C8  1E                push ds
000018C9  36C47F08          les di,word [ss:bx+0x8]
000018CD  36C57704          lds si,word [ss:bx+0x4]
000018D1  FC                cld
000018D2  33C0              xor ax,ax
000018D4  AB                stosw
000018D5  B8B0D7            mov ax,0xd7b0
000018D8  AB                stosw
000018D9  33C0              xor ax,ax
000018DB  B91600            mov cx,0x16
000018DE  F3AB              rep stosw
000018E0  AC                lodsb
000018E1  3C4F              cmp al,0x4f
000018E3  7602              jna 0x18e7
000018E5  B04F              mov al,0x4f
000018E7  8AC8              mov cl,al
000018E9  32ED              xor ch,ch
000018EB  F3A4              rep movsb
000018ED  32C0              xor al,al
000018EF  AA                stosb
000018F0  1F                pop ds
000018F1  CA0800            retf word 0x8
000018F4  A0548F            mov al,[0x8f54]
000018F7  B43D              mov ah,0x3d
000018F9  33D2              xor dx,dx
000018FB  EB06              jmp 0x1903
000018FD  B8003C            mov ax,0x3c00
00001900  BA0100            mov dx,0x1
00001903  55                push bp
00001904  8BEC              mov bp,sp
00001906  C47E08            les di,word [bp+0x8]
00001909  26817D02B0D7      cmp word [es:di+0x2],0xd7b0
0000190F  741A              jz 0x192b
00001911  26817D02B3D7      cmp word [es:di+0x2],0xd7b3
00001917  7408              jz 0x1921
00001919  C706558F6600      mov word [0x8f55],0x66
0000191F  EB34              jmp 0x1955
00001921  50                push ax
00001922  52                push dx
00001923  06                push es
00001924  57                push di
00001925  0E                push cs
00001926  E84C00            call 0x1975
00001929  5A                pop dx
0000192A  58                pop ax
0000192B  26807D3000        cmp byte [es:di+0x30],0x0
00001930  7412              jz 0x1944
00001932  1E                push ds
00001933  8D5530            lea dx,[di+0x30]
00001936  06                push es
00001937  1F                pop ds
00001938  33C9              xor cx,cx
0000193A  CD21              int byte 0x21
0000193C  1F                pop ds
0000193D  7306              jnc 0x1945
0000193F  A3558F            mov [0x8f55],ax
00001942  EB11              jmp 0x1955
00001944  92                xchg ax,dx
00001945  26C74502B3D7      mov word [es:di+0x2],0xd7b3
0000194B  268905            mov [es:di],ax
0000194E  8B4606            mov ax,[bp+0x6]
00001951  26894504          mov [es:di+0x4],ax
00001955  5D                pop bp
00001956  CA0600            retf word 0x6
00001959  8BDC              mov bx,sp
0000195B  36C47F04          les di,word [ss:bx+0x4]
0000195F  E83300            call 0x1995
00001962  750E              jnz 0x1972
00001964  33C9              xor cx,cx
00001966  268B1D            mov bx,[es:di]
00001969  B440              mov ah,0x40
0000196B  CD21              int byte 0x21
0000196D  7303              jnc 0x1972
0000196F  A3558F            mov [0x8f55],ax
00001972  CA0400            retf word 0x4
00001975  8BDC              mov bx,sp
00001977  36C47F04          les di,word [ss:bx+0x4]
0000197B  E81700            call 0x1995
0000197E  7512              jnz 0x1992
00001980  268B1D            mov bx,[es:di]
00001983  83FB04            cmp bx,0x4
00001986  7604              jna 0x198c
00001988  B43E              mov ah,0x3e
0000198A  CD21              int byte 0x21
0000198C  26C74502B0D7      mov word [es:di+0x2],0xd7b0
00001992  CA0400            retf word 0x4
00001995  26817D02B3D7      cmp word [es:di+0x2],0xd7b3
0000199B  7406              jz 0x19a3
0000199D  C706558F6700      mov word [0x8f55],0x67
000019A3  C3                ret
000019A4  B43F              mov ah,0x3f
000019A6  BA6400            mov dx,0x64
000019A9  EB05              jmp 0x19b0
000019AB  B440              mov ah,0x40
000019AD  BA6500            mov dx,0x65
000019B0  55                push bp
000019B1  8BEC              mov bp,sp
000019B3  C47E0A            les di,word [bp+0xa]
000019B6  E8DCFF            call 0x1995
000019B9  751B              jnz 0x19d6
000019BB  1E                push ds
000019BC  52                push dx
000019BD  C55606            lds dx,word [bp+0x6]
000019C0  268B4D04          mov cx,[es:di+0x4]
000019C4  268B1D            mov bx,[es:di]
000019C7  CD21              int byte 0x21
000019C9  5A                pop dx
000019CA  1F                pop ds
000019CB  7206              jc 0x19d3
000019CD  3BC1              cmp ax,cx
000019CF  7405              jz 0x19d6
000019D1  8BC2              mov ax,dx
000019D3  A3558F            mov [0x8f55],ax
000019D6  5D                pop bp
000019D7  CA0400            retf word 0x4
000019DA  B33F              mov bl,0x3f
000019DC  B96400            mov cx,0x64
000019DF  EB05              jmp 0x19e6
000019E1  B340              mov bl,0x40
000019E3  B96500            mov cx,0x65
000019E6  55                push bp
000019E7  8BEC              mov bp,sp
000019E9  C47E10            les di,word [bp+0x10]
000019EC  E8A6FF            call 0x1995
000019EF  753F              jnz 0x1a30
000019F1  8B460A            mov ax,[bp+0xa]
000019F4  0BC0              or ax,ax
000019F6  741C              jz 0x1a14
000019F8  1E                push ds
000019F9  51                push cx
000019FA  26F76504          mul word [es:di+0x4]
000019FE  8BC8              mov cx,ax
00001A00  C5560C            lds dx,word [bp+0xc]
00001A03  8AE3              mov ah,bl
00001A05  268B1D            mov bx,[es:di]
00001A08  CD21              int byte 0x21
00001A0A  59                pop cx
00001A0B  1F                pop ds
00001A0C  721F              jc 0x1a2d
00001A0E  33D2              xor dx,dx
00001A10  26F77504          div word [es:di+0x4]
00001A14  C47E06            les di,word [bp+0x6]
00001A17  8CC2              mov dx,es
00001A19  0BD7              or dx,di
00001A1B  7405              jz 0x1a22
00001A1D  268905            mov [es:di],ax
00001A20  EB1C              jmp 0x1a3e
00001A22  3B460A            cmp ax,[bp+0xa]
00001A25  7417              jz 0x1a3e
00001A27  890E558F          mov [0x8f55],cx
00001A2B  EB11              jmp 0x1a3e
00001A2D  A3558F            mov [0x8f55],ax
00001A30  C47E06            les di,word [bp+0x6]
00001A33  8CC2              mov dx,es
00001A35  0BD7              or dx,di
00001A37  7405              jz 0x1a3e
00001A39  33C0              xor ax,ax
00001A3B  268905            mov [es:di],ax
00001A3E  5D                pop bp
00001A3F  CA0E00            retf word 0xe
00001A42  55                push bp
00001A43  8BEC              mov bp,sp
00001A45  C47E0A            les di,word [bp+0xa]
00001A48  E84AFF            call 0x1995
00001A4B  7521              jnz 0x1a6e
00001A4D  8B4608            mov ax,[bp+0x8]
00001A50  26F76504          mul word [es:di+0x4]
00001A54  8BC8              mov cx,ax
00001A56  8B4606            mov ax,[bp+0x6]
00001A59  26F76504          mul word [es:di+0x4]
00001A5D  03CA              add cx,dx
00001A5F  8BD0              mov dx,ax
00001A61  268B1D            mov bx,[es:di]
00001A64  B80042            mov ax,0x4200
00001A67  CD21              int byte 0x21
00001A69  7303              jnc 0x1a6e
00001A6B  A3558F            mov [0x8f55],ax
00001A6E  5D                pop bp
00001A6F  CA0800            retf word 0x8
00001A72  E84600            call 0x1abb
00001A75  720F              jc 0x1a86
00001A77  268B4D04          mov cx,[es:di+0x4]
00001A7B  83F901            cmp cx,0x1
00001A7E  7406              jz 0x1a86
00001A80  33DB              xor bx,bx
00001A82  0E                push cs
00001A83  E871E8            call 0x2f7
00001A86  CA0400            retf word 0x4
00001A89  E82F00            call 0x1abb
00001A8C  7213              jc 0x1aa1
00001A8E  8BC1              mov ax,cx
00001A90  8BD3              mov dx,bx
00001A92  268B4D04          mov cx,[es:di+0x4]
00001A96  83F901            cmp cx,0x1
00001A99  7406              jz 0x1aa1
00001A9B  33DB              xor bx,bx
00001A9D  0E                push cs
00001A9E  E856E8            call 0x2f7
00001AA1  CA0400            retf word 0x4
00001AA4  E81400            call 0x1abb
00001AA7  720D              jc 0x1ab6
00001AA9  3BC1              cmp ax,cx
00001AAB  7509              jnz 0x1ab6
00001AAD  3BD3              cmp dx,bx
00001AAF  7505              jnz 0x1ab6
00001AB1  B001              mov al,0x1
00001AB3  CA0400            retf word 0x4
00001AB6  32C0              xor al,al
00001AB8  CA0400            retf word 0x4
00001ABB  8BDC              mov bx,sp
00001ABD  36C47F06          les di,word [ss:bx+0x6]
00001AC1  26817D02B3D7      cmp word [es:di+0x2],0xd7b3
00001AC7  752B              jnz 0x1af4
00001AC9  33C9              xor cx,cx
00001ACB  33D2              xor dx,dx
00001ACD  268B1D            mov bx,[es:di]
00001AD0  B80142            mov ax,0x4201
00001AD3  CD21              int byte 0x21
00001AD5  52                push dx
00001AD6  50                push ax
00001AD7  33C9              xor cx,cx
00001AD9  33D2              xor dx,dx
00001ADB  268B1D            mov bx,[es:di]
00001ADE  B80242            mov ax,0x4202
00001AE1  CD21              int byte 0x21
00001AE3  5B                pop bx
00001AE4  59                pop cx
00001AE5  52                push dx
00001AE6  50                push ax
00001AE7  8BD3              mov dx,bx
00001AE9  268B1D            mov bx,[es:di]
00001AEC  B80042            mov ax,0x4200
00001AEF  CD21              int byte 0x21
00001AF1  59                pop cx
00001AF2  5B                pop bx
00001AF3  C3                ret
00001AF4  C706558F6700      mov word [0x8f55],0x67
00001AFA  33C0              xor ax,ax
00001AFC  33D2              xor dx,dx
00001AFE  F9                stc
00001AFF  C3                ret
00001B00  8BDC              mov bx,sp
00001B02  1E                push ds
00001B03  36C55704          lds dx,word [ss:bx+0x4]
00001B07  83C230            add dx,0x30
00001B0A  B441              mov ah,0x41
00001B0C  CD21              int byte 0x21
00001B0E  1F                pop ds
00001B0F  7303              jnc 0x1b14
00001B11  A3558F            mov [0x8f55],ax
00001B14  CA0400            retf word 0x4
00001B17  55                push bp
00001B18  8BEC              mov bp,sp
00001B1A  83EC50            sub sp,0x50
00001B1D  1E                push ds
00001B1E  C57606            lds si,word [bp+0x6]
00001B21  8D7EB0            lea di,[bp-0x50]
00001B24  16                push ss
00001B25  07                pop es
00001B26  AC                lodsb
00001B27  3C4F              cmp al,0x4f
00001B29  7602              jna 0x1b2d
00001B2B  B04F              mov al,0x4f
00001B2D  8AC8              mov cl,al
00001B2F  32ED              xor ch,ch
00001B31  F3A4              rep movsb
00001B33  32C0              xor al,al
00001B35  AA                stosb
00001B36  C5560A            lds dx,word [bp+0xa]
00001B39  83C230            add dx,0x30
00001B3C  8D7EB0            lea di,[bp-0x50]
00001B3F  B456              mov ah,0x56
00001B41  CD21              int byte 0x21
00001B43  1F                pop ds
00001B44  7305              jnc 0x1b4b
00001B46  A3558F            mov [0x8f55],ax
00001B49  EB13              jmp 0x1b5e
00001B4B  1E                push ds
00001B4C  8D76B0            lea si,[bp-0x50]
00001B4F  16                push ss
00001B50  1F                pop ds
00001B51  C47E0A            les di,word [bp+0xa]
00001B54  83C730            add di,0x30
00001B57  AC                lodsb
00001B58  AA                stosb
00001B59  0AC0              or al,al
00001B5B  75FA              jnz 0x1b57
00001B5D  1F                pop ds
00001B5E  8BE5              mov sp,bp
00001B60  5D                pop bp
00001B61  CA0800            retf word 0x8
00001B64  8BDC              mov bx,sp
00001B66  8CDA              mov dx,ds
00001B68  36C5770A          lds si,word [ss:bx+0xa]
00001B6C  36C47F06          les di,word [ss:bx+0x6]
00001B70  368B4F04          mov cx,[ss:bx+0x4]
00001B74  FC                cld
00001B75  3BF7              cmp si,di
00001B77  7307              jnc 0x1b80
00001B79  03F1              add si,cx
00001B7B  03F9              add di,cx
00001B7D  4E                dec si
00001B7E  4F                dec di
00001B7F  FD                std
00001B80  F3A4              rep movsb
00001B82  8EDA              mov ds,dx
00001B84  CA0A00            retf word 0xa
00001B87  8BDC              mov bx,sp
00001B89  36C47F08          les di,word [ss:bx+0x8]
00001B8D  368B4F06          mov cx,[ss:bx+0x6]
00001B91  368A4704          mov al,[ss:bx+0x4]
00001B95  FC                cld
00001B96  F3AA              rep stosb
00001B98  CA0800            retf word 0x8
00001B9B  55                push bp
00001B9C  8BEC              mov bp,sp
00001B9E  33C0              xor ax,ax
00001BA0  8B5606            mov dx,[bp+0x6]
00001BA3  0BD2              or dx,dx
00001BA5  7403              jz 0x1baa
00001BA7  E81900            call 0x1bc3
00001BAA  C47E08            les di,word [bp+0x8]
00001BAD  1E                push ds
00001BAE  8E1E1E8F          mov ds,word [0x8f1e]
00001BB2  FC                cld
00001BB3  AA                stosb
00001BB4  91                xchg ax,cx
00001BB5  F3A4              rep movsb
00001BB7  1F                pop ds
00001BB8  5D                pop bp
00001BB9  CA0200            retf word 0x2
00001BBC  33D2              xor dx,dx
00001BBE  E80200            call 0x1bc3
00001BC1  93                xchg ax,bx
00001BC2  CB                retf
00001BC3  8E061E8F          mov es,word [0x8f1e]
00001BC7  BF8000            mov di,0x80
00001BCA  268A0D            mov cl,[es:di]
00001BCD  32ED              xor ch,ch
00001BCF  47                inc di
00001BD0  33DB              xor bx,bx
00001BD2  E309              jcxz 0x1bdd
00001BD4  26803D20          cmp byte [es:di],0x20
00001BD8  7703              ja 0x1bdd
00001BDA  47                inc di
00001BDB  E2F7              loop 0x1bd4
00001BDD  8BF7              mov si,di
00001BDF  E309              jcxz 0x1bea
00001BE1  26803D20          cmp byte [es:di],0x20
00001BE5  7603              jna 0x1bea
00001BE7  47                inc di
00001BE8  E2F7              loop 0x1be1
00001BEA  8BC7              mov ax,di
00001BEC  2BC6              sub ax,si
00001BEE  7404              jz 0x1bf4
00001BF0  43                inc bx
00001BF1  4A                dec dx
00001BF2  75DE              jnz 0x1bd2
00001BF4  C3                ret
00001BF5  55                push bp
00001BF6  8BEC              mov bp,sp
00001BF8  81EC8000          sub sp,0x80
00001BFC  1E                push ds
00001BFD  8D7680            lea si,[bp-0x80]
00001C00  16                push ss
00001C01  1F                pop ds
00001C02  8A460C            mov al,[bp+0xc]
00001C05  0AC0              or al,al
00001C07  7506              jnz 0x1c0f
00001C09  B419              mov ah,0x19
00001C0B  CD21              int byte 0x21
00001C0D  FEC0              inc al
00001C0F  8AD0              mov dl,al
00001C11  0440              add al,0x40
00001C13  8804              mov [si],al
00001C15  46                inc si
00001C16  C7043A5C          mov word [si],0x5c3a
00001C1A  46                inc si
00001C1B  46                inc si
00001C1C  B447              mov ah,0x47
00001C1E  CD21              int byte 0x21
00001C20  7303              jnc 0x1c25
00001C22  C60400            mov byte [si],0x0
00001C25  8D7680            lea si,[bp-0x80]
00001C28  C47E08            les di,word [bp+0x8]
00001C2B  8B4E06            mov cx,[bp+0x6]
00001C2E  33DB              xor bx,bx
00001C30  FC                cld
00001C31  AC                lodsb
00001C32  0AC0              or al,al
00001C34  7406              jz 0x1c3c
00001C36  43                inc bx
00001C37  268801            mov [es:bx+di],al
00001C3A  E2F5              loop 0x1c31
00001C3C  26881D            mov [es:di],bl
00001C3F  1F                pop ds
00001C40  8BE5              mov sp,bp
00001C42  5D                pop bp
00001C43  CA0800            retf word 0x8
00001C46  55                push bp
00001C47  8BEC              mov bp,sp
00001C49  81EC8000          sub sp,0x80
00001C4D  E85500            call 0x1ca5
00001C50  8B4680            mov ax,[bp-0x80]
00001C53  0AC0              or al,al
00001C55  741E              jz 0x1c75
00001C57  80FC3A            cmp ah,0x3a
00001C5A  7514              jnz 0x1c70
00001C5C  3C61              cmp al,0x61
00001C5E  7202              jc 0x1c62
00001C60  2C20              sub al,0x20
00001C62  2C41              sub al,0x41
00001C64  8AD0              mov dl,al
00001C66  B40E              mov ah,0xe
00001C68  CD21              int byte 0x21
00001C6A  807E8200          cmp byte [bp-0x7e],0x0
00001C6E  7405              jz 0x1c75
00001C70  B43B              mov ah,0x3b
00001C72  E84B00            call 0x1cc0
00001C75  8BE5              mov sp,bp
00001C77  5D                pop bp
00001C78  CA0400            retf word 0x4
00001C7B  55                push bp
00001C7C  8BEC              mov bp,sp
00001C7E  81EC8000          sub sp,0x80
00001C82  E82000            call 0x1ca5
00001C85  B439              mov ah,0x39
00001C87  E83600            call 0x1cc0
00001C8A  8BE5              mov sp,bp
00001C8C  5D                pop bp
00001C8D  CA0400            retf word 0x4
00001C90  55                push bp
00001C91  8BEC              mov bp,sp
00001C93  81EC8000          sub sp,0x80
00001C97  E80B00            call 0x1ca5
00001C9A  B43A              mov ah,0x3a
00001C9C  E82100            call 0x1cc0
00001C9F  8BE5              mov sp,bp
00001CA1  5D                pop bp
00001CA2  CA0400            retf word 0x4
00001CA5  1E                push ds
00001CA6  C57606            lds si,word [bp+0x6]
00001CA9  8D7E80            lea di,[bp-0x80]
00001CAC  16                push ss
00001CAD  07                pop es
00001CAE  FC                cld
00001CAF  AC                lodsb
00001CB0  3C7F              cmp al,0x7f
00001CB2  7202              jc 0x1cb6
00001CB4  B07F              mov al,0x7f
00001CB6  98                cbw
00001CB7  8BC8              mov cx,ax
00001CB9  F3A4              rep movsb
00001CBB  32C0              xor al,al
00001CBD  AA                stosb
00001CBE  1F                pop ds
00001CBF  C3                ret
00001CC0  1E                push ds
00001CC1  8D5680            lea dx,[bp-0x80]
00001CC4  16                push ss
00001CC5  1F                pop ds
00001CC6  CD21              int byte 0x21
00001CC8  1F                pop ds
00001CC9  7303              jnc 0x1cce
00001CCB  A3558F            mov [0x8f55],ax
00001CCE  C3                ret
00001CCF  8BDC              mov bx,sp
00001CD1  368A4704          mov al,[ss:bx+0x4]
00001CD5  3C61              cmp al,0x61
00001CD7  7206              jc 0x1cdf
00001CD9  3C7A              cmp al,0x7a
00001CDB  7702              ja 0x1cdf
00001CDD  2C20              sub al,0x20
00001CDF  CA0200            retf word 0x2
00001CE2  0000              add [bx+si],al
00001CE4  0000              add [bx+si],al
00001CE6  0000              add [bx+si],al
00001CE8  0000              add [bx+si],al
00001CEA  0000              add [bx+si],al
00001CEC  0000              add [bx+si],al
00001CEE  0000              add [bx+si],al
