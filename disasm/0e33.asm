00000000  55                push bp
00000001  89E5              mov bp,sp
00000003  89EC              mov sp,bp
00000005  5D                pop bp
00000006  CB                retf
00000007  55                push bp
00000008  89E5              mov bp,sp
0000000A  83EC02            sub sp,0x2
0000000D  8D7EFE            lea di,[bp-0x2]
00000010  16                push ss
00000011  57                push di
00000012  0E                push cs
00000013  E81600            call 0x2c
00000016  FF1E2466          call word far [0x6624]
0000001A  FF76FE            push word [bp-0x2]
0000001D  0E                push cs
0000001E  E81D00            call 0x3e
00000021  3B4606            cmp ax,[bp+0x6]
00000024  72F0              jc 0x16
00000026  89EC              mov sp,bp
00000028  5D                pop bp
00000029  CA0200            retf word 0x2
0000002C  55                push bp
0000002D  89E5              mov bp,sp
0000002F  A12866            mov ax,[0x6628]
00000032  C47E06            les di,word [bp+0x6]
00000035  268905            mov [es:di],ax
00000038  89EC              mov sp,bp
0000003A  5D                pop bp
0000003B  CA0400            retf word 0x4
0000003E  55                push bp
0000003F  89E5              mov bp,sp
00000041  83EC02            sub sp,0x2
00000044  A12866            mov ax,[0x6628]
00000047  2B4606            sub ax,[bp+0x6]
0000004A  3D8C2E            cmp ax,0x2e8c
0000004D  731B              jnc 0x6a
0000004F  A12866            mov ax,[0x6628]
00000052  2B4606            sub ax,[bp+0x6]
00000055  50                push ax
00000056  B83700            mov ax,0x37
00000059  50                push ax
0000005A  B80A00            mov ax,0xa
0000005D  50                push ax
0000005E  59                pop cx
0000005F  5B                pop bx
00000060  58                pop ax
00000061  F7E3              mul bx
00000063  F7F1              div cx
00000065  8946FE            mov [bp-0x2],ax
00000068  EB05              jmp 0x6f
0000006A  C746FEFFFF        mov word [bp-0x2],0xffff
0000006F  8B46FE            mov ax,[bp-0x2]
00000072  89EC              mov sp,bp
00000074  5D                pop bp
00000075  CA0200            retf word 0x2
00000078  55                push bp
00000079  89E5              mov bp,sp
0000007B  C4062E66          les ax,word [0x662e]
0000007F  8CC2              mov dx,es
00000081  A3328F            mov [0x8f32],ax
00000084  8916348F          mov [0x8f34],dx
00000088  B01C              mov al,0x1c
0000008A  50                push ax
0000008B  FF362C66          push word [0x662c]
0000008F  FF362A66          push word [0x662a]
00000093  9A3101A712        call word 0x12a7:word 0x131
00000098  89EC              mov sp,bp
0000009A  5D                pop bp
0000009B  CB                retf
0000009C  89E5              mov bp,sp
0000009E  C406328F          les ax,word [0x8f32]
000000A2  8CC2              mov dx,es
000000A4  A32E66            mov [0x662e],ax
000000A7  89163066          mov [0x6630],dx
000000AB  B87800            mov ax,0x78
000000AE  8CCA              mov dx,cs
000000B0  A3328F            mov [0x8f32],ax
000000B3  8916348F          mov [0x8f34],dx
000000B7  31C0              xor ax,ax
000000B9  A32866            mov [0x6628],ax
000000BC  B82866            mov ax,0x6628
000000BF  A3490F            mov [0xf49],ax
000000C2  B82A66            mov ax,0x662a
000000C5  A34E0F            mov [0xf4e],ax
000000C8  B01C              mov al,0x1c
000000CA  50                push ax
000000CB  BF2A66            mov di,0x662a
000000CE  1E                push ds
000000CF  57                push di
000000D0  9A0201A712        call word 0x12a7:word 0x102
000000D5  B01C              mov al,0x1c
000000D7  50                push ax
000000D8  B8460F            mov ax,0xf46
000000DB  8CDA              mov dx,ds
000000DD  52                push dx
000000DE  50                push ax
000000DF  9A3101A712        call word 0x12a7:word 0x131
000000E4  B80000            mov ax,0x0
000000E7  8CCA              mov dx,cs
000000E9  A32466            mov [0x6624],ax
000000EC  89162666          mov [0x6626],dx
000000F0  89EC              mov sp,bp
000000F2  CB                retf
000000F3  0000              add [bx+si],al
000000F5  0000              add [bx+si],al
000000F7  0000              add [bx+si],al
000000F9  0000              add [bx+si],al
000000FB  0000              add [bx+si],al
000000FD  0000              add [bx+si],al
000000FF  00                db 0x00
