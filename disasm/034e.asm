00000000  55                push bp
00000001  89E5              mov bp,sp
00000003  81EC8000          sub sp,0x80
00000007  8D469E            lea ax,[bp-0x62]
0000000A  8CD2              mov dx,ss
0000000C  52                push dx
0000000D  50                push ax
0000000E  8D46BE            lea ax,[bp-0x42]
00000011  8CD2              mov dx,ss
00000013  52                push dx
00000014  50                push ax
00000015  B83C00            mov ax,0x3c
00000018  50                push ax
00000019  B80800            mov ax,0x8
0000001C  50                push ax
0000001D  B8D800            mov ax,0xd8
00000020  50                push ax
00000021  B82C00            mov ax,0x2c
00000024  50                push ax
00000025  B80100            mov ax,0x1
00000028  50                push ax
00000029  B80F00            mov ax,0xf
0000002C  50                push ax
0000002D  B80100            mov ax,0x1
00000030  50                push ax
00000031  31C0              xor ax,ax
00000033  50                push ax
00000034  9A6E1A210A        call word 0xa21:word 0x1a6e
00000039  8D4682            lea ax,[bp-0x7e]
0000003C  8CD2              mov dx,ss
0000003E  52                push dx
0000003F  50                push ax
00000040  8D4690            lea ax,[bp-0x70]
00000043  8CD2              mov dx,ss
00000045  52                push dx
00000046  50                push ax
00000047  B80800            mov ax,0x8
0000004A  50                push ax
0000004B  8B46A8            mov ax,[bp-0x58]
0000004E  99                cwd
0000004F  B90200            mov cx,0x2
00000052  F7F9              idiv cx
00000054  48                dec ax
00000055  50                push ax
00000056  B80F00            mov ax,0xf
00000059  50                push ax
0000005A  B8FA18            mov ax,0x18fa
0000005D  8CDA              mov dx,ds
0000005F  52                push dx
00000060  50                push ax
00000061  9AA71B210A        call word 0xa21:word 0x1ba7
00000066  8D4690            lea ax,[bp-0x70]
00000069  8CD2              mov dx,ss
0000006B  52                push dx
0000006C  50                push ax
0000006D  31C0              xor ax,ax
0000006F  31D2              xor dx,dx
00000071  52                push dx
00000072  50                push ax
00000073  B80800            mov ax,0x8
00000076  50                push ax
00000077  8B46A8            mov ax,[bp-0x58]
0000007A  99                cwd
0000007B  B90200            mov cx,0x2
0000007E  F7F9              idiv cx
00000080  050F00            add ax,0xf
00000083  50                push ax
00000084  B80F00            mov ax,0xf
00000087  50                push ax
00000088  B81419            mov ax,0x1914
0000008B  8CDA              mov dx,ds
0000008D  52                push dx
0000008E  50                push ax
0000008F  9AA71B210A        call word 0xa21:word 0x1ba7
00000094  8D4682            lea ax,[bp-0x7e]
00000097  8CD2              mov dx,ss
00000099  8946B0            mov [bp-0x50],ax
0000009C  8956B2            mov [bp-0x4e],dx
0000009F  8D46DE            lea ax,[bp-0x22]
000000A2  8CD2              mov dx,ss
000000A4  52                push dx
000000A5  50                push ax
000000A6  FF7606            push word [bp+0x6]
000000A9  FF7604            push word [bp+0x4]
000000AC  B81E01            mov ax,0x11e
000000AF  50                push ax
000000B0  B83C00            mov ax,0x3c
000000B3  50                push ax
000000B4  B80100            mov ax,0x1
000000B7  50                push ax
000000B8  B80F00            mov ax,0xf
000000BB  50                push ax
000000BC  B80900            mov ax,0x9
000000BF  50                push ax
000000C0  8D469E            lea ax,[bp-0x62]
000000C3  8CD2              mov dx,ss
000000C5  52                push dx
000000C6  50                push ax
000000C7  9A091B210A        call word 0xa21:word 0x1b09
000000CC  BF271C            mov di,0x1c27
000000CF  1E                push ds
000000D0  57                push di
000000D1  8D7EBE            lea di,[bp-0x42]
000000D4  16                push ss
000000D5  57                push di
000000D6  B82000            mov ax,0x20
000000D9  50                push ax
000000DA  9AC002561A        call word 0x1a56:word 0x2c0
000000DF  8B46E4            mov ax,[bp-0x1c]
000000E2  2D2100            sub ax,0x21
000000E5  8946C4            mov [bp-0x3c],ax
000000E8  B8D81B            mov ax,0x1bd8
000000EB  8CDA              mov dx,ds
000000ED  52                push dx
000000EE  50                push ax
000000EF  8D46DE            lea ax,[bp-0x22]
000000F2  8CD2              mov dx,ss
000000F4  52                push dx
000000F5  50                push ax
000000F6  9A3916210A        call word 0xa21:word 0x1639
000000FB  894680            mov [bp-0x80],ax
000000FE  89EC              mov sp,bp
00000100  5D                pop bp
00000101  C20400            ret word 0x4
00000104  194665            sbb [bp+0x65],ax
00000107  696C207665        imul bp,[si+0x20],0x6576
0000010C  642086706E        and [fs:bp+0x6e70],al
00000111  696E672061        imul bp,[bp+0x67],0x6120
00000116  7620              jna 0x138
00000118  66696C656E201246  imul ebp,[si+0x65],0x4612206e
00000120  65696C207665      imul bp,[gs:si+0x20],0x6576
00000126  642086706E        and [fs:bp+0x6e70],al
0000012B  696E672061        imul bp,[bp+0x67],0x6120
00000130  7606              jna 0x138
00000132  66696C656E200441  imul ebp,[si+0x65],0x4104206e
0000013A  44                inc sp
0000013B  56                push si
0000013C  41                inc cx
0000013D  0441              add al,0x41
0000013F  44                inc sp
00000140  56                push si
00000141  42                inc dx
00000142  2A4669            sub al,[bp+0x69]
00000145  6C                insb
00000146  656E              gs outsb
00000148  206572            and [di+0x72],ah
0000014B  20696B            and [bx+di+0x6b],ch
0000014E  6B65206C          imul sp,[di+0x20],0x6c
00000152  61                popa
00000153  67657420          gs a32 jz 0x177
00000157  69206B6F          imul sp,[bx+si],0x6f6b
0000015B  6E                outsb
0000015C  7472              jz 0x1d0
0000015E  6F                outsw
0000015F  6C                insb
00000160  6C                insb
00000161  657274            gs jc 0x1d8
00000164  207665            and [bp+0x65],dh
00000167  7273              jc 0x1dc
00000169  6A6F              push word 0x6f
0000016B  6E                outsb
0000016C  2E0F47616C        cmova sp,[cs:bx+di+0x6c]
00000171  7420              jz 0x193
00000173  66696C666F726D61  imul ebp,[si+0x66],0x616d726f
0000017B  742E              jz 0x1ab
0000017D  06                push es
0000017E  46                inc si
0000017F  696C656E20        imul bp,[si+0x65],0x206e
00000184  0420              add al,0x20
00000186  686172            push word 0x7261
00000189  12696B            adc ch,[bx+di+0x6b]
0000018C  6B652072          imul sp,[di+0x20],0x72
00000190  696B696720        imul bp,[bp+di+0x69],0x2067
00000195  666F              outsd
00000197  726D              jc 0x206
00000199  61                popa
0000019A  742E              jz 0x1ca
0000019C  1B4665            sbb ax,[bp+0x65]
0000019F  696C20756E        imul bp,[si+0x20],0x6e75
000001A4  64657220          gs jc 0x1c8
000001A8  6C                insb
000001A9  657369            gs jnc 0x215
000001AC  6E                outsb
000001AD  67206176          and [ecx+0x76],ah
000001B1  206669            and [bp+0x69],ah
000001B4  6C                insb
000001B5  656E              gs outsb
000001B7  2004              and [si],al
000001B9  2E7666            {pn} jna 0x222
000001BC  69042E6F          imul ax,[si],0x6f2e
000001C0  626955            bound bp,[bx+di+0x55]
000001C3  89E5              mov bp,sp
000001C5  81ECA50D          sub sp,0xda5
000001C9  C47E06            les di,word [bp+0x6]
000001CC  06                push es
000001CD  57                push di
000001CE  8DBEFFFE          lea di,[bp-0x101]
000001D2  16                push ss
000001D3  57                push di
000001D4  B8FF00            mov ax,0xff
000001D7  50                push ax
000001D8  9AAD06561A        call word 0x1a56:word 0x6ad
000001DD  8DBE32F6          lea di,[bp-0x9ce]
000001E1  16                push ss
000001E2  57                push di
000001E3  8DBE5BF3          lea di,[bp-0xca5]
000001E7  16                push ss
000001E8  57                push di
000001E9  BF141E            mov di,0x1e14
000001EC  1E                push ds
000001ED  57                push di
000001EE  9A9306561A        call word 0x1a56:word 0x693
000001F3  8DBEFFFE          lea di,[bp-0x101]
000001F7  16                push ss
000001F8  57                push di
000001F9  9A2007561A        call word 0x1a56:word 0x720
000001FE  9AD6002518        call word 0x1825:word 0xd6
00000203  9A6D02561A        call word 0x1a56:word 0x26d
00000208  898621F6          mov [bp-0x9df],ax
0000020C  83BE21F600        cmp word [bp-0x9df],0x0
00000211  7503              jnz 0x216
00000213  E98B00            jmp 0x2a1
00000216  803E811E00        cmp byte [0x1e81],0x0
0000021B  7436              jz 0x253
0000021D  BF1E8E            mov di,0x8e1e
00000220  1E                push ds
00000221  57                push di
00000222  8DBE5BF3          lea di,[bp-0xca5]
00000226  16                push ss
00000227  57                push di
00000228  BF0401            mov di,0x104
0000022B  0E                push cs
0000022C  57                push di
0000022D  9A9306561A        call word 0x1a56:word 0x693
00000232  8DBEFFFE          lea di,[bp-0x101]
00000236  16                push ss
00000237  57                push di
00000238  9A2007561A        call word 0x1a56:word 0x720
0000023D  31C0              xor ax,ax
0000023F  50                push ax
00000240  9AF717561A        call word 0x1a56:word 0x17f7
00000245  9A3C17561A        call word 0x1a56:word 0x173c
0000024A  31C0              xor ax,ax
0000024C  9AF301561A        call word 0x1a56:word 0x1f3
00000251  EB4E              jmp 0x2a1
00000253  BF1E01            mov di,0x11e
00000256  0E                push cs
00000257  57                push di
00000258  BFFA18            mov di,0x18fa
0000025B  1E                push ds
0000025C  57                push di
0000025D  B81900            mov ax,0x19
00000260  50                push ax
00000261  9AAD06561A        call word 0x1a56:word 0x6ad
00000266  8DBE5BF3          lea di,[bp-0xca5]
0000026A  16                push ss
0000026B  57                push di
0000026C  BF3101            mov di,0x131
0000026F  0E                push cs
00000270  57                push di
00000271  9A9306561A        call word 0x1a56:word 0x693
00000276  8DBEFFFE          lea di,[bp-0x101]
0000027A  16                push ss
0000027B  57                push di
0000027C  9A2007561A        call word 0x1a56:word 0x720
00000281  BF1419            mov di,0x1914
00000284  1E                push ds
00000285  57                push di
00000286  B81900            mov ax,0x19
00000289  50                push ax
0000028A  9AAD06561A        call word 0x1a56:word 0x6ad
0000028F  B86400            mov ax,0x64
00000292  50                push ax
00000293  B86400            mov ax,0x64
00000296  50                push ax
00000297  E866FD            call 0x0
0000029A  C646FF00          mov byte [bp-0x1],0x0
0000029E  E98907            jmp 0xa2a
000002A1  8DBE32F6          lea di,[bp-0x9ce]
000002A5  16                push ss
000002A6  57                push di
000002A7  8DBE23F6          lea di,[bp-0x9dd]
000002AB  16                push ss
000002AC  57                push di
000002AD  B80500            mov ax,0x5
000002B0  50                push ax
000002B1  9A72032518        call word 0x1825:word 0x372
000002B6  8DBE23F6          lea di,[bp-0x9dd]
000002BA  16                push ss
000002BB  57                push di
000002BC  BF3801            mov di,0x138
000002BF  0E                push cs
000002C0  57                push di
000002C1  9A8307561A        call word 0x1a56:word 0x783
000002C6  7503              jnz 0x2cb
000002C8  E9C700            jmp 0x392
000002CB  803E811E00        cmp byte [0x1e81],0x0
000002D0  7456              jz 0x328
000002D2  8DBE23F6          lea di,[bp-0x9dd]
000002D6  16                push ss
000002D7  57                push di
000002D8  BF3D01            mov di,0x13d
000002DB  0E                push cs
000002DC  57                push di
000002DD  9A8307561A        call word 0x1a56:word 0x783
000002E2  7519              jnz 0x2fd
000002E4  BF1E8E            mov di,0x8e1e
000002E7  1E                push ds
000002E8  57                push di
000002E9  BF4201            mov di,0x142
000002EC  0E                push cs
000002ED  57                push di
000002EE  31C0              xor ax,ax
000002F0  50                push ax
000002F1  9AF717561A        call word 0x1a56:word 0x17f7
000002F6  9A3C17561A        call word 0x1a56:word 0x173c
000002FB  EB17              jmp 0x314
000002FD  BF1E8E            mov di,0x8e1e
00000300  1E                push ds
00000301  57                push di
00000302  BF6D01            mov di,0x16d
00000305  0E                push cs
00000306  57                push di
00000307  31C0              xor ax,ax
00000309  50                push ax
0000030A  9AF717561A        call word 0x1a56:word 0x17f7
0000030F  9A3C17561A        call word 0x1a56:word 0x173c
00000314  8DBE32F6          lea di,[bp-0x9ce]
00000318  16                push ss
00000319  57                push di
0000031A  9A7A012518        call word 0x1825:word 0x17a
0000031F  31C0              xor ax,ax
00000321  9AF301561A        call word 0x1a56:word 0x1f3
00000326  EB6A              jmp 0x392
00000328  8DBE23F6          lea di,[bp-0x9dd]
0000032C  16                push ss
0000032D  57                push di
0000032E  BF3D01            mov di,0x13d
00000331  0E                push cs
00000332  57                push di
00000333  9A8307561A        call word 0x1a56:word 0x783
00000338  7458              jz 0x392
0000033A  8DBE5BF3          lea di,[bp-0xca5]
0000033E  16                push ss
0000033F  57                push di
00000340  BF7D01            mov di,0x17d
00000343  0E                push cs
00000344  57                push di
00000345  9A9306561A        call word 0x1a56:word 0x693
0000034A  8DBEFFFE          lea di,[bp-0x101]
0000034E  16                push ss
0000034F  57                push di
00000350  9A2007561A        call word 0x1a56:word 0x720
00000355  BF8401            mov di,0x184
00000358  0E                push cs
00000359  57                push di
0000035A  9A2007561A        call word 0x1a56:word 0x720
0000035F  BFFA18            mov di,0x18fa
00000362  1E                push ds
00000363  57                push di
00000364  B81900            mov ax,0x19
00000367  50                push ax
00000368  9AAD06561A        call word 0x1a56:word 0x6ad
0000036D  BF8901            mov di,0x189
00000370  0E                push cs
00000371  57                push di
00000372  BF1419            mov di,0x1914
00000375  1E                push ds
00000376  57                push di
00000377  B81900            mov ax,0x19
0000037A  50                push ax
0000037B  9AAD06561A        call word 0x1a56:word 0x6ad
00000380  B86400            mov ax,0x64
00000383  50                push ax
00000384  B86400            mov ax,0x64
00000387  50                push ax
00000388  E875FC            call 0x0
0000038B  C646FF00          mov byte [bp-0x1],0x0
0000038F  E99806            jmp 0xa2a
00000392  BF0208            mov di,0x802
00000395  1E                push ds
00000396  57                push di
00000397  9AA008E10B        call word 0xbe1:word 0x8a0
0000039C  8DBE32F6          lea di,[bp-0x9ce]
000003A0  16                push ss
000003A1  57                push di
000003A2  BF4C1F            mov di,0x1f4c
000003A5  1E                push ds
000003A6  57                push di
000003A7  B81200            mov ax,0x12
000003AA  50                push ax
000003AB  9A72032518        call word 0x1825:word 0x372
000003B0  8DBE32F6          lea di,[bp-0x9ce]
000003B4  16                push ss
000003B5  57                push di
000003B6  BF601F            mov di,0x1f60
000003B9  1E                push ds
000003BA  57                push di
000003BB  B80200            mov ax,0x2
000003BE  50                push ax
000003BF  9A72032518        call word 0x1825:word 0x372
000003C4  8DBE32F6          lea di,[bp-0x9ce]
000003C8  16                push ss
000003C9  57                push di
000003CA  BF641F            mov di,0x1f64
000003CD  1E                push ds
000003CE  57                push di
000003CF  B80200            mov ax,0x2
000003D2  50                push ax
000003D3  9A72032518        call word 0x1825:word 0x372
000003D8  8DBE32F6          lea di,[bp-0x9ce]
000003DC  16                push ss
000003DD  57                push di
000003DE  BF6E1E            mov di,0x1e6e
000003E1  1E                push ds
000003E2  57                push di
000003E3  B81300            mov ax,0x13
000003E6  50                push ax
000003E7  9A72032518        call word 0x1825:word 0x372
000003EC  8DBE32F6          lea di,[bp-0x9ce]
000003F0  16                push ss
000003F1  57                push di
000003F2  BF821E            mov di,0x1e82
000003F5  1E                push ds
000003F6  57                push di
000003F7  B8B800            mov ax,0xb8
000003FA  50                push ax
000003FB  9A72032518        call word 0x1825:word 0x372
00000400  8DBE32F6          lea di,[bp-0x9ce]
00000404  16                push ss
00000405  57                push di
00000406  BF3659            mov di,0x5936
00000409  1E                push ds
0000040A  57                push di
0000040B  B80200            mov ax,0x2
0000040E  50                push ax
0000040F  9A72032518        call word 0x1825:word 0x372
00000414  A13659            mov ax,[0x5936]
00000417  898659F4          mov [bp-0xba7],ax
0000041B  B80100            mov ax,0x1
0000041E  3B8659F4          cmp ax,[bp-0xba7]
00000422  7E03              jng 0x427
00000424  E92301            jmp 0x54a
00000427  898630F6          mov [bp-0x9d0],ax
0000042B  EB04              jmp 0x431
0000042D  FF8630F6          inc word [bp-0x9d0]
00000431  8BBE30F6          mov di,[bp-0x9d0]
00000435  D1E7              shl di,1
00000437  D1E7              shl di,1
00000439  81C7661F          add di,0x1f66
0000043D  1E                push ds
0000043E  57                push di
0000043F  B82800            mov ax,0x28
00000442  50                push ax
00000443  9A8E03561A        call word 0x1a56:word 0x38e
00000448  8DBE32F6          lea di,[bp-0x9ce]
0000044C  16                push ss
0000044D  57                push di
0000044E  8DBE5BF4          lea di,[bp-0xba5]
00000452  16                push ss
00000453  57                push di
00000454  B8C601            mov ax,0x1c6
00000457  50                push ax
00000458  9A72032518        call word 0x1825:word 0x372
0000045D  8BBE30F6          mov di,[bp-0x9d0]
00000461  D1E7              shl di,1
00000463  D1E7              shl di,1
00000465  C4BD661F          les di,word [di+0x1f66]
00000469  81C71B00          add di,0x1b
0000046D  06                push es
0000046E  57                push di
0000046F  B8A701            mov ax,0x1a7
00000472  50                push ax
00000473  9AD703450D        call word 0xd45:word 0x3d7
00000478  08C0              or al,al
0000047A  7507              jnz 0x483
0000047C  31C0              xor ax,ax
0000047E  9AF301561A        call word 0x1a56:word 0x1f3
00000483  8DBE76F4          lea di,[bp-0xb8a]
00000487  16                push ss
00000488  57                push di
00000489  8BBE30F6          mov di,[bp-0x9d0]
0000048D  D1E7              shl di,1
0000048F  D1E7              shl di,1
00000491  C4BD661F          les di,word [di+0x1f66]
00000495  26C47D20          les di,word [es:di+0x20]
00000499  06                push es
0000049A  57                push di
0000049B  B8A701            mov ax,0x1a7
0000049E  50                push ax
0000049F  9A641B561A        call word 0x1a56:word 0x1b64
000004A4  8BBE30F6          mov di,[bp-0x9d0]
000004A8  D1E7              shl di,1
000004AA  D1E7              shl di,1
000004AC  C4BD661F          les di,word [di+0x1f66]
000004B0  89BE55F4          mov [bp-0xbab],di
000004B4  8C8657F4          mov word [bp-0xba9],es
000004B8  8DBE5BF4          lea di,[bp-0xba5]
000004BC  16                push ss
000004BD  57                push di
000004BE  C4BE55F4          les di,word [bp-0xbab]
000004C2  06                push es
000004C3  57                push di
000004C4  B80F00            mov ax,0xf
000004C7  50                push ax
000004C8  9AAD06561A        call word 0x1a56:word 0x6ad
000004CD  8B866BF4          mov ax,[bp-0xb95]
000004D1  C4BE55F4          les di,word [bp-0xbab]
000004D5  26894510          mov [es:di+0x10],ax
000004D9  C4866DF4          les ax,word [bp-0xb93]
000004DD  8CC2              mov dx,es
000004DF  C4BE55F4          les di,word [bp-0xbab]
000004E3  26894512          mov [es:di+0x12],ax
000004E7  26895514          mov [es:di+0x14],dx
000004EB  8B8671F4          mov ax,[bp-0xb8f]
000004EF  C4BE55F4          les di,word [bp-0xbab]
000004F3  26894516          mov [es:di+0x16],ax
000004F7  8A8673F4          mov al,[bp-0xb8d]
000004FB  C4BE55F4          les di,word [bp-0xbab]
000004FF  26884518          mov [es:di+0x18],al
00000503  8B8674F4          mov ax,[bp-0xb8c]
00000507  C4BE55F4          les di,word [bp-0xbab]
0000050B  26894519          mov [es:di+0x19],ax
0000050F  8B861DF6          mov ax,[bp-0x9e3]
00000513  C4BE55F4          les di,word [bp-0xbab]
00000517  26894524          mov [es:di+0x24],ax
0000051B  8B861FF6          mov ax,[bp-0x9e1]
0000051F  C4BE55F4          les di,word [bp-0xbab]
00000523  26894526          mov [es:di+0x26],ax
00000527  8BBE30F6          mov di,[bp-0x9d0]
0000052B  D1E7              shl di,1
0000052D  D1E7              shl di,1
0000052F  C4BD661F          les di,word [di+0x1f66]
00000533  31C0              xor ax,ax
00000535  26894512          mov [es:di+0x12],ax
00000539  26894514          mov [es:di+0x14],ax
0000053D  8B8630F6          mov ax,[bp-0x9d0]
00000541  3B8659F4          cmp ax,[bp-0xba7]
00000545  7403              jz 0x54a
00000547  E9E3FE            jmp 0x42d
0000054A  8DBE32F6          lea di,[bp-0x9ce]
0000054E  16                push ss
0000054F  57                push di
00000550  BF3859            mov di,0x5938
00000553  1E                push ds
00000554  57                push di
00000555  B80200            mov ax,0x2
00000558  50                push ax
00000559  9A72032518        call word 0x1825:word 0x372
0000055E  A13859            mov ax,[0x5938]
00000561  898659F4          mov [bp-0xba7],ax
00000565  B80100            mov ax,0x1
00000568  3B8659F4          cmp ax,[bp-0xba7]
0000056C  7F48              jg 0x5b6
0000056E  898630F6          mov [bp-0x9d0],ax
00000572  EB04              jmp 0x578
00000574  FF8630F6          inc word [bp-0x9d0]
00000578  8BBE30F6          mov di,[bp-0x9d0]
0000057C  D1E7              shl di,1
0000057E  D1E7              shl di,1
00000580  81C73A27          add di,0x273a
00000584  1E                push ds
00000585  57                push di
00000586  B80E01            mov ax,0x10e
00000589  50                push ax
0000058A  9A8E03561A        call word 0x1a56:word 0x38e
0000058F  8DBE32F6          lea di,[bp-0x9ce]
00000593  16                push ss
00000594  57                push di
00000595  8BBE30F6          mov di,[bp-0x9d0]
00000599  D1E7              shl di,1
0000059B  D1E7              shl di,1
0000059D  C4BD3A27          les di,word [di+0x273a]
000005A1  06                push es
000005A2  57                push di
000005A3  B80E01            mov ax,0x10e
000005A6  50                push ax
000005A7  9A72032518        call word 0x1825:word 0x372
000005AC  8B8630F6          mov ax,[bp-0x9d0]
000005B0  3B8659F4          cmp ax,[bp-0xba7]
000005B4  75BE              jnz 0x574
000005B6  8DBE32F6          lea di,[bp-0x9ce]
000005BA  16                push ss
000005BB  57                push di
000005BC  BF3A59            mov di,0x593a
000005BF  1E                push ds
000005C0  57                push di
000005C1  B80200            mov ax,0x2
000005C4  50                push ax
000005C5  9A72032518        call word 0x1825:word 0x372
000005CA  A13A59            mov ax,[0x593a]
000005CD  898659F4          mov [bp-0xba7],ax
000005D1  B80100            mov ax,0x1
000005D4  3B8659F4          cmp ax,[bp-0xba7]
000005D8  7F48              jg 0x622
000005DA  898630F6          mov [bp-0x9d0],ax
000005DE  EB04              jmp 0x5e4
000005E0  FF8630F6          inc word [bp-0x9d0]
000005E4  8BBE30F6          mov di,[bp-0x9d0]
000005E8  D1E7              shl di,1
000005EA  D1E7              shl di,1
000005EC  81C70E2F          add di,0x2f0e
000005F0  1E                push ds
000005F1  57                push di
000005F2  B83C03            mov ax,0x33c
000005F5  50                push ax
000005F6  9A8E03561A        call word 0x1a56:word 0x38e
000005FB  8DBE32F6          lea di,[bp-0x9ce]
000005FF  16                push ss
00000600  57                push di
00000601  8BBE30F6          mov di,[bp-0x9d0]
00000605  D1E7              shl di,1
00000607  D1E7              shl di,1
00000609  C4BD0E2F          les di,word [di+0x2f0e]
0000060D  06                push es
0000060E  57                push di
0000060F  B83C03            mov ax,0x33c
00000612  50                push ax
00000613  9A72032518        call word 0x1825:word 0x372
00000618  8B8630F6          mov ax,[bp-0x9d0]
0000061C  3B8659F4          cmp ax,[bp-0xba7]
00000620  75BE              jnz 0x5e0
00000622  8DBE32F6          lea di,[bp-0x9ce]
00000626  16                push ss
00000627  57                push di
00000628  BF3C59            mov di,0x593c
0000062B  1E                push ds
0000062C  57                push di
0000062D  B80200            mov ax,0x2
00000630  50                push ax
00000631  9A72032518        call word 0x1825:word 0x372
00000636  A13C59            mov ax,[0x593c]
00000639  898659F4          mov [bp-0xba7],ax
0000063D  B80100            mov ax,0x1
00000640  3B8659F4          cmp ax,[bp-0xba7]
00000644  7F2F              jg 0x675
00000646  898630F6          mov [bp-0x9d0],ax
0000064A  EB04              jmp 0x650
0000064C  FF8630F6          inc word [bp-0x9d0]
00000650  8DBE32F6          lea di,[bp-0x9ce]
00000654  16                push ss
00000655  57                push di
00000656  8BBE30F6          mov di,[bp-0x9d0]
0000065A  D1E7              shl di,1
0000065C  81C7D43A          add di,0x3ad4
00000660  1E                push ds
00000661  57                push di
00000662  B80200            mov ax,0x2
00000665  50                push ax
00000666  9A72032518        call word 0x1825:word 0x372
0000066B  8B8630F6          mov ax,[bp-0x9d0]
0000066F  3B8659F4          cmp ax,[bp-0xba7]
00000673  75D7              jnz 0x64c
00000675  8DBE32F6          lea di,[bp-0x9ce]
00000679  16                push ss
0000067A  57                push di
0000067B  BF3E59            mov di,0x593e
0000067E  1E                push ds
0000067F  57                push di
00000680  B80200            mov ax,0x2
00000683  50                push ax
00000684  9A72032518        call word 0x1825:word 0x372
00000689  A13E59            mov ax,[0x593e]
0000068C  898659F4          mov [bp-0xba7],ax
00000690  B80100            mov ax,0x1
00000693  3B8659F4          cmp ax,[bp-0xba7]
00000697  7F48              jg 0x6e1
00000699  898630F6          mov [bp-0x9d0],ax
0000069D  EB04              jmp 0x6a3
0000069F  FF8630F6          inc word [bp-0x9d0]
000006A3  8BBE30F6          mov di,[bp-0x9d0]
000006A7  D1E7              shl di,1
000006A9  D1E7              shl di,1
000006AB  81C7BA3E          add di,0x3eba
000006AF  1E                push ds
000006B0  57                push di
000006B1  B83400            mov ax,0x34
000006B4  50                push ax
000006B5  9A8E03561A        call word 0x1a56:word 0x38e
000006BA  8DBE32F6          lea di,[bp-0x9ce]
000006BE  16                push ss
000006BF  57                push di
000006C0  8BBE30F6          mov di,[bp-0x9d0]
000006C4  D1E7              shl di,1
000006C6  D1E7              shl di,1
000006C8  C4BDBA3E          les di,word [di+0x3eba]
000006CC  06                push es
000006CD  57                push di
000006CE  B83400            mov ax,0x34
000006D1  50                push ax
000006D2  9A72032518        call word 0x1825:word 0x372
000006D7  8B8630F6          mov ax,[bp-0x9d0]
000006DB  3B8659F4          cmp ax,[bp-0xba7]
000006DF  75BE              jnz 0x69f
000006E1  8DBE32F6          lea di,[bp-0x9ce]
000006E5  16                push ss
000006E6  57                push di
000006E7  BF4059            mov di,0x5940
000006EA  1E                push ds
000006EB  57                push di
000006EC  B80200            mov ax,0x2
000006EF  50                push ax
000006F0  9A72032518        call word 0x1825:word 0x372
000006F5  A14059            mov ax,[0x5940]
000006F8  898659F4          mov [bp-0xba7],ax
000006FC  B80100            mov ax,0x1
000006FF  3B8659F4          cmp ax,[bp-0xba7]
00000703  7F48              jg 0x74d
00000705  898630F6          mov [bp-0x9d0],ax
00000709  EB04              jmp 0x70f
0000070B  FF8630F6          inc word [bp-0x9d0]
0000070F  8BBE30F6          mov di,[bp-0x9d0]
00000713  D1E7              shl di,1
00000715  D1E7              shl di,1
00000717  81C78A46          add di,0x468a
0000071B  1E                push ds
0000071C  57                push di
0000071D  B84E00            mov ax,0x4e
00000720  50                push ax
00000721  9A8E03561A        call word 0x1a56:word 0x38e
00000726  8DBE32F6          lea di,[bp-0x9ce]
0000072A  16                push ss
0000072B  57                push di
0000072C  8BBE30F6          mov di,[bp-0x9d0]
00000730  D1E7              shl di,1
00000732  D1E7              shl di,1
00000734  C4BD8A46          les di,word [di+0x468a]
00000738  06                push es
00000739  57                push di
0000073A  B84E00            mov ax,0x4e
0000073D  50                push ax
0000073E  9A72032518        call word 0x1825:word 0x372
00000743  8B8630F6          mov ax,[bp-0x9d0]
00000747  3B8659F4          cmp ax,[bp-0xba7]
0000074B  75BE              jnz 0x70b
0000074D  8DBE32F6          lea di,[bp-0x9ce]
00000751  16                push ss
00000752  57                push di
00000753  BF5059            mov di,0x5950
00000756  1E                push ds
00000757  57                push di
00000758  B80200            mov ax,0x2
0000075B  50                push ax
0000075C  9A72032518        call word 0x1825:word 0x372
00000761  8DBE32F6          lea di,[bp-0x9ce]
00000765  16                push ss
00000766  57                push di
00000767  BF4C59            mov di,0x594c
0000076A  1E                push ds
0000076B  57                push di
0000076C  B80200            mov ax,0x2
0000076F  50                push ax
00000770  9A72032518        call word 0x1825:word 0x372
00000775  BF5259            mov di,0x5952
00000778  1E                push ds
00000779  57                push di
0000077A  B81300            mov ax,0x13
0000077D  50                push ax
0000077E  9A8E03561A        call word 0x1a56:word 0x38e
00000783  C4065259          les ax,word [0x5952]
00000787  8CC2              mov dx,es
00000789  898628F6          mov [bp-0x9d8],ax
0000078D  89962AF6          mov [bp-0x9d6],dx
00000791  A14C59            mov ax,[0x594c]
00000794  898659F4          mov [bp-0xba7],ax
00000798  B80100            mov ax,0x1
0000079B  3B8659F4          cmp ax,[bp-0xba7]
0000079F  7F52              jg 0x7f3
000007A1  898630F6          mov [bp-0x9d0],ax
000007A5  EB04              jmp 0x7ab
000007A7  FF8630F6          inc word [bp-0x9d0]
000007AB  C4BE28F6          les di,word [bp-0x9d8]
000007AF  81C70F00          add di,0xf
000007B3  06                push es
000007B4  57                push di
000007B5  B81300            mov ax,0x13
000007B8  50                push ax
000007B9  9A8E03561A        call word 0x1a56:word 0x38e
000007BE  8DBE32F6          lea di,[bp-0x9ce]
000007C2  16                push ss
000007C3  57                push di
000007C4  C4BE28F6          les di,word [bp-0x9d8]
000007C8  26C47D0F          les di,word [es:di+0xf]
000007CC  06                push es
000007CD  57                push di
000007CE  B80F00            mov ax,0xf
000007D1  50                push ax
000007D2  9A72032518        call word 0x1825:word 0x372
000007D7  C4BE28F6          les di,word [bp-0x9d8]
000007DB  26C4450F          les ax,word [es:di+0xf]
000007DF  8CC2              mov dx,es
000007E1  898628F6          mov [bp-0x9d8],ax
000007E5  89962AF6          mov [bp-0x9d6],dx
000007E9  8B8630F6          mov ax,[bp-0x9d0]
000007ED  3B8659F4          cmp ax,[bp-0xba7]
000007F1  75B4              jnz 0x7a7
000007F3  C4BE28F6          les di,word [bp-0x9d8]
000007F7  31C0              xor ax,ax
000007F9  2689450F          mov [es:di+0xf],ax
000007FD  26894511          mov [es:di+0x11],ax
00000801  C4065259          les ax,word [0x5952]
00000805  8CC2              mov dx,es
00000807  898628F6          mov [bp-0x9d8],ax
0000080B  89962AF6          mov [bp-0x9d6],dx
0000080F  C43E5259          les di,word [0x5952]
00000813  26C4450F          les ax,word [es:di+0xf]
00000817  8CC2              mov dx,es
00000819  A35259            mov [0x5952],ax
0000081C  89165459          mov [0x5954],dx
00000820  8DBE28F6          lea di,[bp-0x9d8]
00000824  16                push ss
00000825  57                push di
00000826  B81300            mov ax,0x13
00000829  50                push ax
0000082A  9AC003561A        call word 0x1a56:word 0x3c0
0000082F  8DBE32F6          lea di,[bp-0x9ce]
00000833  16                push ss
00000834  57                push di
00000835  BF4E59            mov di,0x594e
00000838  1E                push ds
00000839  57                push di
0000083A  B80200            mov ax,0x2
0000083D  50                push ax
0000083E  9A72032518        call word 0x1825:word 0x372
00000843  BF5A59            mov di,0x595a
00000846  1E                push ds
00000847  57                push di
00000848  B80E00            mov ax,0xe
0000084B  50                push ax
0000084C  9A8E03561A        call word 0x1a56:word 0x38e
00000851  C4065A59          les ax,word [0x595a]
00000855  8CC2              mov dx,es
00000857  89862CF6          mov [bp-0x9d4],ax
0000085B  89962EF6          mov [bp-0x9d2],dx
0000085F  A14E59            mov ax,[0x594e]
00000862  898659F4          mov [bp-0xba7],ax
00000866  B80100            mov ax,0x1
00000869  3B8659F4          cmp ax,[bp-0xba7]
0000086D  7F52              jg 0x8c1
0000086F  898630F6          mov [bp-0x9d0],ax
00000873  EB04              jmp 0x879
00000875  FF8630F6          inc word [bp-0x9d0]
00000879  C4BE2CF6          les di,word [bp-0x9d4]
0000087D  81C70A00          add di,0xa
00000881  06                push es
00000882  57                push di
00000883  B80E00            mov ax,0xe
00000886  50                push ax
00000887  9A8E03561A        call word 0x1a56:word 0x38e
0000088C  8DBE32F6          lea di,[bp-0x9ce]
00000890  16                push ss
00000891  57                push di
00000892  C4BE2CF6          les di,word [bp-0x9d4]
00000896  26C47D0A          les di,word [es:di+0xa]
0000089A  06                push es
0000089B  57                push di
0000089C  B80A00            mov ax,0xa
0000089F  50                push ax
000008A0  9A72032518        call word 0x1825:word 0x372
000008A5  C4BE2CF6          les di,word [bp-0x9d4]
000008A9  26C4450A          les ax,word [es:di+0xa]
000008AD  8CC2              mov dx,es
000008AF  89862CF6          mov [bp-0x9d4],ax
000008B3  89962EF6          mov [bp-0x9d2],dx
000008B7  8B8630F6          mov ax,[bp-0x9d0]
000008BB  3B8659F4          cmp ax,[bp-0xba7]
000008BF  75B4              jnz 0x875
000008C1  C4BE2CF6          les di,word [bp-0x9d4]
000008C5  31C0              xor ax,ax
000008C7  2689450A          mov [es:di+0xa],ax
000008CB  2689450C          mov [es:di+0xc],ax
000008CF  C4065A59          les ax,word [0x595a]
000008D3  8CC2              mov dx,es
000008D5  89862CF6          mov [bp-0x9d4],ax
000008D9  89962EF6          mov [bp-0x9d2],dx
000008DD  C43E5A59          les di,word [0x595a]
000008E1  26C4450A          les ax,word [es:di+0xa]
000008E5  8CC2              mov dx,es
000008E7  A35A59            mov [0x595a],ax
000008EA  89165C59          mov [0x595c],dx
000008EE  8DBE2CF6          lea di,[bp-0x9d4]
000008F2  16                push ss
000008F3  57                push di
000008F4  B80E00            mov ax,0xe
000008F7  50                push ax
000008F8  9AC003561A        call word 0x1a56:word 0x3c0
000008FD  8DBE32F6          lea di,[bp-0x9ce]
00000901  16                push ss
00000902  57                push di
00000903  BF4459            mov di,0x5944
00000906  1E                push ds
00000907  57                push di
00000908  B80200            mov ax,0x2
0000090B  50                push ax
0000090C  9A72032518        call word 0x1825:word 0x372
00000911  8DBE32F6          lea di,[bp-0x9ce]
00000915  16                push ss
00000916  57                push di
00000917  BF4659            mov di,0x5946
0000091A  1E                push ds
0000091B  57                push di
0000091C  B80200            mov ax,0x2
0000091F  50                push ax
00000920  9A72032518        call word 0x1825:word 0x372
00000925  8DBE32F6          lea di,[bp-0x9ce]
00000929  16                push ss
0000092A  57                push di
0000092B  BF4859            mov di,0x5948
0000092E  1E                push ds
0000092F  57                push di
00000930  B80200            mov ax,0x2
00000933  50                push ax
00000934  9A72032518        call word 0x1825:word 0x372
00000939  8DBE32F6          lea di,[bp-0x9ce]
0000093D  16                push ss
0000093E  57                push di
0000093F  BF4A59            mov di,0x594a
00000942  1E                push ds
00000943  57                push di
00000944  B80200            mov ax,0x2
00000947  50                push ax
00000948  9A72032518        call word 0x1825:word 0x372
0000094D  9A6D02561A        call word 0x1a56:word 0x26d
00000952  898621F6          mov [bp-0x9df],ax
00000956  83BE21F600        cmp word [bp-0x9df],0x0
0000095B  743F              jz 0x99c
0000095D  BF1E8E            mov di,0x8e1e
00000960  1E                push ds
00000961  57                push di
00000962  8DBE5BF3          lea di,[bp-0xca5]
00000966  16                push ss
00000967  57                push di
00000968  BF9C01            mov di,0x19c
0000096B  0E                push cs
0000096C  57                push di
0000096D  9A9306561A        call word 0x1a56:word 0x693
00000972  8DBEFFFE          lea di,[bp-0x101]
00000976  16                push ss
00000977  57                push di
00000978  9A2007561A        call word 0x1a56:word 0x720
0000097D  31C0              xor ax,ax
0000097F  50                push ax
00000980  9AF717561A        call word 0x1a56:word 0x17f7
00000985  9A3C17561A        call word 0x1a56:word 0x173c
0000098A  8DBE32F6          lea di,[bp-0x9ce]
0000098E  16                push ss
0000098F  57                push di
00000990  9A7A012518        call word 0x1825:word 0x17a
00000995  31C0              xor ax,ax
00000997  9AF301561A        call word 0x1a56:word 0x1f3
0000099C  8DBE32F6          lea di,[bp-0x9ce]
000009A0  16                push ss
000009A1  57                push di
000009A2  9A45052518        call word 0x1825:word 0x545
000009A7  8DBE32F6          lea di,[bp-0x9ce]
000009AB  16                push ss
000009AC  57                push di
000009AD  9A7A012518        call word 0x1825:word 0x17a
000009B2  BFEA07            mov di,0x7ea
000009B5  1E                push ds
000009B6  57                push di
000009B7  9AA008E10B        call word 0xbe1:word 0x8a0
000009BC  8DBE5BF2          lea di,[bp-0xda5]
000009C0  16                push ss
000009C1  57                push di
000009C2  BF141E            mov di,0x1e14
000009C5  1E                push ds
000009C6  57                push di
000009C7  9A9306561A        call word 0x1a56:word 0x693
000009CC  8DBE5BF3          lea di,[bp-0xca5]
000009D0  16                push ss
000009D1  57                push di
000009D2  8DBEFFFE          lea di,[bp-0x101]
000009D6  16                push ss
000009D7  57                push di
000009D8  9AEE00C612        call word 0x12c6:word 0xee
000009DD  9A2007561A        call word 0x1a56:word 0x720
000009E2  BFB801            mov di,0x1b8
000009E5  0E                push cs
000009E6  57                push di
000009E7  9A2007561A        call word 0x1a56:word 0x720
000009EC  9A1100E305        call word 0x5e3:word 0x11
000009F1  8DBE5BF2          lea di,[bp-0xda5]
000009F5  16                push ss
000009F6  57                push di
000009F7  BF141E            mov di,0x1e14
000009FA  1E                push ds
000009FB  57                push di
000009FC  9A9306561A        call word 0x1a56:word 0x693
00000A01  8DBE5BF3          lea di,[bp-0xca5]
00000A05  16                push ss
00000A06  57                push di
00000A07  8DBEFFFE          lea di,[bp-0x101]
00000A0B  16                push ss
00000A0C  57                push di
00000A0D  9AEE00C612        call word 0x12c6:word 0xee
00000A12  9A2007561A        call word 0x1a56:word 0x720
00000A17  BFBD01            mov di,0x1bd
00000A1A  0E                push cs
00000A1B  57                push di
00000A1C  9A2007561A        call word 0x1a56:word 0x720
00000A21  9AE500E305        call word 0x5e3:word 0xe5
00000A26  C646FF01          mov byte [bp-0x1],0x1
00000A2A  8A46FF            mov al,[bp-0x1]
00000A2D  89EC              mov sp,bp
00000A2F  5D                pop bp
00000A30  CA0400            retf word 0x4
00000A33  07                pop es
00000A34  746D              jz 0xaa3
00000A36  7073              jo 0xaab
00000A38  7461              jz 0xa9b
00000A3A  7404              jz 0xa40
00000A3C  2E61              cs popa
00000A3E  64640B746D        or si,[fs:si+0x6d]
00000A43  7073              jo 0xab8
00000A45  7461              jz 0xaa8
00000A47  742E              jz 0xa77
00000A49  746D              jz 0xab8
00000A4B  7004              jo 0xa51
00000A4D  41                inc cx
00000A4E  44                inc sp
00000A4F  56                push si
00000A50  46                inc si
00000A51  55                push bp
00000A52  89E5              mov bp,sp
00000A54  81ECEA09          sub sp,0x9ea
00000A58  BF651E            mov di,0x1e65
00000A5B  1E                push ds
00000A5C  57                push di
00000A5D  BF330A            mov di,0xa33
00000A60  0E                push cs
00000A61  57                push di
00000A62  9A8307561A        call word 0x1a56:word 0x783
00000A67  7433              jz 0xa9c
00000A69  8DBE16F6          lea di,[bp-0x9ea]
00000A6D  16                push ss
00000A6E  57                push di
00000A6F  BF651E            mov di,0x1e65
00000A72  1E                push ds
00000A73  57                push di
00000A74  B80100            mov ax,0x1
00000A77  50                push ax
00000A78  B80800            mov ax,0x8
00000A7B  50                push ax
00000A7C  9ADF06561A        call word 0x1a56:word 0x6df
00000A81  BF3B0A            mov di,0xa3b
00000A84  0E                push cs
00000A85  57                push di
00000A86  9A2007561A        call word 0x1a56:word 0x720
00000A8B  8DBE21F7          lea di,[bp-0x8df]
00000A8F  16                push ss
00000A90  57                push di
00000A91  B80C00            mov ax,0xc
00000A94  50                push ax
00000A95  9AAD06561A        call word 0x1a56:word 0x6ad
00000A9A  EB29              jmp 0xac5
00000A9C  8DBE16F6          lea di,[bp-0x9ea]
00000AA0  16                push ss
00000AA1  57                push di
00000AA2  BF141E            mov di,0x1e14
00000AA5  1E                push ds
00000AA6  57                push di
00000AA7  9A9306561A        call word 0x1a56:word 0x693
00000AAC  BF400A            mov di,0xa40
00000AAF  0E                push cs
00000AB0  57                push di
00000AB1  9A2007561A        call word 0x1a56:word 0x720
00000AB6  8DBE21F7          lea di,[bp-0x8df]
00000ABA  16                push ss
00000ABB  57                push di
00000ABC  B80C00            mov ax,0xc
00000ABF  50                push ax
00000AC0  9AAD06561A        call word 0x1a56:word 0x6ad
00000AC5  8DBE32F7          lea di,[bp-0x8ce]
00000AC9  16                push ss
00000ACA  57                push di
00000ACB  8DBE21F7          lea di,[bp-0x8df]
00000ACF  16                push ss
00000AD0  57                push di
00000AD1  9AD6002518        call word 0x1825:word 0xd6
00000AD6  9A6D02561A        call word 0x1a56:word 0x26d
00000ADB  89861AF7          mov [bp-0x8e6],ax
00000ADF  83BE1AF700        cmp word [bp-0x8e6],0x0
00000AE4  7418              jz 0xafe
00000AE6  B80100            mov ax,0x1
00000AE9  50                push ax
00000AEA  B86400            mov ax,0x64
00000AED  50                push ax
00000AEE  B8A000            mov ax,0xa0
00000AF1  50                push ax
00000AF2  9AE30A6F04        call word 0x46f:word 0xae3
00000AF7  C646FF00          mov byte [bp-0x1],0x0
00000AFB  E9A602            jmp 0xda4
00000AFE  8DBE32F7          lea di,[bp-0x8ce]
00000B02  16                push ss
00000B03  57                push di
00000B04  8DBE1CF7          lea di,[bp-0x8e4]
00000B08  16                push ss
00000B09  57                push di
00000B0A  B80500            mov ax,0x5
00000B0D  50                push ax
00000B0E  9A72032518        call word 0x1825:word 0x372
00000B13  8DBE1CF7          lea di,[bp-0x8e4]
00000B17  16                push ss
00000B18  57                push di
00000B19  BF4C0A            mov di,0xa4c
00000B1C  0E                push cs
00000B1D  57                push di
00000B1E  9A8307561A        call word 0x1a56:word 0x783
00000B23  7418              jz 0xb3d
00000B25  B80200            mov ax,0x2
00000B28  50                push ax
00000B29  B86400            mov ax,0x64
00000B2C  50                push ax
00000B2D  B8A000            mov ax,0xa0
00000B30  50                push ax
00000B31  9AE30A6F04        call word 0x46f:word 0xae3
00000B36  C646FF00          mov byte [bp-0x1],0x0
00000B3A  E96702            jmp 0xda4
00000B3D  BF0208            mov di,0x802
00000B40  1E                push ds
00000B41  57                push di
00000B42  9AA008E10B        call word 0xbe1:word 0x8a0
00000B47  8DBE32F7          lea di,[bp-0x8ce]
00000B4B  16                push ss
00000B4C  57                push di
00000B4D  BF3A1F            mov di,0x1f3a
00000B50  1E                push ds
00000B51  57                push di
00000B52  B81200            mov ax,0x12
00000B55  50                push ax
00000B56  9A72032518        call word 0x1825:word 0x372
00000B5B  8DBE32F7          lea di,[bp-0x8ce]
00000B5F  16                push ss
00000B60  57                push di
00000B61  BF5E1F            mov di,0x1f5e
00000B64  1E                push ds
00000B65  57                push di
00000B66  B80200            mov ax,0x2
00000B69  50                push ax
00000B6A  9A72032518        call word 0x1825:word 0x372
00000B6F  8DBE32F7          lea di,[bp-0x8ce]
00000B73  16                push ss
00000B74  57                push di
00000B75  BF621F            mov di,0x1f62
00000B78  1E                push ds
00000B79  57                push di
00000B7A  B80200            mov ax,0x2
00000B7D  50                push ax
00000B7E  9A72032518        call word 0x1825:word 0x372
00000B83  8DBE32F7          lea di,[bp-0x8ce]
00000B87  16                push ss
00000B88  57                push di
00000B89  BFE236            mov di,0x36e2
00000B8C  1E                push ds
00000B8D  57                push di
00000B8E  B8EE03            mov ax,0x3ee
00000B91  50                push ax
00000B92  9A72032518        call word 0x1825:word 0x372
00000B97  8DBE32F7          lea di,[bp-0x8ce]
00000B9B  16                push ss
00000B9C  57                push di
00000B9D  BF4259            mov di,0x5942
00000BA0  1E                push ds
00000BA1  57                push di
00000BA2  B80200            mov ax,0x2
00000BA5  50                push ax
00000BA6  9A72032518        call word 0x1825:word 0x372
00000BAB  A13659            mov ax,[0x5936]
00000BAE  898614F7          mov [bp-0x8ec],ax
00000BB2  B80100            mov ax,0x1
00000BB5  3B8614F7          cmp ax,[bp-0x8ec]
00000BB9  7F5A              jg 0xc15
00000BBB  89862EF7          mov [bp-0x8d2],ax
00000BBF  EB04              jmp 0xbc5
00000BC1  FF862EF7          inc word [bp-0x8d2]
00000BC5  8BBE2EF7          mov di,[bp-0x8d2]
00000BC9  D1E7              shl di,1
00000BCB  D1E7              shl di,1
00000BCD  C4BD661F          les di,word [di+0x1f66]
00000BD1  89BE10F7          mov [bp-0x8f0],di
00000BD5  8C8612F7          mov word [bp-0x8ee],es
00000BD9  8DBE32F7          lea di,[bp-0x8ce]
00000BDD  16                push ss
00000BDE  57                push di
00000BDF  C4BE10F7          les di,word [bp-0x8f0]
00000BE3  81C71000          add di,0x10
00000BE7  06                push es
00000BE8  57                push di
00000BE9  B80200            mov ax,0x2
00000BEC  50                push ax
00000BED  9A72032518        call word 0x1825:word 0x372
00000BF2  8DBE32F7          lea di,[bp-0x8ce]
00000BF6  16                push ss
00000BF7  57                push di
00000BF8  C4BE10F7          les di,word [bp-0x8f0]
00000BFC  81C71600          add di,0x16
00000C00  06                push es
00000C01  57                push di
00000C02  B80200            mov ax,0x2
00000C05  50                push ax
00000C06  9A72032518        call word 0x1825:word 0x372
00000C0B  8B862EF7          mov ax,[bp-0x8d2]
00000C0F  3B8614F7          cmp ax,[bp-0x8ec]
00000C13  75AC              jnz 0xbc1
00000C15  A13859            mov ax,[0x5938]
00000C18  898614F7          mov [bp-0x8ec],ax
00000C1C  B80100            mov ax,0x1
00000C1F  3B8614F7          cmp ax,[bp-0x8ec]
00000C23  7E03              jng 0xc28
00000C25  E9D200            jmp 0xcfa
00000C28  89862EF7          mov [bp-0x8d2],ax
00000C2C  EB04              jmp 0xc32
00000C2E  FF862EF7          inc word [bp-0x8d2]
00000C32  8BBE2EF7          mov di,[bp-0x8d2]
00000C36  D1E7              shl di,1
00000C38  D1E7              shl di,1
00000C3A  C4BD3A27          les di,word [di+0x273a]
00000C3E  89BE10F7          mov [bp-0x8f0],di
00000C42  8C8612F7          mov word [bp-0x8ee],es
00000C46  8DBE32F7          lea di,[bp-0x8ce]
00000C4A  16                push ss
00000C4B  57                push di
00000C4C  C4BE10F7          les di,word [bp-0x8f0]
00000C50  81C71200          add di,0x12
00000C54  06                push es
00000C55  57                push di
00000C56  B80200            mov ax,0x2
00000C59  50                push ax
00000C5A  9A72032518        call word 0x1825:word 0x372
00000C5F  8DBE32F7          lea di,[bp-0x8ce]
00000C63  16                push ss
00000C64  57                push di
00000C65  C4BE10F7          les di,word [bp-0x8f0]
00000C69  81C71000          add di,0x10
00000C6D  06                push es
00000C6E  57                push di
00000C6F  B80200            mov ax,0x2
00000C72  50                push ax
00000C73  9A72032518        call word 0x1825:word 0x372
00000C78  8BBE2EF7          mov di,[bp-0x8d2]
00000C7C  D1E7              shl di,1
00000C7E  D1E7              shl di,1
00000C80  C4BD3A27          les di,word [di+0x273a]
00000C84  26837D1000        cmp word [es:di+0x10],0x0
00000C89  7E62              jng 0xced
00000C8B  8BBE2EF7          mov di,[bp-0x8d2]
00000C8F  D1E7              shl di,1
00000C91  D1E7              shl di,1
00000C93  C4BD3A27          les di,word [di+0x273a]
00000C97  268B7D10          mov di,[es:di+0x10]
00000C9B  D1E7              shl di,1
00000C9D  D1E7              shl di,1
00000C9F  C4BD661F          les di,word [di+0x1f66]
00000CA3  89BE10F7          mov [bp-0x8f0],di
00000CA7  8C8612F7          mov word [bp-0x8ee],es
00000CAB  8DBE16F7          lea di,[bp-0x8ea]
00000CAF  16                push ss
00000CB0  57                push di
00000CB1  B80600            mov ax,0x6
00000CB4  50                push ax
00000CB5  9A8E03561A        call word 0x1a56:word 0x38e
00000CBA  8B862EF7          mov ax,[bp-0x8d2]
00000CBE  C4BE16F7          les di,word [bp-0x8ea]
00000CC2  268905            mov [es:di],ax
00000CC5  C4BE10F7          les di,word [bp-0x8f0]
00000CC9  26C44512          les ax,word [es:di+0x12]
00000CCD  8CC2              mov dx,es
00000CCF  C4BE16F7          les di,word [bp-0x8ea]
00000CD3  26894502          mov [es:di+0x2],ax
00000CD7  26895504          mov [es:di+0x4],dx
00000CDB  C48616F7          les ax,word [bp-0x8ea]
00000CDF  8CC2              mov dx,es
00000CE1  C4BE10F7          les di,word [bp-0x8f0]
00000CE5  26894512          mov [es:di+0x12],ax
00000CE9  26895514          mov [es:di+0x14],dx
00000CED  8B862EF7          mov ax,[bp-0x8d2]
00000CF1  3B8614F7          cmp ax,[bp-0x8ec]
00000CF5  7403              jz 0xcfa
00000CF7  E934FF            jmp 0xc2e
00000CFA  A13A59            mov ax,[0x593a]
00000CFD  898614F7          mov [bp-0x8ec],ax
00000D01  B80100            mov ax,0x1
00000D04  3B8614F7          cmp ax,[bp-0x8ec]
00000D08  7F5A              jg 0xd64
00000D0A  89862EF7          mov [bp-0x8d2],ax
00000D0E  EB04              jmp 0xd14
00000D10  FF862EF7          inc word [bp-0x8d2]
00000D14  8BBE2EF7          mov di,[bp-0x8d2]
00000D18  D1E7              shl di,1
00000D1A  D1E7              shl di,1
00000D1C  C4BD0E2F          les di,word [di+0x2f0e]
00000D20  89BE10F7          mov [bp-0x8f0],di
00000D24  8C8612F7          mov word [bp-0x8ee],es
00000D28  8DBE32F7          lea di,[bp-0x8ce]
00000D2C  16                push ss
00000D2D  57                push di
00000D2E  C4BE10F7          les di,word [bp-0x8f0]
00000D32  81C71200          add di,0x12
00000D36  06                push es
00000D37  57                push di
00000D38  B80200            mov ax,0x2
00000D3B  50                push ax
00000D3C  9A72032518        call word 0x1825:word 0x372
00000D41  8DBE32F7          lea di,[bp-0x8ce]
00000D45  16                push ss
00000D46  57                push di
00000D47  C4BE10F7          les di,word [bp-0x8f0]
00000D4B  81C71000          add di,0x10
00000D4F  06                push es
00000D50  57                push di
00000D51  B80200            mov ax,0x2
00000D54  50                push ax
00000D55  9A72032518        call word 0x1825:word 0x372
00000D5A  8B862EF7          mov ax,[bp-0x8d2]
00000D5E  3B8614F7          cmp ax,[bp-0x8ec]
00000D62  75AC              jnz 0xd10
00000D64  BFEA07            mov di,0x7ea
00000D67  1E                push ds
00000D68  57                push di
00000D69  9AA008E10B        call word 0xbe1:word 0x8a0
00000D6E  9A6D02561A        call word 0x1a56:word 0x26d
00000D73  89861AF7          mov [bp-0x8e6],ax
00000D77  83BE1AF700        cmp word [bp-0x8e6],0x0
00000D7C  7417              jz 0xd95
00000D7E  B80100            mov ax,0x1
00000D81  50                push ax
00000D82  B86400            mov ax,0x64
00000D85  50                push ax
00000D86  B8A000            mov ax,0xa0
00000D89  50                push ax
00000D8A  9AE30A6F04        call word 0x46f:word 0xae3
00000D8F  C646FF00          mov byte [bp-0x1],0x0
00000D93  EB04              jmp 0xd99
00000D95  C646FF01          mov byte [bp-0x1],0x1
00000D99  8DBE32F7          lea di,[bp-0x8ce]
00000D9D  16                push ss
00000D9E  57                push di
00000D9F  9A7A012518        call word 0x1825:word 0x17a
00000DA4  8A46FF            mov al,[bp-0x1]
00000DA7  89EC              mov sp,bp
00000DA9  5D                pop bp
00000DAA  CB                retf
00000DAB  0005              add [di],al
00000DAD  2A2E6164          sub ch,[0x6461]
00000DB1  640D4865          fs or ax,0x6548
00000DB5  6E                outsb
00000DB6  7465              jz 0xe1d
00000DB8  206461            and [si+0x61],ah
00000DBB  7461              jz 0xe1e
00000DBD  66696C0448656E74  imul ebp,[si+0x4],0x746e6548
00000DC5  55                push bp
00000DC6  89E5              mov bp,sp
00000DC8  81EC0101          sub sp,0x101
00000DCC  B000              mov al,0x0
00000DCE  50                push ax
00000DCF  8DBEFFFE          lea di,[bp-0x101]
00000DD3  16                push ss
00000DD4  57                push di
00000DD5  B8FF00            mov ax,0xff
00000DD8  50                push ax
00000DD9  9AF51B561A        call word 0x1a56:word 0x1bf5
00000DDE  BFFA17            mov di,0x17fa
00000DE1  1E                push ds
00000DE2  57                push di
00000DE3  BFAB0D            mov di,0xdab
00000DE6  0E                push cs
00000DE7  57                push di
00000DE8  9A8307561A        call word 0x1a56:word 0x783
00000DED  740F              jz 0xdfe
00000DEF  BFFA17            mov di,0x17fa
00000DF2  1E                push ds
00000DF3  57                push di
00000DF4  9A461C561A        call word 0x1a56:word 0x1c46
00000DF9  9A7702561A        call word 0x1a56:word 0x277
00000DFE  BFAC0D            mov di,0xdac
00000E01  0E                push cs
00000E02  57                push di
00000E03  BF651E            mov di,0x1e65
00000E06  1E                push ds
00000E07  57                push di
00000E08  BFB20D            mov di,0xdb2
00000E0B  0E                push cs
00000E0C  57                push di
00000E0D  BFC00D            mov di,0xdc0
00000E10  0E                push cs
00000E11  57                push di
00000E12  B000              mov al,0x0
00000E14  50                push ax
00000E15  B8D81B            mov ax,0x1bd8
00000E18  8CDA              mov dx,ds
00000E1A  52                push dx
00000E1B  50                push ax
00000E1C  B86400            mov ax,0x64
00000E1F  50                push ax
00000E20  B88200            mov ax,0x82
00000E23  50                push ax
00000E24  9AE10C6506        call word 0x665:word 0xce1
00000E29  08C0              or al,al
00000E2B  7431              jz 0xe5e
00000E2D  BF651E            mov di,0x1e65
00000E30  1E                push ds
00000E31  57                push di
00000E32  BFAB0D            mov di,0xdab
00000E35  0E                push cs
00000E36  57                push di
00000E37  9A8307561A        call word 0x1a56:word 0x783
00000E3C  7506              jnz 0xe44
00000E3E  C646FF00          mov byte [bp-0x1],0x0
00000E42  EB18              jmp 0xe5c
00000E44  B000              mov al,0x0
00000E46  50                push ax
00000E47  BFFA17            mov di,0x17fa
00000E4A  1E                push ds
00000E4B  57                push di
00000E4C  B8FF00            mov ax,0xff
00000E4F  50                push ax
00000E50  9AF51B561A        call word 0x1a56:word 0x1bf5
00000E55  0E                push cs
00000E56  E8F8FB            call 0xa51
00000E59  8846FF            mov [bp-0x1],al
00000E5C  EB04              jmp 0xe62
00000E5E  C646FF00          mov byte [bp-0x1],0x0
00000E62  8DBEFFFE          lea di,[bp-0x101]
00000E66  16                push ss
00000E67  57                push di
00000E68  9A461C561A        call word 0x1a56:word 0x1c46
00000E6D  9A7702561A        call word 0x1a56:word 0x277
00000E72  8A46FF            mov al,[bp-0x1]
00000E75  89EC              mov sp,bp
00000E77  5D                pop bp
00000E78  CB                retf
00000E79  07                pop es
00000E7A  746D              jz 0xee9
00000E7C  7073              jo 0xef1
00000E7E  7461              jz 0xee1
00000E80  7404              jz 0xe86
00000E82  2E61              cs popa
00000E84  64640B746D        or si,[fs:si+0x6d]
00000E89  7073              jo 0xefe
00000E8B  7461              jz 0xeee
00000E8D  742E              jz 0xebd
00000E8F  746D              jz 0xefe
00000E91  7055              jo 0xee8
00000E93  89E5              mov bp,sp
00000E95  81ECE109          sub sp,0x9e1
00000E99  BF651E            mov di,0x1e65
00000E9C  1E                push ds
00000E9D  57                push di
00000E9E  BF790E            mov di,0xe79
00000EA1  0E                push cs
00000EA2  57                push di
00000EA3  9A8307561A        call word 0x1a56:word 0x783
00000EA8  7433              jz 0xedd
00000EAA  8DBE1FF6          lea di,[bp-0x9e1]
00000EAE  16                push ss
00000EAF  57                push di
00000EB0  BF651E            mov di,0x1e65
00000EB3  1E                push ds
00000EB4  57                push di
00000EB5  B80100            mov ax,0x1
00000EB8  50                push ax
00000EB9  B80800            mov ax,0x8
00000EBC  50                push ax
00000EBD  9ADF06561A        call word 0x1a56:word 0x6df
00000EC2  BF810E            mov di,0xe81
00000EC5  0E                push cs
00000EC6  57                push di
00000EC7  9A2007561A        call word 0x1a56:word 0x720
00000ECC  8DBE21F7          lea di,[bp-0x8df]
00000ED0  16                push ss
00000ED1  57                push di
00000ED2  B80C00            mov ax,0xc
00000ED5  50                push ax
00000ED6  9AAD06561A        call word 0x1a56:word 0x6ad
00000EDB  EB14              jmp 0xef1
00000EDD  BF860E            mov di,0xe86
00000EE0  0E                push cs
00000EE1  57                push di
00000EE2  8DBE21F7          lea di,[bp-0x8df]
00000EE6  16                push ss
00000EE7  57                push di
00000EE8  B80C00            mov ax,0xc
00000EEB  50                push ax
00000EEC  9AAD06561A        call word 0x1a56:word 0x6ad
00000EF1  8DBE32F7          lea di,[bp-0x8ce]
00000EF5  16                push ss
00000EF6  57                push di
00000EF7  8DBE21F7          lea di,[bp-0x8df]
00000EFB  16                push ss
00000EFC  57                push di
00000EFD  9A32002518        call word 0x1825:word 0x32
00000F02  9A6D02561A        call word 0x1a56:word 0x26d
00000F07  89861FF7          mov [bp-0x8e1],ax
00000F0B  83BE1FF700        cmp word [bp-0x8e1],0x0
00000F10  7418              jz 0xf2a
00000F12  B80100            mov ax,0x1
00000F15  50                push ax
00000F16  B82C01            mov ax,0x12c
00000F19  50                push ax
00000F1A  B8A000            mov ax,0xa0
00000F1D  50                push ax
00000F1E  9AE30A6F04        call word 0x46f:word 0xae3
00000F23  C646FF00          mov byte [bp-0x1],0x0
00000F27  E90002            jmp 0x112a
00000F2A  BF0208            mov di,0x802
00000F2D  1E                push ds
00000F2E  57                push di
00000F2F  9AA008E10B        call word 0xbe1:word 0x8a0
00000F34  8DBE32F7          lea di,[bp-0x8ce]
00000F38  16                push ss
00000F39  57                push di
00000F3A  BF4C02            mov di,0x24c
00000F3D  1E                push ds
00000F3E  57                push di
00000F3F  B80500            mov ax,0x5
00000F42  50                push ax
00000F43  9AFF012518        call word 0x1825:word 0x1ff
00000F48  8DBE32F7          lea di,[bp-0x8ce]
00000F4C  16                push ss
00000F4D  57                push di
00000F4E  BF3A1F            mov di,0x1f3a
00000F51  1E                push ds
00000F52  57                push di
00000F53  B81200            mov ax,0x12
00000F56  50                push ax
00000F57  9AFF012518        call word 0x1825:word 0x1ff
00000F5C  8DBE32F7          lea di,[bp-0x8ce]
00000F60  16                push ss
00000F61  57                push di
00000F62  BF5E1F            mov di,0x1f5e
00000F65  1E                push ds
00000F66  57                push di
00000F67  B80200            mov ax,0x2
00000F6A  50                push ax
00000F6B  9AFF012518        call word 0x1825:word 0x1ff
00000F70  8DBE32F7          lea di,[bp-0x8ce]
00000F74  16                push ss
00000F75  57                push di
00000F76  BF621F            mov di,0x1f62
00000F79  1E                push ds
00000F7A  57                push di
00000F7B  B80200            mov ax,0x2
00000F7E  50                push ax
00000F7F  9AFF012518        call word 0x1825:word 0x1ff
00000F84  8DBE32F7          lea di,[bp-0x8ce]
00000F88  16                push ss
00000F89  57                push di
00000F8A  BFE236            mov di,0x36e2
00000F8D  1E                push ds
00000F8E  57                push di
00000F8F  B8EE03            mov ax,0x3ee
00000F92  50                push ax
00000F93  9AFF012518        call word 0x1825:word 0x1ff
00000F98  8DBE32F7          lea di,[bp-0x8ce]
00000F9C  16                push ss
00000F9D  57                push di
00000F9E  BF4259            mov di,0x5942
00000FA1  1E                push ds
00000FA2  57                push di
00000FA3  B80200            mov ax,0x2
00000FA6  50                push ax
00000FA7  9AFF012518        call word 0x1825:word 0x1ff
00000FAC  A13659            mov ax,[0x5936]
00000FAF  89861DF7          mov [bp-0x8e3],ax
00000FB3  B80100            mov ax,0x1
00000FB6  3B861DF7          cmp ax,[bp-0x8e3]
00000FBA  7F5A              jg 0x1016
00000FBC  89862EF7          mov [bp-0x8d2],ax
00000FC0  EB04              jmp 0xfc6
00000FC2  FF862EF7          inc word [bp-0x8d2]
00000FC6  8BBE2EF7          mov di,[bp-0x8d2]
00000FCA  D1E7              shl di,1
00000FCC  D1E7              shl di,1
00000FCE  C4BD661F          les di,word [di+0x1f66]
00000FD2  89BE19F7          mov [bp-0x8e7],di
00000FD6  8C861BF7          mov word [bp-0x8e5],es
00000FDA  8DBE32F7          lea di,[bp-0x8ce]
00000FDE  16                push ss
00000FDF  57                push di
00000FE0  C4BE19F7          les di,word [bp-0x8e7]
00000FE4  81C71000          add di,0x10
00000FE8  06                push es
00000FE9  57                push di
00000FEA  B80200            mov ax,0x2
00000FED  50                push ax
00000FEE  9AFF012518        call word 0x1825:word 0x1ff
00000FF3  8DBE32F7          lea di,[bp-0x8ce]
00000FF7  16                push ss
00000FF8  57                push di
00000FF9  C4BE19F7          les di,word [bp-0x8e7]
00000FFD  81C71600          add di,0x16
00001001  06                push es
00001002  57                push di
00001003  B80200            mov ax,0x2
00001006  50                push ax
00001007  9AFF012518        call word 0x1825:word 0x1ff
0000100C  8B862EF7          mov ax,[bp-0x8d2]
00001010  3B861DF7          cmp ax,[bp-0x8e3]
00001014  75AC              jnz 0xfc2
00001016  A13859            mov ax,[0x5938]
00001019  89861DF7          mov [bp-0x8e3],ax
0000101D  B80100            mov ax,0x1
00001020  3B861DF7          cmp ax,[bp-0x8e3]
00001024  7F5A              jg 0x1080
00001026  89862EF7          mov [bp-0x8d2],ax
0000102A  EB04              jmp 0x1030
0000102C  FF862EF7          inc word [bp-0x8d2]
00001030  8BBE2EF7          mov di,[bp-0x8d2]
00001034  D1E7              shl di,1
00001036  D1E7              shl di,1
00001038  C4BD3A27          les di,word [di+0x273a]
0000103C  89BE19F7          mov [bp-0x8e7],di
00001040  8C861BF7          mov word [bp-0x8e5],es
00001044  8DBE32F7          lea di,[bp-0x8ce]
00001048  16                push ss
00001049  57                push di
0000104A  C4BE19F7          les di,word [bp-0x8e7]
0000104E  81C71200          add di,0x12
00001052  06                push es
00001053  57                push di
00001054  B80200            mov ax,0x2
00001057  50                push ax
00001058  9AFF012518        call word 0x1825:word 0x1ff
0000105D  8DBE32F7          lea di,[bp-0x8ce]
00001061  16                push ss
00001062  57                push di
00001063  C4BE19F7          les di,word [bp-0x8e7]
00001067  81C71000          add di,0x10
0000106B  06                push es
0000106C  57                push di
0000106D  B80200            mov ax,0x2
00001070  50                push ax
00001071  9AFF012518        call word 0x1825:word 0x1ff
00001076  8B862EF7          mov ax,[bp-0x8d2]
0000107A  3B861DF7          cmp ax,[bp-0x8e3]
0000107E  75AC              jnz 0x102c
00001080  A13A59            mov ax,[0x593a]
00001083  89861DF7          mov [bp-0x8e3],ax
00001087  B80100            mov ax,0x1
0000108A  3B861DF7          cmp ax,[bp-0x8e3]
0000108E  7F5A              jg 0x10ea
00001090  89862EF7          mov [bp-0x8d2],ax
00001094  EB04              jmp 0x109a
00001096  FF862EF7          inc word [bp-0x8d2]
0000109A  8BBE2EF7          mov di,[bp-0x8d2]
0000109E  D1E7              shl di,1
000010A0  D1E7              shl di,1
000010A2  C4BD0E2F          les di,word [di+0x2f0e]
000010A6  89BE19F7          mov [bp-0x8e7],di
000010AA  8C861BF7          mov word [bp-0x8e5],es
000010AE  8DBE32F7          lea di,[bp-0x8ce]
000010B2  16                push ss
000010B3  57                push di
000010B4  C4BE19F7          les di,word [bp-0x8e7]
000010B8  81C71200          add di,0x12
000010BC  06                push es
000010BD  57                push di
000010BE  B80200            mov ax,0x2
000010C1  50                push ax
000010C2  9AFF012518        call word 0x1825:word 0x1ff
000010C7  8DBE32F7          lea di,[bp-0x8ce]
000010CB  16                push ss
000010CC  57                push di
000010CD  C4BE19F7          les di,word [bp-0x8e7]
000010D1  81C71000          add di,0x10
000010D5  06                push es
000010D6  57                push di
000010D7  B80200            mov ax,0x2
000010DA  50                push ax
000010DB  9AFF012518        call word 0x1825:word 0x1ff
000010E0  8B862EF7          mov ax,[bp-0x8d2]
000010E4  3B861DF7          cmp ax,[bp-0x8e3]
000010E8  75AC              jnz 0x1096
000010EA  BFEA07            mov di,0x7ea
000010ED  1E                push ds
000010EE  57                push di
000010EF  9AA008E10B        call word 0xbe1:word 0x8a0
000010F4  9A6D02561A        call word 0x1a56:word 0x26d
000010F9  89861FF7          mov [bp-0x8e1],ax
000010FD  83BE1FF700        cmp word [bp-0x8e1],0x0
00001102  7417              jz 0x111b
00001104  B80100            mov ax,0x1
00001107  50                push ax
00001108  B82C01            mov ax,0x12c
0000110B  50                push ax
0000110C  B8A000            mov ax,0xa0
0000110F  50                push ax
00001110  9AE30A6F04        call word 0x46f:word 0xae3
00001115  C646FF00          mov byte [bp-0x1],0x0
00001119  EB04              jmp 0x111f
0000111B  C646FF01          mov byte [bp-0x1],0x1
0000111F  8DBE32F7          lea di,[bp-0x8ce]
00001123  16                push ss
00001124  57                push di
00001125  9A7A012518        call word 0x1825:word 0x17a
0000112A  8A46FF            mov al,[bp-0x1]
0000112D  89EC              mov sp,bp
0000112F  5D                pop bp
00001130  CB                retf
00001131  0005              add [di],al
00001133  2A2E6164          sub ch,[0x6461]
00001137  640D4C61          fs or ax,0x614c
0000113B  677265            a32 jc 0x11a3
0000113E  206461            and [si+0x61],ah
00001141  7461              jz 0x11a4
00001143  66696C054C616772  imul ebp,[si+0x5],0x7267614c
0000114B  6555              gs push bp
0000114D  89E5              mov bp,sp
0000114F  81EC0101          sub sp,0x101
00001153  B000              mov al,0x0
00001155  50                push ax
00001156  8DBEFFFE          lea di,[bp-0x101]
0000115A  16                push ss
0000115B  57                push di
0000115C  B8FF00            mov ax,0xff
0000115F  50                push ax
00001160  9AF51B561A        call word 0x1a56:word 0x1bf5
00001165  BFFA17            mov di,0x17fa
00001168  1E                push ds
00001169  57                push di
0000116A  BF3111            mov di,0x1131
0000116D  0E                push cs
0000116E  57                push di
0000116F  9A8307561A        call word 0x1a56:word 0x783
00001174  740F              jz 0x1185
00001176  BFFA17            mov di,0x17fa
00001179  1E                push ds
0000117A  57                push di
0000117B  9A461C561A        call word 0x1a56:word 0x1c46
00001180  9A7702561A        call word 0x1a56:word 0x277
00001185  BF3211            mov di,0x1132
00001188  0E                push cs
00001189  57                push di
0000118A  BF651E            mov di,0x1e65
0000118D  1E                push ds
0000118E  57                push di
0000118F  BF3811            mov di,0x1138
00001192  0E                push cs
00001193  57                push di
00001194  BF4611            mov di,0x1146
00001197  0E                push cs
00001198  57                push di
00001199  B001              mov al,0x1
0000119B  50                push ax
0000119C  B8D81B            mov ax,0x1bd8
0000119F  8CDA              mov dx,ds
000011A1  52                push dx
000011A2  50                push ax
000011A3  B8FA00            mov ax,0xfa
000011A6  50                push ax
000011A7  B88200            mov ax,0x82
000011AA  50                push ax
000011AB  9AE10C6506        call word 0x665:word 0xce1
000011B0  08C0              or al,al
000011B2  7431              jz 0x11e5
000011B4  BF651E            mov di,0x1e65
000011B7  1E                push ds
000011B8  57                push di
000011B9  BF3111            mov di,0x1131
000011BC  0E                push cs
000011BD  57                push di
000011BE  9A8307561A        call word 0x1a56:word 0x783
000011C3  7506              jnz 0x11cb
000011C5  C646FF00          mov byte [bp-0x1],0x0
000011C9  EB18              jmp 0x11e3
000011CB  B000              mov al,0x0
000011CD  50                push ax
000011CE  BFFA17            mov di,0x17fa
000011D1  1E                push ds
000011D2  57                push di
000011D3  B8FF00            mov ax,0xff
000011D6  50                push ax
000011D7  9AF51B561A        call word 0x1a56:word 0x1bf5
000011DC  0E                push cs
000011DD  E8B2FC            call 0xe92
000011E0  8846FF            mov [bp-0x1],al
000011E3  EB04              jmp 0x11e9
000011E5  C646FF00          mov byte [bp-0x1],0x0
000011E9  8DBEFFFE          lea di,[bp-0x101]
000011ED  16                push ss
000011EE  57                push di
000011EF  9A461C561A        call word 0x1a56:word 0x1c46
000011F4  9A7702561A        call word 0x1a56:word 0x277
000011F9  8A46FF            mov al,[bp-0x1]
000011FC  89EC              mov sp,bp
000011FE  5D                pop bp
000011FF  CB                retf
00001200  89E5              mov bp,sp
00001202  C606FA1700        mov byte [0x17fa],0x0
00001207  89EC              mov sp,bp
00001209  CB                retf
0000120A  0000              add [bx+si],al
0000120C  0000              add [bx+si],al
0000120E  0000              add [bx+si],al
