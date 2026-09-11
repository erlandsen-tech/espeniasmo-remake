00000000  89E5              mov bp,sp
00000002  B84E01            mov ax,0x14e
00000005  8CDA              mov dx,ds
00000007  52                push dx
00000008  50                push ax
00000009  B8C801            mov ax,0x1c8
0000000C  8CDA              mov dx,ds
0000000E  52                push dx
0000000F  50                push ax
00000010  9AA50D430E        call word 0xe43:word 0xda5
00000015  9ADB09430E        call word 0xe43:word 0x9db
0000001A  89EC              mov sp,bp
0000001C  CB                retf
0000001D  0000              add [bx+si],al
0000001F  00                db 0x00
