00000000  55                push bp
00000001  89E5              mov bp,sp
00000003  83EC04            sub sp,0x4
00000006  8B4606            mov ax,[bp+0x6]
00000009  0B4608            or ax,[bp+0x8]
0000000C  750D              jnz 0x1b
0000000E  C4460A            les ax,word [bp+0xa]
00000011  8CC2              mov dx,es
00000013  8946FC            mov [bp-0x4],ax
00000016  8956FE            mov [bp-0x2],dx
00000019  EB25              jmp 0x40
0000001B  FF7608            push word [bp+0x8]
0000001E  FF7606            push word [bp+0x6]
00000021  C4460A            les ax,word [bp+0xa]
00000024  8CC2              mov dx,es
00000026  C44E06            les cx,word [bp+0x6]
00000029  8CC3              mov bx,es
0000002B  9AF702561A        call word 0x1a56:word 0x2f7
00000030  89C8              mov ax,cx
00000032  89DA              mov dx,bx
00000034  52                push dx
00000035  50                push ax
00000036  0E                push cs
00000037  E8C6FF            call 0x0
0000003A  8946FC            mov [bp-0x4],ax
0000003D  8956FE            mov [bp-0x2],dx
00000040  8B46FC            mov ax,[bp-0x4]
00000043  8B56FE            mov dx,[bp-0x2]
00000046  89EC              mov sp,bp
00000048  5D                pop bp
00000049  CA0800            retf word 0x8
0000004C  55                push bp
0000004D  89E5              mov bp,sp
0000004F  83EC02            sub sp,0x2
00000052  8B4606            mov ax,[bp+0x6]
00000055  3B460A            cmp ax,[bp+0xa]
00000058  7F08              jg 0x62
0000005A  8B460A            mov ax,[bp+0xa]
0000005D  8946FE            mov [bp-0x2],ax
00000060  EB16              jmp 0x78
00000062  8B4606            mov ax,[bp+0x6]
00000065  3B4608            cmp ax,[bp+0x8]
00000068  7F08              jg 0x72
0000006A  8B4606            mov ax,[bp+0x6]
0000006D  8946FE            mov [bp-0x2],ax
00000070  EB06              jmp 0x78
00000072  8B4608            mov ax,[bp+0x8]
00000075  8946FE            mov [bp-0x2],ax
00000078  8B46FE            mov ax,[bp-0x2]
0000007B  89EC              mov sp,bp
0000007D  5D                pop bp
0000007E  CA0600            retf word 0x6
00000081  55                push bp
00000082  89E5              mov bp,sp
00000084  8B460C            mov ax,[bp+0xc]
00000087  C47E06            les di,word [bp+0x6]
0000008A  268905            mov [es:di],ax
0000008D  8B460A            mov ax,[bp+0xa]
00000090  C47E06            les di,word [bp+0x6]
00000093  26894502          mov [es:di+0x2],ax
00000097  89EC              mov sp,bp
00000099  5D                pop bp
0000009A  CA0800            retf word 0x8
0000009D  0000              add [bx+si],al
0000009F  00                db 0x00
