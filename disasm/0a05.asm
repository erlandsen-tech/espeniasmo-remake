00000000  89E5              mov bp,sp
00000002  C606651E00        mov byte [0x1e65],0x0
00000007  C606141E00        mov byte [0x1e14],0x0
0000000C  C606625902        mov byte [0x5962],0x2
00000011  C606635901        mov byte [0x5963],0x1
00000016  C606645903        mov byte [0x5964],0x3
0000001B  C606655900        mov byte [0x5965],0x0
00000020  C606665903        mov byte [0x5966],0x3
00000025  C606675900        mov byte [0x5967],0x0
0000002A  C606685903        mov byte [0x5968],0x3
0000002F  C606695900        mov byte [0x5969],0x0
00000034  C6066A5903        mov byte [0x596a],0x3
00000039  C6066B5900        mov byte [0x596b],0x0
0000003E  C6066C5903        mov byte [0x596c],0x3
00000043  C6066D5900        mov byte [0x596d],0x0
00000048  C6066E5904        mov byte [0x596e],0x4
0000004D  C6066F5905        mov byte [0x596f],0x5
00000052  C606705902        mov byte [0x5970],0x2
00000057  C606715900        mov byte [0x5971],0x0
0000005C  C606725902        mov byte [0x5972],0x2
00000061  C606735900        mov byte [0x5973],0x0
00000066  C606745903        mov byte [0x5974],0x3
0000006B  C606755900        mov byte [0x5975],0x0
00000070  C606765903        mov byte [0x5976],0x3
00000075  C606775900        mov byte [0x5977],0x0
0000007A  C606785902        mov byte [0x5978],0x2
0000007F  C606795907        mov byte [0x5979],0x7
00000084  C6067A590A        mov byte [0x597a],0xa
00000089  C6067B5900        mov byte [0x597b],0x0
0000008E  C6067C5904        mov byte [0x597c],0x4
00000093  C6067D5900        mov byte [0x597d],0x0
00000098  C6067E5904        mov byte [0x597e],0x4
0000009D  C6067F5907        mov byte [0x597f],0x7
000000A2  C606805904        mov byte [0x5980],0x4
000000A7  C606815900        mov byte [0x5981],0x0
000000AC  C606825903        mov byte [0x5982],0x3
000000B1  C606835900        mov byte [0x5983],0x0
000000B6  C606845903        mov byte [0x5984],0x3
000000BB  C606855907        mov byte [0x5985],0x7
000000C0  C606865903        mov byte [0x5986],0x3
000000C5  C606875900        mov byte [0x5987],0x0
000000CA  C606885908        mov byte [0x5988],0x8
000000CF  C606895909        mov byte [0x5989],0x9
000000D4  C6068A5908        mov byte [0x598a],0x8
000000D9  C6068B5909        mov byte [0x598b],0x9
000000DE  C6068C5908        mov byte [0x598c],0x8
000000E3  C6068D5909        mov byte [0x598d],0x9
000000E8  C6068E5900        mov byte [0x598e],0x0
000000ED  C6068F5900        mov byte [0x598f],0x0
000000F2  C606905906        mov byte [0x5990],0x6
000000F7  C606915900        mov byte [0x5991],0x0
000000FC  C606925903        mov byte [0x5992],0x3
00000101  C606935900        mov byte [0x5993],0x0
00000106  C606945903        mov byte [0x5994],0x3
0000010B  C606955900        mov byte [0x5995],0x0
00000110  C606965904        mov byte [0x5996],0x4
00000115  C606975900        mov byte [0x5997],0x0
0000011A  C606985904        mov byte [0x5998],0x4
0000011F  C606995900        mov byte [0x5999],0x0
00000124  C6069A5902        mov byte [0x599a],0x2
00000129  C6069B5900        mov byte [0x599b],0x0
0000012E  C6069C5906        mov byte [0x599c],0x6
00000133  C6069D5900        mov byte [0x599d],0x0
00000138  C6069E5902        mov byte [0x599e],0x2
0000013D  C6069F5907        mov byte [0x599f],0x7
00000142  C606A05903        mov byte [0x59a0],0x3
00000147  C606A15907        mov byte [0x59a1],0x7
0000014C  C606A25904        mov byte [0x59a2],0x4
00000151  C606A35907        mov byte [0x59a3],0x7
00000156  C606A45900        mov byte [0x59a4],0x0
0000015B  C606A55900        mov byte [0x59a5],0x0
00000160  C606A65909        mov byte [0x59a6],0x9
00000165  C606A75900        mov byte [0x59a7],0x0
0000016A  C606A85908        mov byte [0x59a8],0x8
0000016F  C606A95909        mov byte [0x59a9],0x9
00000174  C606AA5908        mov byte [0x59aa],0x8
00000179  C606AB5909        mov byte [0x59ab],0x9
0000017E  C606AC5908        mov byte [0x59ac],0x8
00000183  C606AD5909        mov byte [0x59ad],0x9
00000188  C606AE5900        mov byte [0x59ae],0x0
0000018D  C606AF5900        mov byte [0x59af],0x0
00000192  31C0              xor ax,ax
00000194  A3D03A            mov [0x3ad0],ax
00000197  31C0              xor ax,ax
00000199  A3E236            mov [0x36e2],ax
0000019C  31C0              xor ax,ax
0000019E  A3D23A            mov [0x3ad2],ax
000001A1  31C0              xor ax,ax
000001A3  A3E436            mov [0x36e4],ax
000001A6  31C0              xor ax,ax
000001A8  A3D43A            mov [0x3ad4],ax
000001AB  31C0              xor ax,ax
000001AD  A3E636            mov [0x36e6],ax
000001B0  89EC              mov sp,bp
000001B2  CB                retf
000001B3  0000              add [bx+si],al
000001B5  0000              add [bx+si],al
000001B7  0000              add [bx+si],al
000001B9  0000              add [bx+si],al
000001BB  0000              add [bx+si],al
000001BD  0000              add [bx+si],al
000001BF  00                db 0x00
