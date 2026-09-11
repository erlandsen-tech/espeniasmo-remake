00000000  55                push bp
00000001  89E5              mov bp,sp
00000003  81ECE600          sub sp,0xe6
00000007  C47E1A            les di,word [bp+0x1a]
0000000A  31C0              xor ax,ax
0000000C  268905            mov [es:di],ax
0000000F  26894502          mov [es:di+0x2],ax
00000013  8D7E95            lea di,[bp-0x6b]
00000016  16                push ss
00000017  57                push di
00000018  B86B00            mov ax,0x6b
0000001B  50                push ax
0000001C  B000              mov al,0x0
0000001E  50                push ax
0000001F  9A871B561A        call word 0x1a56:word 0x1b87
00000024  8DBE2EFF          lea di,[bp-0xd2]
00000028  16                push ss
00000029  57                push di
0000002A  B86700            mov ax,0x67
0000002D  50                push ax
0000002E  B000              mov al,0x0
00000030  50                push ax
00000031  9A871B561A        call word 0x1a56:word 0x1b87
00000036  C406148D          les ax,word [0x8d14]
0000003A  8CC2              mov dx,es
0000003C  89861CFF          mov [bp-0xe4],ax
00000040  89961EFF          mov [bp-0xe2],dx
00000044  8D8620FF          lea ax,[bp-0xe0]
00000048  8CD2              mov dx,ss
0000004A  A3148D            mov [0x8d14],ax
0000004D  8916168D          mov [0x8d16],dx
00000051  8DBE20FF          lea di,[bp-0xe0]
00000055  16                push ss
00000056  57                push di
00000057  9A0000C818        call word 0x18c8:word 0x0
0000005C  89861AFF          mov [bp-0xe6],ax
00000060  83BE1AFF00        cmp word [bp-0xe6],0x0
00000065  742B              jz 0x92
00000067  8D7E95            lea di,[bp-0x6b]
0000006A  16                push ss
0000006B  57                push di
0000006C  C47E1A            les di,word [bp+0x1a]
0000006F  06                push es
00000070  57                push di
00000071  9AF301F714        call word 0x14f7:word 0x1f3
00000076  8DBE2EFF          lea di,[bp-0xd2]
0000007A  16                push ss
0000007B  57                push di
0000007C  9A2808D208        call word 0x8d2:word 0x828
00000081  FFB61EFF          push word [bp-0xe2]
00000085  FFB61CFF          push word [bp-0xe4]
00000089  FFB61AFF          push word [bp-0xe6]
0000008D  9A85019C18        call word 0x189c:word 0x185
00000092  8D7E95            lea di,[bp-0x6b]
00000095  16                push ss
00000096  57                push di
00000097  FF760C            push word [bp+0xc]
0000009A  FF760A            push word [bp+0xa]
0000009D  FF7618            push word [bp+0x18]
000000A0  FF7616            push word [bp+0x16]
000000A3  9A9E01F714        call word 0x14f7:word 0x19e
000000A8  8DBE2EFF          lea di,[bp-0xd2]
000000AC  16                push ss
000000AD  57                push di
000000AE  C47E1E            les di,word [bp+0x1e]
000000B1  06                push es
000000B2  57                push di
000000B3  9AE407D208        call word 0x8d2:word 0x7e4
000000B8  8DBE2EFF          lea di,[bp-0xd2]
000000BC  16                push ss
000000BD  57                push di
000000BE  8D7E95            lea di,[bp-0x6b]
000000C1  16                push ss
000000C2  57                push di
000000C3  FF7614            push word [bp+0x14]
000000C6  FF7612            push word [bp+0x12]
000000C9  FF7610            push word [bp+0x10]
000000CC  FF760E            push word [bp+0xe]
000000CF  FF769B            push word [bp-0x65]
000000D2  FF7608            push word [bp+0x8]
000000D5  FF7606            push word [bp+0x6]
000000D8  9AD70F2A15        call word 0x152a:word 0xfd7
000000DD  8DBE2EFF          lea di,[bp-0xd2]
000000E1  16                push ss
000000E2  57                push di
000000E3  9A2808D208        call word 0x8d2:word 0x828
000000E8  8D7E95            lea di,[bp-0x6b]
000000EB  16                push ss
000000EC  57                push di
000000ED  C47E1A            les di,word [bp+0x1a]
000000F0  06                push es
000000F1  57                push di
000000F2  9AF301F714        call word 0x14f7:word 0x1f3
000000F7  C4861CFF          les ax,word [bp-0xe4]
000000FB  8CC2              mov dx,es
000000FD  A3148D            mov [0x8d14],ax
00000100  8916168D          mov [0x8d16],dx
00000104  89EC              mov sp,bp
00000106  5D                pop bp
00000107  CA1C00            retf word 0x1c
0000010A  0000              add [bx+si],al
0000010C  0000              add [bx+si],al
0000010E  0000              add [bx+si],al
