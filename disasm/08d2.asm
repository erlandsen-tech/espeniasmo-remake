00000000  55                push bp
00000001  89E5              mov bp,sp
00000003  81ECE708          sub sp,0x8e7
00000007  C47E06            les di,word [bp+0x6]
0000000A  06                push es
0000000B  57                push di
0000000C  8DBE19F7          lea di,[bp-0x8e7]
00000010  16                push ss
00000011  57                push di
00000012  B8E708            mov ax,0x8e7
00000015  50                push ax
00000016  9AC002561A        call word 0x1a56:word 0x2c0
0000001B  837E0400          cmp word [bp+0x4],0x0
0000001F  7420              jz 0x41
00000021  8DBE99F7          lea di,[bp-0x867]
00000025  16                push ss
00000026  57                push di
00000027  BF8489            mov di,0x8984
0000002A  1E                push ds
0000002B  57                push di
0000002C  B8FF00            mov ax,0xff
0000002F  50                push ax
00000030  9AAD06561A        call word 0x1a56:word 0x6ad
00000035  B00A              mov al,0xa
00000037  50                push ax
00000038  8A4604            mov al,[bp+0x4]
0000003B  50                push ax
0000003C  9A9B009C18        call word 0x189c:word 0x9b
00000041  89EC              mov sp,bp
00000043  5D                pop bp
00000044  C20600            ret word 0x6
00000047  55                push bp
00000048  89E5              mov bp,sp
0000004A  83EC02            sub sp,0x2
0000004D  8B4604            mov ax,[bp+0x4]
00000050  058000            add ax,0x80
00000053  48                dec ax
00000054  31D2              xor dx,dx
00000056  B98000            mov cx,0x80
00000059  F7F1              div cx
0000005B  034604            add ax,[bp+0x4]
0000005E  8946FE            mov [bp-0x2],ax
00000061  8B46FE            mov ax,[bp-0x2]
00000064  89EC              mov sp,bp
00000066  5D                pop bp
00000067  C20200            ret word 0x2
0000006A  55                push bp
0000006B  89E5              mov bp,sp
0000006D  C47E04            les di,word [bp+0x4]
00000070  26FF35            push word [es:di]
00000073  58                pop ax
00000074  86E0              xchg ah,al
00000076  C47E04            les di,word [bp+0x4]
00000079  268905            mov [es:di],ax
0000007C  C47E04            les di,word [bp+0x4]
0000007F  26FF7502          push word [es:di+0x2]
00000083  58                pop ax
00000084  86E0              xchg ah,al
00000086  C47E04            les di,word [bp+0x4]
00000089  26894502          mov [es:di+0x2],ax
0000008D  C47E04            les di,word [bp+0x4]
00000090  26FF7504          push word [es:di+0x4]
00000094  58                pop ax
00000095  86E0              xchg ah,al
00000097  C47E04            les di,word [bp+0x4]
0000009A  26894504          mov [es:di+0x4],ax
0000009E  C47E04            les di,word [bp+0x4]
000000A1  26FF7506          push word [es:di+0x6]
000000A5  58                pop ax
000000A6  86E0              xchg ah,al
000000A8  C47E04            les di,word [bp+0x4]
000000AB  26894506          mov [es:di+0x6],ax
000000AF  C47E04            les di,word [bp+0x4]
000000B2  26FF750C          push word [es:di+0xc]
000000B6  58                pop ax
000000B7  86E0              xchg ah,al
000000B9  C47E04            les di,word [bp+0x4]
000000BC  2689450C          mov [es:di+0xc],ax
000000C0  C47E04            les di,word [bp+0x4]
000000C3  26FF7510          push word [es:di+0x10]
000000C7  58                pop ax
000000C8  86E0              xchg ah,al
000000CA  C47E04            les di,word [bp+0x4]
000000CD  26894510          mov [es:di+0x10],ax
000000D1  C47E04            les di,word [bp+0x4]
000000D4  26FF7512          push word [es:di+0x12]
000000D8  58                pop ax
000000D9  86E0              xchg ah,al
000000DB  C47E04            les di,word [bp+0x4]
000000DE  26894512          mov [es:di+0x12],ax
000000E2  89EC              mov sp,bp
000000E4  5D                pop bp
000000E5  C20400            ret word 0x4
000000E8  49                dec cx
000000E9  4C                dec sp
000000EA  42                inc dx
000000EB  4D                dec bp
000000EC  42                inc dx
000000ED  4D                dec bp
000000EE  48                dec ax
000000EF  44                inc sp
000000F0  55                push bp
000000F1  89E5              mov bp,sp
000000F3  C47E0A            les di,word [bp+0xa]
000000F6  06                push es
000000F7  57                push di
000000F8  2EFF36EA00        push word [cs:0xea]
000000FD  2EFF36E800        push word [cs:0xe8]
00000102  2EFF36EE00        push word [cs:0xee]
00000107  2EFF36EC00        push word [cs:0xec]
0000010C  C47E06            les di,word [bp+0x6]
0000010F  06                push es
00000110  57                push di
00000111  B81400            mov ax,0x14
00000114  50                push ax
00000115  9A32069813        call word 0x1398:word 0x632
0000011A  08C0              or al,al
0000011C  750C              jnz 0x12a
0000011E  C47E0A            les di,word [bp+0xa]
00000121  06                push es
00000122  57                push di
00000123  B80100            mov ax,0x1
00000126  50                push ax
00000127  E8D6FE            call 0x0
0000012A  C47E06            les di,word [bp+0x6]
0000012D  06                push es
0000012E  57                push di
0000012F  E838FF            call 0x6a
00000132  89EC              mov sp,bp
00000134  5D                pop bp
00000135  CA0800            retf word 0x8
00000138  49                dec cx
00000139  4C                dec sp
0000013A  42                inc dx
0000013B  4D                dec bp
0000013C  43                inc bx
0000013D  4D                dec bp
0000013E  41                inc cx
0000013F  50                push ax
00000140  55                push bp
00000141  89E5              mov bp,sp
00000143  83EC05            sub sp,0x5
00000146  C47E0E            les di,word [bp+0xe]
00000149  06                push es
0000014A  57                push di
0000014B  2EFF363A01        push word [cs:0x13a]
00000150  2EFF363801        push word [cs:0x138]
00000155  2EFF363E01        push word [cs:0x13e]
0000015A  2EFF363C01        push word [cs:0x13c]
0000015F  C47E0A            les di,word [bp+0xa]
00000162  06                push es
00000163  57                push di
00000164  8D7EFB            lea di,[bp-0x5]
00000167  16                push ss
00000168  57                push di
00000169  9A46059813        call word 0x1398:word 0x546
0000016E  08C0              or al,al
00000170  741B              jz 0x18d
00000172  C446FB            les ax,word [bp-0x5]
00000175  8CC2              mov dx,es
00000177  B90300            mov cx,0x3
0000017A  31DB              xor bx,bx
0000017C  9AF702561A        call word 0x1a56:word 0x2f7
00000181  C47E06            les di,word [bp+0x6]
00000184  268905            mov [es:di],ax
00000187  C646FF01          mov byte [bp-0x1],0x1
0000018B  EB04              jmp 0x191
0000018D  C646FF00          mov byte [bp-0x1],0x0
00000191  8A46FF            mov al,[bp-0x1]
00000194  89EC              mov sp,bp
00000196  5D                pop bp
00000197  CA0C00            retf word 0xc
0000019A  55                push bp
0000019B  89E5              mov bp,sp
0000019D  83EC02            sub sp,0x2
000001A0  C47E06            les di,word [bp+0x6]
000001A3  06                push es
000001A4  57                push di
000001A5  8B460A            mov ax,[bp+0xa]
000001A8  B90200            mov cx,0x2
000001AB  D3E0              shl ax,cl
000001AD  050200            add ax,0x2
000001B0  31D2              xor dx,dx
000001B2  52                push dx
000001B3  50                push ax
000001B4  9A4F03C317        call word 0x17c3:word 0x34f
000001B9  8B460A            mov ax,[bp+0xa]
000001BC  C47E06            les di,word [bp+0x6]
000001BF  26C43D            les di,word [es:di]
000001C2  268905            mov [es:di],ax
000001C5  8B460A            mov ax,[bp+0xa]
000001C8  48                dec ax
000001C9  09C0              or ax,ax
000001CB  7237              jc 0x204
000001CD  8946FE            mov [bp-0x2],ax
000001D0  EB03              jmp 0x1d5
000001D2  FF4EFE            dec word [bp-0x2]
000001D5  8B46FE            mov ax,[bp-0x2]
000001D8  BA0300            mov dx,0x3
000001DB  F7E2              mul dx
000001DD  C47E0C            les di,word [bp+0xc]
000001E0  03F8              add di,ax
000001E2  06                push es
000001E3  57                push di
000001E4  8B46FE            mov ax,[bp-0x2]
000001E7  D1E0              shl ax,1
000001E9  D1E0              shl ax,1
000001EB  C47E06            les di,word [bp+0x6]
000001EE  26C43D            les di,word [es:di]
000001F1  03F8              add di,ax
000001F3  81C70200          add di,0x2
000001F7  06                push es
000001F8  57                push di
000001F9  9A00009A16        call word 0x169a:word 0x0
000001FE  837EFE00          cmp word [bp-0x2],0x0
00000202  75CE              jnz 0x1d2
00000204  89EC              mov sp,bp
00000206  5D                pop bp
00000207  CA0A00            retf word 0xa
0000020A  49                dec cx
0000020B  4C                dec sp
0000020C  42                inc dx
0000020D  4D                dec bp
0000020E  42                inc dx
0000020F  4D                dec bp
00000210  48                dec ax
00000211  44                inc sp
00000212  47                inc di
00000213  52                push dx
00000214  41                inc cx
00000215  42                inc dx
00000216  44                inc sp
00000217  45                inc bp
00000218  53                push bx
00000219  54                push sp
0000021A  43                inc bx
0000021B  4D                dec bp
0000021C  41                inc cx
0000021D  50                push ax
0000021E  53                push bx
0000021F  50                push ax
00000220  52                push dx
00000221  54                push sp
00000222  43                inc bx
00000223  41                inc cx
00000224  4D                dec bp
00000225  47                inc di
00000226  43                inc bx
00000227  52                push dx
00000228  4E                dec si
00000229  47                inc di
0000022A  42                inc dx
0000022B  4F                dec di
0000022C  44                inc sp
0000022D  59                pop cx
0000022E  55                push bp
0000022F  89E5              mov bp,sp
00000231  C47E06            les di,word [bp+0x6]
00000234  06                push es
00000235  57                push di
00000236  2EFF360C02        push word [cs:0x20c]
0000023B  2EFF360A02        push word [cs:0x20a]
00000240  31C0              xor ax,ax
00000242  31D2              xor dx,dx
00000244  52                push dx
00000245  50                push ax
00000246  31C0              xor ax,ax
00000248  31D2              xor dx,dx
0000024A  52                push dx
0000024B  50                push ax
0000024C  9AC7089813        call word 0x1398:word 0x8c7
00000251  C47E06            les di,word [bp+0x6]
00000254  06                push es
00000255  57                push di
00000256  2EFF361002        push word [cs:0x210]
0000025B  2EFF360E02        push word [cs:0x20e]
00000260  B000              mov al,0x0
00000262  50                push ax
00000263  31C0              xor ax,ax
00000265  31D2              xor dx,dx
00000267  52                push dx
00000268  50                push ax
00000269  31C0              xor ax,ax
0000026B  31D2              xor dx,dx
0000026D  52                push dx
0000026E  50                push ax
0000026F  9A4D099813        call word 0x1398:word 0x94d
00000274  C47E06            les di,word [bp+0x6]
00000277  06                push es
00000278  57                push di
00000279  2EFF361402        push word [cs:0x214]
0000027E  2EFF361202        push word [cs:0x212]
00000283  B000              mov al,0x0
00000285  50                push ax
00000286  31C0              xor ax,ax
00000288  31D2              xor dx,dx
0000028A  52                push dx
0000028B  50                push ax
0000028C  31C0              xor ax,ax
0000028E  31D2              xor dx,dx
00000290  52                push dx
00000291  50                push ax
00000292  9A4D099813        call word 0x1398:word 0x94d
00000297  C47E06            les di,word [bp+0x6]
0000029A  06                push es
0000029B  57                push di
0000029C  2EFF361802        push word [cs:0x218]
000002A1  2EFF361602        push word [cs:0x216]
000002A6  B000              mov al,0x0
000002A8  50                push ax
000002A9  31C0              xor ax,ax
000002AB  31D2              xor dx,dx
000002AD  52                push dx
000002AE  50                push ax
000002AF  31C0              xor ax,ax
000002B1  31D2              xor dx,dx
000002B3  52                push dx
000002B4  50                push ax
000002B5  9A4D099813        call word 0x1398:word 0x94d
000002BA  C47E06            les di,word [bp+0x6]
000002BD  06                push es
000002BE  57                push di
000002BF  2EFF361C02        push word [cs:0x21c]
000002C4  2EFF361A02        push word [cs:0x21a]
000002C9  B000              mov al,0x0
000002CB  50                push ax
000002CC  31C0              xor ax,ax
000002CE  31D2              xor dx,dx
000002D0  52                push dx
000002D1  50                push ax
000002D2  31C0              xor ax,ax
000002D4  31D2              xor dx,dx
000002D6  52                push dx
000002D7  50                push ax
000002D8  9A4D099813        call word 0x1398:word 0x94d
000002DD  C47E06            les di,word [bp+0x6]
000002E0  06                push es
000002E1  57                push di
000002E2  2EFF362002        push word [cs:0x220]
000002E7  2EFF361E02        push word [cs:0x21e]
000002EC  B000              mov al,0x0
000002EE  50                push ax
000002EF  31C0              xor ax,ax
000002F1  31D2              xor dx,dx
000002F3  52                push dx
000002F4  50                push ax
000002F5  31C0              xor ax,ax
000002F7  31D2              xor dx,dx
000002F9  52                push dx
000002FA  50                push ax
000002FB  9A4D099813        call word 0x1398:word 0x94d
00000300  C47E06            les di,word [bp+0x6]
00000303  06                push es
00000304  57                push di
00000305  2EFF362402        push word [cs:0x224]
0000030A  2EFF362202        push word [cs:0x222]
0000030F  B000              mov al,0x0
00000311  50                push ax
00000312  31C0              xor ax,ax
00000314  31D2              xor dx,dx
00000316  52                push dx
00000317  50                push ax
00000318  31C0              xor ax,ax
0000031A  31D2              xor dx,dx
0000031C  52                push dx
0000031D  50                push ax
0000031E  9A4D099813        call word 0x1398:word 0x94d
00000323  C47E06            les di,word [bp+0x6]
00000326  06                push es
00000327  57                push di
00000328  2EFF362802        push word [cs:0x228]
0000032D  2EFF362602        push word [cs:0x226]
00000332  B000              mov al,0x0
00000334  50                push ax
00000335  31C0              xor ax,ax
00000337  31D2              xor dx,dx
00000339  52                push dx
0000033A  50                push ax
0000033B  31C0              xor ax,ax
0000033D  31D2              xor dx,dx
0000033F  52                push dx
00000340  50                push ax
00000341  9A4D099813        call word 0x1398:word 0x94d
00000346  C47E06            les di,word [bp+0x6]
00000349  06                push es
0000034A  57                push di
0000034B  2EFF362C02        push word [cs:0x22c]
00000350  2EFF362A02        push word [cs:0x22a]
00000355  B001              mov al,0x1
00000357  50                push ax
00000358  31C0              xor ax,ax
0000035A  31D2              xor dx,dx
0000035C  52                push dx
0000035D  50                push ax
0000035E  31C0              xor ax,ax
00000360  31D2              xor dx,dx
00000362  52                push dx
00000363  50                push ax
00000364  9A4D099813        call word 0x1398:word 0x94d
00000369  89EC              mov sp,bp
0000036B  5D                pop bp
0000036C  CA0400            retf word 0x4
0000036F  55                push bp
00000370  89E5              mov bp,sp
00000372  83EC1E            sub sp,0x1e
00000375  C47E04            les di,word [bp+0x4]
00000378  06                push es
00000379  57                push di
0000037A  8D7EEC            lea di,[bp-0x14]
0000037D  16                push ss
0000037E  57                push di
0000037F  B81400            mov ax,0x14
00000382  50                push ax
00000383  9AC002561A        call word 0x1a56:word 0x2c0
00000388  8B46EE            mov ax,[bp-0x12]
0000038B  C47E0C            les di,word [bp+0xc]
0000038E  26894508          mov [es:di+0x8],ax
00000392  8A46F4            mov al,[bp-0xc]
00000395  C47E0C            les di,word [bp+0xc]
00000398  26884534          mov [es:di+0x34],al
0000039C  C47E0C            les di,word [bp+0xc]
0000039F  26C6453501        mov byte [es:di+0x35],0x1
000003A4  C47E0C            les di,word [bp+0xc]
000003A7  26C6453600        mov byte [es:di+0x36],0x0
000003AC  C47E0C            les di,word [bp+0xc]
000003AF  26C6453700        mov byte [es:di+0x37],0x0
000003B4  C47E0C            les di,word [bp+0xc]
000003B7  26C6453800        mov byte [es:di+0x38],0x0
000003BC  C47E0C            les di,word [bp+0xc]
000003BF  26C6453901        mov byte [es:di+0x39],0x1
000003C4  C47E0C            les di,word [bp+0xc]
000003C7  26C6453A01        mov byte [es:di+0x3a],0x1
000003CC  C47E0C            les di,word [bp+0xc]
000003CF  26C6453B00        mov byte [es:di+0x3b],0x0
000003D4  C47E0C            les di,word [bp+0xc]
000003D7  26C6453C00        mov byte [es:di+0x3c],0x0
000003DC  8B46EC            mov ax,[bp-0x14]
000003DF  C47E0C            les di,word [bp+0xc]
000003E2  26894504          mov [es:di+0x4],ax
000003E6  8B46EE            mov ax,[bp-0x12]
000003E9  C47E0C            les di,word [bp+0xc]
000003EC  26894506          mov [es:di+0x6],ax
000003F0  BFDD07            mov di,0x7dd
000003F3  1E                push ds
000003F4  57                push di
000003F5  C47E0C            les di,word [bp+0xc]
000003F8  81C72C00          add di,0x2c
000003FC  06                push es
000003FD  57                push di
000003FE  B80800            mov ax,0x8
00000401  50                push ax
00000402  9AC002561A        call word 0x1a56:word 0x2c0
00000407  C47E0C            les di,word [bp+0xc]
0000040A  31C0              xor ax,ax
0000040C  2689453D          mov [es:di+0x3d],ax
00000410  C47E08            les di,word [bp+0x8]
00000413  89F8              mov ax,di
00000415  8CC2              mov dx,es
00000417  C47E0C            les di,word [bp+0xc]
0000041A  2689453F          mov [es:di+0x3f],ax
0000041E  26895541          mov [es:di+0x41],dx
00000422  8D7EEC            lea di,[bp-0x14]
00000425  16                push ss
00000426  57                push di
00000427  C47E0C            les di,word [bp+0xc]
0000042A  81C74300          add di,0x43
0000042E  06                push es
0000042F  57                push di
00000430  B81400            mov ax,0x14
00000433  50                push ax
00000434  9AC002561A        call word 0x1a56:word 0x2c0
00000439  C47E0C            les di,word [bp+0xc]
0000043C  268B4504          mov ax,[es:di+0x4]
00000440  050F00            add ax,0xf
00000443  31D2              xor dx,dx
00000445  B90800            mov cx,0x8
00000448  F7F1              div cx
0000044A  25FEFF            and ax,0xfffe
0000044D  C47E0C            les di,word [bp+0xc]
00000450  2689450A          mov [es:di+0xa],ax
00000454  C47E0C            les di,word [bp+0xc]
00000457  26FF750A          push word [es:di+0xa]
0000045B  E8E9FB            call 0x47
0000045E  C47E0C            les di,word [bp+0xc]
00000461  26894557          mov [es:di+0x57],ax
00000465  C47E0C            les di,word [bp+0xc]
00000468  268A4534          mov al,[es:di+0x34]
0000046C  FEC8              dec al
0000046E  30E4              xor ah,ah
00000470  09C0              or ax,ax
00000472  7C30              jl 0x4a4
00000474  8946E6            mov [bp-0x1a],ax
00000477  EB03              jmp 0x47c
00000479  FF4EE6            dec word [bp-0x1a]
0000047C  8B46E6            mov ax,[bp-0x1a]
0000047F  D1E0              shl ax,1
00000481  D1E0              shl ax,1
00000483  C47E0C            les di,word [bp+0xc]
00000486  03F8              add di,ax
00000488  81C70C00          add di,0xc
0000048C  06                push es
0000048D  57                push di
0000048E  C47E0C            les di,word [bp+0xc]
00000491  268B450A          mov ax,[es:di+0xa]
00000495  31D2              xor dx,dx
00000497  52                push dx
00000498  50                push ax
00000499  9A4F03C317        call word 0x17c3:word 0x34f
0000049E  837EE600          cmp word [bp-0x1a],0x0
000004A2  75D5              jnz 0x479
000004A4  C47E0C            les di,word [bp+0xc]
000004A7  81C75900          add di,0x59
000004AB  06                push es
000004AC  57                push di
000004AD  C47E0C            les di,word [bp+0xc]
000004B0  268B450A          mov ax,[es:di+0xa]
000004B4  31D2              xor dx,dx
000004B6  52                push dx
000004B7  50                push ax
000004B8  9A4F03C317        call word 0x17c3:word 0x34f
000004BD  C47E0C            les di,word [bp+0xc]
000004C0  897EE2            mov [bp-0x1e],di
000004C3  8C46E4            mov word [bp-0x1c],es
000004C6  C47E0C            les di,word [bp+0xc]
000004C9  81C75D00          add di,0x5d
000004CD  06                push es
000004CE  57                push di
000004CF  B80008            mov ax,0x800
000004D2  31D2              xor dx,dx
000004D4  52                push dx
000004D5  50                push ax
000004D6  9A4F03C317        call word 0x17c3:word 0x34f
000004DB  C47EE2            les di,word [bp-0x1e]
000004DE  26C4455D          les ax,word [es:di+0x5d]
000004E2  8CC2              mov dx,es
000004E4  C47EE2            les di,word [bp-0x1e]
000004E7  26894561          mov [es:di+0x61],ax
000004EB  26895563          mov [es:di+0x63],dx
000004EF  89EC              mov sp,bp
000004F1  5D                pop bp
000004F2  C20C00            ret word 0xc
000004F5  55                push bp
000004F6  89E5              mov bp,sp
000004F8  83EC02            sub sp,0x2
000004FB  C47E04            les di,word [bp+0x4]
000004FE  268A4534          mov al,[es:di+0x34]
00000502  FEC8              dec al
00000504  30E4              xor ah,ah
00000506  09C0              or ax,ax
00000508  7C25              jl 0x52f
0000050A  8946FE            mov [bp-0x2],ax
0000050D  EB03              jmp 0x512
0000050F  FF4EFE            dec word [bp-0x2]
00000512  8B46FE            mov ax,[bp-0x2]
00000515  D1E0              shl ax,1
00000517  D1E0              shl ax,1
00000519  C47E04            les di,word [bp+0x4]
0000051C  03F8              add di,ax
0000051E  81C70C00          add di,0xc
00000522  06                push es
00000523  57                push di
00000524  9AB403C317        call word 0x17c3:word 0x3b4
00000529  837EFE00          cmp word [bp-0x2],0x0
0000052D  75E0              jnz 0x50f
0000052F  C47E04            les di,word [bp+0x4]
00000532  81C75900          add di,0x59
00000536  06                push es
00000537  57                push di
00000538  9AB403C317        call word 0x17c3:word 0x3b4
0000053D  C47E04            les di,word [bp+0x4]
00000540  81C75D00          add di,0x5d
00000544  06                push es
00000545  57                push di
00000546  9AB403C317        call word 0x17c3:word 0x3b4
0000054B  89EC              mov sp,bp
0000054D  5D                pop bp
0000054E  C20400            ret word 0x4
00000551  55                push bp
00000552  89E5              mov bp,sp
00000554  83EC06            sub sp,0x6
00000557  C44610            les ax,word [bp+0x10]
0000055A  8CC2              mov dx,es
0000055C  8946FA            mov [bp-0x6],ax
0000055F  8956FC            mov [bp-0x4],dx
00000562  837E0600          cmp word [bp+0x6],0x0
00000566  7703              ja 0x56b
00000568  E9C000            jmp 0x62b
0000056B  C47E10            les di,word [bp+0x10]
0000056E  268A05            mov al,[es:di]
00000571  8846FF            mov [bp-0x1],al
00000574  FF4610            inc word [bp+0x10]
00000577  807EFF00          cmp byte [bp-0x1],0x0
0000057B  7E4D              jng 0x5ca
0000057D  8A46FF            mov al,[bp-0x1]
00000580  FEC0              inc al
00000582  8846FE            mov [bp-0x2],al
00000585  8A46FE            mov al,[bp-0x2]
00000588  30E4              xor ah,ah
0000058A  3B4606            cmp ax,[bp+0x6]
0000058D  7614              jna 0x5a3
0000058F  8B7E04            mov di,[bp+0x4]
00000592  36C47D08          les di,word [ss:di+0x8]
00000596  26C47D3F          les di,word [es:di+0x3f]
0000059A  06                push es
0000059B  57                push di
0000059C  B80200            mov ax,0x2
0000059F  50                push ax
000005A0  E85DFA            call 0x0
000005A3  C47E10            les di,word [bp+0x10]
000005A6  06                push es
000005A7  57                push di
000005A8  C47E0C            les di,word [bp+0xc]
000005AB  06                push es
000005AC  57                push di
000005AD  8A46FE            mov al,[bp-0x2]
000005B0  30E4              xor ah,ah
000005B2  50                push ax
000005B3  9A641B561A        call word 0x1a56:word 0x1b64
000005B8  8A46FE            mov al,[bp-0x2]
000005BB  30E4              xor ah,ah
000005BD  014610            add [bp+0x10],ax
000005C0  8A46FE            mov al,[bp-0x2]
000005C3  30E4              xor ah,ah
000005C5  294606            sub [bp+0x6],ax
000005C8  EB56              jmp 0x620
000005CA  807EFF80          cmp byte [bp-0x1],0x80
000005CE  7E4C              jng 0x61c
000005D0  8A46FF            mov al,[bp-0x1]
000005D3  F6D8              neg al
000005D5  FEC0              inc al
000005D7  8846FE            mov [bp-0x2],al
000005DA  8A46FE            mov al,[bp-0x2]
000005DD  30E4              xor ah,ah
000005DF  3B4606            cmp ax,[bp+0x6]
000005E2  7614              jna 0x5f8
000005E4  8B7E04            mov di,[bp+0x4]
000005E7  36C47D08          les di,word [ss:di+0x8]
000005EB  26C47D3F          les di,word [es:di+0x3f]
000005EF  06                push es
000005F0  57                push di
000005F1  B80200            mov ax,0x2
000005F4  50                push ax
000005F5  E808FA            call 0x0
000005F8  C47E0C            les di,word [bp+0xc]
000005FB  06                push es
000005FC  57                push di
000005FD  8A46FE            mov al,[bp-0x2]
00000600  30E4              xor ah,ah
00000602  50                push ax
00000603  C47E10            les di,word [bp+0x10]
00000606  268A05            mov al,[es:di]
00000609  50                push ax
0000060A  9A871B561A        call word 0x1a56:word 0x1b87
0000060F  FF4610            inc word [bp+0x10]
00000612  8A46FE            mov al,[bp-0x2]
00000615  30E4              xor ah,ah
00000617  294606            sub [bp+0x6],ax
0000061A  EB04              jmp 0x620
0000061C  C646FE00          mov byte [bp-0x2],0x0
00000620  8A46FE            mov al,[bp-0x2]
00000623  30E4              xor ah,ah
00000625  01460C            add [bp+0xc],ax
00000628  E937FF            jmp 0x562
0000062B  8B4610            mov ax,[bp+0x10]
0000062E  2B46FA            sub ax,[bp-0x6]
00000631  C47E08            les di,word [bp+0x8]
00000634  268905            mov [es:di],ax
00000637  89EC              mov sp,bp
00000639  5D                pop bp
0000063A  C21000            ret word 0x10
0000063D  55                push bp
0000063E  89E5              mov bp,sp
00000640  83EC08            sub sp,0x8
00000643  C47E08            les di,word [bp+0x8]
00000646  897EF8            mov [bp-0x8],di
00000649  8C46FA            mov word [bp-0x6],es
0000064C  C47EF8            les di,word [bp-0x8]
0000064F  26807D4D00        cmp byte [es:di+0x4d],0x0
00000654  7522              jnz 0x678
00000656  C47EF8            les di,word [bp-0x8]
00000659  26C47D3F          les di,word [es:di+0x3f]
0000065D  06                push es
0000065E  57                push di
0000065F  FF7606            push word [bp+0x6]
00000662  FF7604            push word [bp+0x4]
00000665  C47E08            les di,word [bp+0x8]
00000668  268B450A          mov ax,[es:di+0xa]
0000066C  31D2              xor dx,dx
0000066E  52                push dx
0000066F  50                push ax
00000670  9A0D0C9813        call word 0x1398:word 0xc0d
00000675  E9E700            jmp 0x75f
00000678  C47EF8            les di,word [bp-0x8]
0000067B  268B4565          mov ax,[es:di+0x65]
0000067F  C47EF8            les di,word [bp-0x8]
00000682  263B4557          cmp ax,[es:di+0x57]
00000686  7203              jc 0x68b
00000688  E99F00            jmp 0x72a
0000068B  C47EF8            les di,word [bp-0x8]
0000068E  26C47D61          les di,word [es:di+0x61]
00000692  06                push es
00000693  57                push di
00000694  C47EF8            les di,word [bp-0x8]
00000697  26C47D5D          les di,word [es:di+0x5d]
0000069B  06                push es
0000069C  57                push di
0000069D  C47EF8            les di,word [bp-0x8]
000006A0  26FF7565          push word [es:di+0x65]
000006A4  9A641B561A        call word 0x1a56:word 0x1b64
000006A9  C47EF8            les di,word [bp-0x8]
000006AC  26C4455D          les ax,word [es:di+0x5d]
000006B0  8CC2              mov dx,es
000006B2  C47EF8            les di,word [bp-0x8]
000006B5  26894561          mov [es:di+0x61],ax
000006B9  26895563          mov [es:di+0x63],dx
000006BD  B80008            mov ax,0x800
000006C0  C47EF8            les di,word [bp-0x8]
000006C3  262B4565          sub ax,[es:di+0x65]
000006C7  8946FE            mov [bp-0x2],ax
000006CA  8B46FE            mov ax,[bp-0x2]
000006CD  31D2              xor dx,dx
000006CF  C47EF8            les di,word [bp-0x8]
000006D2  26C47D3F          les di,word [es:di+0x3f]
000006D6  263B95D408        cmp dx,[es:di+0x8d4]
000006DB  7F09              jg 0x6e6
000006DD  7C16              jl 0x6f5
000006DF  263B85D208        cmp ax,[es:di+0x8d2]
000006E4  760F              jna 0x6f5
000006E6  C47EF8            les di,word [bp-0x8]
000006E9  26C47D3F          les di,word [es:di+0x3f]
000006ED  268B85D208        mov ax,[es:di+0x8d2]
000006F2  8946FE            mov [bp-0x2],ax
000006F5  C47EF8            les di,word [bp-0x8]
000006F8  26C47D3F          les di,word [es:di+0x3f]
000006FC  06                push es
000006FD  57                push di
000006FE  C47EF8            les di,word [bp-0x8]
00000701  268B4565          mov ax,[es:di+0x65]
00000705  C47EF8            les di,word [bp-0x8]
00000708  26C47D5D          les di,word [es:di+0x5d]
0000070C  03F8              add di,ax
0000070E  89F8              mov ax,di
00000710  8CC2              mov dx,es
00000712  52                push dx
00000713  50                push ax
00000714  8B46FE            mov ax,[bp-0x2]
00000717  31D2              xor dx,dx
00000719  52                push dx
0000071A  50                push ax
0000071B  9A0D0C9813        call word 0x1398:word 0xc0d
00000720  8B46FE            mov ax,[bp-0x2]
00000723  C47EF8            les di,word [bp-0x8]
00000726  26014565          add [es:di+0x65],ax
0000072A  C47EF8            les di,word [bp-0x8]
0000072D  26FF7563          push word [es:di+0x63]
00000731  26FF7561          push word [es:di+0x61]
00000735  FF7606            push word [bp+0x6]
00000738  FF7604            push word [bp+0x4]
0000073B  8D7EFC            lea di,[bp-0x4]
0000073E  16                push ss
0000073F  57                push di
00000740  C47E08            les di,word [bp+0x8]
00000743  26FF750A          push word [es:di+0xa]
00000747  55                push bp
00000748  E806FE            call 0x551
0000074B  8B46FC            mov ax,[bp-0x4]
0000074E  C47EF8            les di,word [bp-0x8]
00000751  26294565          sub [es:di+0x65],ax
00000755  8B46FC            mov ax,[bp-0x4]
00000758  C47EF8            les di,word [bp-0x8]
0000075B  26014561          add [es:di+0x61],ax
0000075F  89EC              mov sp,bp
00000761  5D                pop bp
00000762  C20800            ret word 0x8
00000765  55                push bp
00000766  89E5              mov bp,sp
00000768  83EC04            sub sp,0x4
0000076B  C47E08            les di,word [bp+0x8]
0000076E  268B4508          mov ax,[es:di+0x8]
00000772  3B4606            cmp ax,[bp+0x6]
00000775  7667              jna 0x7de
00000777  C47E08            les di,word [bp+0x8]
0000077A  268A4534          mov al,[es:di+0x34]
0000077E  FEC8              dec al
00000780  30E4              xor ah,ah
00000782  8946FC            mov [bp-0x4],ax
00000785  31C0              xor ax,ax
00000787  3B46FC            cmp ax,[bp-0x4]
0000078A  772C              ja 0x7b8
0000078C  8946FE            mov [bp-0x2],ax
0000078F  EB03              jmp 0x794
00000791  FF46FE            inc word [bp-0x2]
00000794  C47E08            les di,word [bp+0x8]
00000797  06                push es
00000798  57                push di
00000799  8B46FE            mov ax,[bp-0x2]
0000079C  D1E0              shl ax,1
0000079E  D1E0              shl ax,1
000007A0  C47E08            les di,word [bp+0x8]
000007A3  03F8              add di,ax
000007A5  26FF750E          push word [es:di+0xe]
000007A9  26FF750C          push word [es:di+0xc]
000007AD  E88DFE            call 0x63d
000007B0  8B46FE            mov ax,[bp-0x2]
000007B3  3B46FC            cmp ax,[bp-0x4]
000007B6  75D9              jnz 0x791
000007B8  C47E08            les di,word [bp+0x8]
000007BB  26807D4C01        cmp byte [es:di+0x4c],0x1
000007C0  7513              jnz 0x7d5
000007C2  C47E08            les di,word [bp+0x8]
000007C5  06                push es
000007C6  57                push di
000007C7  C47E08            les di,word [bp+0x8]
000007CA  26FF755B          push word [es:di+0x5b]
000007CE  26FF7559          push word [es:di+0x59]
000007D2  E868FE            call 0x63d
000007D5  C47E08            les di,word [bp+0x8]
000007D8  26FF4D08          dec word [es:di+0x8]
000007DC  EB8D              jmp 0x76b
000007DE  89EC              mov sp,bp
000007E0  5D                pop bp
000007E1  CA0600            retf word 0x6
000007E4  55                push bp
000007E5  89E5              mov bp,sp
000007E7  83EC14            sub sp,0x14
000007EA  C47E06            les di,word [bp+0x6]
000007ED  06                push es
000007EE  57                push di
000007EF  8D7EEC            lea di,[bp-0x14]
000007F2  16                push ss
000007F3  57                push di
000007F4  0E                push cs
000007F5  E8F8F8            call 0xf0
000007F8  C47E0A            les di,word [bp+0xa]
000007FB  06                push es
000007FC  57                push di
000007FD  C47E06            les di,word [bp+0x6]
00000800  06                push es
00000801  57                push di
00000802  8D7EEC            lea di,[bp-0x14]
00000805  16                push ss
00000806  57                push di
00000807  E865FB            call 0x36f
0000080A  B86507            mov ax,0x765
0000080D  8CCA              mov dx,cs
0000080F  C47E0A            les di,word [bp+0xa]
00000812  268905            mov [es:di],ax
00000815  26895502          mov [es:di+0x2],dx
00000819  C47E0A            les di,word [bp+0xa]
0000081C  31C0              xor ax,ax
0000081E  26894565          mov [es:di+0x65],ax
00000822  89EC              mov sp,bp
00000824  5D                pop bp
00000825  CA0800            retf word 0x8
00000828  55                push bp
00000829  89E5              mov bp,sp
0000082B  C47E06            les di,word [bp+0x6]
0000082E  268B453F          mov ax,[es:di+0x3f]
00000832  260B4541          or ax,[es:di+0x41]
00000836  740E              jz 0x846
00000838  C47E06            les di,word [bp+0x6]
0000083B  26C47D3F          les di,word [es:di+0x3f]
0000083F  06                push es
00000840  57                push di
00000841  9AE70F9813        call word 0x1398:word 0xfe7
00000846  C47E06            les di,word [bp+0x6]
00000849  06                push es
0000084A  57                push di
0000084B  E8A7FC            call 0x4f5
0000084E  89EC              mov sp,bp
00000850  5D                pop bp
00000851  CA0400            retf word 0x4
00000854  89E5              mov bp,sp
00000856  B8E507            mov ax,0x7e5
00000859  8CDA              mov dx,ds
0000085B  A3AC8B            mov [0x8bac],ax
0000085E  8916AE8B          mov [0x8bae],dx
00000862  89EC              mov sp,bp
00000864  CB                retf
00000865  0000              add [bx+si],al
00000867  0000              add [bx+si],al
00000869  0000              add [bx+si],al
0000086B  0000              add [bx+si],al
0000086D  0000              add [bx+si],al
0000086F  00                db 0x00
