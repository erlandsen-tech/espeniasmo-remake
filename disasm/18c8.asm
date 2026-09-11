00000000  8BC5              mov ax,bp
00000002  8BEC              mov bp,sp
00000004  8CDA              mov dx,ds
00000006  C55E04            lds bx,word [bp+0x4]
00000009  8907              mov [bx],ax
0000000B  897F02            mov [bx+0x2],di
0000000E  897704            mov [bx+0x4],si
00000011  896706            mov [bx+0x6],sp
00000014  89570C            mov [bx+0xc],dx
00000017  8B4E00            mov cx,[bp+0x0]
0000001A  894F08            mov [bx+0x8],cx
0000001D  8B4E02            mov cx,[bp+0x2]
00000020  894F0A            mov [bx+0xa],cx
00000023  8EDA              mov ds,dx
00000025  8BE8              mov bp,ax
00000027  33C0              xor ax,ax
00000029  CA0400            retf word 0x4
0000002C  8BEC              mov bp,sp
0000002E  8B4604            mov ax,[bp+0x4]
00000031  0BC0              or ax,ax
00000033  7501              jnz 0x36
00000035  40                inc ax
00000036  C55E06            lds bx,word [bp+0x6]
00000039  8B7F02            mov di,[bx+0x2]
0000003C  8B7704            mov si,[bx+0x4]
0000003F  8B6706            mov sp,[bx+0x6]
00000042  8BEC              mov bp,sp
00000044  8B4F08            mov cx,[bx+0x8]
00000047  894E00            mov [bp+0x0],cx
0000004A  8B4F0A            mov cx,[bx+0xa]
0000004D  894E02            mov [bp+0x2],cx
00000050  8B2F              mov bp,[bx]
00000052  8E5F0C            mov ds,word [bx+0xc]
00000055  CA0400            retf word 0x4
00000058  0000              add [bx+si],al
0000005A  0000              add [bx+si],al
0000005C  0000              add [bx+si],al
0000005E  0000              add [bx+si],al
