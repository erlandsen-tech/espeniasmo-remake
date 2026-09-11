00000000  55                push bp
00000001  89E5              mov bp,sp
00000003  B021              mov al,0x21
00000005  50                push ax
00000006  C47E06            les di,word [bp+0x6]
00000009  06                push es
0000000A  57                push di
0000000B  0E                push cs
0000000C  E84D01            call 0x15c
0000000F  89EC              mov sp,bp
00000011  5D                pop bp
00000012  CA0400            retf word 0x4
00000015  55                push bp
00000016  89E5              mov bp,sp
00000018  81EC1401          sub sp,0x114
0000001C  C47E0C            les di,word [bp+0xc]
0000001F  06                push es
00000020  57                push di
00000021  8DBE00FF          lea di,[bp-0x100]
00000025  16                push ss
00000026  57                push di
00000027  B8FF00            mov ax,0xff
0000002A  50                push ax
0000002B  9AAD06561A        call word 0x1a56:word 0x6ad
00000030  C686EDFE1A        mov byte [bp-0x113],0x1a
00000035  C47E06            les di,word [bp+0x6]
00000038  89F8              mov ax,di
0000003A  8986F2FE          mov [bp-0x10e],ax
0000003E  C47E06            les di,word [bp+0x6]
00000041  8CC0              mov ax,es
00000043  8986FAFE          mov [bp-0x106],ax
00000047  8DBEECFE          lea di,[bp-0x114]
0000004B  16                push ss
0000004C  57                push di
0000004D  0E                push cs
0000004E  E8AFFF            call 0x0
00000051  8DBE00FF          lea di,[bp-0x100]
00000055  16                push ss
00000056  57                push di
00000057  E85501            call 0x1af
0000005A  C686EDFE4E        mov byte [bp-0x113],0x4e
0000005F  8D8600FF          lea ax,[bp-0x100]
00000063  8986F2FE          mov [bp-0x10e],ax
00000067  8CD0              mov ax,ss
00000069  8986FAFE          mov [bp-0x106],ax
0000006D  8B460A            mov ax,[bp+0xa]
00000070  8986F0FE          mov [bp-0x110],ax
00000074  8DBEECFE          lea di,[bp-0x114]
00000078  16                push ss
00000079  57                push di
0000007A  0E                push cs
0000007B  E882FF            call 0x0
0000007E  8B86FEFE          mov ax,[bp-0x102]
00000082  250100            and ax,0x1
00000085  09C0              or ax,ax
00000087  7513              jnz 0x9c
00000089  31C0              xor ax,ax
0000008B  A3B671            mov [0x71b6],ax
0000008E  C47E06            les di,word [bp+0x6]
00000091  81C71E00          add di,0x1e
00000095  06                push es
00000096  57                push di
00000097  E82F01            call 0x1c9
0000009A  EB07              jmp 0xa3
0000009C  8B86ECFE          mov ax,[bp-0x114]
000000A0  A3B671            mov [0x71b6],ax
000000A3  89EC              mov sp,bp
000000A5  5D                pop bp
000000A6  CA0A00            retf word 0xa
000000A9  55                push bp
000000AA  89E5              mov bp,sp
000000AC  83EC14            sub sp,0x14
000000AF  C646ED1A          mov byte [bp-0x13],0x1a
000000B3  C47E06            les di,word [bp+0x6]
000000B6  89F8              mov ax,di
000000B8  8946F2            mov [bp-0xe],ax
000000BB  C47E06            les di,word [bp+0x6]
000000BE  8CC0              mov ax,es
000000C0  8946FA            mov [bp-0x6],ax
000000C3  8D7EEC            lea di,[bp-0x14]
000000C6  16                push ss
000000C7  57                push di
000000C8  0E                push cs
000000C9  E834FF            call 0x0
000000CC  C646ED4F          mov byte [bp-0x13],0x4f
000000D0  8D7EEC            lea di,[bp-0x14]
000000D3  16                push ss
000000D4  57                push di
000000D5  0E                push cs
000000D6  E827FF            call 0x0
000000D9  8B46FE            mov ax,[bp-0x2]
000000DC  250100            and ax,0x1
000000DF  09C0              or ax,ax
000000E1  7513              jnz 0xf6
000000E3  31C0              xor ax,ax
000000E5  A3B671            mov [0x71b6],ax
000000E8  C47E06            les di,word [bp+0x6]
000000EB  81C71E00          add di,0x1e
000000EF  06                push es
000000F0  57                push di
000000F1  E8D500            call 0x1c9
000000F4  EB06              jmp 0xfc
000000F6  8B46EC            mov ax,[bp-0x14]
000000F9  A3B671            mov [0x71b6],ax
000000FC  89EC              mov sp,bp
000000FE  5D                pop bp
000000FF  CA0400            retf word 0x4
00000102  55                push bp
00000103  89E5              mov bp,sp
00000105  83EC14            sub sp,0x14
00000108  C646ED35          mov byte [bp-0x13],0x35
0000010C  8A460A            mov al,[bp+0xa]
0000010F  8846EC            mov [bp-0x14],al
00000112  8D7EEC            lea di,[bp-0x14]
00000115  16                push ss
00000116  57                push di
00000117  0E                push cs
00000118  E8E5FE            call 0x0
0000011B  8B46EE            mov ax,[bp-0x12]
0000011E  8B56FC            mov dx,[bp-0x4]
00000121  C47E06            les di,word [bp+0x6]
00000124  268905            mov [es:di],ax
00000127  26895502          mov [es:di+0x2],dx
0000012B  89EC              mov sp,bp
0000012D  5D                pop bp
0000012E  CA0600            retf word 0x6
00000131  55                push bp
00000132  89E5              mov bp,sp
00000134  83EC14            sub sp,0x14
00000137  C646ED25          mov byte [bp-0x13],0x25
0000013B  8A460A            mov al,[bp+0xa]
0000013E  8846EC            mov [bp-0x14],al
00000141  8B4606            mov ax,[bp+0x6]
00000144  8946F2            mov [bp-0xe],ax
00000147  8B4608            mov ax,[bp+0x8]
0000014A  8946FA            mov [bp-0x6],ax
0000014D  8D7EEC            lea di,[bp-0x14]
00000150  16                push ss
00000151  57                push di
00000152  0E                push cs
00000153  E8AAFE            call 0x0
00000156  89EC              mov sp,bp
00000158  5D                pop bp
00000159  CA0600            retf word 0x6
0000015C  55                push bp
0000015D  1E                push ds
0000015E  8BEC              mov bp,sp
00000160  8A460C            mov al,[bp+0xc]
00000163  2EA28701          mov [cs:0x187],al
00000167  C57608            lds si,word [bp+0x8]
0000016A  FC                cld
0000016B  AD                lodsw
0000016C  50                push ax
0000016D  AD                lodsw
0000016E  8BD8              mov bx,ax
00000170  AD                lodsw
00000171  8BC8              mov cx,ax
00000173  AD                lodsw
00000174  8BD0              mov dx,ax
00000176  AD                lodsw
00000177  8BE8              mov bp,ax
00000179  AD                lodsw
0000017A  50                push ax
0000017B  AD                lodsw
0000017C  8BF8              mov di,ax
0000017E  AD                lodsw
0000017F  50                push ax
00000180  AD                lodsw
00000181  8EC0              mov es,ax
00000183  1F                pop ds
00000184  5E                pop si
00000185  58                pop ax
00000186  CD00              int byte 0x0
00000188  9C                pushf
00000189  06                push es
0000018A  57                push di
0000018B  55                push bp
0000018C  8BEC              mov bp,sp
0000018E  C47E10            les di,word [bp+0x10]
00000191  FC                cld
00000192  AB                stosw
00000193  8BC3              mov ax,bx
00000195  AB                stosw
00000196  8BC1              mov ax,cx
00000198  AB                stosw
00000199  8BC2              mov ax,dx
0000019B  AB                stosw
0000019C  58                pop ax
0000019D  AB                stosw
0000019E  8BC6              mov ax,si
000001A0  AB                stosw
000001A1  58                pop ax
000001A2  AB                stosw
000001A3  8CD8              mov ax,ds
000001A5  AB                stosw
000001A6  58                pop ax
000001A7  AB                stosw
000001A8  58                pop ax
000001A9  AB                stosw
000001AA  1F                pop ds
000001AB  5D                pop bp
000001AC  CA0600            retf word 0x6
000001AF  5B                pop bx
000001B0  5F                pop di
000001B1  07                pop es
000001B2  8CDA              mov dx,ds
000001B4  8BF7              mov si,di
000001B6  8CC0              mov ax,es
000001B8  8ED8              mov ds,ax
000001BA  FC                cld
000001BB  AC                lodsb
000001BC  8AC8              mov cl,al
000001BE  32ED              xor ch,ch
000001C0  F3A4              rep movsb
000001C2  32C0              xor al,al
000001C4  AA                stosb
000001C5  8EDA              mov ds,dx
000001C7  FFE3              jmp bx
000001C9  5B                pop bx
000001CA  5F                pop di
000001CB  07                pop es
000001CC  8CDA              mov dx,ds
000001CE  8BF7              mov si,di
000001D0  8CC0              mov ax,es
000001D2  8ED8              mov ds,ax
000001D4  FC                cld
000001D5  32C0              xor al,al
000001D7  B9FFFF            mov cx,0xffff
000001DA  F2AE              repne scasb
000001DC  8BC7              mov ax,di
000001DE  2BC6              sub ax,si
000001E0  48                dec ax
000001E1  8BC8              mov cx,ax
000001E3  4F                dec di
000001E4  8BF7              mov si,di
000001E6  4E                dec si
000001E7  FD                std
000001E8  F3A4              rep movsb
000001EA  AA                stosb
000001EB  8EDA              mov ds,dx
000001ED  FFE3              jmp bx
000001EF  00                db 0x00
