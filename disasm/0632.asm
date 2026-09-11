00000000  0442              add al,0x42
00000002  4F                dec di
00000003  44                inc sp
00000004  59                pop cx
00000005  0449              add al,0x49
00000007  4C                dec sp
00000008  42                inc dx
00000009  4D                dec bp
0000000A  55                push bp
0000000B  89E5              mov bp,sp
0000000D  81EC0102          sub sp,0x201
00000011  C47E06            les di,word [bp+0x6]
00000014  06                push es
00000015  57                push di
00000016  9A6C139813        call word 0x1398:word 0x136c
0000001B  3C01              cmp al,0x1
0000001D  755C              jnz 0x7b
0000001F  8DBEFFFE          lea di,[bp-0x101]
00000023  16                push ss
00000024  57                push di
00000025  C47E06            les di,word [bp+0x6]
00000028  81C7DA08          add di,0x8da
0000002C  06                push es
0000002D  57                push di
0000002E  B80400            mov ax,0x4
00000031  50                push ax
00000032  9AC007561A        call word 0x1a56:word 0x7c0
00000037  BF0000            mov di,0x0
0000003A  0E                push cs
0000003B  57                push di
0000003C  9A8307561A        call word 0x1a56:word 0x783
00000041  752A              jnz 0x6d
00000043  8DBEFFFD          lea di,[bp-0x201]
00000047  16                push ss
00000048  57                push di
00000049  C47E06            les di,word [bp+0x6]
0000004C  81C7DE08          add di,0x8de
00000050  06                push es
00000051  57                push di
00000052  B80400            mov ax,0x4
00000055  50                push ax
00000056  9AC007561A        call word 0x1a56:word 0x7c0
0000005B  BF0500            mov di,0x5
0000005E  0E                push cs
0000005F  57                push di
00000060  9A8307561A        call word 0x1a56:word 0x783
00000065  7506              jnz 0x6d
00000067  C646FF01          mov byte [bp-0x1],0x1
0000006B  EB0C              jmp 0x79
0000006D  C47E06            les di,word [bp+0x6]
00000070  06                push es
00000071  57                push di
00000072  9AE70F9813        call word 0x1398:word 0xfe7
00000077  EB98              jmp 0x11
00000079  EB14              jmp 0x8f
0000007B  3C00              cmp al,0x0
0000007D  7404              jz 0x83
0000007F  3C02              cmp al,0x2
00000081  7504              jnz 0x87
00000083  EB8C              jmp 0x11
00000085  EB08              jmp 0x8f
00000087  3C03              cmp al,0x3
00000089  7504              jnz 0x8f
0000008B  C646FF00          mov byte [bp-0x1],0x0
0000008F  8A46FF            mov al,[bp-0x1]
00000092  89EC              mov sp,bp
00000094  5D                pop bp
00000095  CA0400            retf word 0x4
00000098  55                push bp
00000099  89E5              mov bp,sp
0000009B  83EC40            sub sp,0x40
0000009E  C47E06            les di,word [bp+0x6]
000000A1  06                push es
000000A2  57                push di
000000A3  8D7EC0            lea di,[bp-0x40]
000000A6  16                push ss
000000A7  57                push di
000000A8  B83F00            mov ax,0x3f
000000AB  50                push ax
000000AC  9AAD06561A        call word 0x1a56:word 0x6ad
000000B1  C47E0A            les di,word [bp+0xa]
000000B4  06                push es
000000B5  57                push di
000000B6  8D7EC0            lea di,[bp-0x40]
000000B9  16                push ss
000000BA  57                push di
000000BB  9A0D089813        call word 0x1398:word 0x80d
000000C0  C47E0A            les di,word [bp+0xa]
000000C3  06                push es
000000C4  57                push di
000000C5  9A2E02D208        call word 0x8d2:word 0x22e
000000CA  89EC              mov sp,bp
000000CC  5D                pop bp
000000CD  CA0800            retf word 0x8
000000D0  55                push bp
000000D1  89E5              mov bp,sp
000000D3  C47E06            les di,word [bp+0x6]
000000D6  06                push es
000000D7  57                push di
000000D8  9A63089813        call word 0x1398:word 0x863
000000DD  89EC              mov sp,bp
000000DF  5D                pop bp
000000E0  CA0400            retf word 0x4
000000E3  55                push bp
000000E4  89E5              mov bp,sp
000000E6  83EC36            sub sp,0x36
000000E9  31C0              xor ax,ax
000000EB  8946E8            mov [bp-0x18],ax
000000EE  8946EA            mov [bp-0x16],ax
000000F1  31C0              xor ax,ax
000000F3  8946E4            mov [bp-0x1c],ax
000000F6  8946E6            mov [bp-0x1a],ax
000000F9  C406148D          les ax,word [0x8d14]
000000FD  8CC2              mov dx,es
000000FF  8946EE            mov [bp-0x12],ax
00000102  8956F0            mov [bp-0x10],dx
00000105  8D46F2            lea ax,[bp-0xe]
00000108  8CD2              mov dx,ss
0000010A  A3148D            mov [0x8d14],ax
0000010D  8916168D          mov [0x8d16],dx
00000111  8D7EF2            lea di,[bp-0xe]
00000114  16                push ss
00000115  57                push di
00000116  9A0000C818        call word 0x18c8:word 0x0
0000011B  8946EC            mov [bp-0x14],ax
0000011E  837EEC00          cmp word [bp-0x14],0x0
00000122  7422              jz 0x146
00000124  8D7EE8            lea di,[bp-0x18]
00000127  16                push ss
00000128  57                push di
00000129  9AB403C317        call word 0x17c3:word 0x3b4
0000012E  8D7EE4            lea di,[bp-0x1c]
00000131  16                push ss
00000132  57                push di
00000133  9AB403C317        call word 0x17c3:word 0x3b4
00000138  FF76F0            push word [bp-0x10]
0000013B  FF76EE            push word [bp-0x12]
0000013E  FF76EC            push word [bp-0x14]
00000141  9A85019C18        call word 0x189c:word 0x185
00000146  C47E0A            les di,word [bp+0xa]
00000149  06                push es
0000014A  57                push di
0000014B  8D7ED0            lea di,[bp-0x30]
0000014E  16                push ss
0000014F  57                push di
00000150  9AF000D208        call word 0x8d2:word 0xf0
00000155  C47E0A            les di,word [bp+0xa]
00000158  06                push es
00000159  57                push di
0000015A  8D7ECC            lea di,[bp-0x34]
0000015D  16                push ss
0000015E  57                push di
0000015F  8D7ECA            lea di,[bp-0x36]
00000162  16                push ss
00000163  57                push di
00000164  9A4001D208        call word 0x8d2:word 0x140
00000169  08C0              or al,al
0000016B  7435              jz 0x1a2
0000016D  FF76CE            push word [bp-0x32]
00000170  FF76CC            push word [bp-0x34]
00000173  FF76CA            push word [bp-0x36]
00000176  8D7EE8            lea di,[bp-0x18]
00000179  16                push ss
0000017A  57                push di
0000017B  9A9A01D208        call word 0x8d2:word 0x19a
00000180  FF76EA            push word [bp-0x16]
00000183  FF76E8            push word [bp-0x18]
00000186  B84F67            mov ax,0x674f
00000189  8CDA              mov dx,ds
0000018B  52                push dx
0000018C  50                push ax
0000018D  FF36AE03          push word [0x3ae]
00000191  31C0              xor ax,ax
00000193  50                push ax
00000194  31C0              xor ax,ax
00000196  50                push ax
00000197  9A0C0F9A16        call word 0x169a:word 0xf0c
0000019C  8946E4            mov [bp-0x1c],ax
0000019F  8956E6            mov [bp-0x1a],dx
000001A2  C47E0A            les di,word [bp+0xa]
000001A5  06                push es
000001A6  57                push di
000001A7  C47E06            les di,word [bp+0x6]
000001AA  06                push es
000001AB  57                push di
000001AC  B83466            mov ax,0x6634
000001AF  8CDA              mov dx,ds
000001B1  52                push dx
000001B2  50                push ax
000001B3  31C0              xor ax,ax
000001B5  50                push ax
000001B6  31C0              xor ax,ax
000001B8  50                push ax
000001B9  FF76D0            push word [bp-0x30]
000001BC  FF76D2            push word [bp-0x2e]
000001BF  FF76D0            push word [bp-0x30]
000001C2  FF36696B          push word [0x6b69]
000001C6  FF76E0            push word [bp-0x20]
000001C9  59                pop cx
000001CA  5B                pop bx
000001CB  58                pop ax
000001CC  F7EB              imul bx
000001CE  F7F9              idiv cx
000001D0  50                push ax
000001D1  FF76D2            push word [bp-0x2e]
000001D4  FF366B6B          push word [0x6b6b]
000001D8  FF76E2            push word [bp-0x1e]
000001DB  59                pop cx
000001DC  5B                pop bx
000001DD  58                pop ax
000001DE  F7EB              imul bx
000001E0  F7F9              idiv cx
000001E2  50                push ax
000001E3  FF76E6            push word [bp-0x1a]
000001E6  FF76E4            push word [bp-0x1c]
000001E9  9A00005406        call word 0x654:word 0x0
000001EE  8D7EE8            lea di,[bp-0x18]
000001F1  16                push ss
000001F2  57                push di
000001F3  9AB403C317        call word 0x17c3:word 0x3b4
000001F8  8D7EE4            lea di,[bp-0x1c]
000001FB  16                push ss
000001FC  57                push di
000001FD  9AB403C317        call word 0x17c3:word 0x3b4
00000202  C446EE            les ax,word [bp-0x12]
00000205  8CC2              mov dx,es
00000207  A3148D            mov [0x8d14],ax
0000020A  8916168D          mov [0x8d16],dx
0000020E  89EC              mov sp,bp
00000210  5D                pop bp
00000211  CA0800            retf word 0x8
00000214  0000              add [bx+si],al
00000216  0000              add [bx+si],al
00000218  0000              add [bx+si],al
0000021A  0000              add [bx+si],al
0000021C  0000              add [bx+si],al
0000021E  0000              add [bx+si],al
