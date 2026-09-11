00000000  89E5              mov bp,sp
00000002  B8AA03            mov ax,0x3aa
00000005  8CDA              mov dx,ds
00000007  A3A48B            mov [0x8ba4],ax
0000000A  8916A68B          mov [0x8ba6],dx
0000000E  89EC              mov sp,bp
00000010  CB                retf
00000011  0000              add [bx+si],al
00000013  0000              add [bx+si],al
00000015  0000              add [bx+si],al
00000017  0000              add [bx+si],al
00000019  0000              add [bx+si],al
0000001B  0000              add [bx+si],al
0000001D  0000              add [bx+si],al
0000001F  00                db 0x00
