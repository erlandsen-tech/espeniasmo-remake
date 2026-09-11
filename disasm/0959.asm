00000000  55                push bp
00000001  89E5              mov bp,sp
00000003  83EC06            sub sp,0x6
00000006  C47E04            les di,word [bp+0x4]
00000009  26C43D            les di,word [es:di]
0000000C  26807D050F        cmp byte [es:di+0x5],0xf
00000011  7507              jnz 0x1a
00000013  C646FF01          mov byte [bp-0x1],0x1
00000017  E99F00            jmp 0xb9
0000001A  C47E04            les di,word [bp+0x4]
0000001D  26C43D            les di,word [es:di]
00000020  81C70A00          add di,0xa
00000024  06                push es
00000025  57                push di
00000026  9A3800F309        call word 0x9f3:word 0x38
0000002B  08C0              or al,al
0000002D  7470              jz 0x9f
0000002F  C646FA00          mov byte [bp-0x6],0x0
00000033  C47E04            les di,word [bp+0x4]
00000036  26C43D            les di,word [es:di]
00000039  26C4450F          les ax,word [es:di+0xf]
0000003D  8CC2              mov dx,es
0000003F  8946FB            mov [bp-0x5],ax
00000042  8956FD            mov [bp-0x3],dx
00000045  C47EFB            les di,word [bp-0x5]
00000048  81C70A00          add di,0xa
0000004C  06                push es
0000004D  57                push di
0000004E  9A0000F309        call word 0x9f3:word 0x0
00000053  08C0              or al,al
00000055  7427              jz 0x7e
00000057  807EFA00          cmp byte [bp-0x6],0x0
0000005B  7521              jnz 0x7e
0000005D  C47EFB            les di,word [bp-0x5]
00000060  26807D050F        cmp byte [es:di+0x5],0xf
00000065  7506              jnz 0x6d
00000067  C646FA01          mov byte [bp-0x6],0x1
0000006B  EB0F              jmp 0x7c
0000006D  C47EFB            les di,word [bp-0x5]
00000070  26C4450F          les ax,word [es:di+0xf]
00000074  8CC2              mov dx,es
00000076  8946FB            mov [bp-0x5],ax
00000079  8956FD            mov [bp-0x3],dx
0000007C  EBC7              jmp 0x45
0000007E  807EFA00          cmp byte [bp-0x6],0x0
00000082  7406              jz 0x8a
00000084  C646FF01          mov byte [bp-0x1],0x1
00000088  EB13              jmp 0x9d
0000008A  C446FB            les ax,word [bp-0x5]
0000008D  8CC2              mov dx,es
0000008F  C47E04            les di,word [bp+0x4]
00000092  268905            mov [es:di],ax
00000095  26895502          mov [es:di+0x2],dx
00000099  C646FF00          mov byte [bp-0x1],0x0
0000009D  EB1A              jmp 0xb9
0000009F  C47E04            les di,word [bp+0x4]
000000A2  26C43D            les di,word [es:di]
000000A5  26C4450F          les ax,word [es:di+0xf]
000000A9  8CC2              mov dx,es
000000AB  C47E04            les di,word [bp+0x4]
000000AE  268905            mov [es:di],ax
000000B1  26895502          mov [es:di+0x2],dx
000000B5  C646FF00          mov byte [bp-0x1],0x0
000000B9  8A46FF            mov al,[bp-0x1]
000000BC  89EC              mov sp,bp
000000BE  5D                pop bp
000000BF  C20400            ret word 0x4
000000C2  55                push bp
000000C3  89E5              mov bp,sp
000000C5  83EC04            sub sp,0x4
000000C8  C47E04            les di,word [bp+0x4]
000000CB  26C405            les ax,word [es:di]
000000CE  8CC2              mov dx,es
000000D0  8946FC            mov [bp-0x4],ax
000000D3  8956FE            mov [bp-0x2],dx
000000D6  8B46FC            mov ax,[bp-0x4]
000000D9  0B46FE            or ax,[bp-0x2]
000000DC  751F              jnz 0xfd
000000DE  8D7EFC            lea di,[bp-0x4]
000000E1  16                push ss
000000E2  57                push di
000000E3  B81300            mov ax,0x13
000000E6  50                push ax
000000E7  9A8E03561A        call word 0x1a56:word 0x38e
000000EC  C446FC            les ax,word [bp-0x4]
000000EF  8CC2              mov dx,es
000000F1  C47E04            les di,word [bp+0x4]
000000F4  268905            mov [es:di],ax
000000F7  26895502          mov [es:di+0x2],dx
000000FB  EB3F              jmp 0x13c
000000FD  C47EFC            les di,word [bp-0x4]
00000100  268B450F          mov ax,[es:di+0xf]
00000104  260B4511          or ax,[es:di+0x11]
00000108  7411              jz 0x11b
0000010A  C47EFC            les di,word [bp-0x4]
0000010D  26C4450F          les ax,word [es:di+0xf]
00000111  8CC2              mov dx,es
00000113  8946FC            mov [bp-0x4],ax
00000116  8956FE            mov [bp-0x2],dx
00000119  EBE2              jmp 0xfd
0000011B  C47EFC            les di,word [bp-0x4]
0000011E  81C70F00          add di,0xf
00000122  06                push es
00000123  57                push di
00000124  B81300            mov ax,0x13
00000127  50                push ax
00000128  9A8E03561A        call word 0x1a56:word 0x38e
0000012D  C47EFC            les di,word [bp-0x4]
00000130  26C4450F          les ax,word [es:di+0xf]
00000134  8CC2              mov dx,es
00000136  8946FC            mov [bp-0x4],ax
00000139  8956FE            mov [bp-0x2],dx
0000013C  C47E08            les di,word [bp+0x8]
0000013F  26C43D            les di,word [es:di]
00000142  81C70A00          add di,0xa
00000146  06                push es
00000147  57                push di
00000148  9A3800F309        call word 0x9f3:word 0x38
0000014D  08C0              or al,al
0000014F  7503              jnz 0x154
00000151  E9DD00            jmp 0x231
00000154  C47E08            les di,word [bp+0x8]
00000157  26C43D            les di,word [es:di]
0000015A  81C70500          add di,0x5
0000015E  06                push es
0000015F  57                push di
00000160  9A7000F309        call word 0x9f3:word 0x70
00000165  08C0              or al,al
00000167  754F              jnz 0x1b8
00000169  C47E08            les di,word [bp+0x8]
0000016C  26C43D            les di,word [es:di]
0000016F  06                push es
00000170  57                push di
00000171  C47EFC            les di,word [bp-0x4]
00000174  06                push es
00000175  57                push di
00000176  B80F00            mov ax,0xf
00000179  50                push ax
0000017A  9AC002561A        call word 0x1a56:word 0x2c0
0000017F  C47EFC            les di,word [bp-0x4]
00000182  81C70F00          add di,0xf
00000186  06                push es
00000187  57                push di
00000188  B81300            mov ax,0x13
0000018B  50                push ax
0000018C  9A8E03561A        call word 0x1a56:word 0x38e
00000191  C47EFC            les di,word [bp-0x4]
00000194  26C4450F          les ax,word [es:di+0xf]
00000198  8CC2              mov dx,es
0000019A  8946FC            mov [bp-0x4],ax
0000019D  8956FE            mov [bp-0x2],dx
000001A0  C47E08            les di,word [bp+0x8]
000001A3  26C43D            les di,word [es:di]
000001A6  26C4450F          les ax,word [es:di+0xf]
000001AA  8CC2              mov dx,es
000001AC  C47E08            les di,word [bp+0x8]
000001AF  268905            mov [es:di],ax
000001B2  26895502          mov [es:di+0x2],dx
000001B6  EB9C              jmp 0x154
000001B8  C47E08            les di,word [bp+0x8]
000001BB  26C43D            les di,word [es:di]
000001BE  81C70A00          add di,0xa
000001C2  06                push es
000001C3  57                push di
000001C4  9AA800F309        call word 0x9f3:word 0xa8
000001C9  08C0              or al,al
000001CB  7464              jz 0x231
000001CD  C47E08            les di,word [bp+0x8]
000001D0  26C43D            les di,word [es:di]
000001D3  81C70500          add di,0x5
000001D7  06                push es
000001D8  57                push di
000001D9  9AE600F309        call word 0x9f3:word 0xe6
000001DE  08C0              or al,al
000001E0  754F              jnz 0x231
000001E2  C47E08            les di,word [bp+0x8]
000001E5  26C43D            les di,word [es:di]
000001E8  06                push es
000001E9  57                push di
000001EA  C47EFC            les di,word [bp-0x4]
000001ED  06                push es
000001EE  57                push di
000001EF  B80F00            mov ax,0xf
000001F2  50                push ax
000001F3  9AC002561A        call word 0x1a56:word 0x2c0
000001F8  C47EFC            les di,word [bp-0x4]
000001FB  81C70F00          add di,0xf
000001FF  06                push es
00000200  57                push di
00000201  B81300            mov ax,0x13
00000204  50                push ax
00000205  9A8E03561A        call word 0x1a56:word 0x38e
0000020A  C47EFC            les di,word [bp-0x4]
0000020D  26C4450F          les ax,word [es:di+0xf]
00000211  8CC2              mov dx,es
00000213  8946FC            mov [bp-0x4],ax
00000216  8956FE            mov [bp-0x2],dx
00000219  C47E08            les di,word [bp+0x8]
0000021C  26C43D            les di,word [es:di]
0000021F  26C4450F          les ax,word [es:di+0xf]
00000223  8CC2              mov dx,es
00000225  C47E08            les di,word [bp+0x8]
00000228  268905            mov [es:di],ax
0000022B  26895502          mov [es:di+0x2],dx
0000022F  EB9C              jmp 0x1cd
00000231  C47E08            les di,word [bp+0x8]
00000234  26C43D            les di,word [es:di]
00000237  06                push es
00000238  57                push di
00000239  C47EFC            les di,word [bp-0x4]
0000023C  06                push es
0000023D  57                push di
0000023E  B80F00            mov ax,0xf
00000241  50                push ax
00000242  9AC002561A        call word 0x1a56:word 0x2c0
00000247  C47EFC            les di,word [bp-0x4]
0000024A  31C0              xor ax,ax
0000024C  2689450F          mov [es:di+0xf],ax
00000250  26894511          mov [es:di+0x11],ax
00000254  C47E08            les di,word [bp+0x8]
00000257  26C43D            les di,word [es:di]
0000025A  26C4450F          les ax,word [es:di+0xf]
0000025E  8CC2              mov dx,es
00000260  C47E08            les di,word [bp+0x8]
00000263  268905            mov [es:di],ax
00000266  26895502          mov [es:di+0x2],dx
0000026A  89EC              mov sp,bp
0000026C  5D                pop bp
0000026D  C20800            ret word 0x8
00000270  55                push bp
00000271  89E5              mov bp,sp
00000273  83EC06            sub sp,0x6
00000276  C47E04            les di,word [bp+0x4]
00000279  26C43D            les di,word [es:di]
0000027C  26803D0F          cmp byte [es:di],0xf
00000280  7507              jnz 0x289
00000282  C646FF01          mov byte [bp-0x1],0x1
00000286  E99E00            jmp 0x327
00000289  C47E04            les di,word [bp+0x4]
0000028C  26C43D            les di,word [es:di]
0000028F  81C70500          add di,0x5
00000293  06                push es
00000294  57                push di
00000295  9A3800F309        call word 0x9f3:word 0x38
0000029A  08C0              or al,al
0000029C  746F              jz 0x30d
0000029E  C646FA00          mov byte [bp-0x6],0x0
000002A2  C47E04            les di,word [bp+0x4]
000002A5  26C43D            les di,word [es:di]
000002A8  26C4450A          les ax,word [es:di+0xa]
000002AC  8CC2              mov dx,es
000002AE  8946FB            mov [bp-0x5],ax
000002B1  8956FD            mov [bp-0x3],dx
000002B4  C47EFB            les di,word [bp-0x5]
000002B7  81C70500          add di,0x5
000002BB  06                push es
000002BC  57                push di
000002BD  9A0000F309        call word 0x9f3:word 0x0
000002C2  08C0              or al,al
000002C4  7426              jz 0x2ec
000002C6  807EFA00          cmp byte [bp-0x6],0x0
000002CA  7520              jnz 0x2ec
000002CC  C47EFB            les di,word [bp-0x5]
000002CF  26803D0F          cmp byte [es:di],0xf
000002D3  7506              jnz 0x2db
000002D5  C646FA01          mov byte [bp-0x6],0x1
000002D9  EB0F              jmp 0x2ea
000002DB  C47EFB            les di,word [bp-0x5]
000002DE  26C4450A          les ax,word [es:di+0xa]
000002E2  8CC2              mov dx,es
000002E4  8946FB            mov [bp-0x5],ax
000002E7  8956FD            mov [bp-0x3],dx
000002EA  EBC8              jmp 0x2b4
000002EC  807EFA00          cmp byte [bp-0x6],0x0
000002F0  7406              jz 0x2f8
000002F2  C646FF01          mov byte [bp-0x1],0x1
000002F6  EB13              jmp 0x30b
000002F8  C446FB            les ax,word [bp-0x5]
000002FB  8CC2              mov dx,es
000002FD  C47E04            les di,word [bp+0x4]
00000300  268905            mov [es:di],ax
00000303  26895502          mov [es:di+0x2],dx
00000307  C646FF00          mov byte [bp-0x1],0x0
0000030B  EB1A              jmp 0x327
0000030D  C47E04            les di,word [bp+0x4]
00000310  26C43D            les di,word [es:di]
00000313  26C4450A          les ax,word [es:di+0xa]
00000317  8CC2              mov dx,es
00000319  C47E04            les di,word [bp+0x4]
0000031C  268905            mov [es:di],ax
0000031F  26895502          mov [es:di+0x2],dx
00000323  C646FF00          mov byte [bp-0x1],0x0
00000327  8A46FF            mov al,[bp-0x1]
0000032A  89EC              mov sp,bp
0000032C  5D                pop bp
0000032D  C20400            ret word 0x4
00000330  55                push bp
00000331  89E5              mov bp,sp
00000333  83EC04            sub sp,0x4
00000336  C47E04            les di,word [bp+0x4]
00000339  26C405            les ax,word [es:di]
0000033C  8CC2              mov dx,es
0000033E  8946FC            mov [bp-0x4],ax
00000341  8956FE            mov [bp-0x2],dx
00000344  8B46FC            mov ax,[bp-0x4]
00000347  0B46FE            or ax,[bp-0x2]
0000034A  751F              jnz 0x36b
0000034C  8D7EFC            lea di,[bp-0x4]
0000034F  16                push ss
00000350  57                push di
00000351  B80E00            mov ax,0xe
00000354  50                push ax
00000355  9A8E03561A        call word 0x1a56:word 0x38e
0000035A  C446FC            les ax,word [bp-0x4]
0000035D  8CC2              mov dx,es
0000035F  C47E04            les di,word [bp+0x4]
00000362  268905            mov [es:di],ax
00000365  26895502          mov [es:di+0x2],dx
00000369  EB3F              jmp 0x3aa
0000036B  C47EFC            les di,word [bp-0x4]
0000036E  268B450A          mov ax,[es:di+0xa]
00000372  260B450C          or ax,[es:di+0xc]
00000376  7411              jz 0x389
00000378  C47EFC            les di,word [bp-0x4]
0000037B  26C4450A          les ax,word [es:di+0xa]
0000037F  8CC2              mov dx,es
00000381  8946FC            mov [bp-0x4],ax
00000384  8956FE            mov [bp-0x2],dx
00000387  EBE2              jmp 0x36b
00000389  C47EFC            les di,word [bp-0x4]
0000038C  81C70A00          add di,0xa
00000390  06                push es
00000391  57                push di
00000392  B80E00            mov ax,0xe
00000395  50                push ax
00000396  9A8E03561A        call word 0x1a56:word 0x38e
0000039B  C47EFC            les di,word [bp-0x4]
0000039E  26C4450A          les ax,word [es:di+0xa]
000003A2  8CC2              mov dx,es
000003A4  8946FC            mov [bp-0x4],ax
000003A7  8956FE            mov [bp-0x2],dx
000003AA  C47E08            les di,word [bp+0x8]
000003AD  26C43D            les di,word [es:di]
000003B0  81C70500          add di,0x5
000003B4  06                push es
000003B5  57                push di
000003B6  9A3800F309        call word 0x9f3:word 0x38
000003BB  08C0              or al,al
000003BD  7503              jnz 0x3c2
000003BF  E9D500            jmp 0x497
000003C2  C47E08            les di,word [bp+0x8]
000003C5  26C43D            les di,word [es:di]
000003C8  06                push es
000003C9  57                push di
000003CA  9A7000F309        call word 0x9f3:word 0x70
000003CF  08C0              or al,al
000003D1  754F              jnz 0x422
000003D3  C47E08            les di,word [bp+0x8]
000003D6  26C43D            les di,word [es:di]
000003D9  06                push es
000003DA  57                push di
000003DB  C47EFC            les di,word [bp-0x4]
000003DE  06                push es
000003DF  57                push di
000003E0  B80A00            mov ax,0xa
000003E3  50                push ax
000003E4  9AC002561A        call word 0x1a56:word 0x2c0
000003E9  C47EFC            les di,word [bp-0x4]
000003EC  81C70A00          add di,0xa
000003F0  06                push es
000003F1  57                push di
000003F2  B80E00            mov ax,0xe
000003F5  50                push ax
000003F6  9A8E03561A        call word 0x1a56:word 0x38e
000003FB  C47EFC            les di,word [bp-0x4]
000003FE  26C4450A          les ax,word [es:di+0xa]
00000402  8CC2              mov dx,es
00000404  8946FC            mov [bp-0x4],ax
00000407  8956FE            mov [bp-0x2],dx
0000040A  C47E08            les di,word [bp+0x8]
0000040D  26C43D            les di,word [es:di]
00000410  26C4450A          les ax,word [es:di+0xa]
00000414  8CC2              mov dx,es
00000416  C47E08            les di,word [bp+0x8]
00000419  268905            mov [es:di],ax
0000041C  26895502          mov [es:di+0x2],dx
00000420  EBA0              jmp 0x3c2
00000422  C47E08            les di,word [bp+0x8]
00000425  26C43D            les di,word [es:di]
00000428  81C70500          add di,0x5
0000042C  06                push es
0000042D  57                push di
0000042E  9AA800F309        call word 0x9f3:word 0xa8
00000433  08C0              or al,al
00000435  7460              jz 0x497
00000437  C47E08            les di,word [bp+0x8]
0000043A  26C43D            les di,word [es:di]
0000043D  06                push es
0000043E  57                push di
0000043F  9AE600F309        call word 0x9f3:word 0xe6
00000444  08C0              or al,al
00000446  754F              jnz 0x497
00000448  C47E08            les di,word [bp+0x8]
0000044B  26C43D            les di,word [es:di]
0000044E  06                push es
0000044F  57                push di
00000450  C47EFC            les di,word [bp-0x4]
00000453  06                push es
00000454  57                push di
00000455  B80A00            mov ax,0xa
00000458  50                push ax
00000459  9AC002561A        call word 0x1a56:word 0x2c0
0000045E  C47EFC            les di,word [bp-0x4]
00000461  81C70A00          add di,0xa
00000465  06                push es
00000466  57                push di
00000467  B80E00            mov ax,0xe
0000046A  50                push ax
0000046B  9A8E03561A        call word 0x1a56:word 0x38e
00000470  C47EFC            les di,word [bp-0x4]
00000473  26C4450A          les ax,word [es:di+0xa]
00000477  8CC2              mov dx,es
00000479  8946FC            mov [bp-0x4],ax
0000047C  8956FE            mov [bp-0x2],dx
0000047F  C47E08            les di,word [bp+0x8]
00000482  26C43D            les di,word [es:di]
00000485  26C4450A          les ax,word [es:di+0xa]
00000489  8CC2              mov dx,es
0000048B  C47E08            les di,word [bp+0x8]
0000048E  268905            mov [es:di],ax
00000491  26895502          mov [es:di+0x2],dx
00000495  EBA0              jmp 0x437
00000497  C47E08            les di,word [bp+0x8]
0000049A  26C43D            les di,word [es:di]
0000049D  06                push es
0000049E  57                push di
0000049F  C47EFC            les di,word [bp-0x4]
000004A2  06                push es
000004A3  57                push di
000004A4  B80A00            mov ax,0xa
000004A7  50                push ax
000004A8  9AC002561A        call word 0x1a56:word 0x2c0
000004AD  C47EFC            les di,word [bp-0x4]
000004B0  31C0              xor ax,ax
000004B2  2689450A          mov [es:di+0xa],ax
000004B6  2689450C          mov [es:di+0xc],ax
000004BA  C47E08            les di,word [bp+0x8]
000004BD  26C43D            les di,word [es:di]
000004C0  26C4450A          les ax,word [es:di+0xa]
000004C4  8CC2              mov dx,es
000004C6  C47E08            les di,word [bp+0x8]
000004C9  268905            mov [es:di],ax
000004CC  26895502          mov [es:di+0x2],dx
000004D0  89EC              mov sp,bp
000004D2  5D                pop bp
000004D3  C20800            ret word 0x8
000004D6  55                push bp
000004D7  89E5              mov bp,sp
000004D9  83EC08            sub sp,0x8
000004DC  C4065259          les ax,word [0x5952]
000004E0  8CC2              mov dx,es
000004E2  8946FC            mov [bp-0x4],ax
000004E5  8956FE            mov [bp-0x2],dx
000004E8  31C0              xor ax,ax
000004EA  A35659            mov [0x5956],ax
000004ED  A35859            mov [0x5958],ax
000004F0  8B46FC            mov ax,[bp-0x4]
000004F3  0B46FE            or ax,[bp-0x2]
000004F6  741B              jz 0x513
000004F8  8D7EFC            lea di,[bp-0x4]
000004FB  16                push ss
000004FC  57                push di
000004FD  E800FB            call 0x0
00000500  08C0              or al,al
00000502  740D              jz 0x511
00000504  8D7EFC            lea di,[bp-0x4]
00000507  16                push ss
00000508  57                push di
00000509  BF5659            mov di,0x5956
0000050C  1E                push ds
0000050D  57                push di
0000050E  E8B1FB            call 0xc2
00000511  EBDD              jmp 0x4f0
00000513  C4065A59          les ax,word [0x595a]
00000517  8CC2              mov dx,es
00000519  8946F8            mov [bp-0x8],ax
0000051C  8956FA            mov [bp-0x6],dx
0000051F  31C0              xor ax,ax
00000521  A35E59            mov [0x595e],ax
00000524  A36059            mov [0x5960],ax
00000527  8B46F8            mov ax,[bp-0x8]
0000052A  0B46FA            or ax,[bp-0x6]
0000052D  741B              jz 0x54a
0000052F  8D7EF8            lea di,[bp-0x8]
00000532  16                push ss
00000533  57                push di
00000534  E839FD            call 0x270
00000537  08C0              or al,al
00000539  740D              jz 0x548
0000053B  8D7EF8            lea di,[bp-0x8]
0000053E  16                push ss
0000053F  57                push di
00000540  BF5E59            mov di,0x595e
00000543  1E                push ds
00000544  57                push di
00000545  E8E8FD            call 0x330
00000548  EBDD              jmp 0x527
0000054A  89EC              mov sp,bp
0000054C  5D                pop bp
0000054D  CB                retf
0000054E  55                push bp
0000054F  89E5              mov bp,sp
00000551  83EC10            sub sp,0x10
00000554  BF4C1F            mov di,0x1f4c
00000557  1E                push ds
00000558  57                push di
00000559  BF3A1F            mov di,0x1f3a
0000055C  1E                push ds
0000055D  57                push di
0000055E  B81200            mov ax,0x12
00000561  50                push ax
00000562  9AC002561A        call word 0x1a56:word 0x2c0
00000567  A1601F            mov ax,[0x1f60]
0000056A  A35E1F            mov [0x1f5e],ax
0000056D  31C0              xor ax,ax
0000056F  A3621F            mov [0x1f62],ax
00000572  BFD03A            mov di,0x3ad0
00000575  1E                push ds
00000576  57                push di
00000577  BFE236            mov di,0x36e2
0000057A  1E                push ds
0000057B  57                push di
0000057C  B8EE03            mov ax,0x3ee
0000057F  50                push ax
00000580  9AC002561A        call word 0x1a56:word 0x2c0
00000585  A15059            mov ax,[0x5950]
00000588  A34259            mov [0x5942],ax
0000058B  A13659            mov ax,[0x5936]
0000058E  8946F8            mov [bp-0x8],ax
00000591  B80100            mov ax,0x1
00000594  3B46F8            cmp ax,[bp-0x8]
00000597  7F3D              jg 0x5d6
00000599  8946FA            mov [bp-0x6],ax
0000059C  EB03              jmp 0x5a1
0000059E  FF46FA            inc word [bp-0x6]
000005A1  8B7EFA            mov di,[bp-0x6]
000005A4  D1E7              shl di,1
000005A6  D1E7              shl di,1
000005A8  C4BD661F          les di,word [di+0x1f66]
000005AC  897EF4            mov [bp-0xc],di
000005AF  8C46F6            mov word [bp-0xa],es
000005B2  C47EF4            les di,word [bp-0xc]
000005B5  268B4524          mov ax,[es:di+0x24]
000005B9  C47EF4            les di,word [bp-0xc]
000005BC  26894510          mov [es:di+0x10],ax
000005C0  C47EF4            les di,word [bp-0xc]
000005C3  268B4526          mov ax,[es:di+0x26]
000005C7  C47EF4            les di,word [bp-0xc]
000005CA  26894516          mov [es:di+0x16],ax
000005CE  8B46FA            mov ax,[bp-0x6]
000005D1  3B46F8            cmp ax,[bp-0x8]
000005D4  75C8              jnz 0x59e
000005D6  A13859            mov ax,[0x5938]
000005D9  8946F8            mov [bp-0x8],ax
000005DC  B80100            mov ax,0x1
000005DF  3B46F8            cmp ax,[bp-0x8]
000005E2  7E03              jng 0x5e7
000005E4  E99C00            jmp 0x683
000005E7  8946FA            mov [bp-0x6],ax
000005EA  EB03              jmp 0x5ef
000005EC  FF46FA            inc word [bp-0x6]
000005EF  8B7EFA            mov di,[bp-0x6]
000005F2  D1E7              shl di,1
000005F4  D1E7              shl di,1
000005F6  C4BD3A27          les di,word [di+0x273a]
000005FA  897EF4            mov [bp-0xc],di
000005FD  8C46F6            mov word [bp-0xa],es
00000600  C47EF4            les di,word [bp-0xc]
00000603  268B850C01        mov ax,[es:di+0x10c]
00000608  C47EF4            les di,word [bp-0xc]
0000060B  26894512          mov [es:di+0x12],ax
0000060F  C47EF4            les di,word [bp-0xc]
00000612  268B850A01        mov ax,[es:di+0x10a]
00000617  C47EF4            les di,word [bp-0xc]
0000061A  26894510          mov [es:di+0x10],ax
0000061E  C47EF4            les di,word [bp-0xc]
00000621  26837D1000        cmp word [es:di+0x10],0x0
00000626  7E50              jng 0x678
00000628  C47EF4            les di,word [bp-0xc]
0000062B  268B7D10          mov di,[es:di+0x10]
0000062F  D1E7              shl di,1
00000631  D1E7              shl di,1
00000633  C4BD661F          les di,word [di+0x1f66]
00000637  897EF0            mov [bp-0x10],di
0000063A  8C46F2            mov word [bp-0xe],es
0000063D  8D7EFC            lea di,[bp-0x4]
00000640  16                push ss
00000641  57                push di
00000642  B80600            mov ax,0x6
00000645  50                push ax
00000646  9A8E03561A        call word 0x1a56:word 0x38e
0000064B  8B46FA            mov ax,[bp-0x6]
0000064E  C47EFC            les di,word [bp-0x4]
00000651  268905            mov [es:di],ax
00000654  C47EF0            les di,word [bp-0x10]
00000657  26C44512          les ax,word [es:di+0x12]
0000065B  8CC2              mov dx,es
0000065D  C47EFC            les di,word [bp-0x4]
00000660  26894502          mov [es:di+0x2],ax
00000664  26895504          mov [es:di+0x4],dx
00000668  C446FC            les ax,word [bp-0x4]
0000066B  8CC2              mov dx,es
0000066D  C47EF0            les di,word [bp-0x10]
00000670  26894512          mov [es:di+0x12],ax
00000674  26895514          mov [es:di+0x14],dx
00000678  8B46FA            mov ax,[bp-0x6]
0000067B  3B46F8            cmp ax,[bp-0x8]
0000067E  7403              jz 0x683
00000680  E969FF            jmp 0x5ec
00000683  A13A59            mov ax,[0x593a]
00000686  8946F8            mov [bp-0x8],ax
00000689  B80100            mov ax,0x1
0000068C  3B46F8            cmp ax,[bp-0x8]
0000068F  7F3F              jg 0x6d0
00000691  8946FA            mov [bp-0x6],ax
00000694  EB03              jmp 0x699
00000696  FF46FA            inc word [bp-0x6]
00000699  8B7EFA            mov di,[bp-0x6]
0000069C  D1E7              shl di,1
0000069E  D1E7              shl di,1
000006A0  C4BD0E2F          les di,word [di+0x2f0e]
000006A4  897EF4            mov [bp-0xc],di
000006A7  8C46F6            mov word [bp-0xa],es
000006AA  C47EF4            les di,word [bp-0xc]
000006AD  268B853A03        mov ax,[es:di+0x33a]
000006B2  C47EF4            les di,word [bp-0xc]
000006B5  26894512          mov [es:di+0x12],ax
000006B9  C47EF4            les di,word [bp-0xc]
000006BC  268B853803        mov ax,[es:di+0x338]
000006C1  C47EF4            les di,word [bp-0xc]
000006C4  26894510          mov [es:di+0x10],ax
000006C8  8B46FA            mov ax,[bp-0x6]
000006CB  3B46F8            cmp ax,[bp-0x8]
000006CE  75C6              jnz 0x696
000006D0  0E                push cs
000006D1  E802FE            call 0x4d6
000006D4  89EC              mov sp,bp
000006D6  5D                pop bp
000006D7  CB                retf
000006D8  55                push bp
000006D9  89E5              mov bp,sp
000006DB  83EC14            sub sp,0x14
000006DE  A13659            mov ax,[0x5936]
000006E1  8946F0            mov [bp-0x10],ax
000006E4  B80100            mov ax,0x1
000006E7  3B46F0            cmp ax,[bp-0x10]
000006EA  7F65              jg 0x751
000006EC  8946FA            mov [bp-0x6],ax
000006EF  EB03              jmp 0x6f4
000006F1  FF46FA            inc word [bp-0x6]
000006F4  8B7EFA            mov di,[bp-0x6]
000006F7  D1E7              shl di,1
000006F9  D1E7              shl di,1
000006FB  C4BD661F          les di,word [di+0x1f66]
000006FF  897EEC            mov [bp-0x14],di
00000702  8C46EE            mov word [bp-0x12],es
00000705  C47EEC            les di,word [bp-0x14]
00000708  268B4512          mov ax,[es:di+0x12]
0000070C  260B4514          or ax,[es:di+0x14]
00000710  7437              jz 0x749
00000712  C47EEC            les di,word [bp-0x14]
00000715  26C44512          les ax,word [es:di+0x12]
00000719  8CC2              mov dx,es
0000071B  8946FC            mov [bp-0x4],ax
0000071E  8956FE            mov [bp-0x2],dx
00000721  C47EEC            les di,word [bp-0x14]
00000724  26C47D12          les di,word [es:di+0x12]
00000728  26C44502          les ax,word [es:di+0x2]
0000072C  8CC2              mov dx,es
0000072E  C47EEC            les di,word [bp-0x14]
00000731  26894512          mov [es:di+0x12],ax
00000735  26895514          mov [es:di+0x14],dx
00000739  8D7EFC            lea di,[bp-0x4]
0000073C  16                push ss
0000073D  57                push di
0000073E  B80600            mov ax,0x6
00000741  50                push ax
00000742  9AC003561A        call word 0x1a56:word 0x3c0
00000747  EBBC              jmp 0x705
00000749  8B46FA            mov ax,[bp-0x6]
0000074C  3B46F0            cmp ax,[bp-0x10]
0000074F  75A0              jnz 0x6f1
00000751  C746FA0100        mov word [bp-0x6],0x1
00000756  EB03              jmp 0x75b
00000758  FF46FA            inc word [bp-0x6]
0000075B  8B7EFA            mov di,[bp-0x6]
0000075E  D1E7              shl di,1
00000760  D1E7              shl di,1
00000762  81C70E59          add di,0x590e
00000766  1E                push ds
00000767  57                push di
00000768  9A67012A15        call word 0x152a:word 0x167
0000076D  837EFA09          cmp word [bp-0x6],0x9
00000771  75E5              jnz 0x758
00000773  A15659            mov ax,[0x5956]
00000776  0B065859          or ax,[0x5958]
0000077A  742D              jz 0x7a9
0000077C  C4065659          les ax,word [0x5956]
00000780  8CC2              mov dx,es
00000782  8946F6            mov [bp-0xa],ax
00000785  8956F8            mov [bp-0x8],dx
00000788  C43E5659          les di,word [0x5956]
0000078C  26C4450F          les ax,word [es:di+0xf]
00000790  8CC2              mov dx,es
00000792  A35659            mov [0x5956],ax
00000795  89165859          mov [0x5958],dx
00000799  8D7EF6            lea di,[bp-0xa]
0000079C  16                push ss
0000079D  57                push di
0000079E  B81300            mov ax,0x13
000007A1  50                push ax
000007A2  9AC003561A        call word 0x1a56:word 0x3c0
000007A7  EBCA              jmp 0x773
000007A9  A15E59            mov ax,[0x595e]
000007AC  0B066059          or ax,[0x5960]
000007B0  742D              jz 0x7df
000007B2  C4065E59          les ax,word [0x595e]
000007B6  8CC2              mov dx,es
000007B8  8946F2            mov [bp-0xe],ax
000007BB  8956F4            mov [bp-0xc],dx
000007BE  C43E5E59          les di,word [0x595e]
000007C2  26C4450A          les ax,word [es:di+0xa]
000007C6  8CC2              mov dx,es
000007C8  A35E59            mov [0x595e],ax
000007CB  89166059          mov [0x5960],dx
000007CF  8D7EF2            lea di,[bp-0xe]
000007D2  16                push ss
000007D3  57                push di
000007D4  B80E00            mov ax,0xe
000007D7  50                push ax
000007D8  9AC003561A        call word 0x1a56:word 0x3c0
000007DD  EBCA              jmp 0x7a9
000007DF  89EC              mov sp,bp
000007E1  5D                pop bp
000007E2  CB                retf
000007E3  55                push bp
000007E4  89E5              mov bp,sp
000007E6  83EC0C            sub sp,0xc
000007E9  A13659            mov ax,[0x5936]
000007EC  8946F4            mov [bp-0xc],ax
000007EF  B80100            mov ax,0x1
000007F2  3B46F4            cmp ax,[bp-0xc]
000007F5  7F26              jg 0x81d
000007F7  8946FE            mov [bp-0x2],ax
000007FA  EB03              jmp 0x7ff
000007FC  FF46FE            inc word [bp-0x2]
000007FF  8B7EFE            mov di,[bp-0x2]
00000802  D1E7              shl di,1
00000804  D1E7              shl di,1
00000806  81C7661F          add di,0x1f66
0000080A  1E                push ds
0000080B  57                push di
0000080C  B82800            mov ax,0x28
0000080F  50                push ax
00000810  9AC003561A        call word 0x1a56:word 0x3c0
00000815  8B46FE            mov ax,[bp-0x2]
00000818  3B46F4            cmp ax,[bp-0xc]
0000081B  75DF              jnz 0x7fc
0000081D  A13859            mov ax,[0x5938]
00000820  8946F4            mov [bp-0xc],ax
00000823  B80100            mov ax,0x1
00000826  3B46F4            cmp ax,[bp-0xc]
00000829  7F26              jg 0x851
0000082B  8946FE            mov [bp-0x2],ax
0000082E  EB03              jmp 0x833
00000830  FF46FE            inc word [bp-0x2]
00000833  8B7EFE            mov di,[bp-0x2]
00000836  D1E7              shl di,1
00000838  D1E7              shl di,1
0000083A  81C73A27          add di,0x273a
0000083E  1E                push ds
0000083F  57                push di
00000840  B80E01            mov ax,0x10e
00000843  50                push ax
00000844  9AC003561A        call word 0x1a56:word 0x3c0
00000849  8B46FE            mov ax,[bp-0x2]
0000084C  3B46F4            cmp ax,[bp-0xc]
0000084F  75DF              jnz 0x830
00000851  A13A59            mov ax,[0x593a]
00000854  8946F4            mov [bp-0xc],ax
00000857  B80100            mov ax,0x1
0000085A  3B46F4            cmp ax,[bp-0xc]
0000085D  7F26              jg 0x885
0000085F  8946FE            mov [bp-0x2],ax
00000862  EB03              jmp 0x867
00000864  FF46FE            inc word [bp-0x2]
00000867  8B7EFE            mov di,[bp-0x2]
0000086A  D1E7              shl di,1
0000086C  D1E7              shl di,1
0000086E  81C70E2F          add di,0x2f0e
00000872  1E                push ds
00000873  57                push di
00000874  B83C03            mov ax,0x33c
00000877  50                push ax
00000878  9AC003561A        call word 0x1a56:word 0x3c0
0000087D  8B46FE            mov ax,[bp-0x2]
00000880  3B46F4            cmp ax,[bp-0xc]
00000883  75DF              jnz 0x864
00000885  A13E59            mov ax,[0x593e]
00000888  8946F4            mov [bp-0xc],ax
0000088B  B80100            mov ax,0x1
0000088E  3B46F4            cmp ax,[bp-0xc]
00000891  7F26              jg 0x8b9
00000893  8946FE            mov [bp-0x2],ax
00000896  EB03              jmp 0x89b
00000898  FF46FE            inc word [bp-0x2]
0000089B  8B7EFE            mov di,[bp-0x2]
0000089E  D1E7              shl di,1
000008A0  D1E7              shl di,1
000008A2  81C7BA3E          add di,0x3eba
000008A6  1E                push ds
000008A7  57                push di
000008A8  B83400            mov ax,0x34
000008AB  50                push ax
000008AC  9AC003561A        call word 0x1a56:word 0x3c0
000008B1  8B46FE            mov ax,[bp-0x2]
000008B4  3B46F4            cmp ax,[bp-0xc]
000008B7  75DF              jnz 0x898
000008B9  A14059            mov ax,[0x5940]
000008BC  8946F4            mov [bp-0xc],ax
000008BF  B80100            mov ax,0x1
000008C2  3B46F4            cmp ax,[bp-0xc]
000008C5  7F26              jg 0x8ed
000008C7  8946FE            mov [bp-0x2],ax
000008CA  EB03              jmp 0x8cf
000008CC  FF46FE            inc word [bp-0x2]
000008CF  8B7EFE            mov di,[bp-0x2]
000008D2  D1E7              shl di,1
000008D4  D1E7              shl di,1
000008D6  81C78A46          add di,0x468a
000008DA  1E                push ds
000008DB  57                push di
000008DC  B84E00            mov ax,0x4e
000008DF  50                push ax
000008E0  9AC003561A        call word 0x1a56:word 0x3c0
000008E5  8B46FE            mov ax,[bp-0x2]
000008E8  3B46F4            cmp ax,[bp-0xc]
000008EB  75DF              jnz 0x8cc
000008ED  A15259            mov ax,[0x5952]
000008F0  0B065459          or ax,[0x5954]
000008F4  742D              jz 0x923
000008F6  C4065259          les ax,word [0x5952]
000008FA  8CC2              mov dx,es
000008FC  8946F6            mov [bp-0xa],ax
000008FF  8956F8            mov [bp-0x8],dx
00000902  C43E5259          les di,word [0x5952]
00000906  26C4450F          les ax,word [es:di+0xf]
0000090A  8CC2              mov dx,es
0000090C  A35259            mov [0x5952],ax
0000090F  89165459          mov [0x5954],dx
00000913  8D7EF6            lea di,[bp-0xa]
00000916  16                push ss
00000917  57                push di
00000918  B81300            mov ax,0x13
0000091B  50                push ax
0000091C  9AC003561A        call word 0x1a56:word 0x3c0
00000921  EBCA              jmp 0x8ed
00000923  A15A59            mov ax,[0x595a]
00000926  0B065C59          or ax,[0x595c]
0000092A  742D              jz 0x959
0000092C  C4065A59          les ax,word [0x595a]
00000930  8CC2              mov dx,es
00000932  8946FA            mov [bp-0x6],ax
00000935  8956FC            mov [bp-0x4],dx
00000938  C43E5A59          les di,word [0x595a]
0000093C  26C4450A          les ax,word [es:di+0xa]
00000940  8CC2              mov dx,es
00000942  A35A59            mov [0x595a],ax
00000945  89165C59          mov [0x595c],dx
00000949  8D7EFA            lea di,[bp-0x6]
0000094C  16                push ss
0000094D  57                push di
0000094E  B80E00            mov ax,0xe
00000951  50                push ax
00000952  9AC003561A        call word 0x1a56:word 0x3c0
00000957  EBCA              jmp 0x923
00000959  A14459            mov ax,[0x5944]
0000095C  8946F4            mov [bp-0xc],ax
0000095F  B80100            mov ax,0x1
00000962  3B46F4            cmp ax,[bp-0xc]
00000965  7F22              jg 0x989
00000967  8946FE            mov [bp-0x2],ax
0000096A  EB03              jmp 0x96f
0000096C  FF46FE            inc word [bp-0x2]
0000096F  8B7EFE            mov di,[bp-0x2]
00000972  D1E7              shl di,1
00000974  D1E7              shl di,1
00000976  81C75247          add di,0x4752
0000097A  1E                push ds
0000097B  57                push di
0000097C  9A67012A15        call word 0x152a:word 0x167
00000981  8B46FE            mov ax,[bp-0x2]
00000984  3B46F4            cmp ax,[bp-0xc]
00000987  75E3              jnz 0x96c
00000989  9ACD04450D        call word 0xd45:word 0x4cd
0000098E  89EC              mov sp,bp
00000990  5D                pop bp
00000991  CB                retf
00000992  0000              add [bx+si],al
00000994  0000              add [bx+si],al
00000996  0000              add [bx+si],al
00000998  0000              add [bx+si],al
0000099A  0000              add [bx+si],al
0000099C  0000              add [bx+si],al
0000099E  0000              add [bx+si],al
