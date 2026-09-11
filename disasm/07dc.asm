00000000  55                push bp
00000001  89E5              mov bp,sp
00000003  83EC0C            sub sp,0xc
00000006  B83C00            mov ax,0x3c
00000009  50                push ax
0000000A  9A2800210A        call word 0xa21:word 0x28
0000000F  8BD0              mov dx,ax
00000011  C47E0A            les di,word [bp+0xa]
00000014  268B4506          mov ax,[es:di+0x6]
00000018  2BC2              sub ax,dx
0000001A  99                cwd
0000001B  8946F4            mov [bp-0xc],ax
0000001E  8956F6            mov [bp-0xa],dx
00000021  8B4608            mov ax,[bp+0x8]
00000024  C47E0A            les di,word [bp+0xa]
00000027  262B450E          sub ax,[es:di+0xe]
0000002B  99                cwd
0000002C  8946F8            mov [bp-0x8],ax
0000002F  8956FA            mov [bp-0x6],dx
00000032  C446F8            les ax,word [bp-0x8]
00000035  8CC2              mov dx,es
00000037  C44EF4            les cx,word [bp-0xc]
0000003A  8CC3              mov bx,es
0000003C  9ADC02561A        call word 0x1a56:word 0x2dc
00000041  8946F8            mov [bp-0x8],ax
00000044  8956FA            mov [bp-0x6],dx
00000047  C47E0A            les di,word [bp+0xa]
0000004A  268B4510          mov ax,[es:di+0x10]
0000004E  C47E0A            les di,word [bp+0xa]
00000051  262B450E          sub ax,[es:di+0xe]
00000055  99                cwd
00000056  8946FC            mov [bp-0x4],ax
00000059  8956FE            mov [bp-0x2],dx
0000005C  837EFE00          cmp word [bp-0x2],0x0
00000060  7C08              jl 0x6a
00000062  7F10              jg 0x74
00000064  837EFC01          cmp word [bp-0x4],0x1
00000068  730A              jnc 0x74
0000006A  C47E04            les di,word [bp+0x4]
0000006D  31C0              xor ax,ax
0000006F  268905            mov [es:di],ax
00000072  EB1E              jmp 0x92
00000074  C446F8            les ax,word [bp-0x8]
00000077  8CC2              mov dx,es
00000079  C44EFC            les cx,word [bp-0x4]
0000007C  8CC3              mov bx,es
0000007E  9AF702561A        call word 0x1a56:word 0x2f7
00000083  8946F8            mov [bp-0x8],ax
00000086  8956FA            mov [bp-0x6],dx
00000089  8B46F8            mov ax,[bp-0x8]
0000008C  C47E04            les di,word [bp+0x4]
0000008F  268905            mov [es:di],ax
00000092  89EC              mov sp,bp
00000094  5D                pop bp
00000095  C20A00            ret word 0xa
00000098  55                push bp
00000099  89E5              mov bp,sp
0000009B  83EC06            sub sp,0x6
0000009E  C706881B0800      mov word [0x1b88],0x8
000000A4  B80800            mov ax,0x8
000000A7  50                push ax
000000A8  9A0000210A        call word 0xa21:word 0x0
000000AD  A38A1B            mov [0x1b8a],ax
000000B0  B80D00            mov ax,0xd
000000B3  50                push ax
000000B4  9A2800210A        call word 0xa21:word 0x28
000000B9  A38C1B            mov [0x1b8c],ax
000000BC  B80C00            mov ax,0xc
000000BF  50                push ax
000000C0  9A0000210A        call word 0xa21:word 0x0
000000C5  A38E1B            mov [0x1b8e],ax
000000C8  B80D00            mov ax,0xd
000000CB  50                push ax
000000CC  9A2800210A        call word 0xa21:word 0x28
000000D1  A3901B            mov [0x1b90],ax
000000D4  B80C00            mov ax,0xc
000000D7  50                push ax
000000D8  9A0000210A        call word 0xa21:word 0x0
000000DD  A3921B            mov [0x1b92],ax
000000E0  B80800            mov ax,0x8
000000E3  50                push ax
000000E4  9A2800210A        call word 0xa21:word 0x28
000000E9  A3941B            mov [0x1b94],ax
000000EC  B80F00            mov ax,0xf
000000EF  50                push ax
000000F0  9A0000210A        call word 0xa21:word 0x0
000000F5  A3961B            mov [0x1b96],ax
000000F8  B80800            mov ax,0x8
000000FB  50                push ax
000000FC  9A2800210A        call word 0xa21:word 0x28
00000101  A3981B            mov [0x1b98],ax
00000104  B80A00            mov ax,0xa
00000107  50                push ax
00000108  9A0000210A        call word 0xa21:word 0x0
0000010D  A39A1B            mov [0x1b9a],ax
00000110  B80300            mov ax,0x3
00000113  50                push ax
00000114  9A2800210A        call word 0xa21:word 0x28
00000119  A39C1B            mov [0x1b9c],ax
0000011C  B80500            mov ax,0x5
0000011F  50                push ax
00000120  9A0000210A        call word 0xa21:word 0x0
00000125  A39E1B            mov [0x1b9e],ax
00000128  B80800            mov ax,0x8
0000012B  50                push ax
0000012C  9A2800210A        call word 0xa21:word 0x28
00000131  A3A01B            mov [0x1ba0],ax
00000134  B80800            mov ax,0x8
00000137  50                push ax
00000138  9A0000210A        call word 0xa21:word 0x0
0000013D  A3A21B            mov [0x1ba2],ax
00000140  B80800            mov ax,0x8
00000143  50                push ax
00000144  9A2800210A        call word 0xa21:word 0x28
00000149  A3A41B            mov [0x1ba4],ax
0000014C  B80800            mov ax,0x8
0000014F  50                push ax
00000150  9A0000210A        call word 0xa21:word 0x0
00000155  A3A61B            mov [0x1ba6],ax
00000158  B80D00            mov ax,0xd
0000015B  50                push ax
0000015C  9A2800210A        call word 0xa21:word 0x28
00000161  A3A81B            mov [0x1ba8],ax
00000164  C706AA1B0800      mov word [0x1baa],0x8
0000016A  B80800            mov ax,0x8
0000016D  50                push ax
0000016E  9A0000210A        call word 0xa21:word 0x0
00000173  A3AC1B            mov [0x1bac],ax
00000176  B80300            mov ax,0x3
00000179  50                push ax
0000017A  9A2800210A        call word 0xa21:word 0x28
0000017F  A3AE1B            mov [0x1bae],ax
00000182  B80C00            mov ax,0xc
00000185  50                push ax
00000186  9A0000210A        call word 0xa21:word 0x0
0000018B  A3B01B            mov [0x1bb0],ax
0000018E  B80300            mov ax,0x3
00000191  50                push ax
00000192  9A2800210A        call word 0xa21:word 0x28
00000197  A3B21B            mov [0x1bb2],ax
0000019A  B80C00            mov ax,0xc
0000019D  50                push ax
0000019E  9A0000210A        call word 0xa21:word 0x0
000001A3  A3B41B            mov [0x1bb4],ax
000001A6  B80800            mov ax,0x8
000001A9  50                push ax
000001AA  9A2800210A        call word 0xa21:word 0x28
000001AF  A3B61B            mov [0x1bb6],ax
000001B2  B80F00            mov ax,0xf
000001B5  50                push ax
000001B6  9A0000210A        call word 0xa21:word 0x0
000001BB  A3B81B            mov [0x1bb8],ax
000001BE  B80800            mov ax,0x8
000001C1  50                push ax
000001C2  9A2800210A        call word 0xa21:word 0x28
000001C7  A3BA1B            mov [0x1bba],ax
000001CA  B80A00            mov ax,0xa
000001CD  50                push ax
000001CE  9A0000210A        call word 0xa21:word 0x0
000001D3  A3BC1B            mov [0x1bbc],ax
000001D6  B80D00            mov ax,0xd
000001D9  50                push ax
000001DA  9A2800210A        call word 0xa21:word 0x28
000001DF  A3BE1B            mov [0x1bbe],ax
000001E2  B80500            mov ax,0x5
000001E5  50                push ax
000001E6  9A0000210A        call word 0xa21:word 0x0
000001EB  A3C01B            mov [0x1bc0],ax
000001EE  B80800            mov ax,0x8
000001F1  50                push ax
000001F2  9A2800210A        call word 0xa21:word 0x28
000001F7  A3C21B            mov [0x1bc2],ax
000001FA  B80800            mov ax,0x8
000001FD  50                push ax
000001FE  9A0000210A        call word 0xa21:word 0x0
00000203  A3C41B            mov [0x1bc4],ax
00000206  B80800            mov ax,0x8
00000209  50                push ax
0000020A  9A2800210A        call word 0xa21:word 0x28
0000020F  A3C61B            mov [0x1bc6],ax
00000212  B80800            mov ax,0x8
00000215  50                push ax
00000216  9A0000210A        call word 0xa21:word 0x0
0000021B  A3C81B            mov [0x1bc8],ax
0000021E  B80300            mov ax,0x3
00000221  50                push ax
00000222  9A2800210A        call word 0xa21:word 0x28
00000227  A3CA1B            mov [0x1bca],ax
0000022A  C47E20            les di,word [bp+0x20]
0000022D  897EFA            mov [bp-0x6],di
00000230  8C46FC            mov word [bp-0x4],es
00000233  8B461A            mov ax,[bp+0x1a]
00000236  C47EFA            les di,word [bp-0x6]
00000239  268905            mov [es:di],ax
0000023C  8B4618            mov ax,[bp+0x18]
0000023F  C47EFA            les di,word [bp-0x6]
00000242  26894502          mov [es:di+0x2],ax
00000246  8B4616            mov ax,[bp+0x16]
00000249  C47EFA            les di,word [bp-0x6]
0000024C  26894504          mov [es:di+0x4],ax
00000250  8B4614            mov ax,[bp+0x14]
00000253  C47EFA            les di,word [bp-0x6]
00000256  26894506          mov [es:di+0x6],ax
0000025A  8B4612            mov ax,[bp+0x12]
0000025D  C47EFA            les di,word [bp-0x6]
00000260  26894508          mov [es:di+0x8],ax
00000264  8B4610            mov ax,[bp+0x10]
00000267  C47EFA            les di,word [bp-0x6]
0000026A  2689450A          mov [es:di+0xa],ax
0000026E  8B460E            mov ax,[bp+0xe]
00000271  C47EFA            les di,word [bp-0x6]
00000274  2689450C          mov [es:di+0xc],ax
00000278  8B460C            mov ax,[bp+0xc]
0000027B  C47EFA            les di,word [bp-0x6]
0000027E  2689450E          mov [es:di+0xe],ax
00000282  8B460A            mov ax,[bp+0xa]
00000285  C47EFA            les di,word [bp-0x6]
00000288  26894510          mov [es:di+0x10],ax
0000028C  C47EFA            les di,word [bp-0x6]
0000028F  268D4512          lea ax,[es:di+0x12]
00000293  8CC2              mov dx,es
00000295  52                push dx
00000296  50                push ax
00000297  C47EFA            les di,word [bp-0x6]
0000029A  268D4532          lea ax,[es:di+0x32]
0000029E  8CC2              mov dx,es
000002A0  52                push dx
000002A1  50                push ax
000002A2  FF761A            push word [bp+0x1a]
000002A5  FF7618            push word [bp+0x18]
000002A8  FF7616            push word [bp+0x16]
000002AB  B81100            mov ax,0x11
000002AE  50                push ax
000002AF  9A2800210A        call word 0xa21:word 0x28
000002B4  50                push ax
000002B5  B80100            mov ax,0x1
000002B8  50                push ax
000002B9  FF7612            push word [bp+0x12]
000002BC  FF7610            push word [bp+0x10]
000002BF  FF7606            push word [bp+0x6]
000002C2  9A6E1A210A        call word 0xa21:word 0x1a6e
000002C7  B8881B            mov ax,0x1b88
000002CA  8CDA              mov dx,ds
000002CC  C47EFA            les di,word [bp-0x6]
000002CF  2689452C          mov [es:di+0x2c],ax
000002D3  2689552E          mov [es:di+0x2e],dx
000002D7  C47EFA            les di,word [bp-0x6]
000002DA  268D4532          lea ax,[es:di+0x32]
000002DE  8CC2              mov dx,es
000002E0  52                push dx
000002E1  50                push ax
000002E2  C47EFA            les di,word [bp-0x6]
000002E5  268D4552          lea ax,[es:di+0x52]
000002E9  8CC2              mov dx,es
000002EB  52                push dx
000002EC  50                push ax
000002ED  FF761A            push word [bp+0x1a]
000002F0  B81100            mov ax,0x11
000002F3  50                push ax
000002F4  9A2800210A        call word 0xa21:word 0x28
000002F9  8BD0              mov dx,ax
000002FB  8B4618            mov ax,[bp+0x18]
000002FE  034614            add ax,[bp+0x14]
00000301  2BC2              sub ax,dx
00000303  50                push ax
00000304  FF7616            push word [bp+0x16]
00000307  B81100            mov ax,0x11
0000030A  50                push ax
0000030B  9A2800210A        call word 0xa21:word 0x28
00000310  50                push ax
00000311  B80100            mov ax,0x1
00000314  50                push ax
00000315  FF7612            push word [bp+0x12]
00000318  FF7610            push word [bp+0x10]
0000031B  8B4606            mov ax,[bp+0x6]
0000031E  40                inc ax
0000031F  50                push ax
00000320  9A6E1A210A        call word 0xa21:word 0x1a6e
00000325  B8AA1B            mov ax,0x1baa
00000328  8CDA              mov dx,ds
0000032A  C47EFA            les di,word [bp-0x6]
0000032D  2689454C          mov [es:di+0x4c],ax
00000331  2689554E          mov [es:di+0x4e],dx
00000335  C47EFA            les di,word [bp-0x6]
00000338  268D4552          lea ax,[es:di+0x52]
0000033C  8CC2              mov dx,es
0000033E  52                push dx
0000033F  50                push ax
00000340  C47EFA            les di,word [bp-0x6]
00000343  268D4572          lea ax,[es:di+0x72]
00000347  8CC2              mov dx,es
00000349  52                push dx
0000034A  50                push ax
0000034B  FF761A            push word [bp+0x1a]
0000034E  B81200            mov ax,0x12
00000351  50                push ax
00000352  9A2800210A        call word 0xa21:word 0x28
00000357  034618            add ax,[bp+0x18]
0000035A  50                push ax
0000035B  FF7616            push word [bp+0x16]
0000035E  B82400            mov ax,0x24
00000361  50                push ax
00000362  9A2800210A        call word 0xa21:word 0x28
00000367  8BD0              mov dx,ax
00000369  8B4614            mov ax,[bp+0x14]
0000036C  2BC2              sub ax,dx
0000036E  50                push ax
0000036F  B80100            mov ax,0x1
00000372  50                push ax
00000373  FF7612            push word [bp+0x12]
00000376  FF7610            push word [bp+0x10]
00000379  31C0              xor ax,ax
0000037B  50                push ax
0000037C  9A6E1A210A        call word 0xa21:word 0x1a6e
00000381  FF7622            push word [bp+0x22]
00000384  FF7620            push word [bp+0x20]
00000387  FF7608            push word [bp+0x8]
0000038A  8D7EFE            lea di,[bp-0x2]
0000038D  16                push ss
0000038E  57                push di
0000038F  E86EFC            call 0x0
00000392  C47EFA            les di,word [bp-0x6]
00000395  268D4572          lea ax,[es:di+0x72]
00000399  8CC2              mov dx,es
0000039B  52                push dx
0000039C  50                push ax
0000039D  31C0              xor ax,ax
0000039F  31D2              xor dx,dx
000003A1  52                push dx
000003A2  50                push ax
000003A3  B80200            mov ax,0x2
000003A6  50                push ax
000003A7  9A0000210A        call word 0xa21:word 0x0
000003AC  03461A            add ax,[bp+0x1a]
000003AF  50                push ax
000003B0  B81400            mov ax,0x14
000003B3  50                push ax
000003B4  9A2800210A        call word 0xa21:word 0x28
000003B9  034618            add ax,[bp+0x18]
000003BC  0346FE            add ax,[bp-0x2]
000003BF  50                push ax
000003C0  B80400            mov ax,0x4
000003C3  50                push ax
000003C4  9A0000210A        call word 0xa21:word 0x0
000003C9  8BD0              mov dx,ax
000003CB  8B4616            mov ax,[bp+0x16]
000003CE  2BC2              sub ax,dx
000003D0  50                push ax
000003D1  B81400            mov ax,0x14
000003D4  50                push ax
000003D5  9A2800210A        call word 0xa21:word 0x28
000003DA  50                push ax
000003DB  B80100            mov ax,0x1
000003DE  50                push ax
000003DF  FF7612            push word [bp+0x12]
000003E2  FF760E            push word [bp+0xe]
000003E5  8B4606            mov ax,[bp+0x6]
000003E8  050200            add ax,0x2
000003EB  50                push ax
000003EC  9A6E1A210A        call word 0xa21:word 0x1a6e
000003F1  C4461C            les ax,word [bp+0x1c]
000003F4  8CC2              mov dx,es
000003F6  C47EFA            les di,word [bp-0x6]
000003F9  2689859200        mov [es:di+0x92],ax
000003FE  2689959400        mov [es:di+0x94],dx
00000403  89EC              mov sp,bp
00000405  5D                pop bp
00000406  CA1E00            retf word 0x1e
00000409  55                push bp
0000040A  89E5              mov bp,sp
0000040C  83EC0C            sub sp,0xc
0000040F  C47E08            les di,word [bp+0x8]
00000412  81C77200          add di,0x72
00000416  897EF4            mov [bp-0xc],di
00000419  8C46F6            mov word [bp-0xa],es
0000041C  FF760A            push word [bp+0xa]
0000041F  FF7608            push word [bp+0x8]
00000422  FF7606            push word [bp+0x6]
00000425  8D7EF8            lea di,[bp-0x8]
00000428  16                push ss
00000429  57                push di
0000042A  E8D3FB            call 0x0
0000042D  B81400            mov ax,0x14
00000430  50                push ax
00000431  9A2800210A        call word 0xa21:word 0x28
00000436  C47E08            les di,word [bp+0x8]
00000439  26034502          add ax,[es:di+0x2]
0000043D  0346F8            add ax,[bp-0x8]
00000440  8946FA            mov [bp-0x6],ax
00000443  8B46FA            mov ax,[bp-0x6]
00000446  C47EF4            les di,word [bp-0xc]
00000449  263B4506          cmp ax,[es:di+0x6]
0000044D  7503              jnz 0x452
0000044F  E9F300            jmp 0x545
00000452  C47E08            les di,word [bp+0x8]
00000455  26C4BD9200        les di,word [es:di+0x92]
0000045A  268B4547          mov ax,[es:di+0x47]
0000045E  260B4549          or ax,[es:di+0x49]
00000462  7427              jz 0x48b
00000464  C47E08            les di,word [bp+0x8]
00000467  26C4BD9200        les di,word [es:di+0x92]
0000046C  26C47D47          les di,word [es:di+0x47]
00000470  268B05            mov ax,[es:di]
00000473  8946FC            mov [bp-0x4],ax
00000476  C47E08            les di,word [bp+0x8]
00000479  26C4BD9200        les di,word [es:di+0x92]
0000047E  26C47D47          les di,word [es:di+0x47]
00000482  268B4502          mov ax,[es:di+0x2]
00000486  8946FE            mov [bp-0x2],ax
00000489  EB0A              jmp 0x495
0000048B  31C0              xor ax,ax
0000048D  8946FC            mov [bp-0x4],ax
00000490  31C0              xor ax,ax
00000492  8946FE            mov [bp-0x2],ax
00000495  C47E08            les di,word [bp+0x8]
00000498  26FF750A          push word [es:di+0xa]
0000049C  B8FFFF            mov ax,0xffff
0000049F  50                push ax
000004A0  B000              mov al,0x0
000004A2  50                push ax
000004A3  9A5000210A        call word 0xa21:word 0x50
000004A8  C47EF4            les di,word [bp-0xc]
000004AB  268B4504          mov ax,[es:di+0x4]
000004AF  0346FC            add ax,[bp-0x4]
000004B2  50                push ax
000004B3  C47EF4            les di,word [bp-0xc]
000004B6  268B4506          mov ax,[es:di+0x6]
000004BA  0346FE            add ax,[bp-0x2]
000004BD  50                push ax
000004BE  C47EF4            les di,word [bp-0xc]
000004C1  26FF7508          push word [es:di+0x8]
000004C5  C47EF4            les di,word [bp-0xc]
000004C8  26FF750A          push word [es:di+0xa]
000004CC  9A0124430E        call word 0xe43:word 0x2401
000004D1  8B46FA            mov ax,[bp-0x6]
000004D4  C47EF4            les di,word [bp-0xc]
000004D7  26894506          mov [es:di+0x6],ax
000004DB  C47EF4            les di,word [bp-0xc]
000004DE  26FF7510          push word [es:di+0x10]
000004E2  9A7F1A430E        call word 0xe43:word 0x1a7f
000004E7  C47EF4            les di,word [bp-0xc]
000004EA  268B4504          mov ax,[es:di+0x4]
000004EE  0346FC            add ax,[bp-0x4]
000004F1  50                push ax
000004F2  C47EF4            les di,word [bp-0xc]
000004F5  268B4506          mov ax,[es:di+0x6]
000004F9  0346FE            add ax,[bp-0x2]
000004FC  50                push ax
000004FD  C47EF4            les di,word [bp-0xc]
00000500  26FF7508          push word [es:di+0x8]
00000504  C47EF4            les di,word [bp-0xc]
00000507  26FF750A          push word [es:di+0xa]
0000050B  9A0124430E        call word 0xe43:word 0x2401
00000510  C47EF4            les di,word [bp-0xc]
00000513  26FF750E          push word [es:di+0xe]
00000517  9A7F1A430E        call word 0xe43:word 0x1a7f
0000051C  C47EF4            les di,word [bp-0xc]
0000051F  268B4504          mov ax,[es:di+0x4]
00000523  0346FC            add ax,[bp-0x4]
00000526  50                push ax
00000527  C47EF4            les di,word [bp-0xc]
0000052A  268B4506          mov ax,[es:di+0x6]
0000052E  0346FE            add ax,[bp-0x2]
00000531  50                push ax
00000532  C47EF4            les di,word [bp-0xc]
00000535  26FF7508          push word [es:di+0x8]
00000539  C47EF4            les di,word [bp-0xc]
0000053C  26FF750A          push word [es:di+0xa]
00000540  9A3B23430E        call word 0xe43:word 0x233b
00000545  89EC              mov sp,bp
00000547  5D                pop bp
00000548  CA0600            retf word 0x6
0000054B  55                push bp
0000054C  89E5              mov bp,sp
0000054E  83EC10            sub sp,0x10
00000551  C47E0C            les di,word [bp+0xc]
00000554  897EF0            mov [bp-0x10],di
00000557  8C46F2            mov word [bp-0xe],es
0000055A  8B4606            mov ax,[bp+0x6]
0000055D  C47EF0            les di,word [bp-0x10]
00000560  263B859000        cmp ax,[es:di+0x90]
00000565  7403              jz 0x56a
00000567  E92E01            jmp 0x698
0000056A  C47EF0            les di,word [bp-0x10]
0000056D  26FFB59400        push word [es:di+0x94]
00000572  26FFB59200        push word [es:di+0x92]
00000577  C47EF0            les di,word [bp-0x10]
0000057A  81C77200          add di,0x72
0000057E  06                push es
0000057F  57                push di
00000580  C47EF0            les di,word [bp-0x10]
00000583  268B4504          mov ax,[es:di+0x4]
00000587  99                cwd
00000588  B90200            mov cx,0x2
0000058B  F7F9              idiv cx
0000058D  C47EF0            les di,word [bp-0x10]
00000590  260305            add ax,[es:di]
00000593  50                push ax
00000594  C47EF0            les di,word [bp-0x10]
00000597  268B4504          mov ax,[es:di+0x4]
0000059B  99                cwd
0000059C  B90200            mov cx,0x2
0000059F  F7F9              idiv cx
000005A1  C47EF0            les di,word [bp-0x10]
000005A4  260305            add ax,[es:di]
000005A7  50                push ax
000005A8  B81E00            mov ax,0x1e
000005AB  50                push ax
000005AC  9A2800210A        call word 0xa21:word 0x28
000005B1  C47EF0            les di,word [bp-0x10]
000005B4  26034502          add ax,[es:di+0x2]
000005B8  50                push ax
000005B9  B81E00            mov ax,0x1e
000005BC  50                push ax
000005BD  9A2800210A        call word 0xa21:word 0x28
000005C2  8BD0              mov dx,ax
000005C4  C47EF0            les di,word [bp-0x10]
000005C7  268B4502          mov ax,[es:di+0x2]
000005CB  C47EF0            les di,word [bp-0x10]
000005CE  26034506          add ax,[es:di+0x6]
000005D2  2BC2              sub ax,dx
000005D4  50                push ax
000005D5  C47EF0            les di,word [bp-0x10]
000005D8  26FF750A          push word [es:di+0xa]
000005DC  9A7516210A        call word 0xa21:word 0x1675
000005E1  B83C00            mov ax,0x3c
000005E4  50                push ax
000005E5  9A2800210A        call word 0xa21:word 0x28
000005EA  8BD0              mov dx,ax
000005EC  C47EF0            les di,word [bp-0x10]
000005EF  268B4506          mov ax,[es:di+0x6]
000005F3  2BC2              sub ax,dx
000005F5  99                cwd
000005F6  8946F8            mov [bp-0x8],ax
000005F9  8956FA            mov [bp-0x6],dx
000005FC  B81400            mov ax,0x14
000005FF  50                push ax
00000600  9A2800210A        call word 0xa21:word 0x28
00000605  C47EF0            les di,word [bp-0x10]
00000608  26034502          add ax,[es:di+0x2]
0000060C  8BD0              mov dx,ax
0000060E  C47EF0            les di,word [bp-0x10]
00000611  268B4578          mov ax,[es:di+0x78]
00000615  2BC2              sub ax,dx
00000617  99                cwd
00000618  8946FC            mov [bp-0x4],ax
0000061B  8956FE            mov [bp-0x2],dx
0000061E  C47EF0            les di,word [bp-0x10]
00000621  268B4510          mov ax,[es:di+0x10]
00000625  C47EF0            les di,word [bp-0x10]
00000628  262B450E          sub ax,[es:di+0xe]
0000062C  99                cwd
0000062D  8946F4            mov [bp-0xc],ax
00000630  8956F6            mov [bp-0xa],dx
00000633  C446F4            les ax,word [bp-0xc]
00000636  8CC2              mov dx,es
00000638  C44EFC            les cx,word [bp-0x4]
0000063B  8CC3              mov bx,es
0000063D  9ADC02561A        call word 0x1a56:word 0x2dc
00000642  8946F4            mov [bp-0xc],ax
00000645  8956F6            mov [bp-0xa],dx
00000648  C446F4            les ax,word [bp-0xc]
0000064B  8CC2              mov dx,es
0000064D  C44EF8            les cx,word [bp-0x8]
00000650  8CC3              mov bx,es
00000652  9AF702561A        call word 0x1a56:word 0x2f7
00000657  8946F4            mov [bp-0xc],ax
0000065A  8956F6            mov [bp-0xa],dx
0000065D  C47EF0            les di,word [bp-0x10]
00000660  268B450E          mov ax,[es:di+0xe]
00000664  99                cwd
00000665  0346F4            add ax,[bp-0xc]
00000668  1356F6            adc dx,[bp-0xa]
0000066B  8946F4            mov [bp-0xc],ax
0000066E  8956F6            mov [bp-0xa],dx
00000671  8B46F4            mov ax,[bp-0xc]
00000674  C47E08            les di,word [bp+0x8]
00000677  268905            mov [es:di],ax
0000067A  C47E08            les di,word [bp+0x8]
0000067D  268B05            mov ax,[es:di]
00000680  C47EF0            les di,word [bp-0x10]
00000683  263B450E          cmp ax,[es:di+0xe]
00000687  7D0D              jnl 0x696
00000689  C47EF0            les di,word [bp-0x10]
0000068C  268B450E          mov ax,[es:di+0xe]
00000690  C47E08            les di,word [bp+0x8]
00000693  268905            mov [es:di],ax
00000696  EB64              jmp 0x6fc
00000698  8B4606            mov ax,[bp+0x6]
0000069B  C47EF0            les di,word [bp-0x10]
0000069E  263B4530          cmp ax,[es:di+0x30]
000006A2  7527              jnz 0x6cb
000006A4  C47E08            les di,word [bp+0x8]
000006A7  268B05            mov ax,[es:di]
000006AA  C47EF0            les di,word [bp-0x10]
000006AD  263B450E          cmp ax,[es:di+0xe]
000006B1  7E16              jng 0x6c9
000006B3  C47E08            les di,word [bp+0x8]
000006B6  26FF0D            dec word [es:di]
000006B9  FF760E            push word [bp+0xe]
000006BC  FF760C            push word [bp+0xc]
000006BF  C47E08            les di,word [bp+0x8]
000006C2  26FF35            push word [es:di]
000006C5  0E                push cs
000006C6  E840FD            call 0x409
000006C9  EB31              jmp 0x6fc
000006CB  8B4606            mov ax,[bp+0x6]
000006CE  C47EF0            les di,word [bp-0x10]
000006D1  263B4550          cmp ax,[es:di+0x50]
000006D5  7525              jnz 0x6fc
000006D7  C47E08            les di,word [bp+0x8]
000006DA  268B05            mov ax,[es:di]
000006DD  C47EF0            les di,word [bp-0x10]
000006E0  263B4510          cmp ax,[es:di+0x10]
000006E4  7D16              jnl 0x6fc
000006E6  C47E08            les di,word [bp+0x8]
000006E9  26FF05            inc word [es:di]
000006EC  FF760E            push word [bp+0xe]
000006EF  FF760C            push word [bp+0xc]
000006F2  C47E08            les di,word [bp+0x8]
000006F5  26FF35            push word [es:di]
000006F8  0E                push cs
000006F9  E80DFD            call 0x409
000006FC  89EC              mov sp,bp
000006FE  5D                pop bp
000006FF  CA0A00            retf word 0xa
00000702  55                push bp
00000703  89E5              mov bp,sp
00000705  8B460A            mov ax,[bp+0xa]
00000708  C47E0C            les di,word [bp+0xc]
0000070B  2689450E          mov [es:di+0xe],ax
0000070F  8B4608            mov ax,[bp+0x8]
00000712  C47E0C            les di,word [bp+0xc]
00000715  26894510          mov [es:di+0x10],ax
00000719  FF760E            push word [bp+0xe]
0000071C  FF760C            push word [bp+0xc]
0000071F  FF7606            push word [bp+0x6]
00000722  0E                push cs
00000723  E8E3FC            call 0x409
00000726  89EC              mov sp,bp
00000728  5D                pop bp
00000729  CA0A00            retf word 0xa
0000072C  55                push bp
0000072D  89E5              mov bp,sp
0000072F  C47E0C            les di,word [bp+0xc]
00000732  26C4BDC800        les di,word [es:di+0xc8]
00000737  268B4547          mov ax,[es:di+0x47]
0000073B  260B4549          or ax,[es:di+0x49]
0000073F  742D              jz 0x76e
00000741  C47E0C            les di,word [bp+0xc]
00000744  26C4BDC800        les di,word [es:di+0xc8]
00000749  26C47D47          les di,word [es:di+0x47]
0000074D  268B05            mov ax,[es:di]
00000750  C47E08            les di,word [bp+0x8]
00000753  268905            mov [es:di],ax
00000756  C47E0C            les di,word [bp+0xc]
00000759  26C4BDC800        les di,word [es:di+0xc8]
0000075E  26C47D47          les di,word [es:di+0x47]
00000762  268B4502          mov ax,[es:di+0x2]
00000766  C47E04            les di,word [bp+0x4]
00000769  268905            mov [es:di],ax
0000076C  EB10              jmp 0x77e
0000076E  C47E08            les di,word [bp+0x8]
00000771  31C0              xor ax,ax
00000773  268905            mov [es:di],ax
00000776  C47E04            les di,word [bp+0x4]
00000779  31C0              xor ax,ax
0000077B  268905            mov [es:di],ax
0000077E  89EC              mov sp,bp
00000780  5D                pop bp
00000781  C20C00            ret word 0xc
00000784  55                push bp
00000785  89E5              mov bp,sp
00000787  83EC04            sub sp,0x4
0000078A  C47E04            les di,word [bp+0x4]
0000078D  26837D0800        cmp word [es:di+0x8],0x0
00000792  7F03              jg 0x797
00000794  E99800            jmp 0x82f
00000797  FF7606            push word [bp+0x6]
0000079A  FF7604            push word [bp+0x4]
0000079D  8D7EFC            lea di,[bp-0x4]
000007A0  16                push ss
000007A1  57                push di
000007A2  8D7EFE            lea di,[bp-0x2]
000007A5  16                push ss
000007A6  57                push di
000007A7  E882FF            call 0x72c
000007AA  B80E00            mov ax,0xe
000007AD  50                push ax
000007AE  B80C00            mov ax,0xc
000007B1  50                push ax
000007B2  B002              mov al,0x2
000007B4  50                push ax
000007B5  9A5000210A        call word 0xa21:word 0x50
000007BA  B80400            mov ax,0x4
000007BD  50                push ax
000007BE  9A0000210A        call word 0xa21:word 0x0
000007C3  8BD0              mov dx,ax
000007C5  8B46FC            mov ax,[bp-0x4]
000007C8  C47E04            les di,word [bp+0x4]
000007CB  260305            add ax,[es:di]
000007CE  03C2              add ax,dx
000007D0  50                push ax
000007D1  B80F00            mov ax,0xf
000007D4  50                push ax
000007D5  9A2800210A        call word 0xa21:word 0x28
000007DA  8BD0              mov dx,ax
000007DC  C47E04            les di,word [bp+0x4]
000007DF  268B4508          mov ax,[es:di+0x8]
000007E3  48                dec ax
000007E4  F7EA              imul dx
000007E6  50                push ax
000007E7  B80500            mov ax,0x5
000007EA  50                push ax
000007EB  9A2800210A        call word 0xa21:word 0x28
000007F0  8BD0              mov dx,ax
000007F2  8B46FE            mov ax,[bp-0x2]
000007F5  C47E04            les di,word [bp+0x4]
000007F8  26034502          add ax,[es:di+0x2]
000007FC  03C2              add ax,dx
000007FE  5A                pop dx
000007FF  03C2              add ax,dx
00000801  50                push ax
00000802  B80800            mov ax,0x8
00000805  50                push ax
00000806  9A0000210A        call word 0xa21:word 0x0
0000080B  50                push ax
0000080C  B80800            mov ax,0x8
0000080F  50                push ax
00000810  9A0000210A        call word 0xa21:word 0x0
00000815  C47E04            les di,word [bp+0x4]
00000818  26F76D06          imul word [es:di+0x6]
0000081C  5A                pop dx
0000081D  03C2              add ax,dx
0000081F  50                push ax
00000820  B80F00            mov ax,0xf
00000823  50                push ax
00000824  9A2800210A        call word 0xa21:word 0x28
00000829  50                push ax
0000082A  9A0124430E        call word 0xe43:word 0x2401
0000082F  89EC              mov sp,bp
00000831  5D                pop bp
00000832  C20400            ret word 0x4
00000835  55                push bp
00000836  89E5              mov bp,sp
00000838  83EC04            sub sp,0x4
0000083B  C47E0A            les di,word [bp+0xa]
0000083E  26C4450E          les ax,word [es:di+0xe]
00000842  8CC2              mov dx,es
00000844  C47E04            les di,word [bp+0x4]
00000847  268905            mov [es:di],ax
0000084A  26895502          mov [es:di+0x2],dx
0000084E  8B4608            mov ax,[bp+0x8]
00000851  8946FC            mov [bp-0x4],ax
00000854  B80200            mov ax,0x2
00000857  3B46FC            cmp ax,[bp-0x4]
0000085A  7F26              jg 0x882
0000085C  8946FE            mov [bp-0x2],ax
0000085F  EB03              jmp 0x864
00000861  FF46FE            inc word [bp-0x2]
00000864  C47E04            les di,word [bp+0x4]
00000867  26C43D            les di,word [es:di]
0000086A  26C44504          les ax,word [es:di+0x4]
0000086E  8CC2              mov dx,es
00000870  C47E04            les di,word [bp+0x4]
00000873  268905            mov [es:di],ax
00000876  26895502          mov [es:di+0x2],dx
0000087A  8B46FE            mov ax,[bp-0x2]
0000087D  3B46FC            cmp ax,[bp-0x4]
00000880  75DF              jnz 0x861
00000882  89EC              mov sp,bp
00000884  5D                pop bp
00000885  C20A00            ret word 0xa
00000888  55                push bp
00000889  89E5              mov bp,sp
0000088B  83EC12            sub sp,0x12
0000088E  C47E06            les di,word [bp+0x6]
00000891  897EF0            mov [bp-0x10],di
00000894  8C46F2            mov word [bp-0xe],es
00000897  C47EF0            les di,word [bp-0x10]
0000089A  26FF7542          push word [es:di+0x42]
0000089E  B8FFFF            mov ax,0xffff
000008A1  50                push ax
000008A2  B000              mov al,0x0
000008A4  50                push ax
000008A5  9A5000210A        call word 0xa21:word 0x50
000008AA  FF7608            push word [bp+0x8]
000008AD  FF7606            push word [bp+0x6]
000008B0  8D7EFC            lea di,[bp-0x4]
000008B3  16                push ss
000008B4  57                push di
000008B5  8D7EFE            lea di,[bp-0x2]
000008B8  16                push ss
000008B9  57                push di
000008BA  E86FFE            call 0x72c
000008BD  B80400            mov ax,0x4
000008C0  50                push ax
000008C1  9A0000210A        call word 0xa21:word 0x0
000008C6  8BD0              mov dx,ax
000008C8  8B46FC            mov ax,[bp-0x4]
000008CB  C47EF0            les di,word [bp-0x10]
000008CE  260305            add ax,[es:di]
000008D1  03C2              add ax,dx
000008D3  50                push ax
000008D4  B80500            mov ax,0x5
000008D7  50                push ax
000008D8  9A2800210A        call word 0xa21:word 0x28
000008DD  8BD0              mov dx,ax
000008DF  8B46FE            mov ax,[bp-0x2]
000008E2  C47EF0            les di,word [bp-0x10]
000008E5  26034502          add ax,[es:di+0x2]
000008E9  03C2              add ax,dx
000008EB  50                push ax
000008EC  B80800            mov ax,0x8
000008EF  50                push ax
000008F0  9A0000210A        call word 0xa21:word 0x0
000008F5  50                push ax
000008F6  B80800            mov ax,0x8
000008F9  50                push ax
000008FA  9A0000210A        call word 0xa21:word 0x0
000008FF  C47EF0            les di,word [bp-0x10]
00000902  26F76D06          imul word [es:di+0x6]
00000906  5A                pop dx
00000907  03C2              add ax,dx
00000909  50                push ax
0000090A  B80F00            mov ax,0xf
0000090D  50                push ax
0000090E  9A2800210A        call word 0xa21:word 0x28
00000913  C47EF0            les di,word [bp-0x10]
00000916  26F76D04          imul word [es:di+0x4]
0000091A  50                push ax
0000091B  9A0124430E        call word 0xe43:word 0x2401
00000920  C47EF0            les di,word [bp-0x10]
00000923  26FF753E          push word [es:di+0x3e]
00000927  B8FFFF            mov ax,0xffff
0000092A  50                push ax
0000092B  B001              mov al,0x1
0000092D  50                push ax
0000092E  9A5000210A        call word 0xa21:word 0x50
00000933  C47EF0            les di,word [bp-0x10]
00000936  268B450C          mov ax,[es:di+0xc]
0000093A  C47EF0            les di,word [bp-0x10]
0000093D  26034504          add ax,[es:di+0x4]
00000941  48                dec ax
00000942  C47EF0            les di,word [bp-0x10]
00000945  263B450A          cmp ax,[es:di+0xa]
00000949  7D14              jnl 0x95f
0000094B  C47EF0            les di,word [bp-0x10]
0000094E  268B450C          mov ax,[es:di+0xc]
00000952  C47EF0            les di,word [bp-0x10]
00000955  26034504          add ax,[es:di+0x4]
00000959  48                dec ax
0000095A  8946FA            mov [bp-0x6],ax
0000095D  EB0A              jmp 0x969
0000095F  C47EF0            les di,word [bp-0x10]
00000962  268B450A          mov ax,[es:di+0xa]
00000966  8946FA            mov [bp-0x6],ax
00000969  C47EF0            les di,word [bp-0x10]
0000096C  26837D0A00        cmp word [es:di+0xa],0x0
00000971  7E15              jng 0x988
00000973  FF7608            push word [bp+0x8]
00000976  FF7606            push word [bp+0x6]
00000979  C47EF0            les di,word [bp-0x10]
0000097C  26FF750C          push word [es:di+0xc]
00000980  8D7EF4            lea di,[bp-0xc]
00000983  16                push ss
00000984  57                push di
00000985  E8ADFE            call 0x835
00000988  8B46FA            mov ax,[bp-0x6]
0000098B  8946EE            mov [bp-0x12],ax
0000098E  C47EF0            les di,word [bp-0x10]
00000991  268B450C          mov ax,[es:di+0xc]
00000995  3B46EE            cmp ax,[bp-0x12]
00000998  7F7C              jg 0xa16
0000099A  8946F8            mov [bp-0x8],ax
0000099D  EB03              jmp 0x9a2
0000099F  FF46F8            inc word [bp-0x8]
000009A2  B80800            mov ax,0x8
000009A5  50                push ax
000009A6  9A0000210A        call word 0xa21:word 0x0
000009AB  8BD0              mov dx,ax
000009AD  8B46FC            mov ax,[bp-0x4]
000009B0  C47EF0            les di,word [bp-0x10]
000009B3  260305            add ax,[es:di]
000009B6  03C2              add ax,dx
000009B8  50                push ax
000009B9  B80F00            mov ax,0xf
000009BC  50                push ax
000009BD  9A2800210A        call word 0xa21:word 0x28
000009C2  8BD0              mov dx,ax
000009C4  8B46F8            mov ax,[bp-0x8]
000009C7  C47EF0            les di,word [bp-0x10]
000009CA  262B450C          sub ax,[es:di+0xc]
000009CE  40                inc ax
000009CF  F7EA              imul dx
000009D1  50                push ax
000009D2  B80400            mov ax,0x4
000009D5  50                push ax
000009D6  9A2800210A        call word 0xa21:word 0x28
000009DB  8BD0              mov dx,ax
000009DD  8B46FE            mov ax,[bp-0x2]
000009E0  C47EF0            les di,word [bp-0x10]
000009E3  26034502          add ax,[es:di+0x2]
000009E7  03C2              add ax,dx
000009E9  5A                pop dx
000009EA  03C2              add ax,dx
000009EC  50                push ax
000009ED  9A8A1B430E        call word 0xe43:word 0x1b8a
000009F2  C47EF4            les di,word [bp-0xc]
000009F5  26C43D            les di,word [es:di]
000009F8  06                push es
000009F9  57                push di
000009FA  9AE010430E        call word 0xe43:word 0x10e0
000009FF  C47EF4            les di,word [bp-0xc]
00000A02  26C44504          les ax,word [es:di+0x4]
00000A06  8CC2              mov dx,es
00000A08  8946F4            mov [bp-0xc],ax
00000A0B  8956F6            mov [bp-0xa],dx
00000A0E  8B46F8            mov ax,[bp-0x8]
00000A11  3B46EE            cmp ax,[bp-0x12]
00000A14  7589              jnz 0x99f
00000A16  8B46FA            mov ax,[bp-0x6]
00000A19  C47EF0            les di,word [bp-0x10]
00000A1C  262B450C          sub ax,[es:di+0xc]
00000A20  40                inc ax
00000A21  C47EF0            les di,word [bp-0x10]
00000A24  263B4508          cmp ax,[es:di+0x8]
00000A28  7D12              jnl 0xa3c
00000A2A  8B46FA            mov ax,[bp-0x6]
00000A2D  C47EF0            les di,word [bp-0x10]
00000A30  262B450C          sub ax,[es:di+0xc]
00000A34  40                inc ax
00000A35  C47EF0            les di,word [bp-0x10]
00000A38  26894508          mov [es:di+0x8],ax
00000A3C  FF7608            push word [bp+0x8]
00000A3F  FF7606            push word [bp+0x6]
00000A42  E83FFD            call 0x784
00000A45  89EC              mov sp,bp
00000A47  5D                pop bp
00000A48  CA0400            retf word 0x4
00000A4B  55                push bp
00000A4C  89E5              mov bp,sp
00000A4E  83EC12            sub sp,0x12
00000A51  C47E24            les di,word [bp+0x24]
00000A54  897EF0            mov [bp-0x10],di
00000A57  8C46F2            mov word [bp-0xe],es
00000A5A  8B461E            mov ax,[bp+0x1e]
00000A5D  C47EF0            les di,word [bp-0x10]
00000A60  268905            mov [es:di],ax
00000A63  8B461C            mov ax,[bp+0x1c]
00000A66  C47EF0            les di,word [bp-0x10]
00000A69  26894502          mov [es:di+0x2],ax
00000A6D  8B4610            mov ax,[bp+0x10]
00000A70  C47EF0            les di,word [bp-0x10]
00000A73  26894504          mov [es:di+0x4],ax
00000A77  8B460E            mov ax,[bp+0xe]
00000A7A  C47EF0            les di,word [bp-0x10]
00000A7D  26894506          mov [es:di+0x6],ax
00000A81  8B460C            mov ax,[bp+0xc]
00000A84  C47EF0            les di,word [bp-0x10]
00000A87  26894508          mov [es:di+0x8],ax
00000A8B  8B460A            mov ax,[bp+0xa]
00000A8E  C47EF0            les di,word [bp-0x10]
00000A91  2689450A          mov [es:di+0xa],ax
00000A95  8B4614            mov ax,[bp+0x14]
00000A98  C47EF0            les di,word [bp-0x10]
00000A9B  2689450C          mov [es:di+0xc],ax
00000A9F  C44606            les ax,word [bp+0x6]
00000AA2  8CC2              mov dx,es
00000AA4  C47EF0            les di,word [bp-0x10]
00000AA7  2689450E          mov [es:di+0xe],ax
00000AAB  26895510          mov [es:di+0x10],dx
00000AAF  C47EF0            les di,word [bp-0x10]
00000AB2  31C0              xor ax,ax
00000AB4  26894532          mov [es:di+0x32],ax
00000AB8  26894534          mov [es:di+0x34],ax
00000ABC  C47EF0            les di,word [bp-0x10]
00000ABF  268B4504          mov ax,[es:di+0x4]
00000AC3  8946EE            mov [bp-0x12],ax
00000AC6  B80100            mov ax,0x1
00000AC9  3B46EE            cmp ax,[bp-0x12]
00000ACC  7F42              jg 0xb10
00000ACE  8946FC            mov [bp-0x4],ax
00000AD1  EB03              jmp 0xad6
00000AD3  FF46FC            inc word [bp-0x4]
00000AD6  8D7EF4            lea di,[bp-0xc]
00000AD9  16                push ss
00000ADA  57                push di
00000ADB  B82400            mov ax,0x24
00000ADE  50                push ax
00000ADF  9A8E03561A        call word 0x1a56:word 0x38e
00000AE4  C47EF0            les di,word [bp-0x10]
00000AE7  26C44532          les ax,word [es:di+0x32]
00000AEB  8CC2              mov dx,es
00000AED  C47EF4            les di,word [bp-0xc]
00000AF0  26894520          mov [es:di+0x20],ax
00000AF4  26895522          mov [es:di+0x22],dx
00000AF8  C446F4            les ax,word [bp-0xc]
00000AFB  8CC2              mov dx,es
00000AFD  C47EF0            les di,word [bp-0x10]
00000B00  26894532          mov [es:di+0x32],ax
00000B04  26895534          mov [es:di+0x34],dx
00000B08  8B46FC            mov ax,[bp-0x4]
00000B0B  3B46EE            cmp ax,[bp-0x12]
00000B0E  75C3              jnz 0xad3
00000B10  C47EF0            les di,word [bp-0x10]
00000B13  268D4512          lea ax,[es:di+0x12]
00000B17  8CC2              mov dx,es
00000B19  52                push dx
00000B1A  50                push ax
00000B1B  C47EF0            les di,word [bp-0x10]
00000B1E  26C47D32          les di,word [es:di+0x32]
00000B22  89F8              mov ax,di
00000B24  8CC2              mov dx,es
00000B26  52                push dx
00000B27  50                push ax
00000B28  FF761E            push word [bp+0x1e]
00000B2B  FF761C            push word [bp+0x1c]
00000B2E  B80800            mov ax,0x8
00000B31  50                push ax
00000B32  9A0000210A        call word 0xa21:word 0x0
00000B37  F76E0E            imul word [bp+0xe]
00000B3A  50                push ax
00000B3B  B81000            mov ax,0x10
00000B3E  50                push ax
00000B3F  9A0000210A        call word 0xa21:word 0x0
00000B44  5A                pop dx
00000B45  03C2              add ax,dx
00000B47  50                push ax
00000B48  B80F00            mov ax,0xf
00000B4B  50                push ax
00000B4C  9A2800210A        call word 0xa21:word 0x28
00000B51  F76E10            imul word [bp+0x10]
00000B54  50                push ax
00000B55  B80A00            mov ax,0xa
00000B58  50                push ax
00000B59  9A2800210A        call word 0xa21:word 0x28
00000B5E  5A                pop dx
00000B5F  03C2              add ax,dx
00000B61  50                push ax
00000B62  B80100            mov ax,0x1
00000B65  50                push ax
00000B66  FF761A            push word [bp+0x1a]
00000B69  FF7616            push word [bp+0x16]
00000B6C  31C0              xor ax,ax
00000B6E  50                push ax
00000B6F  9A6E1A210A        call word 0xa21:word 0x1a6e
00000B74  C47EF0            les di,word [bp-0x10]
00000B77  26C44532          les ax,word [es:di+0x32]
00000B7B  8CC2              mov dx,es
00000B7D  8946F8            mov [bp-0x8],ax
00000B80  8956FA            mov [bp-0x6],dx
00000B83  C47EF0            les di,word [bp-0x10]
00000B86  268B4504          mov ax,[es:di+0x4]
00000B8A  48                dec ax
00000B8B  8946EE            mov [bp-0x12],ax
00000B8E  B80100            mov ax,0x1
00000B91  3B46EE            cmp ax,[bp-0x12]
00000B94  7E03              jng 0xb99
00000B96  E9A400            jmp 0xc3d
00000B99  8946FC            mov [bp-0x4],ax
00000B9C  EB03              jmp 0xba1
00000B9E  FF46FC            inc word [bp-0x4]
00000BA1  C47EF8            les di,word [bp-0x8]
00000BA4  89F8              mov ax,di
00000BA6  8CC2              mov dx,es
00000BA8  52                push dx
00000BA9  50                push ax
00000BAA  C47EF8            les di,word [bp-0x8]
00000BAD  26C47D20          les di,word [es:di+0x20]
00000BB1  89F8              mov ax,di
00000BB3  8CC2              mov dx,es
00000BB5  52                push dx
00000BB6  50                push ax
00000BB7  B80400            mov ax,0x4
00000BBA  50                push ax
00000BBB  9A0000210A        call word 0xa21:word 0x0
00000BC0  03461E            add ax,[bp+0x1e]
00000BC3  50                push ax
00000BC4  B80F00            mov ax,0xf
00000BC7  50                push ax
00000BC8  9A2800210A        call word 0xa21:word 0x28
00000BCD  8BD0              mov dx,ax
00000BCF  8B46FC            mov ax,[bp-0x4]
00000BD2  48                dec ax
00000BD3  F7EA              imul dx
00000BD5  50                push ax
00000BD6  B80500            mov ax,0x5
00000BD9  50                push ax
00000BDA  9A2800210A        call word 0xa21:word 0x28
00000BDF  03461C            add ax,[bp+0x1c]
00000BE2  5A                pop dx
00000BE3  03C2              add ax,dx
00000BE5  50                push ax
00000BE6  B80800            mov ax,0x8
00000BE9  50                push ax
00000BEA  9A0000210A        call word 0xa21:word 0x0
00000BEF  F76E0E            imul word [bp+0xe]
00000BF2  50                push ax
00000BF3  B80800            mov ax,0x8
00000BF6  50                push ax
00000BF7  9A0000210A        call word 0xa21:word 0x0
00000BFC  5A                pop dx
00000BFD  03C2              add ax,dx
00000BFF  50                push ax
00000C00  B80F00            mov ax,0xf
00000C03  50                push ax
00000C04  9A2800210A        call word 0xa21:word 0x28
00000C09  50                push ax
00000C0A  31C0              xor ax,ax
00000C0C  50                push ax
00000C0D  FF761A            push word [bp+0x1a]
00000C10  B8FFFF            mov ax,0xffff
00000C13  50                push ax
00000C14  8B4612            mov ax,[bp+0x12]
00000C17  0346FC            add ax,[bp-0x4]
00000C1A  050200            add ax,0x2
00000C1D  50                push ax
00000C1E  9A6E1A210A        call word 0xa21:word 0x1a6e
00000C23  C47EF8            les di,word [bp-0x8]
00000C26  26C44520          les ax,word [es:di+0x20]
00000C2A  8CC2              mov dx,es
00000C2C  8946F8            mov [bp-0x8],ax
00000C2F  8956FA            mov [bp-0x6],dx
00000C32  8B46FC            mov ax,[bp-0x4]
00000C35  3B46EE            cmp ax,[bp-0x12]
00000C38  7403              jz 0xc3d
00000C3A  E961FF            jmp 0xb9e
00000C3D  C47EF8            les di,word [bp-0x8]
00000C40  89F8              mov ax,di
00000C42  8CC2              mov dx,es
00000C44  52                push dx
00000C45  50                push ax
00000C46  C47EF0            les di,word [bp-0x10]
00000C49  268D4548          lea ax,[es:di+0x48]
00000C4D  8CC2              mov dx,es
00000C4F  52                push dx
00000C50  50                push ax
00000C51  B80400            mov ax,0x4
00000C54  50                push ax
00000C55  9A0000210A        call word 0xa21:word 0x0
00000C5A  03461E            add ax,[bp+0x1e]
00000C5D  50                push ax
00000C5E  B80F00            mov ax,0xf
00000C61  50                push ax
00000C62  9A2800210A        call word 0xa21:word 0x28
00000C67  8BD0              mov dx,ax
00000C69  C47EF0            les di,word [bp-0x10]
00000C6C  268B4504          mov ax,[es:di+0x4]
00000C70  48                dec ax
00000C71  F7EA              imul dx
00000C73  50                push ax
00000C74  B80500            mov ax,0x5
00000C77  50                push ax
00000C78  9A2800210A        call word 0xa21:word 0x28
00000C7D  03461C            add ax,[bp+0x1c]
00000C80  5A                pop dx
00000C81  03C2              add ax,dx
00000C83  50                push ax
00000C84  B80800            mov ax,0x8
00000C87  50                push ax
00000C88  9A0000210A        call word 0xa21:word 0x0
00000C8D  F76E0E            imul word [bp+0xe]
00000C90  50                push ax
00000C91  B80800            mov ax,0x8
00000C94  50                push ax
00000C95  9A0000210A        call word 0xa21:word 0x0
00000C9A  5A                pop dx
00000C9B  03C2              add ax,dx
00000C9D  50                push ax
00000C9E  B80F00            mov ax,0xf
00000CA1  50                push ax
00000CA2  9A2800210A        call word 0xa21:word 0x28
00000CA7  50                push ax
00000CA8  31C0              xor ax,ax
00000CAA  50                push ax
00000CAB  FF761A            push word [bp+0x1a]
00000CAE  B8FFFF            mov ax,0xffff
00000CB1  50                push ax
00000CB2  8B4612            mov ax,[bp+0x12]
00000CB5  C47EF0            les di,word [bp-0x10]
00000CB8  26034504          add ax,[es:di+0x4]
00000CBC  050200            add ax,0x2
00000CBF  50                push ax
00000CC0  9A6E1A210A        call word 0xa21:word 0x1a6e
00000CC5  8B460A            mov ax,[bp+0xa]
00000CC8  2B4610            sub ax,[bp+0x10]
00000CCB  40                inc ax
00000CCC  8946FE            mov [bp-0x2],ax
00000CCF  837EFE01          cmp word [bp-0x2],0x1
00000CD3  7D05              jnl 0xcda
00000CD5  C746FE0100        mov word [bp-0x2],0x1
00000CDA  C47EF0            les di,word [bp-0x10]
00000CDD  268D4536          lea ax,[es:di+0x36]
00000CE1  8CC2              mov dx,es
00000CE3  52                push dx
00000CE4  50                push ax
00000CE5  FF7622            push word [bp+0x22]
00000CE8  FF7620            push word [bp+0x20]
00000CEB  B80800            mov ax,0x8
00000CEE  50                push ax
00000CEF  9A0000210A        call word 0xa21:word 0x0
00000CF4  C47EF0            les di,word [bp-0x10]
00000CF7  26F76D06          imul word [es:di+0x6]
00000CFB  50                push ax
00000CFC  B81200            mov ax,0x12
00000CFF  50                push ax
00000D00  9A0000210A        call word 0xa21:word 0x0
00000D05  03461E            add ax,[bp+0x1e]
00000D08  5A                pop dx
00000D09  03C2              add ax,dx
00000D0B  50                push ax
00000D0C  FF761C            push word [bp+0x1c]
00000D0F  B81500            mov ax,0x15
00000D12  50                push ax
00000D13  9A0000210A        call word 0xa21:word 0x0
00000D18  50                push ax
00000D19  B80F00            mov ax,0xf
00000D1C  50                push ax
00000D1D  9A2800210A        call word 0xa21:word 0x28
00000D22  F76E10            imul word [bp+0x10]
00000D25  50                push ax
00000D26  B80A00            mov ax,0xa
00000D29  50                push ax
00000D2A  9A2800210A        call word 0xa21:word 0x28
00000D2F  5A                pop dx
00000D30  03C2              add ax,dx
00000D32  50                push ax
00000D33  FF761A            push word [bp+0x1a]
00000D36  FF7618            push word [bp+0x18]
00000D39  FF7616            push word [bp+0x16]
00000D3C  B80100            mov ax,0x1
00000D3F  50                push ax
00000D40  FF76FE            push word [bp-0x2]
00000D43  FF7614            push word [bp+0x14]
00000D46  FF7612            push word [bp+0x12]
00000D49  0E                push cs
00000D4A  E84BF3            call 0x98
00000D4D  89EC              mov sp,bp
00000D4F  5D                pop bp
00000D50  CA2200            retf word 0x22
00000D53  55                push bp
00000D54  89E5              mov bp,sp
00000D56  C47E06            les di,word [bp+0x6]
00000D59  268B450C          mov ax,[es:di+0xc]
00000D5D  034604            add ax,[bp+0x4]
00000D60  48                dec ax
00000D61  C47E06            les di,word [bp+0x6]
00000D64  263B450A          cmp ax,[es:di+0xa]
00000D68  7F1C              jg 0xd86
00000D6A  FF7608            push word [bp+0x8]
00000D6D  FF7606            push word [bp+0x6]
00000D70  E811FA            call 0x784
00000D73  8B4604            mov ax,[bp+0x4]
00000D76  C47E06            les di,word [bp+0x6]
00000D79  26894508          mov [es:di+0x8],ax
00000D7D  FF7608            push word [bp+0x8]
00000D80  FF7606            push word [bp+0x6]
00000D83  E8FEF9            call 0x784
00000D86  89EC              mov sp,bp
00000D88  5D                pop bp
00000D89  C20600            ret word 0x6
00000D8C  55                push bp
00000D8D  89E5              mov bp,sp
00000D8F  83EC08            sub sp,0x8
00000D92  C47E08            les di,word [bp+0x8]
00000D95  897EF8            mov [bp-0x8],di
00000D98  8C46FA            mov word [bp-0x6],es
00000D9B  C47EF8            les di,word [bp-0x8]
00000D9E  268B4504          mov ax,[es:di+0x4]
00000DA2  050200            add ax,0x2
00000DA5  8946FC            mov [bp-0x4],ax
00000DA8  8B4606            mov ax,[bp+0x6]
00000DAB  C47EF8            les di,word [bp-0x8]
00000DAE  262B4566          sub ax,[es:di+0x66]
00000DB2  8946FE            mov [bp-0x2],ax
00000DB5  837EFEFF          cmp word [bp-0x2],0xffffffffffffffff
00000DB9  7E2D              jng 0xde8
00000DBB  837EFE03          cmp word [bp-0x2],0x3
00000DBF  7D27              jnl 0xde8
00000DC1  C47EF8            les di,word [bp-0x8]
00000DC4  268D4536          lea ax,[es:di+0x36]
00000DC8  8CC2              mov dx,es
00000DCA  52                push dx
00000DCB  50                push ax
00000DCC  C47EF8            les di,word [bp-0x8]
00000DCF  81C70C00          add di,0xc
00000DD3  06                push es
00000DD4  57                push di
00000DD5  FF7606            push word [bp+0x6]
00000DD8  0E                push cs
00000DD9  E86FF7            call 0x54b
00000DDC  FF760A            push word [bp+0xa]
00000DDF  FF7608            push word [bp+0x8]
00000DE2  0E                push cs
00000DE3  E8A2FA            call 0x888
00000DE6  EB1E              jmp 0xe06
00000DE8  837EFE02          cmp word [bp-0x2],0x2
00000DEC  7E18              jng 0xe06
00000DEE  8B46FE            mov ax,[bp-0x2]
00000DF1  3B46FC            cmp ax,[bp-0x4]
00000DF4  7F10              jg 0xe06
00000DF6  FF760A            push word [bp+0xa]
00000DF9  FF7608            push word [bp+0x8]
00000DFC  8B46FE            mov ax,[bp-0x2]
00000DFF  2D0200            sub ax,0x2
00000E02  50                push ax
00000E03  E84DFF            call 0xd53
00000E06  89EC              mov sp,bp
00000E08  5D                pop bp
00000E09  CA0600            retf word 0x6
00000E0C  55                push bp
00000E0D  89E5              mov bp,sp
00000E0F  83EC06            sub sp,0x6
00000E12  C47E10            les di,word [bp+0x10]
00000E15  897EFA            mov [bp-0x6],di
00000E18  8C46FC            mov word [bp-0x4],es
00000E1B  8B460C            mov ax,[bp+0xc]
00000E1E  C47EFA            les di,word [bp-0x6]
00000E21  26894508          mov [es:di+0x8],ax
00000E25  8B460E            mov ax,[bp+0xe]
00000E28  C47EFA            les di,word [bp-0x6]
00000E2B  2689450C          mov [es:di+0xc],ax
00000E2F  8B460A            mov ax,[bp+0xa]
00000E32  C47EFA            les di,word [bp-0x6]
00000E35  2689450A          mov [es:di+0xa],ax
00000E39  C44606            les ax,word [bp+0x6]
00000E3C  8CC2              mov dx,es
00000E3E  C47EFA            les di,word [bp-0x6]
00000E41  2689450E          mov [es:di+0xe],ax
00000E45  26895510          mov [es:di+0x10],dx
00000E49  8B460A            mov ax,[bp+0xa]
00000E4C  C47EFA            les di,word [bp-0x6]
00000E4F  262B4504          sub ax,[es:di+0x4]
00000E53  40                inc ax
00000E54  8946FE            mov [bp-0x2],ax
00000E57  837EFE01          cmp word [bp-0x2],0x1
00000E5B  7D05              jnl 0xe62
00000E5D  C746FE0100        mov word [bp-0x2],0x1
00000E62  C47EFA            les di,word [bp-0x6]
00000E65  268D4536          lea ax,[es:di+0x36]
00000E69  8CC2              mov dx,es
00000E6B  52                push dx
00000E6C  50                push ax
00000E6D  B80100            mov ax,0x1
00000E70  50                push ax
00000E71  FF76FE            push word [bp-0x2]
00000E74  FF760E            push word [bp+0xe]
00000E77  0E                push cs
00000E78  E887F8            call 0x702
00000E7B  FF7612            push word [bp+0x12]
00000E7E  FF7610            push word [bp+0x10]
00000E81  0E                push cs
00000E82  E803FA            call 0x888
00000E85  89EC              mov sp,bp
00000E87  5D                pop bp
00000E88  CA0E00            retf word 0xe
00000E8B  55                push bp
00000E8C  89E5              mov bp,sp
00000E8E  83EC04            sub sp,0x4
00000E91  C47E0E            les di,word [bp+0xe]
00000E94  268B450C          mov ax,[es:di+0xc]
00000E98  C47E0E            les di,word [bp+0xe]
00000E9B  26034508          add ax,[es:di+0x8]
00000E9F  48                dec ax
00000EA0  C47E0A            les di,word [bp+0xa]
00000EA3  268905            mov [es:di],ax
00000EA6  C47E0A            les di,word [bp+0xa]
00000EA9  26833D00          cmp word [es:di],0x0
00000EAD  7E36              jng 0xee5
00000EAF  C47E0E            les di,word [bp+0xe]
00000EB2  26837D0A00        cmp word [es:di+0xa],0x0
00000EB7  7E2C              jng 0xee5
00000EB9  FF7610            push word [bp+0x10]
00000EBC  FF760E            push word [bp+0xe]
00000EBF  C47E0A            les di,word [bp+0xa]
00000EC2  26FF35            push word [es:di]
00000EC5  8D7EFC            lea di,[bp-0x4]
00000EC8  16                push ss
00000EC9  57                push di
00000ECA  E868F9            call 0x835
00000ECD  C47EFC            les di,word [bp-0x4]
00000ED0  26C43D            les di,word [es:di]
00000ED3  06                push es
00000ED4  57                push di
00000ED5  C47E06            les di,word [bp+0x6]
00000ED8  06                push es
00000ED9  57                push di
00000EDA  B8FF00            mov ax,0xff
00000EDD  50                push ax
00000EDE  9AAD06561A        call word 0x1a56:word 0x6ad
00000EE3  EB07              jmp 0xeec
00000EE5  C47E06            les di,word [bp+0x6]
00000EE8  26C60500          mov byte [es:di],0x0
00000EEC  89EC              mov sp,bp
00000EEE  5D                pop bp
00000EEF  CA0C00            retf word 0xc
00000EF2  55                push bp
00000EF3  89E5              mov bp,sp
00000EF5  83EC08            sub sp,0x8
00000EF8  C47E06            les di,word [bp+0x6]
00000EFB  268B4504          mov ax,[es:di+0x4]
00000EFF  8946F8            mov [bp-0x8],ax
00000F02  B80100            mov ax,0x1
00000F05  3B46F8            cmp ax,[bp-0x8]
00000F08  7F41              jg 0xf4b
00000F0A  8946FE            mov [bp-0x2],ax
00000F0D  EB03              jmp 0xf12
00000F0F  FF46FE            inc word [bp-0x2]
00000F12  C47E06            les di,word [bp+0x6]
00000F15  26C44532          les ax,word [es:di+0x32]
00000F19  8CC2              mov dx,es
00000F1B  8946FA            mov [bp-0x6],ax
00000F1E  8956FC            mov [bp-0x4],dx
00000F21  C47EFA            les di,word [bp-0x6]
00000F24  26C44520          les ax,word [es:di+0x20]
00000F28  8CC2              mov dx,es
00000F2A  C47E06            les di,word [bp+0x6]
00000F2D  26894532          mov [es:di+0x32],ax
00000F31  26895534          mov [es:di+0x34],dx
00000F35  8D7EFA            lea di,[bp-0x6]
00000F38  16                push ss
00000F39  57                push di
00000F3A  B82400            mov ax,0x24
00000F3D  50                push ax
00000F3E  9AC003561A        call word 0x1a56:word 0x3c0
00000F43  8B46FE            mov ax,[bp-0x2]
00000F46  3B46F8            cmp ax,[bp-0x8]
00000F49  75C4              jnz 0xf0f
00000F4B  89EC              mov sp,bp
00000F4D  5D                pop bp
00000F4E  CA0400            retf word 0x4
00000F51  0000              add [bx+si],al
00000F53  0000              add [bx+si],al
00000F55  0000              add [bx+si],al
00000F57  0000              add [bx+si],al
00000F59  0000              add [bx+si],al
00000F5B  0000              add [bx+si],al
00000F5D  0000              add [bx+si],al
00000F5F  00                db 0x00
