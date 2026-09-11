00000000  55                push bp
00000001  89E5              mov bp,sp
00000003  8B4604            mov ax,[bp+0x4]
00000006  B90C00            mov cx,0xc
00000009  D3E8              shr ax,cl
0000000B  250F00            and ax,0xf
0000000E  8BF8              mov di,ax
00000010  8A85F415          mov al,[di+0x15f4]
00000014  A20516            mov [0x1605],al
00000017  8B4604            mov ax,[bp+0x4]
0000001A  B90800            mov cx,0x8
0000001D  D3E8              shr ax,cl
0000001F  250F00            and ax,0xf
00000022  8BF8              mov di,ax
00000024  8A85F415          mov al,[di+0x15f4]
00000028  A20616            mov [0x1606],al
0000002B  8B4604            mov ax,[bp+0x4]
0000002E  B90400            mov cx,0x4
00000031  D3E8              shr ax,cl
00000033  250F00            and ax,0xf
00000036  8BF8              mov di,ax
00000038  8A85F415          mov al,[di+0x15f4]
0000003C  A20716            mov [0x1607],al
0000003F  8B4604            mov ax,[bp+0x4]
00000042  250F00            and ax,0xf
00000045  8BF8              mov di,ax
00000047  8A85F415          mov al,[di+0x15f4]
0000004B  A20816            mov [0x1608],al
0000004E  BF0416            mov di,0x1604
00000051  1E                push ds
00000052  57                push di
00000053  C47E06            les di,word [bp+0x6]
00000056  06                push es
00000057  57                push di
00000058  B80400            mov ax,0x4
0000005B  50                push ax
0000005C  9AAD06561A        call word 0x1a56:word 0x6ad
00000061  89EC              mov sp,bp
00000063  5D                pop bp
00000064  C20200            ret word 0x2
00000067  0E                push cs
00000068  55                push bp
00000069  7466              jz 0xd1
0000006B  9B7269            wait jc 0xd7
0000006E  6E                outsb
0000006F  677366            a32 jnc 0xd8
00000072  65696C202420      imul bp,[gs:si+0x20],0x2024
00000078  6F                outsw
00000079  7070              jo 0xeb
0000007B  6461              fs popa
0000007D  6761              a32 popa
0000007F  206176            and [bx+di+0x76],ah
00000082  205475            and [si+0x75],dl
00000085  7262              jc 0xe9
00000087  6F                outsw
00000088  205061            and [bx+si+0x61],dl
0000008B  7363              jnc 0xf0
0000008D  61                popa
0000008E  6C                insb
0000008F  206920            and [bx+di+0x20],ch
00000092  706F              jo 0x103
00000094  7369              jnc 0xff
00000096  736A              jnc 0x102
00000098  6F                outsw
00000099  6E                outsb
0000009A  205589            and [di-0x77],dl
0000009D  E581              in ax,byte 0x81
0000009F  EC                in al,dx
000000A0  0002              add [bp+si],al
000000A2  807E0600          cmp byte [bp+0x6],0x0
000000A6  7503              jnz 0xab
000000A8  E9D400            jmp 0x17f
000000AB  A1148D            mov ax,[0x8d14]
000000AE  0B06168D          or ax,[0x8d16]
000000B2  7422              jz 0xd6
000000B4  C43E148D          les di,word [0x8d14]
000000B8  06                push es
000000B9  57                push di
000000BA  8A4606            mov al,[bp+0x6]
000000BD  30E4              xor ah,ah
000000BF  8BD0              mov dx,ax
000000C1  8A4608            mov al,[bp+0x8]
000000C4  30E4              xor ah,ah
000000C6  B90800            mov cx,0x8
000000C9  D3E0              shl ax,cl
000000CB  0BC2              or ax,dx
000000CD  50                push ax
000000CE  9A2C00C818        call word 0x18c8:word 0x2c
000000D3  E9A900            jmp 0x17f
000000D6  807E0800          cmp byte [bp+0x8],0x0
000000DA  756C              jnz 0x148
000000DC  BF1E8E            mov di,0x8e1e
000000DF  1E                push ds
000000E0  57                push di
000000E1  BF6700            mov di,0x67
000000E4  0E                push cs
000000E5  57                push di
000000E6  31C0              xor ax,ax
000000E8  50                push ax
000000E9  9AF717561A        call word 0x1a56:word 0x17f7
000000EE  8A4606            mov al,[bp+0x6]
000000F1  30E4              xor ah,ah
000000F3  31D2              xor dx,dx
000000F5  52                push dx
000000F6  50                push ax
000000F7  31C0              xor ax,ax
000000F9  50                push ax
000000FA  9A8218561A        call word 0x1a56:word 0x1882
000000FF  BF7600            mov di,0x76
00000102  0E                push cs
00000103  57                push di
00000104  31C0              xor ax,ax
00000106  50                push ax
00000107  9AF717561A        call word 0x1a56:word 0x17f7
0000010C  8DBE00FF          lea di,[bp-0x100]
00000110  16                push ss
00000111  57                push di
00000112  FF363A8F          push word [0x8f3a]
00000116  E8E7FE            call 0x0
00000119  31C0              xor ax,ax
0000011B  50                push ax
0000011C  9AF717561A        call word 0x1a56:word 0x17f7
00000121  B03A              mov al,0x3a
00000123  50                push ax
00000124  31C0              xor ax,ax
00000126  50                push ax
00000127  9A9917561A        call word 0x1a56:word 0x1799
0000012C  8DBE00FE          lea di,[bp-0x200]
00000130  16                push ss
00000131  57                push di
00000132  FF36388F          push word [0x8f38]
00000136  E8C7FE            call 0x0
00000139  31C0              xor ax,ax
0000013B  50                push ax
0000013C  9AF717561A        call word 0x1a56:word 0x17f7
00000141  9A3C17561A        call word 0x1a56:word 0x173c
00000146  EB26              jmp 0x16e
00000148  BF1E8E            mov di,0x8e1e
0000014B  1E                push ds
0000014C  57                push di
0000014D  8DBE00FF          lea di,[bp-0x100]
00000151  16                push ss
00000152  57                push di
00000153  8A4608            mov al,[bp+0x8]
00000156  50                push ax
00000157  8A4606            mov al,[bp+0x6]
0000015A  30E4              xor ah,ah
0000015C  50                push ax
0000015D  FF1E188D          call word far [0x8d18]
00000161  31C0              xor ax,ax
00000163  50                push ax
00000164  9AF717561A        call word 0x1a56:word 0x17f7
00000169  9A3C17561A        call word 0x1a56:word 0x173c
0000016E  BF1E8D            mov di,0x8d1e
00000171  1E                push ds
00000172  57                push di
00000173  9AEF16561A        call word 0x1a56:word 0x16ef
00000178  31C0              xor ax,ax
0000017A  9AF301561A        call word 0x1a56:word 0x1f3
0000017F  89EC              mov sp,bp
00000181  5D                pop bp
00000182  CA0400            retf word 0x4
00000185  55                push bp
00000186  89E5              mov bp,sp
00000188  C44608            les ax,word [bp+0x8]
0000018B  8CC2              mov dx,es
0000018D  A3148D            mov [0x8d14],ax
00000190  8916168D          mov [0x8d16],dx
00000194  8A4607            mov al,[bp+0x7]
00000197  50                push ax
00000198  8A4606            mov al,[bp+0x6]
0000019B  50                push ax
0000019C  0E                push cs
0000019D  E8FBFE            call 0x9b
000001A0  89EC              mov sp,bp
000001A2  5D                pop bp
000001A3  CA0600            retf word 0x6
000001A6  094665            or [bp+0x65],ax
000001A9  696C206E72        imul bp,[si+0x20],0x726e
000001AE  2E200D            and [cs:di],cl
000001B1  206920            and [bx+di+0x20],ch
000001B4  6D                insw
000001B5  6F                outsw
000001B6  64756C            fs jnz 0x225
000001B9  206E72            and [bp+0x72],ch
000001BC  2E205589          and [cs:di-0x77],dl
000001C0  E581              in ax,byte 0x81
000001C2  EC                in al,dx
000001C3  0003              add [bp+di],al
000001C5  8A4608            mov al,[bp+0x8]
000001C8  30E4              xor ah,ah
000001CA  31D2              xor dx,dx
000001CC  52                push dx
000001CD  50                push ax
000001CE  31C0              xor ax,ax
000001D0  50                push ax
000001D1  8DBE00FE          lea di,[bp-0x200]
000001D5  16                push ss
000001D6  57                push di
000001D7  B8FF00            mov ax,0xff
000001DA  50                push ax
000001DB  9A0713561A        call word 0x1a56:word 0x1307
000001E0  8B4606            mov ax,[bp+0x6]
000001E3  31D2              xor dx,dx
000001E5  52                push dx
000001E6  50                push ax
000001E7  31C0              xor ax,ax
000001E9  50                push ax
000001EA  8DBE00FF          lea di,[bp-0x100]
000001EE  16                push ss
000001EF  57                push di
000001F0  B8FF00            mov ax,0xff
000001F3  50                push ax
000001F4  9A0713561A        call word 0x1a56:word 0x1307
000001F9  8DBE00FD          lea di,[bp-0x300]
000001FD  16                push ss
000001FE  57                push di
000001FF  BFA601            mov di,0x1a6
00000202  0E                push cs
00000203  57                push di
00000204  9A9306561A        call word 0x1a56:word 0x693
00000209  8DBE00FF          lea di,[bp-0x100]
0000020D  16                push ss
0000020E  57                push di
0000020F  9A2007561A        call word 0x1a56:word 0x720
00000214  BFB001            mov di,0x1b0
00000217  0E                push cs
00000218  57                push di
00000219  9A2007561A        call word 0x1a56:word 0x720
0000021E  8DBE00FE          lea di,[bp-0x200]
00000222  16                push ss
00000223  57                push di
00000224  9A2007561A        call word 0x1a56:word 0x720
00000229  C47E0A            les di,word [bp+0xa]
0000022C  06                push es
0000022D  57                push di
0000022E  B8FF00            mov ax,0xff
00000231  50                push ax
00000232  9AAD06561A        call word 0x1a56:word 0x6ad
00000237  89EC              mov sp,bp
00000239  5D                pop bp
0000023A  CA0400            retf word 0x4
0000023D  89E5              mov bp,sp
0000023F  B8BE01            mov ax,0x1be
00000242  8CCA              mov dx,cs
00000244  A3188D            mov [0x8d18],ax
00000247  89161A8D          mov [0x8d1a],dx
0000024B  31C0              xor ax,ax
0000024D  A3148D            mov [0x8d14],ax
00000250  A3168D            mov [0x8d16],ax
00000253  C7061C8D0100      mov word [0x8d1c],0x1
00000259  EB04              jmp 0x25f
0000025B  FF061C8D          inc word [0x8d1c]
0000025F  B81516            mov ax,0x1615
00000262  8CDA              mov dx,ds
00000264  8B3E1C8D          mov di,[0x8d1c]
00000268  D1E7              shl di,1
0000026A  D1E7              shl di,1
0000026C  8985848B          mov [di-0x747c],ax
00000270  8995868B          mov [di-0x747a],dx
00000274  833E1C8D31        cmp word [0x8d1c],0x31
00000279  75E0              jnz 0x25b
0000027B  C7061C8D3200      mov word [0x8d1c],0x32
00000281  EB04              jmp 0x287
00000283  FF061C8D          inc word [0x8d1c]
00000287  B82416            mov ax,0x1624
0000028A  8CDA              mov dx,ds
0000028C  8B3E1C8D          mov di,[0x8d1c]
00000290  D1E7              shl di,1
00000292  D1E7              shl di,1
00000294  8985848B          mov [di-0x747c],ax
00000298  8995868B          mov [di-0x747a],dx
0000029C  833E1C8D63        cmp word [0x8d1c],0x63
000002A1  75E0              jnz 0x283
000002A3  B80916            mov ax,0x1609
000002A6  8CDA              mov dx,ds
000002A8  A3848B            mov [0x8b84],ax
000002AB  8916868B          mov [0x8b86],dx
000002AF  B83616            mov ax,0x1636
000002B2  8CDA              mov dx,ds
000002B4  A34C8C            mov [0x8c4c],ax
000002B7  89164E8C          mov [0x8c4e],dx
000002BB  89EC              mov sp,bp
000002BD  CB                retf
000002BE  0000              add [bx+si],al
