00000000  55                push bp
00000001  89E5              mov bp,sp
00000003  83EC02            sub sp,0x2
00000006  B000              mov al,0x0
00000008  50                push ax
00000009  9A3A1B430E        call word 0xe43:word 0x1b3a
0000000E  B80600            mov ax,0x6
00000011  50                push ax
00000012  9A7F1A430E        call word 0xe43:word 0x1a7f
00000017  FF36856B          push word [0x6b85]
0000001B  FF36876B          push word [0x6b87]
0000001F  9A8A1B430E        call word 0xe43:word 0x1b8a
00000024  B80300            mov ax,0x3
00000027  50                push ax
00000028  9ADB25430E        call word 0xe43:word 0x25db
0000002D  89EC              mov sp,bp
0000002F  5D                pop bp
00000030  C20200            ret word 0x2
00000033  55                push bp
00000034  89E5              mov bp,sp
00000036  83EC02            sub sp,0x2
00000039  B80500            mov ax,0x5
0000003C  50                push ax
0000003D  9A7F1A430E        call word 0xe43:word 0x1a7f
00000042  FF760A            push word [bp+0xa]
00000045  FF7608            push word [bp+0x8]
00000048  9A8A1B430E        call word 0xe43:word 0x1b8a
0000004D  B81400            mov ax,0x14
00000050  50                push ax
00000051  9ADB25430E        call word 0xe43:word 0x25db
00000056  8B4606            mov ax,[bp+0x6]
00000059  059600            add ax,0x96
0000005C  50                push ax
0000005D  9A7801430E        call word 0xe43:word 0x178
00000062  B81300            mov ax,0x13
00000065  50                push ax
00000066  9AAC06430E        call word 0xe43:word 0x6ac
0000006B  8B4606            mov ax,[bp+0x6]
0000006E  055E01            add ax,0x15e
00000071  50                push ax
00000072  9A7801430E        call word 0xe43:word 0x178
00000077  B80800            mov ax,0x8
0000007A  50                push ax
0000007B  9A7F1A430E        call word 0xe43:word 0x1a7f
00000080  B85802            mov ax,0x258
00000083  50                push ax
00000084  B80A00            mov ax,0xa
00000087  50                push ax
00000088  9A9828430E        call word 0xe43:word 0x2898
0000008D  FF760A            push word [bp+0xa]
00000090  FF7608            push word [bp+0x8]
00000093  9A8A1B430E        call word 0xe43:word 0x1b8a
00000098  8B4606            mov ax,[bp+0x6]
0000009B  2D9600            sub ax,0x96
0000009E  50                push ax
0000009F  9A7801430E        call word 0xe43:word 0x178
000000A4  B81300            mov ax,0x13
000000A7  50                push ax
000000A8  9AAC06430E        call word 0xe43:word 0x6ac
000000AD  8B4606            mov ax,[bp+0x6]
000000B0  2D5E01            sub ax,0x15e
000000B3  50                push ax
000000B4  9A7801430E        call word 0xe43:word 0x178
000000B9  B80800            mov ax,0x8
000000BC  50                push ax
000000BD  9A7F1A430E        call word 0xe43:word 0x1a7f
000000C2  B8A8FD            mov ax,0xfda8
000000C5  50                push ax
000000C6  B80A00            mov ax,0xa
000000C9  50                push ax
000000CA  9A9828430E        call word 0xe43:word 0x2898
000000CF  FF760A            push word [bp+0xa]
000000D2  FF7608            push word [bp+0x8]
000000D5  9A8A1B430E        call word 0xe43:word 0x1b8a
000000DA  FF7606            push word [bp+0x6]
000000DD  9A7801430E        call word 0xe43:word 0x178
000000E2  B80800            mov ax,0x8
000000E5  50                push ax
000000E6  9AAC06430E        call word 0xe43:word 0x6ac
000000EB  55                push bp
000000EC  E811FF            call 0x0
000000EF  B88403            mov ax,0x384
000000F2  50                push ax
000000F3  9AEF01430E        call word 0xe43:word 0x1ef
000000F8  B80D00            mov ax,0xd
000000FB  50                push ax
000000FC  9AAC06430E        call word 0xe43:word 0x6ac
00000101  55                push bp
00000102  E8FBFE            call 0x0
00000105  B80807            mov ax,0x708
00000108  50                push ax
00000109  9AEF01430E        call word 0xe43:word 0x1ef
0000010E  B81A00            mov ax,0x1a
00000111  50                push ax
00000112  9AAC06430E        call word 0xe43:word 0x6ac
00000117  55                push bp
00000118  E8E5FE            call 0x0
0000011B  B80807            mov ax,0x708
0000011E  50                push ax
0000011F  9AEF01430E        call word 0xe43:word 0x1ef
00000124  B80500            mov ax,0x5
00000127  50                push ax
00000128  9AAC06430E        call word 0xe43:word 0x6ac
0000012D  B88403            mov ax,0x384
00000130  50                push ax
00000131  9AEF01430E        call word 0xe43:word 0x1ef
00000136  B80A00            mov ax,0xa
00000139  50                push ax
0000013A  9AAC06430E        call word 0xe43:word 0x6ac
0000013F  55                push bp
00000140  E8BDFE            call 0x0
00000143  B87CFC            mov ax,0xfc7c
00000146  50                push ax
00000147  9AEF01430E        call word 0xe43:word 0x1ef
0000014C  B81000            mov ax,0x10
0000014F  50                push ax
00000150  9AAC06430E        call word 0xe43:word 0x6ac
00000155  55                push bp
00000156  E8A7FE            call 0x0
00000159  B88403            mov ax,0x384
0000015C  50                push ax
0000015D  9AEF01430E        call word 0xe43:word 0x1ef
00000162  B80A00            mov ax,0xa
00000165  50                push ax
00000166  9AAC06430E        call word 0xe43:word 0x6ac
0000016B  B87CFC            mov ax,0xfc7c
0000016E  50                push ax
0000016F  9AEF01430E        call word 0xe43:word 0x1ef
00000174  B80100            mov ax,0x1
00000177  50                push ax
00000178  9AAC06430E        call word 0xe43:word 0x6ac
0000017D  55                push bp
0000017E  E87FFE            call 0x0
00000181  B80807            mov ax,0x708
00000184  50                push ax
00000185  9AEF01430E        call word 0xe43:word 0x1ef
0000018A  B81200            mov ax,0x12
0000018D  50                push ax
0000018E  9AAC06430E        call word 0xe43:word 0x6ac
00000193  55                push bp
00000194  E869FE            call 0x0
00000197  B80800            mov ax,0x8
0000019A  50                push ax
0000019B  9A7F1A430E        call word 0xe43:word 0x1a7f
000001A0  31C0              xor ax,ax
000001A2  8946FE            mov [bp-0x2],ax
000001A5  EB03              jmp 0x1aa
000001A7  FF46FE            inc word [bp-0x2]
000001AA  FF760A            push word [bp+0xa]
000001AD  FF7608            push word [bp+0x8]
000001B0  9A8A1B430E        call word 0xe43:word 0x1b8a
000001B5  FF7606            push word [bp+0x6]
000001B8  9A7801430E        call word 0xe43:word 0x178
000001BD  B80C00            mov ax,0xc
000001C0  50                push ax
000001C1  9AAC06430E        call word 0xe43:word 0x6ac
000001C6  8B46FE            mov ax,[bp-0x2]
000001C9  B92800            mov cx,0x28
000001CC  F7E9              imul cx
000001CE  8BD0              mov dx,ax
000001D0  8B4606            mov ax,[bp+0x6]
000001D3  055802            add ax,0x258
000001D6  2BC2              sub ax,dx
000001D8  50                push ax
000001D9  9A7801430E        call word 0xe43:word 0x178
000001DE  B80F00            mov ax,0xf
000001E1  2B46FE            sub ax,[bp-0x2]
000001E4  09C0              or ax,ax
000001E6  7902              jns 0x1ea
000001E8  F7D8              neg ax
000001EA  99                cwd
000001EB  B90700            mov cx,0x7
000001EE  F7F9              idiv cx
000001F0  050800            add ax,0x8
000001F3  50                push ax
000001F4  9A3E07430E        call word 0xe43:word 0x73e
000001F9  837EFE22          cmp word [bp-0x2],0x22
000001FD  75A8              jnz 0x1a7
000001FF  FF760A            push word [bp+0xa]
00000202  FF7608            push word [bp+0x8]
00000205  9A8A1B430E        call word 0xe43:word 0x1b8a
0000020A  B81400            mov ax,0x14
0000020D  50                push ax
0000020E  9AEC24430E        call word 0xe43:word 0x24ec
00000213  FF760A            push word [bp+0xa]
00000216  FF7608            push word [bp+0x8]
00000219  9A8A1B430E        call word 0xe43:word 0x1b8a
0000021E  FF7606            push word [bp+0x6]
00000221  9A7801430E        call word 0xe43:word 0x178
00000226  B81000            mov ax,0x10
00000229  50                push ax
0000022A  9AAC06430E        call word 0xe43:word 0x6ac
0000022F  9AF72A430E        call word 0xe43:word 0x2af7
00000234  B80700            mov ax,0x7
00000237  50                push ax
00000238  9A7F1A430E        call word 0xe43:word 0x1a7f
0000023D  C746FE0100        mov word [bp-0x2],0x1
00000242  EB03              jmp 0x247
00000244  FF46FE            inc word [bp-0x2]
00000247  FF760A            push word [bp+0xa]
0000024A  FF7608            push word [bp+0x8]
0000024D  9A8A1B430E        call word 0xe43:word 0x1b8a
00000252  FF7606            push word [bp+0x6]
00000255  9A7801430E        call word 0xe43:word 0x178
0000025A  B80A00            mov ax,0xa
0000025D  50                push ax
0000025E  9AAC06430E        call word 0xe43:word 0x6ac
00000263  8B46FE            mov ax,[bp-0x2]
00000266  B90500            mov cx,0x5
00000269  F7E9              imul cx
0000026B  8BD0              mov dx,ax
0000026D  8B4606            mov ax,[bp+0x6]
00000270  05A406            add ax,0x6a4
00000273  03C2              add ax,dx
00000275  50                push ax
00000276  9A7801430E        call word 0xe43:word 0x178
0000027B  837EFE0F          cmp word [bp-0x2],0xf
0000027F  7F14              jg 0x295
00000281  8B46FE            mov ax,[bp-0x2]
00000284  99                cwd
00000285  B90400            mov cx,0x4
00000288  F7F9              idiv cx
0000028A  051C00            add ax,0x1c
0000028D  50                push ax
0000028E  9A3E07430E        call word 0xe43:word 0x73e
00000293  EB19              jmp 0x2ae
00000295  8B46FE            mov ax,[bp-0x2]
00000298  2D0F00            sub ax,0xf
0000029B  99                cwd
0000029C  B90400            mov cx,0x4
0000029F  F7F9              idiv cx
000002A1  8BD0              mov dx,ax
000002A3  B82100            mov ax,0x21
000002A6  2BC2              sub ax,dx
000002A8  50                push ax
000002A9  9A3E07430E        call word 0xe43:word 0x73e
000002AE  837EFE1E          cmp word [bp-0x2],0x1e
000002B2  7590              jnz 0x244
000002B4  31C0              xor ax,ax
000002B6  50                push ax
000002B7  9A7801430E        call word 0xe43:word 0x178
000002BC  89EC              mov sp,bp
000002BE  5D                pop bp
000002BF  C20800            ret word 0x8
000002C2  55                push bp
000002C3  89E5              mov bp,sp
000002C5  81EC0401          sub sp,0x104
000002C9  C47E06            les di,word [bp+0x6]
000002CC  06                push es
000002CD  57                push di
000002CE  8DBE00FF          lea di,[bp-0x100]
000002D2  16                push ss
000002D3  57                push di
000002D4  B8FF00            mov ax,0xff
000002D7  50                push ax
000002D8  9AAD06561A        call word 0x1a56:word 0x6ad
000002DD  8A8600FF          mov al,[bp-0x100]
000002E1  30E4              xor ah,ah
000002E3  8986FCFE          mov [bp-0x104],ax
000002E7  B80100            mov ax,0x1
000002EA  3B86FCFE          cmp ax,[bp-0x104]
000002EE  7F39              jg 0x329
000002F0  8986FEFE          mov [bp-0x102],ax
000002F4  EB04              jmp 0x2fa
000002F6  FF86FEFE          inc word [bp-0x102]
000002FA  A0940C            mov al,[0xc94]
000002FD  30E4              xor ah,ah
000002FF  8BC8              mov cx,ax
00000301  8B86FEFE          mov ax,[bp-0x102]
00000305  99                cwd
00000306  F7F9              idiv cx
00000308  92                xchg ax,dx
00000309  8BF8              mov di,ax
0000030B  8A85940C          mov al,[di+0xc94]
0000030F  8BBEFEFE          mov di,[bp-0x102]
00000313  328300FF          xor al,[bp+di-0x100]
00000317  8BBEFEFE          mov di,[bp-0x102]
0000031B  888300FF          mov [bp+di-0x100],al
0000031F  8B86FEFE          mov ax,[bp-0x102]
00000323  3B86FCFE          cmp ax,[bp-0x104]
00000327  75CD              jnz 0x2f6
00000329  8A8600FF          mov al,[bp-0x100]
0000032D  30E4              xor ah,ah
0000032F  8986FCFE          mov [bp-0x104],ax
00000333  B80100            mov ax,0x1
00000336  3B86FCFE          cmp ax,[bp-0x104]
0000033A  7F34              jg 0x370
0000033C  8986FEFE          mov [bp-0x102],ax
00000340  EB04              jmp 0x346
00000342  FF86FEFE          inc word [bp-0x102]
00000346  8BBEFEFE          mov di,[bp-0x102]
0000034A  8A8300FF          mov al,[bp+di-0x100]
0000034E  30E4              xor ah,ah
00000350  2B86FEFE          sub ax,[bp-0x102]
00000354  050001            add ax,0x100
00000357  99                cwd
00000358  B90001            mov cx,0x100
0000035B  F7F9              idiv cx
0000035D  92                xchg ax,dx
0000035E  8BBEFEFE          mov di,[bp-0x102]
00000362  888300FF          mov [bp+di-0x100],al
00000366  8B86FEFE          mov ax,[bp-0x102]
0000036A  3B86FCFE          cmp ax,[bp-0x104]
0000036E  75D2              jnz 0x342
00000370  8A8600FF          mov al,[bp-0x100]
00000374  30E4              xor ah,ah
00000376  8986FCFE          mov [bp-0x104],ax
0000037A  B80100            mov ax,0x1
0000037D  3B86FCFE          cmp ax,[bp-0x104]
00000381  7F48              jg 0x3cb
00000383  8986FEFE          mov [bp-0x102],ax
00000387  EB04              jmp 0x38d
00000389  FF86FEFE          inc word [bp-0x102]
0000038D  A0940C            mov al,[0xc94]
00000390  30E4              xor ah,ah
00000392  8BC8              mov cx,ax
00000394  8B86FEFE          mov ax,[bp-0x102]
00000398  99                cwd
00000399  F7F9              idiv cx
0000039B  92                xchg ax,dx
0000039C  8BF8              mov di,ax
0000039E  8A85940C          mov al,[di+0xc94]
000003A2  30E4              xor ah,ah
000003A4  8BD0              mov dx,ax
000003A6  8BBEFEFE          mov di,[bp-0x102]
000003AA  8A8300FF          mov al,[bp+di-0x100]
000003AE  30E4              xor ah,ah
000003B0  03C2              add ax,dx
000003B2  99                cwd
000003B3  B90001            mov cx,0x100
000003B6  F7F9              idiv cx
000003B8  92                xchg ax,dx
000003B9  8BBEFEFE          mov di,[bp-0x102]
000003BD  888300FF          mov [bp+di-0x100],al
000003C1  8B86FEFE          mov ax,[bp-0x102]
000003C5  3B86FCFE          cmp ax,[bp-0x104]
000003C9  75BE              jnz 0x389
000003CB  8A8600FF          mov al,[bp-0x100]
000003CF  30E4              xor ah,ah
000003D1  8986FCFE          mov [bp-0x104],ax
000003D5  B80100            mov ax,0x1
000003D8  3B86FCFE          cmp ax,[bp-0x104]
000003DC  7F33              jg 0x411
000003DE  8986FEFE          mov [bp-0x102],ax
000003E2  EB04              jmp 0x3e8
000003E4  FF86FEFE          inc word [bp-0x102]
000003E8  8BBEFEFE          mov di,[bp-0x102]
000003EC  8A8300FF          mov al,[bp+di-0x100]
000003F0  30E4              xor ah,ah
000003F2  2D0B00            sub ax,0xb
000003F5  050001            add ax,0x100
000003F8  99                cwd
000003F9  B90001            mov cx,0x100
000003FC  F7F9              idiv cx
000003FE  92                xchg ax,dx
000003FF  8BBEFEFE          mov di,[bp-0x102]
00000403  888300FF          mov [bp+di-0x100],al
00000407  8B86FEFE          mov ax,[bp-0x102]
0000040B  3B86FCFE          cmp ax,[bp-0x104]
0000040F  75D3              jnz 0x3e4
00000411  8DBE00FF          lea di,[bp-0x100]
00000415  16                push ss
00000416  57                push di
00000417  C47E0A            les di,word [bp+0xa]
0000041A  06                push es
0000041B  57                push di
0000041C  B8FF00            mov ax,0xff
0000041F  50                push ax
00000420  9AAD06561A        call word 0x1a56:word 0x6ad
00000425  89EC              mov sp,bp
00000427  5D                pop bp
00000428  C20600            ret word 0x6
0000042B  55                push bp
0000042C  89E5              mov bp,sp
0000042E  81EC0401          sub sp,0x104
00000432  C47E06            les di,word [bp+0x6]
00000435  06                push es
00000436  57                push di
00000437  8DBE00FF          lea di,[bp-0x100]
0000043B  16                push ss
0000043C  57                push di
0000043D  B8FF00            mov ax,0xff
00000440  50                push ax
00000441  9AAD06561A        call word 0x1a56:word 0x6ad
00000446  8A8600FF          mov al,[bp-0x100]
0000044A  30E4              xor ah,ah
0000044C  8986FCFE          mov [bp-0x104],ax
00000450  B80100            mov ax,0x1
00000453  3B86FCFE          cmp ax,[bp-0x104]
00000457  7F39              jg 0x492
00000459  8986FEFE          mov [bp-0x102],ax
0000045D  EB04              jmp 0x463
0000045F  FF86FEFE          inc word [bp-0x102]
00000463  A0940D            mov al,[0xd94]
00000466  30E4              xor ah,ah
00000468  8BC8              mov cx,ax
0000046A  8B86FEFE          mov ax,[bp-0x102]
0000046E  99                cwd
0000046F  F7F9              idiv cx
00000471  92                xchg ax,dx
00000472  8BF8              mov di,ax
00000474  8A85940D          mov al,[di+0xd94]
00000478  8BBEFEFE          mov di,[bp-0x102]
0000047C  328300FF          xor al,[bp+di-0x100]
00000480  8BBEFEFE          mov di,[bp-0x102]
00000484  888300FF          mov [bp+di-0x100],al
00000488  8B86FEFE          mov ax,[bp-0x102]
0000048C  3B86FCFE          cmp ax,[bp-0x104]
00000490  75CD              jnz 0x45f
00000492  8DBE00FF          lea di,[bp-0x100]
00000496  16                push ss
00000497  57                push di
00000498  C47E0A            les di,word [bp+0xa]
0000049B  06                push es
0000049C  57                push di
0000049D  B8FF00            mov ax,0xff
000004A0  50                push ax
000004A1  9AAD06561A        call word 0x1a56:word 0x6ad
000004A6  89EC              mov sp,bp
000004A8  5D                pop bp
000004A9  C20600            ret word 0x6
000004AC  3CA2              cmp al,0xa2
000004AE  CDAC              int byte 0xac
000004B0  CF                iret
000004B1  8EADCCB3          mov gs,word [di-0x4c34]
000004B5  B2C9              mov dl,0xc9
000004B7  A4                movsb
000004B8  B7B8              mov bh,0xb8
000004BA  B132              mov cl,0x32
000004BC  B3BC              mov bl,0xbc
000004BE  BD3EBF            mov bp,0xbf3e
000004C1  BE39BC            mov si,0xbc39
000004C4  BB38B5            mov bx,0xb538
000004C7  84B78681          test [bx-0x7e7a],dh
000004CB  2A33              sub dh,[bp+di]
000004CD  2C4D              sub al,0x4d
000004CF  882F              mov [bx],ch
000004D1  8E29              mov gs,word [bx+di]
000004D3  8A03              mov al,[bp+di]
000004D5  8A15              mov dl,[di]
000004D7  94                xchg ax,sp
000004D8  17                pop ss
000004D9  56                push si
000004DA  95                xchg ax,bp
000004DB  145B              adc al,0x5b
000004DD  9A115C9F90        call word 0x909f:word 0x5c11
000004E2  99                cwd
000004E3  1A9B9465          sbb bl,[bp+di+0x6594]
000004E7  06                push es
000004E8  57                push di
000004E9  280D              sub [di],cl
000004EB  0447              add al,0x47
000004ED  050A5B            add ax,0x5b0a
000004F0  023F              add bh,[bx]
000004F2  1213              adc dl,[bp+di]
000004F4  04C2              add al,0xc2
000004F6  1453              adc al,0x53
000004F8  1F                pop ds
000004F9  3A1C              cmp bl,[si]
000004FB  01500D            add [bx+si+0xd],dx
000004FE  17                pop ss
000004FF  53                push bx
00000500  0027              add [bx],ah
00000502  1D1417            sbb ax,0x1714
00000505  3C63              cmp al,0x63
00000507  45                inc bp
00000508  144F              adc al,0x4f
0000050A  45                inc bp
0000050B  154373            adc ax,0x7343
0000050E  46                inc si
0000050F  134873            adc cx,[bx+si+0x73]
00000512  3DA2CD            cmp ax,0xcda2
00000515  AC                lodsb
00000516  CF                iret
00000517  8EADCCB3          mov gs,word [di-0x4c34]
0000051B  B2C9              mov dl,0xc9
0000051D  A4                movsb
0000051E  B7B8              mov bh,0xb8
00000520  B132              mov cl,0x32
00000522  B3BC              mov bl,0xbc
00000524  BD3EBF            mov bp,0xbf3e
00000527  BE39BC            mov si,0xbc39
0000052A  BB38B5            mov bx,0xb538
0000052D  84B78681          test [bx-0x7e7a],dh
00000531  2A33              sub dh,[bp+di]
00000533  2C4D              sub al,0x4d
00000535  882F              mov [bx],ch
00000537  8E29              mov gs,word [bx+di]
00000539  8A03              mov al,[bp+di]
0000053B  8A15              mov dl,[di]
0000053D  94                xchg ax,sp
0000053E  17                pop ss
0000053F  56                push si
00000540  95                xchg ax,bp
00000541  145B              adc al,0x5b
00000543  9A115C9F90        call word 0x909f:word 0x5c11
00000548  99                cwd
00000549  1A9B9465          sbb bl,[bp+di+0x6594]
0000054D  06                push es
0000054E  57                push di
0000054F  2009              and [bx+di],cl
00000551  56                push si
00000552  657273            gs jc 0x5c8
00000555  6A6F              push word 0x6f
00000557  6E                outsb
00000558  3A20              cmp ah,[bx+si]
0000055A  0D436F            or ax,0x6f43
0000055D  7079              jo 0x5d8
0000055F  7269              jc 0x5ca
00000561  67687420          a32 push word 0x2074
00000565  284329            sub [bp+di+0x29],al
00000568  1A5574            sbb dl,[di+0x74]
0000056B  6461              fs popa
0000056D  6E                outsb
0000056E  6E                outsb
0000056F  696E67732D        imul bp,[bp+0x67],0x2d73
00000574  206F67            and [bx+0x67],ch
00000577  20666F            and [bp+0x6f],ah
0000057A  7273              jc 0x5ef
0000057C  6B6E696E          imul bp,[bp+0x69],0x6e
00000580  67732D            a32 jnc 0x5b0
00000583  0D6465            or ax,0x6564
00000586  7061              jo 0x5e9
00000588  7274              jc 0x5fe
0000058A  656D              gs insw
0000058C  656E              gs outsb
0000058E  7465              jz 0x5f5
00000590  7416              jz 0x5a8
00000592  44                inc sp
00000593  61                popa
00000594  7461              jz 0x5f7
00000596  7365              jnc 0x5fd
00000598  6B726574          imul si,[bp+si+0x65],0x74
0000059C  61                popa
0000059D  7269              jc 0x608
0000059F  61                popa
000005A0  7465              jz 0x607
000005A2  7420              jz 0x5c4
000005A4  3139              xor [bx+di],di
000005A6  3930              cmp [bx+si],si
000005A8  032E2020          add bp,[0x2020]
000005AC  0C44              or al,0x44
000005AE  6973747269        imul si,[bp+di+0x74],0x6972
000005B3  627574            bound si,[di+0x74]
000005B6  9B723A            wait jc 0x5f3
000005B9  0A4272            or al,[bp+si+0x72]
000005BC  756B              jnz 0x629
000005BE  7372              jnc 0x632
000005C0  657474            gs jz 0x637
000005C3  3A0A              cmp cl,[bp+si]
000005C5  4C                dec sp
000005C6  61                popa
000005C7  67657420          gs a32 jz 0x5eb
000005CB  61                popa
000005CC  763A              jna 0x608
000005CE  205589            and [di-0x77],dl
000005D1  E581              in ax,byte 0x81
000005D3  EC                in al,dx
000005D4  AA                stosb
000005D5  03BFAC04          add di,[bx+0x4ac]
000005D9  0E                push cs
000005DA  57                push di
000005DB  8D7EC3            lea di,[bp-0x3d]
000005DE  16                push ss
000005DF  57                push di
000005E0  B83C00            mov ax,0x3c
000005E3  50                push ax
000005E4  9AAD06561A        call word 0x1a56:word 0x6ad
000005E9  BFE904            mov di,0x4e9
000005EC  0E                push cs
000005ED  57                push di
000005EE  8D7E9A            lea di,[bp-0x66]
000005F1  16                push ss
000005F2  57                push di
000005F3  B82800            mov ax,0x28
000005F6  50                push ax
000005F7  9AAD06561A        call word 0x1a56:word 0x6ad
000005FC  BF1205            mov di,0x512
000005FF  0E                push cs
00000600  57                push di
00000601  8DBE56FF          lea di,[bp-0xaa]
00000605  16                push ss
00000606  57                push di
00000607  B83C00            mov ax,0x3c
0000060A  50                push ax
0000060B  9AAD06561A        call word 0x1a56:word 0x6ad
00000610  8DBE56FE          lea di,[bp-0x1aa]
00000614  16                push ss
00000615  57                push di
00000616  8DBE56FF          lea di,[bp-0xaa]
0000061A  16                push ss
0000061B  57                push di
0000061C  55                push bp
0000061D  E8A2FC            call 0x2c2
00000620  8DBE56FF          lea di,[bp-0xaa]
00000624  16                push ss
00000625  57                push di
00000626  B83C00            mov ax,0x3c
00000629  50                push ax
0000062A  9AAD06561A        call word 0x1a56:word 0x6ad
0000062F  8DBE56FF          lea di,[bp-0xaa]
00000633  16                push ss
00000634  57                push di
00000635  8DBE56FE          lea di,[bp-0x1aa]
00000639  16                push ss
0000063A  57                push di
0000063B  8D7EC3            lea di,[bp-0x3d]
0000063E  16                push ss
0000063F  57                push di
00000640  55                push bp
00000641  E87EFC            call 0x2c2
00000644  9A8307561A        call word 0x1a56:word 0x783
00000649  7407              jz 0x652
0000064B  31C0              xor ax,ax
0000064D  9AF301561A        call word 0x1a56:word 0x1f3
00000652  31C0              xor ax,ax
00000654  50                push ax
00000655  31C0              xor ax,ax
00000657  50                push ax
00000658  B88002            mov ax,0x280
0000065B  50                push ax
0000065C  B89001            mov ax,0x190
0000065F  50                push ax
00000660  9AE404430E        call word 0xe43:word 0x4e4
00000665  9A4805430E        call word 0xe43:word 0x548
0000066A  B8440B            mov ax,0xb44
0000066D  8CDA              mov dx,ds
0000066F  52                push dx
00000670  50                push ax
00000671  B8BE0B            mov ax,0xbbe
00000674  8CDA              mov dx,ds
00000676  52                push dx
00000677  50                push ax
00000678  9AA50D430E        call word 0xe43:word 0xda5
0000067D  9ADB09430E        call word 0xe43:word 0x9db
00000682  31C0              xor ax,ax
00000684  50                push ax
00000685  9AD91A430E        call word 0xe43:word 0x1ad9
0000068A  9AFE2A430E        call word 0xe43:word 0x2afe
0000068F  31C0              xor ax,ax
00000691  50                push ax
00000692  9A7801430E        call word 0xe43:word 0x178
00000697  B80300            mov ax,0x3
0000069A  50                push ax
0000069B  9A7F1A430E        call word 0xe43:word 0x1a7f
000006A0  31C0              xor ax,ax
000006A2  894698            mov [bp-0x68],ax
000006A5  EB03              jmp 0x6aa
000006A7  FF4698            inc word [bp-0x68]
000006AA  837E980A          cmp word [bp-0x68],0xa
000006AE  7509              jnz 0x6b9
000006B0  B80400            mov ax,0x4
000006B3  50                push ax
000006B4  9A7F1A430E        call word 0xe43:word 0x1a7f
000006B9  837E980F          cmp word [bp-0x68],0xf
000006BD  7509              jnz 0x6c8
000006BF  B80200            mov ax,0x2
000006C2  50                push ax
000006C3  9A7F1A430E        call word 0xe43:word 0x1a7f
000006C8  31C0              xor ax,ax
000006CA  50                push ax
000006CB  8B4698            mov ax,[bp-0x68]
000006CE  05F000            add ax,0xf0
000006D1  50                push ax
000006D2  9A8A1B430E        call word 0xe43:word 0x1b8a
000006D7  B85601            mov ax,0x156
000006DA  50                push ax
000006DB  9A3E07430E        call word 0xe43:word 0x73e
000006E0  B8CC01            mov ax,0x1cc
000006E3  50                push ax
000006E4  B83C00            mov ax,0x3c
000006E7  50                push ax
000006E8  9A9828430E        call word 0xe43:word 0x2898
000006ED  B82000            mov ax,0x20
000006F0  50                push ax
000006F1  9A3E07430E        call word 0xe43:word 0x73e
000006F6  B834FE            mov ax,0xfe34
000006F9  50                push ax
000006FA  B83C00            mov ax,0x3c
000006FD  50                push ax
000006FE  9A9828430E        call word 0xe43:word 0x2898
00000703  B8BC00            mov ax,0xbc
00000706  50                push ax
00000707  9A3E07430E        call word 0xe43:word 0x73e
0000070C  837E9818          cmp word [bp-0x68],0x18
00000710  7595              jnz 0x6a7
00000712  B80100            mov ax,0x1
00000715  50                push ax
00000716  9A7F1A430E        call word 0xe43:word 0x1a7f
0000071B  B000              mov al,0x0
0000071D  50                push ax
0000071E  9AAC2B430E        call word 0xe43:word 0x2bac
00000723  B80400            mov ax,0x4
00000726  50                push ax
00000727  9AA32B430E        call word 0xe43:word 0x2ba3
0000072C  B82000            mov ax,0x20
0000072F  50                push ax
00000730  B84C01            mov ax,0x14c
00000733  50                push ax
00000734  9A8A1B430E        call word 0xe43:word 0x1b8a
00000739  31C0              xor ax,ax
0000073B  50                push ax
0000073C  9AD91A430E        call word 0xe43:word 0x1ad9
00000741  BF940E            mov di,0xe94
00000744  1E                push ds
00000745  57                push di
00000746  9AE010430E        call word 0xe43:word 0x10e0
0000074B  B81602            mov ax,0x216
0000074E  50                push ax
0000074F  B88001            mov ax,0x180
00000752  50                push ax
00000753  9A8A1B430E        call word 0xe43:word 0x1b8a
00000758  B80100            mov ax,0x1
0000075B  50                push ax
0000075C  9AA32B430E        call word 0xe43:word 0x2ba3
00000761  8DBE56FE          lea di,[bp-0x1aa]
00000765  16                push ss
00000766  57                push di
00000767  BF5005            mov di,0x550
0000076A  0E                push cs
0000076B  57                push di
0000076C  9A9306561A        call word 0x1a56:word 0x693
00000771  BFA50E            mov di,0xea5
00000774  1E                push ds
00000775  57                push di
00000776  9A2007561A        call word 0x1a56:word 0x720
0000077B  9AE010430E        call word 0xe43:word 0x10e0
00000780  B82000            mov ax,0x20
00000783  50                push ax
00000784  B82C01            mov ax,0x12c
00000787  50                push ax
00000788  9A8A1B430E        call word 0xe43:word 0x1b8a
0000078D  B80100            mov ax,0x1
00000790  50                push ax
00000791  9AA32B430E        call word 0xe43:word 0x2ba3
00000796  BFAA0E            mov di,0xeaa
00000799  1E                push ds
0000079A  57                push di
0000079B  9AE010430E        call word 0xe43:word 0x10e0
000007A0  B82000            mov ax,0x20
000007A3  50                push ax
000007A4  B81801            mov ax,0x118
000007A7  50                push ax
000007A8  9A8A1B430E        call word 0xe43:word 0x1b8a
000007AD  BFD90E            mov di,0xed9
000007B0  1E                push ds
000007B1  57                push di
000007B2  9AE010430E        call word 0xe43:word 0x10e0
000007B7  B8A401            mov ax,0x1a4
000007BA  50                push ax
000007BB  B81201            mov ax,0x112
000007BE  50                push ax
000007BF  9A8A1B430E        call word 0xe43:word 0x1b8a
000007C4  BF5A05            mov di,0x55a
000007C7  0E                push cs
000007C8  57                push di
000007C9  9AE010430E        call word 0xe43:word 0x10e0
000007CE  B8A401            mov ax,0x1a4
000007D1  50                push ax
000007D2  B80201            mov ax,0x102
000007D5  50                push ax
000007D6  9A8A1B430E        call word 0xe43:word 0x1b8a
000007DB  BF6805            mov di,0x568
000007DE  0E                push cs
000007DF  57                push di
000007E0  9AE010430E        call word 0xe43:word 0x10e0
000007E5  B8A401            mov ax,0x1a4
000007E8  50                push ax
000007E9  B8F200            mov ax,0xf2
000007EC  50                push ax
000007ED  9A8A1B430E        call word 0xe43:word 0x1b8a
000007F2  BF8305            mov di,0x583
000007F5  0E                push cs
000007F6  57                push di
000007F7  9AE010430E        call word 0xe43:word 0x10e0
000007FC  B8A401            mov ax,0x1a4
000007FF  50                push ax
00000800  B8E200            mov ax,0xe2
00000803  50                push ax
00000804  9A8A1B430E        call word 0xe43:word 0x1b8a
00000809  BF9105            mov di,0x591
0000080C  0E                push cs
0000080D  57                push di
0000080E  9AE010430E        call word 0xe43:word 0x10e0
00000813  B000              mov al,0x0
00000815  50                push ax
00000816  9AAC2B430E        call word 0xe43:word 0x2bac
0000081B  B80100            mov ax,0x1
0000081E  50                push ax
0000081F  9AA32B430E        call word 0xe43:word 0x2ba3
00000824  B83002            mov ax,0x230
00000827  50                push ax
00000828  B83200            mov ax,0x32
0000082B  50                push ax
0000082C  B84605            mov ax,0x546
0000082F  50                push ax
00000830  55                push bp
00000831  E8FFF7            call 0x33
00000834  B80100            mov ax,0x1
00000837  50                push ax
00000838  9A7F1A430E        call word 0xe43:word 0x1a7f
0000083D  8DBE56FD          lea di,[bp-0x2aa]
00000841  16                push ss
00000842  57                push di
00000843  8DBE56FE          lea di,[bp-0x1aa]
00000847  16                push ss
00000848  57                push di
00000849  8D7E9A            lea di,[bp-0x66]
0000084C  16                push ss
0000084D  57                push di
0000084E  55                push bp
0000084F  E8D9FB            call 0x42b
00000852  B80100            mov ax,0x1
00000855  50                push ax
00000856  B80300            mov ax,0x3
00000859  50                push ax
0000085A  9ADF06561A        call word 0x1a56:word 0x6df
0000085F  BFA805            mov di,0x5a8
00000862  0E                push cs
00000863  57                push di
00000864  9A8307561A        call word 0x1a56:word 0x783
00000869  7438              jz 0x8a3
0000086B  B82000            mov ax,0x20
0000086E  50                push ax
0000086F  B84000            mov ax,0x40
00000872  50                push ax
00000873  9A8A1B430E        call word 0xe43:word 0x1b8a
00000878  BFAC05            mov di,0x5ac
0000087B  0E                push cs
0000087C  57                push di
0000087D  9AE010430E        call word 0xe43:word 0x10e0
00000882  B82000            mov ax,0x20
00000885  50                push ax
00000886  B83000            mov ax,0x30
00000889  50                push ax
0000088A  9A8A1B430E        call word 0xe43:word 0x1b8a
0000088F  8DBE56FC          lea di,[bp-0x3aa]
00000893  16                push ss
00000894  57                push di
00000895  8D7E9A            lea di,[bp-0x66]
00000898  16                push ss
00000899  57                push di
0000089A  55                push bp
0000089B  E88DFB            call 0x42b
0000089E  9AE010430E        call word 0xe43:word 0x10e0
000008A3  B82000            mov ax,0x20
000008A6  50                push ax
000008A7  B82000            mov ax,0x20
000008AA  50                push ax
000008AB  9A8A1B430E        call word 0xe43:word 0x1b8a
000008B0  B80100            mov ax,0x1
000008B3  50                push ax
000008B4  9A7F1A430E        call word 0xe43:word 0x1a7f
000008B9  BFB905            mov di,0x5b9
000008BC  0E                push cs
000008BD  57                push di
000008BE  9AE010430E        call word 0xe43:word 0x10e0
000008C3  B82000            mov ax,0x20
000008C6  50                push ax
000008C7  B81000            mov ax,0x10
000008CA  50                push ax
000008CB  9A8A1B430E        call word 0xe43:word 0x1b8a
000008D0  8DBE56FF          lea di,[bp-0xaa]
000008D4  16                push ss
000008D5  57                push di
000008D6  9AE010430E        call word 0xe43:word 0x10e0
000008DB  B82000            mov ax,0x20
000008DE  50                push ax
000008DF  B8DC00            mov ax,0xdc
000008E2  50                push ax
000008E3  9A8A1B430E        call word 0xe43:word 0x1b8a
000008E8  BFC405            mov di,0x5c4
000008EB  0E                push cs
000008EC  57                push di
000008ED  9AE010430E        call word 0xe43:word 0x10e0
000008F2  C746960100        mov word [bp-0x6a],0x1
000008F7  EB03              jmp 0x8fc
000008F9  FF4696            inc word [bp-0x6a]
000008FC  B82000            mov ax,0x20
000008FF  50                push ax
00000900  8B4696            mov ax,[bp-0x6a]
00000903  B90400            mov cx,0x4
00000906  D3E0              shl ax,cl
00000908  8BD0              mov dx,ax
0000090A  B8DC00            mov ax,0xdc
0000090D  2BC2              sub ax,dx
0000090F  50                push ax
00000910  9A8A1B430E        call word 0xe43:word 0x1b8a
00000915  8B4696            mov ax,[bp-0x6a]
00000918  BA2100            mov dx,0x21
0000091B  F7E2              mul dx
0000091D  8BF8              mov di,ax
0000091F  81C7E30E          add di,0xee3
00000923  1E                push ds
00000924  57                push di
00000925  9AE010430E        call word 0xe43:word 0x10e0
0000092A  837E9602          cmp word [bp-0x6a],0x2
0000092E  75C9              jnz 0x8f9
00000930  9A6F16430E        call word 0xe43:word 0x166f
00000935  08C0              or al,al
00000937  740A              jz 0x943
00000939  9A9A16430E        call word 0xe43:word 0x169a
0000093E  884693            mov [bp-0x6d],al
00000941  EBED              jmp 0x930
00000943  31C0              xor ax,ax
00000945  894694            mov [bp-0x6c],ax
00000948  8B4694            mov ax,[bp-0x6c]
0000094B  40                inc ax
0000094C  894694            mov [bp-0x6c],ax
0000094F  B80800            mov ax,0x8
00000952  50                push ax
00000953  9A0700330E        call word 0xe33:word 0x7
00000958  9A6F16430E        call word 0xe43:word 0x166f
0000095D  08C0              or al,al
0000095F  7506              jnz 0x967
00000961  837E9464          cmp word [bp-0x6c],0x64
00000965  75E1              jnz 0x948
00000967  9A6F16430E        call word 0xe43:word 0x166f
0000096C  08C0              or al,al
0000096E  7408              jz 0x978
00000970  9A9A16430E        call word 0xe43:word 0x169a
00000975  884693            mov [bp-0x6d],al
00000978  B8440B            mov ax,0xb44
0000097B  8CDA              mov dx,ds
0000097D  52                push dx
0000097E  50                push ax
0000097F  B8110C            mov ax,0xc11
00000982  8CDA              mov dx,ds
00000984  52                push dx
00000985  50                push ax
00000986  9AA50D430E        call word 0xe43:word 0xda5
0000098B  9ADB09430E        call word 0xe43:word 0x9db
00000990  89EC              mov sp,bp
00000992  5D                pop bp
00000993  C3                ret
00000994  89E5              mov bp,sp
00000996  E836FC            call 0x5cf
00000999  89EC              mov sp,bp
0000099B  CB                retf
0000099C  0000              add [bx+si],al
0000099E  0000              add [bx+si],al
