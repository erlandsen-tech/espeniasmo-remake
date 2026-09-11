00000000  55                push bp
00000001  89E5              mov bp,sp
00000003  83EC06            sub sp,0x6
00000006  C47E06            les di,word [bp+0x6]
00000009  06                push es
0000000A  57                push di
0000000B  8D7EFA            lea di,[bp-0x6]
0000000E  16                push ss
0000000F  57                push di
00000010  B80500            mov ax,0x5
00000013  50                push ax
00000014  9AC002561A        call word 0x1a56:word 0x2c0
00000019  807EFA0D          cmp byte [bp-0x6],0xd
0000001D  750C              jnz 0x2b
0000001F  837EFB00          cmp word [bp-0x5],0x0
00000023  7506              jnz 0x2b
00000025  C646FF01          mov byte [bp-0x1],0x1
00000029  EB04              jmp 0x2f
0000002B  C646FF00          mov byte [bp-0x1],0x0
0000002F  8A46FF            mov al,[bp-0x1]
00000032  89EC              mov sp,bp
00000034  5D                pop bp
00000035  CA0400            retf word 0x4
00000038  55                push bp
00000039  89E5              mov bp,sp
0000003B  83EC06            sub sp,0x6
0000003E  C47E06            les di,word [bp+0x6]
00000041  06                push es
00000042  57                push di
00000043  8D7EFA            lea di,[bp-0x6]
00000046  16                push ss
00000047  57                push di
00000048  B80500            mov ax,0x5
0000004B  50                push ax
0000004C  9AC002561A        call word 0x1a56:word 0x2c0
00000051  807EFA0C          cmp byte [bp-0x6],0xc
00000055  750C              jnz 0x63
00000057  837EFB00          cmp word [bp-0x5],0x0
0000005B  7506              jnz 0x63
0000005D  C646FF01          mov byte [bp-0x1],0x1
00000061  EB04              jmp 0x67
00000063  C646FF00          mov byte [bp-0x1],0x0
00000067  8A46FF            mov al,[bp-0x1]
0000006A  89EC              mov sp,bp
0000006C  5D                pop bp
0000006D  CA0400            retf word 0x4
00000070  55                push bp
00000071  89E5              mov bp,sp
00000073  83EC06            sub sp,0x6
00000076  C47E06            les di,word [bp+0x6]
00000079  06                push es
0000007A  57                push di
0000007B  8D7EFA            lea di,[bp-0x6]
0000007E  16                push ss
0000007F  57                push di
00000080  B80500            mov ax,0x5
00000083  50                push ax
00000084  9AC002561A        call word 0x1a56:word 0x2c0
00000089  807EFA0C          cmp byte [bp-0x6],0xc
0000008D  750C              jnz 0x9b
0000008F  837EFB00          cmp word [bp-0x5],0x0
00000093  7506              jnz 0x9b
00000095  C646FF01          mov byte [bp-0x1],0x1
00000099  EB04              jmp 0x9f
0000009B  C646FF00          mov byte [bp-0x1],0x0
0000009F  8A46FF            mov al,[bp-0x1]
000000A2  89EC              mov sp,bp
000000A4  5D                pop bp
000000A5  CA0400            retf word 0x4
000000A8  55                push bp
000000A9  89E5              mov bp,sp
000000AB  83EC06            sub sp,0x6
000000AE  C47E06            les di,word [bp+0x6]
000000B1  06                push es
000000B2  57                push di
000000B3  8D7EFA            lea di,[bp-0x6]
000000B6  16                push ss
000000B7  57                push di
000000B8  B80500            mov ax,0x5
000000BB  50                push ax
000000BC  9AC002561A        call word 0x1a56:word 0x2c0
000000C1  807EFA0C          cmp byte [bp-0x6],0xc
000000C5  7512              jnz 0xd9
000000C7  837EFBFF          cmp word [bp-0x5],0xffffffffffffffff
000000CB  750C              jnz 0xd9
000000CD  837EFDFF          cmp word [bp-0x3],0xffffffffffffffff
000000D1  7506              jnz 0xd9
000000D3  C646FF01          mov byte [bp-0x1],0x1
000000D7  EB04              jmp 0xdd
000000D9  C646FF00          mov byte [bp-0x1],0x0
000000DD  8A46FF            mov al,[bp-0x1]
000000E0  89EC              mov sp,bp
000000E2  5D                pop bp
000000E3  CA0400            retf word 0x4
000000E6  55                push bp
000000E7  89E5              mov bp,sp
000000E9  83EC06            sub sp,0x6
000000EC  C47E06            les di,word [bp+0x6]
000000EF  06                push es
000000F0  57                push di
000000F1  8D7EFA            lea di,[bp-0x6]
000000F4  16                push ss
000000F5  57                push di
000000F6  B80500            mov ax,0x5
000000F9  50                push ax
000000FA  9AC002561A        call word 0x1a56:word 0x2c0
000000FF  807EFA0E          cmp byte [bp-0x6],0xe
00000103  750C              jnz 0x111
00000105  837EFBFF          cmp word [bp-0x5],0xffffffffffffffff
00000109  7506              jnz 0x111
0000010B  C646FF01          mov byte [bp-0x1],0x1
0000010F  EB04              jmp 0x115
00000111  C646FF00          mov byte [bp-0x1],0x0
00000115  8A46FF            mov al,[bp-0x1]
00000118  89EC              mov sp,bp
0000011A  5D                pop bp
0000011B  CA0400            retf word 0x4
0000011E  0000              add [bx+si],al
