
TEXT Section .text (Little Endian), 0x2c80 bytes at 0x00000000 
00000000       700c           LDW.D1T2      *A4[3],B0
00000002       25f7 ||        STW.D2T1      A11,*B15--[2]
00000004       784c           LDW.D1T2      *A4[11],B4
00000006       2577 ||        STW.D2T1      A10,*B15--[2]
00000008       883c           LDW.D1T1      *A4[12],A3
0000000a       9677 ||        STDW.D2T2     B13:B12,*B15--[1]
0000000c       9577           STDW.D2T2     B11:B10,*B15--[1]
0000000e       8777           STDW.D2T1     A15:A14,*B15--[1]
00000010   05902266 ||        LDW.D1T2      *+A4[1],B11
00000014   0610a267           LDW.D1T2      *+A4[5],B12
00000018       8677 ||        STDW.D2T1     A13:A12,*B15--[1]
0000001a       104d           LDW.D2T2      *B4[0],B4
0000001c   e9e00095           .fphead       n, l, W, BU, nobr, nosat, 1001111b
00000020   018c0265           LDW.D1T1      *+A3[0],A3
00000024   30042e93 || [!B0]  B.S2          0x002194
00000028   01bc94f6 ||        STW.D2T2      B3,*B15--[4]
0000002c       6c6e           NOP           4
0000002e       0035           STW.D2T1      A3,*B4[0]
00000030   028003a6           LDNDW.D2T2    *+B0[0],B5:B4
00000034   0388282a           MVK.S2        0x1050,B7
00000038   00004000           NOP           3
0000003c   e1000000           .fphead       n, l, W, BU, nobr, nosat, 0001000b
00000040   031005a3           NEG.S2        B4,B6
00000044   0f900a5a ||        CMPEQ.L2      0,B4,B31
00000048   0318ef5a           AND.L2        7,B6,B6
0000004c   051881e3           ADD.S2        B4,B6,B10
00000050   0310a9fa ||        CMPGTU.L2     B5,B4,B6
00000054   0228a0fb           SUB.L2        B5,B10,B4
00000058   02fc22a2 ||        XOR.S2        1,B31,B5
0000005c   001c8bfb           CMPLTU.L2     B4,B7,B0
00000060   0094c7e2 ||        AND.S2        B6,B5,B1
00000064   5000a35b    [!B1]  MVK.L2        0,B0
00000068   50042690 || [!B1]  B.S1          0x002194
0000006c   20042693    [ B0]  B.S2          0x002194
00000070   42a6a828 || [ B1]  MVK.S1        0x4d50,A5
00000074   00004000           NOP           3
00000078   42a9a1e8    [ B1]  MVKH.S1       0x53430000,A5
0000007c   31a802e4    [!B0]  LDW.D2T1      *+B10[0],A3
00000080   0381862b           MVK.S2        0x030c,B7
00000084       06a7 ||        MVK.L2        0,B5
00000086       0726 ||        MVK.L1        0,A6
00000088   04ab8943 ||        ADD.D2        B10,0x1c,B9
0000008c   03805c28 ||        MVK.S1        0x00b8,A7
00000090   03c0006b           MVKH.S2       0x80000000,B7
00000094   04804028 ||        MVK.S1        0x0080,A9
00000098   0300eaaa           MVK.S2        0x01d5,B6
0000009c   e040000c           .fphead       n, l, W, BU, nobr, nosat, 0000010b
000000a0       83c7           MV.L2         B7,B4
000000a2       66e8           CMPEQ.L1      A3,A5,A0
000000a4   01800028 ||        MVK.S1        0x0000,A3
000000a8   c0004011    [ A0]  B.S1          0x0002a0
000000ac   d41062e4 || [!A0]  LDW.D2T1      *+B4[3],A8
000000b0   d2a842f7    [!A0]  STW.D2T2      B5,*+B10[2]
000000b4   d280202a || [!A0]  MVK.S2        0x0040,B5
000000b8   d3a9a2f4    [!A0]  STW.D2T1      A7,*+B10[13]
000000bc   e0200002           .fphead       n, l, W, BU, nobr, nosat, 0000001b
000000c0   d32982f4    [!A0]  STW.D2T1      A6,*+B10[12]
000000c4   d328e2f4    [!A0]  STW.D2T1      A6,*+B10[7]
000000c8   d1a822f4    [!A0]  STW.D2T1      A3,*+B10[1]
000000cc   00250a79           CMPEQ.L1      A8,A9,A0
000000d0   0329e2f6 ||        STW.D2T2      B6,*+B10[15]
000000d4   d0003d91    [!A0]  B.S1          0x0002ac
000000d8   d180a359 || [!A0]  MVK.L1        0,A3
000000dc   c21082e6 || [ A0]  LDW.D2T2      *+B4[4],B4
000000e0   02a802f4           STW.D2T1      A5,*+B10[0]
000000e4   d428fec2    [!A0]  ADDAD.D2      B10,0x7,B8
000000e8   d1a4e2f4    [!A0]  STW.D2T1      A3,*+B9[7]
000000ec   d3100266    [!A0]  LDW.D1T2      *+A4[0],B6
000000f0   d22002e7    [!A0]  LDW.D2T2      *+B8[0],B4
000000f4       86e9 ||        CMPEQ.L2      B4,B5,B0
000000f6       c9e6    [!B0]  MVK.L1        0,A3
000000f8   30003991 || [!B0]  B.S1          0x0002ac
000000fc   e4000800           .fphead       n, l, W, BU, nobr, nosat, 0100000b
00000100   025fa02b ||        MVK.S2        0xffffbf40,B4
00000104   3428fec2 || [!B0]  ADDAD.D2      B10,0x7,B8
00000108   0260066b           MVKH.S2       0xc00c0000,B4
0000010c   31a4e2f5 || [!B0]  STW.D2T1      A3,*+B9[7]
00000110   029abba8 ||        MVK.S1        0x3577,A5
00000114   219002e4    [ B0]  LDW.D2T1      *+B4[0],A3
00000118   0293bbe8           MVKH.S1       0x27770000,A5
0000011c   33100266    [!B0]  LDW.D1T2      *+A4[0],B6
00000120   322002e6    [!B0]  LDW.D2T2      *+B8[0],B4
00000124       8651           ADD.L2        B4,4,B5
00000126       66e8           CMPEQ.L1      A3,A5,A0
00000128   d0b94121    [!A0]  BNOP.S1       0x292,2
0000012c   c21402e6 || [ A0]  LDW.D2T2      *+B5[0],B4
00000130   03433baa           MVK.S2        0xffff8677,B6
00000134       2046           MV.L1         A0,A1
00000136       486e || [!A0]  MVK.S1        0,A0
00000138   0342bbea ||        MVKH.S2       0x85770000,B6
0000013c   e4400c00           .fphead       n, l, W, BU, nobr, nosat, 0100010b
00000140   80000029    [ A1]  MVK.S1        0x0000,A0
00000144   9184a359 || [!A1]  MVK.L1        1,A3
00000148       8769 ||        CMPEQ.L2      B4,B6,B0
0000014a       86c1           ADD.L2        B5,4,B4
0000014c   30002a11 || [!B0]  B.S1          0x000290
00000150   0418fbab ||        MVK.S2        0x31f7,B8
00000154   3000a358 || [!B0]  MVK.L1        0,A0
00000158   229002e6    [ B0]  LDW.D2T2      *+B4[0],B5
0000015c   e0800020           .fphead       n, l, W, BU, nobr, nosat, 0000100b
00000160   2210805a    [ B0]  ADD.L2        4,B4,B4
00000164   232215aa    [ B0]  MVK.S2        0x442b,B6
00000168   230173ea    [ B0]  MVKH.S2       0x2e70000,B6
0000016c   045b236a           MVKH.S2       0xb6460000,B8
00000170   0020aa7a           CMPEQ.L2      B5,B8,B0
00000174   304c2121    [!B0]  BNOP.S1       0x290,1
00000178   229002e7 || [ B0]  LDW.D2T2      *+B4[0],B5
0000017c   2421142b || [ B0]  MVK.S2        0x4228,B8
00000180   00800fda ||        MV.L2         B0,B1
00000184   2210805a    [ B0]  ADD.L2        4,B4,B4
00000188   5000a358    [!B1]  MVK.L1        0,A0
0000018c   2400f3ea    [ B0]  MVKH.S2       0x1e70000,B8
00000190       a769           CMPEQ.L2      B5,B6,B0
00000192       2047           MV.L2         B0,B1
00000194   221002e7 || [ B0]  LDW.D2T2      *+B4[0],B4
00000198   30886120 || [!B0]  BNOP.S1       0x290,3
0000019c   e2000200           .fphead       n, l, W, BU, nobr, nosat, 0010000b
000001a0   5000a358    [!B1]  MVK.L1        0,A0
000001a4   00208a7a           CMPEQ.L2      B4,B8,B0
000001a8   0258b42b           MVK.S2        0xffffb168,B4
000001ac   30001d90 || [!B0]  B.S1          0x00028c
000001b0   026005ea           MVKH.S2       0xc00b0000,B4
000001b4   219002e4    [ B0]  LDW.D2T1      *+B4[0],A3
000001b8   02de09a8           MVK.S1        0xffffbc13,A5
000001bc   028810e8           MVKH.S1       0x10210000,A5
000001c0       0c6e           NOP           1
000001c2       8641           ADD.L2        B4,4,B4
000001c4   02d236aa ||        MVK.S2        0xffffa46d,B5
000001c8   0281006b           MVKH.S2       0x2000000,B5
000001cc       66e8 ||        CMPEQ.L1      A3,A5,A0
000001ce       4866    [!A0]  MVK.L1        0,A0
000001d0   c21002e7 || [ A0]  LDW.D2T2      *+B4[0],B4
000001d4   d0688120 || [!A0]  BNOP.S1       0x290,4
000001d8   00148a7a           CMPEQ.L2      B4,B5,B0
000001dc   e1200082           .fphead       n, l, W, BU, nobr, nosat, 0001001b
000001e0   026c0c2b           MVK.S2        0xffffd818,B4
000001e4   30001590 || [!B0]  B.S1          0x00028c
000001e8   026006ea           MVKH.S2       0xc00d0000,B4
000001ec   219002e4    [ B0]  LDW.D2T1      *+B4[0],A3
000001f0   02d21528           MVK.S1        0xffffa42a,A5
000001f4   0283bde8           MVKH.S1       0x77b0000,A5
000001f8       0c6e           NOP           1
000001fa       8641           ADD.L2        B4,4,B4
000001fc   e8002000           .fphead       n, l, W, BU, nobr, nosat, 1000000b
00000200   0283b52a ||        MVK.S2        0x076a,B5
00000204   0283b06b           MVKH.S2       0x7600000,B5
00000208       66e8 ||        CMPEQ.L1      A3,A5,A0
0000020a       4866    [!A0]  MVK.L1        0,A0
0000020c   c21002e7 || [ A0]  LDW.D2T2      *+B4[0],B4
00000210   d0488120 || [!A0]  BNOP.S1       0x290,4
00000214   00148a7a           CMPEQ.L2      B4,B5,B0
00000218   0256d42b           MVK.S2        0xffffada8,B4
0000021c   e0800020           .fphead       n, l, W, BU, nobr, nosat, 0000100b
00000220   30000e10 || [!B0]  B.S1          0x000290
00000224   026005ea           MVKH.S2       0xc00b0000,B4
00000228   229002e4    [ B0]  LDW.D2T1      *+B4[0],A5
0000022c   3000a358    [!B0]  MVK.L1        0,A0
00000230   01ffd4a8           MVK.S1        0xffffffa9,A3
00000234   01819e68           MVKH.S1       0x33c0000,A3
00000238   027cec2b           MVK.S2        0xfffff9d8,B4
0000023c   0300a359 ||        MVK.L1        0,A6
00000240       0727 ||        MVK.L2        0,B6
00000242       1af7 ||        MVK.D2        0,B5
00000244       a5e8           CMPEQ.L1      A5,A3,A0
00000246       1af6 ||        MVK.D1        0,A5
00000248   0260076b ||        MVKH.S2       0xc00e0000,B4
0000024c       db22 ||        SET.S1        A6,30,30,A6
0000024e       4a3a    [!A0]  BNOP.S1       0x290,2
00000250   c19002e5 || [ A0]  LDW.D2T1      *+B4[0],A3
00000254   0294118a ||        SET.S2        B5,0,17,B5
00000258   03181a8a           SET.S2        B6,0,26,B6
0000025c   e160808d           .fphead       n, l, W, BU, br, nosat, 0001011b
00000260   0288c068           MVKH.S1       0x11800000,A5
00000264   c30cc079    [ A0]  ADD.L1        A6,A3,A6
00000268   c29465e1 || [ A0]  SUB.S1        A3,A5,A5
0000026c       4876 || [!A0]  MVK.D1        0,A0
0000026e       2012           MVK.S1        1,A0
00000270   0318d9f8 ||        CMPGTU.L1X    A6,B6,A6
00000274   0214bbfa           CMPLTU.L2X    B5,A5,B4
00000278   02189f7a           AND.L2X       B4,A6,B4
0000027c   e1000080           .fphead       n, l, W, BU, nobr, nosat, 0001000b
00000280   018c6f58           AND.L1        3,A3,A3
00000284   00907ff8           OR.L1X        A3,B4,A1
00000288   9008a120    [!A1]  BNOP.S1       0x290,5
0000028c   0000a358           MVK.L1        0,A0
00000290       25a6           MVK.L1        1,A3
00000292       49e6    [!A0]  MVK.L1        0,A3
00000294   01a4e2f5           STW.D2T1      A3,*+B9[7]
00000298       0c6e ||        NOP           1
0000029a       0c6e ||        NOP           1
0000029c   ea001000           .fphead       n, l, W, BU, nobr, nosat, 1010000b
000002a0   03100267           LDW.D1T2      *+A4[0],B6
000002a4   0428fec2 ||        ADDAD.D2      B10,0x7,B8
000002a8   022002e6           LDW.D2T2      *+B8[0],B4
000002ac   05201fd9           MV.L1X        B8,A10
000002b0   079c08f1 ||        MV.D1         A7,A15
000002b4   05882828 ||        MVK.S1        0x1050,A11
000002b8   0fab8942           ADD.D2        B10,0x1c,B31
000002bc   0fbc22f6           STW.D2T2      B31,*+B15[1]
000002c0   0298abda           CMPLTU.L2     0x5,B6,B5
000002c4   02100a5a           CMPEQ.L2      0,B4,B4
000002c8   02fc442b           MVK.S2        0xfffff888,B5
000002cc       86a9 ||        OR.L2         B4,B5,B0
000002ce       4047           MV.L2         B0,B2
000002d0   20002d13 || [ B0]  B.S2          0x000428
000002d4   008008f2 ||        MV.D2         B0,B1
000002d8   02e0076b           MVKH.S2       0xc00e0000,B5
000002dc   e1000080           .fphead       n, l, W, BU, nobr, nosat, 0001000b
000002e0   4180a358 || [ B1]  MVK.L1        0,A3
000002e4   301402e6    [!B0]  LDW.D2T2      *+B5[0],B0
000002e8   41bc42f4    [ B1]  STW.D2T1      A3,*+B15[2]
000002ec   61a9a2e4    [ B2]  LDW.D2T1      *+B10[13],A3
000002f0   6fbc22e4    [ B2]  LDW.D2T1      *+B15[1],A31
000002f4   02147d42           ADDAW.D2      B5,0x3,B4
000002f8       2047           MV.L2         B0,B1
000002fa       404f ||        MV.S2         B0,B2
000002fc   e8003000           .fphead       n, l, W, BU, nobr, nosat, 1000000b
00000300   00001fd8 ||        MV.L1X        B0,A0
00000304   20002511    [ B0]  B.S1          0x000428
00000308   301002e7 || [!B0]  LDW.D2T2      *+B4[0],B0
0000030c   4004a35b || [ B1]  MVK.L2        1,B0
00000310   527cd42b || [!B1]  MVK.S2        0xfffff9a8,B4
00000314   6180a358 || [ B2]  MVK.L1        0,A3
00000318   5260076b    [!B1]  MVKH.S2       0xc00e0000,B4
0000031c   61bc42f4 || [ B2]  STW.D2T1      A3,*+B15[2]
00000320   c1a9a2e4    [ A0]  LDW.D2T1      *+B10[13],A3
00000324   cfbc22e4    [ A0]  LDW.D2T1      *+B15[1],A31
00000328   00000000           NOP           
0000032c   30001f10    [!B0]  B.S1          0x000418
00000330   201002e6    [ B0]  LDW.D2T2      *+B4[0],B0
00000334       05a6           MVK.L1        0,A3
00000336       4c6e           NOP           3
00000338   0269cc2b           MVK.S2        0xffffd398,B4
0000033c   e4000000           .fphead       n, l, W, BU, nobr, nosat, 0100000b
00000340   20001d11 || [ B0]  B.S1          0x000428
00000344       4047 ||        MV.L2         B0,B2
00000346       2057 ||        MV.D2         B0,B1
00000348   00001fd8 ||        MV.L1X        B0,A0
0000034c   026004eb           MVKH.S2       0xc0090000,B4
00000350   4180a358 || [ B1]  MVK.L1        0,A3
00000354   301002e6    [!B0]  LDW.D2T2      *+B4[0],B0
00000358   61bc42f4    [ B2]  STW.D2T1      A3,*+B15[2]
0000035c   e040000c           .fphead       n, l, W, BU, nobr, nosat, 0000010b
00000360   c1a9a2e4    [ A0]  LDW.D2T1      *+B10[13],A3
00000364   cfbc22e4    [ A0]  LDW.D2T1      *+B15[1],A31
00000368   01ec7c29           MVK.S1        0xffffd8f8,A3
0000036c   0260322a ||        MVK.S2        0xffffc064,B4
00000370   20001911    [ B0]  B.S1          0x000428
00000374   026004ea ||        MVKH.S2       0xc0090000,B4
00000378   01e004e8           MVKH.S1       0xc0090000,A3
0000037c   318c0265    [!B0]  LDW.D1T1      *+A3[0],A3
00000380   329002a7 || [!B0]  LDB.D2T2      *+B4[0],B5
00000384   2180a358 || [ B0]  MVK.L1        0,A3
00000388   21bc42f4    [ B0]  STW.D2T1      A3,*+B15[2]
0000038c   21a9a2e4    [ B0]  LDW.D2T1      *+B10[13],A3
00000390   2fbc22e4    [ B0]  LDW.D2T1      *+B15[1],A31
00000394   0823172a           MVK.S2        0x462e,B16
00000398   028c2bd9           CMPLTU.L1     0x1,A3,A5
0000039c   020c8ca1 ||        SHL.S1        A3,0x4,A4
000003a0   021408db ||        CMPGT.L2      0,B5,B4
000003a4   0807fe6a ||        MVKH.S2       0xffc0000,B16
000003a8   01907e41           ADDAD.D1      A4,A3,A3
000003ac   0414c8da ||        CMPGT.L2      6,B5,B8
000003b0   02149ffa           OR.L2X        B4,A5,B4
000003b4   04902ddb           XOR.L2        1,B4,B9
000003b8   020c16a2 ||        MV.S2X        A3,B4
000003bc   0210bc43           ADDAW.D2      B4,B5,B4
000003c0   00250f7a ||        AND.L2        B8,B9,B0
000003c4   219208e5    [ B0]  LDW.D2T1      *-B4[B16],A3
000003c8   30000d11 || [!B0]  B.S1          0x000428
000003cc   3180a358 || [!B0]  MVK.L1        0,A3
000003d0   22801628    [ B0]  MVK.S1        0x002c,A5
000003d4   31bc42f4    [!B0]  STW.D2T1      A3,*+B15[2]
000003d8   31a9a2e4    [!B0]  LDW.D2T1      *+B10[13],A3
000003dc   3fbc22e4    [!B0]  LDW.D2T1      *+B15[1],A31
000003e0   228ca801    [ B0]  MPY32.M1      A5,A3,A5
000003e4   230cabd8 || [ B0]  CMPLTU.L1     0x5,A3,A6
000003e8   03182dd9           XOR.L1        1,A6,A6
000003ec   020cda7b ||        CMPEQ.L2X     B6,A3,B4
000003f0   03c814a8 ||        MVK.S1        0xffff9029,A7
000003f4   0387fee8           MVKH.S1       0xffd0000,A7
000003f8   00189f7a           AND.L2X       B4,A6,B0
000003fc   2294e866    [ B0]  LDW.D1T2      *-A5[A7],B5
00000400   2229e2e4    [ B0]  LDW.D2T1      *+B10[15],A4
00000404   00000000           NOP           
00000408   20102120    [ B0]  BNOP.S1       0x420,1
0000040c       92e3           EXTU.S2       B5,16,16,B4
0000040e       0c6e           NOP           1
00000410   01909a78           CMPEQ.L1X     A4,B4,A3
00000414       cc35           STW.D2T1      A3,*B15[2]
00000416       05a6 ||        MVK.L1        0,A3
00000418   01bc42f4           STW.D2T1      A3,*+B15[2]
0000041c   e5000400           .fphead       n, l, W, BU, nobr, nosat, 0101000b
00000420   01a9a2e4           LDW.D2T1      *+B10[13],A3
00000424   0fbc22e4           LDW.D2T1      *+B15[1],A31
00000428   06bc22e6           LDW.D2T2      *+B15[1],B13
0000042c   0f005ba8           MVK.S1        0x00b7,A30
00000430   00000000           NOP           
00000434   023c6bf8           CMPLTU.L1     A3,A15,A4
00000438   02106078           ADD.L1        A3,A4,A4
0000043c   0229a2f4           STW.D2T1      A4,*+B10[13]
00000440   027c0266           LDW.D1T2      *+A31[0],B4
00000444   027889f8           CMPGTU.L1     A4,A30,A4
00000448       4c6e           NOP           3
0000044a       2a27           CMPEQ.L2      1,B4,B1
0000044c   40002013    [ B1]  B.S2          0x000540
00000450   02904a5b ||        CMPEQ.L2      2,B4,B5
00000454   41b4a2e4 || [ B1]  LDW.D2T1      *+B13[5],A3
00000458   02030429           MVK.S1        0x0608,A4
0000045c   e0800000           .fphead       n, l, W, BU, nobr, nosat, 0000100b
00000460   423422e7 || [ B1]  LDW.D2T2      *+B13[1],B4
00000464   0010bf7a ||        AND.L2X       B5,A4,B0
00000468   4004a35a    [ B1]  MVK.L2        1,B0
0000046c   30bc4120    [!B0]  BNOP.S1       0x750,2
00000470   32281fdb    [!B0]  MV.L2X        A10,B4
00000474   203c42e4 || [ B0]  LDW.D2T1      *+B15[2],A0
00000478   301002e6    [!B0]  LDW.D2T2      *+B4[0],B0
0000047c   00000000           NOP           
00000480       06a7           MVK.L2        0,B5
00000482       8486 ||        MV.L1         A9,A4
00000484       83c7           MV.L2         B7,B4
00000486       2046           MV.L1         A0,A1
00000488   d0001693 || [!A0]  B.S2          0x000534
0000048c   c19062e4 || [ A0]  LDW.D2T1      *+B4[3],A3
00000490   91666121    [!A1]  BNOP.S1       0x74c,3
00000494   92b402f7 || [!A1]  STW.D2T2      B5,*+B13[0]
00000498   c300202a || [ A0]  MVK.S2        0x0040,B6
0000049c   e0600009           .fphead       n, l, W, BU, nobr, nosat, 0000011b
000004a0       6668           CMPEQ.L1      A3,A4,A0
000004a2       4a67    [!A0]  MVK.L2        0,B4
000004a4   c29082e7 || [ A0]  LDW.D2T2      *+B4[4],B5
000004a8   d0001210 || [!A0]  B.S1          0x000530
000004ac   d1566121    [!A0]  BNOP.S1       0x74c,3
000004b0   d23402f6 || [!A0]  STW.D2T2      B4,*+B13[0]
000004b4   0018aa7a           CMPEQ.L2      B5,B6,B0
000004b8   23a982e6    [ B0]  LDW.D2T2      *+B10[12],B7
000004bc   e0200002           .fphead       n, l, W, BU, nobr, nosat, 0000001b
000004c0   30192120    [!B0]  BNOP.S1       0x524,1
000004c4   22a982e6    [ B0]  LDW.D2T2      *+B10[12],B5
000004c8   0303042a           MVK.S2        0x0608,B6
000004cc   031cc572           MPYLI.M2      B6,B7,B7:B6
000004d0   00000000           NOP           
000004d4   0fa81fda           MV.L2X        A10,B31
000004d8   02942dda           XOR.L2        1,B5,B5
000004dc   02a982f6           STW.D2T2      B5,*+B10[12]
000004e0   0319a07a           ADD.L2        B13,B6,B6
000004e4   03021252           ADDK.S2       1060,B6
000004e8   0310a2f6           STW.D2T2      B6,*+B4[5]
000004ec   007c02e6           LDW.D2T2      *+B31[0],B0
000004f0   01fcec28           MVK.S1        0xfffff9d8,A3
000004f4   01e00768           MVKH.S1       0xc00e0000,A3
000004f8   02dfa02a           MVK.S2        0xffffbf40,B5
000004fc   02e0066a           MVKH.S2       0xc00c0000,B5
00000500   30000490    [!B0]  B.S1          0x000524
00000504   20140362    [ B0]  B.S2          B5
00000508   220c0264    [ B0]  LDW.D1T1      *+A3[0],A4
0000050c       2627           MVK.L2        1,B4
0000050e       ca67    [!B0]  MVK.L2        0,B4
00000510   3234c2f6    [!B0]  STW.D2T2      B4,*+B13[6]
00000514   01860162           ADDKPC.S2     0x518,B3,0
00000518   0200a35a           MVK.L2        0,B4
0000051c   e1000000           .fphead       n, l, W, BU, nobr, nosat, 0001000b
00000520   0234c2f6           STW.D2T2      B4,*+B13[6]
00000524   008b6121           BNOP.S1       0x74c,3
00000528   0200a35a ||        MVK.L2        0,B4
0000052c   023402f6           STW.D2T2      B4,*+B13[0]
00000530   02281fda           MV.L2X        A10,B4
00000534   02281fdb           MV.L2X        A10,B4
00000538   00000001 ||        NOP           
0000053c   00000000 ||        NOP           
00000540   020c8571           MPYLI.M1      A4,A3,A5:A4
00000544   08109ec3 ||        ADDAD.D2      B4,0x4,B16
00000548   02b4807b ||        ADD.L2        B4,B13,B5
0000054c   088080aa ||        MVK.S2        0x0101,B17
00000550   00408bfb           CMPLTU.L2     B4,B16,B0
00000554   028011d2 ||        ADDK.S2       35,B5
00000558   30402121    [!B0]  BNOP.S1       0x640,1
0000055c   2f84a35b || [ B0]  MVK.L2        1,B31
00000560   0080102a ||        MVK.S2        0x0020,B1
00000564   02349078           ADD.L1X       A4,B13,A4
00000568   02021250           ADDK.S1       1060,A4
0000056c       72c6           MV.L1X        B5,A3
0000056e       1647           MV.L2X        A4,B8
00000570   02b462e7           LDW.D2T2      *+B13[3],B5
00000574   020c3214 ||        LDBU.D1T1     *++A3[1],A4
00000578   023442e6           LDW.D2T2      *+B13[2],B4
0000057c   e1000000           .fphead       n, l, W, BU, nobr, nosat, 0001000b
00000580       4c6e           NOP           3
00000582       96e8           CMPEQ.L1X     A4,B5,A0
00000584   c2901a59    [ A0]  CMPEQ.L1X     0,B4,A5
00000588   03448bfb ||        CMPLTU.L2     B4,B17,B6
0000058c       6aee || [!A0]  MVK.S1        1,A5
0000058e       fb67           XOR.L2        B6,1,B6
00000590       d6a9           OR.L2X        B6,A5,B0
00000592       404f           MV.S2         B0,B2
00000594   30001411 || [!B0]  B.S1          0x000620
00000598   00102a5a ||        CMPEQ.L2      1,B4,B0
0000059c   e3200200           .fphead       n, l, W, BU, nobr, nosat, 0011001b
000005a0   30103bd9    [!B0]  CMPLTU.L1X    0x1,B4,A0
000005a4   723442e6 || [!B2]  LDW.D2T2      *+B13[2],B4
000005a8       8866    [ B0]  MVK.L1        0,A0
000005aa       4c6e           NOP           3
000005ac   c23482e6    [ A0]  LDW.D2T2      *+B13[4],B4
000005b0       06a6           MVK.L1        0,A5
000005b2       ec91           ADD.L2        B1,-1,B1
000005b4   00002000           NOP           2
000005b8   c310205a    [ A0]  ADD.L2        1,B4,B6
000005bc   e2800000           .fphead       n, l, W, BU, nobr, nosat, 0010100b
000005c0   c33482f6    [ A0]  STW.D2T2      B6,*+B13[4]
000005c4   c2910ab6    [ A0]  STB.D2T2      B5,*+B4[B8]
000005c8   c2b482e6    [ A0]  LDW.D2T2      *+B13[4],B5
000005cc   c3b58296    [ A0]  LDBU.D2T2     *+B13[12],B7
000005d0   223482e6    [ B0]  LDW.D2T2      *+B13[4],B4
000005d4   23358296    [ B0]  LDBU.D2T2     *+B13[12],B6
000005d8   00000000           NOP           
000005dc   c494205a    [ A0]  ADD.L2        1,B5,B9
000005e0   c4b482f6    [ A0]  STW.D2T2      B9,*+B13[4]
000005e4   c3950ab6    [ A0]  STB.D2T2      B7,*+B5[B8]
000005e8   c2b482e6    [ A0]  LDW.D2T2      *+B13[4],B5
000005ec   c4b442e6    [ A0]  LDW.D2T2      *+B13[2],B9
000005f0   2390205a    [ B0]  ADD.L2        1,B4,B7
000005f4   23b482f6    [ B0]  STW.D2T2      B7,*+B13[4]
000005f8   23110ab6    [ B0]  STB.D2T2      B6,*+B4[B8]
000005fc   00000a11           B.S1          0x000630
00000600   c214205a || [ A0]  ADD.L2        1,B5,B4
00000604   4fffef11    [ B1]  B.S1          0x000578
00000608   c23482f7 || [ A0]  STW.D2T2      B4,*+B13[4]
0000060c   c227c05a || [ A0]  SUB.L2        B9,0x2,B4
00000610   c2150ab6    [ A0]  STB.D2T2      B4,*+B5[B8]
00000614   02b442f4           STW.D2T1      A5,*+B13[2]
00000618   0fb442f6           STW.D2T2      B31,*+B13[2]
0000061c   023462f4           STW.D2T1      A4,*+B13[3]
00000620   0087e05b           SUB.L2        B1,0x1,B1
00000624   021021a2 ||        ADD.S2        1,B4,B4
00000628   4fd68121    [ B1]  BNOP.S1       0x578,4
0000062c   023442f6 ||        STW.D2T2      B4,*+B13[2]
00000630   420c3215    [ B1]  LDBU.D1T1     *++A3[1],A4
00000634   42b462e7 || [ B1]  LDW.D2T2      *+B13[3],B5
00000638   00000001 ||        NOP           
0000063c   00000000 ||        NOP           
00000640   0201ffab           MVK.S2        0x03ff,B4
00000644   083422f7 ||        STW.D2T2      B16,*+B13[1]
00000648   01b41fd8 ||        MV.L1X        B13,A3
0000064c   001209fa           CMPGTU.L2     B16,B4,B0
00000650   30868121    [!B0]  BNOP.S1       0x74c,4
00000654   220c4267 || [ B0]  LDW.D1T2      *+A3[2],B4
00000658       2047 ||        MV.L2         B0,B1
0000065a       2227           CMPEQ.L2      1,B4,B0
0000065c   e8002000           .fphead       n, l, W, BU, nobr, nosat, 1000000b
00000660   522816a2 || [!B1]  MV.S2X        A10,B4
00000664       204f           MV.S2         B0,B1
00000666       4057 ||        MV.D2         B0,B2
00000668   20000f11 || [ B0]  B.S1          0x0006d8
0000066c   30102bda || [!B0]  CMPLTU.L2     0x1,B4,B0
00000670   620c8267    [ B2]  LDW.D1T2      *+A3[4],B4
00000674   4004a35a || [ B1]  MVK.L2        1,B0
00000678   30446121    [!B0]  BNOP.S1       0x6e8,3
0000067c   e040000c           .fphead       n, l, W, BU, nobr, nosat, 0000010b
00000680   628d8216 || [ B2]  LDBU.D1T2     *+A3[12],B5
00000684   220c8265    [ B0]  LDW.D1T1      *+A3[4],A4
00000688   3200a358 || [!B0]  MVK.L1        0,A4
0000068c   228d8216    [ B0]  LDBU.D1T2     *+A3[12],B5
00000690       4c6e           NOP           3
00000692       9247           MV.L2X        A4,B4
00000694   02102058 ||        ADD.L1        1,A4,A4
00000698   020c8275           STW.D1T1      A4,*+A3[4]
0000069c   e2000200           .fphead       n, l, W, BU, nobr, nosat, 0010000b
000006a0   02910ab6 ||        STB.D2T2      B5,*+B4[B8]
000006a4   020c8266           LDW.D1T2      *+A3[4],B4
000006a8   028d8216           LDBU.D1T2     *+A3[12],B5
000006ac       0626           MVK.L1        0,A4
000006ae       2c6e           NOP           2
000006b0   0310205a           ADD.L2        1,B4,B6
000006b4   030c8276           STW.D1T2      B6,*+A3[4]
000006b8   02910ab6           STB.D2T2      B5,*+B4[B8]
000006bc   e1000000           .fphead       n, l, W, BU, nobr, nosat, 0001000b
000006c0   020c8266           LDW.D1T2      *+A3[4],B4
000006c4   028c4266           LDW.D1T2      *+A3[2],B5
000006c8   00144120           BNOP.S1       0x6e8,2
000006cc       2661           ADD.L2        B4,1,B6
000006ce       ced1           ADD.L2        B5,-2,B5
000006d0   030c8276 ||        STW.D1T2      B6,*+A3[4]
000006d4   02910ab6           STB.D2T2      B5,*+B4[B8]
000006d8       2661           ADD.L2        B4,1,B6
000006da       0626 ||        MVK.L1        0,A4
000006dc   e9001080           .fphead       n, l, W, BU, nobr, nosat, 1001000b
000006e0   030c8276           STW.D1T2      B6,*+A3[4]
000006e4   02910ab6           STB.D2T2      B5,*+B4[B8]
000006e8   020c4274           STW.D1T1      A4,*+A3[2]
000006ec   03b482e6           LDW.D2T2      *+B13[4],B7
000006f0       06a7           MVK.L2        0,B5
000006f2       4c6e           NOP           3
000006f4   001c6f5a           AND.L2        3,B7,B0
000006f8   3031a121    [!B0]  BNOP.S1       0x742,5
000006fc   e2000000           .fphead       n, l, W, BU, nobr, nosat, 0010000b
00000700   2004a358 || [ B0]  MVK.L1        1,A0
00000704   c383e000    [ A0]  SPLOOPW       8
00000708       8c6e           NOP           5
0000070a       2c67           SPMASK        L1
0000070c   01b41fd8 ||^       MV.L1X        B13,A3
00000710   020c8264           LDW.D1T1      *+A3[4],A4
00000714       6c6e           NOP           4
00000716       2640           ADD.L1        A4,1,A4
00000718       2ce6           SPMASK        L2
0000071a       8687 ||^       MV.L2         B13,B4
0000071c   ec803020           .fphead       n, l, W, BU, nobr, nosat, 1100100b
00000720   c20c8275 || [ A0]  STW.D1T1      A4,*+A3[4]
00000724   c29d0ab6 || [ A0]  STB.D2T2      B5,*+B7[B8]
00000728       906d           LDW.D2T2      *B4[4],B6
0000072a       6c6e           NOP           4
0000072c   00186f5b           AND.L2        3,B6,B0
00000730       e34f ||        MV.S2         B6,B7
00000732       c86e    [!B0]  MVK.S1        0,A0
00000734       2c6e           NOP           2
00000736       0c6e           NOP           1
00000738   00034000           SPKERNEL      0,0
0000073c   e6800000           .fphead       n, l, W, BU, nobr, nosat, 0110100b
00000740       b5c7           MV.L2X        A3,B13
00000742       4627           MVK.L2        2,B4
00000744   023402f7           STW.D2T2      B4,*+B13[0]
00000748   02281fda ||        MV.L2X        A10,B4
0000074c       100d           LDW.D2T2      *B4[0],B0
0000074e       0c6e           NOP           1
00000750   0201862a           MVK.S2        0x030c,B4
00000754   0240006a           MVKH.S2       0x80000000,B4
00000758       0c6e           NOP           1
0000075a       7246           MV.L1X        B4,A3
0000075c   e9202000           .fphead       n, l, W, BU, nobr, nosat, 1001001b
00000760   30001891 || [!B0]  B.S1          0x000824
00000764       4047 ||        MV.L2         B0,B2
00000766       8b76 || [ B0]  MVK.D1        0,A6
00000768   018c9ec1           ADDAD.D1      A3,0x4,A3
0000076c   6200a35b || [ B2]  MVK.L2        0,B4
00000770   23774069 || [ B0]  MVKH.S1       0xee800000,A6
00000774   2380a358 || [ B0]  MVK.L1        0,A7
00000778   608c9266    [ B2]  LDW.D1T2      *++A3[4],B1
0000077c   e0400004           .fphead       n, l, W, BU, nobr, nosat, 0000010b
00000780       8a66    [ B0]  MVK.L1        0,A4
00000782       8ae6    [ B0]  MVK.L1        0,A5
00000784   6240006a    [ B2]  MVKH.S2       0x80000000,B4
00000788       6427           MVK.L2        3,B0
0000078a       da22 ||        SET.S1        A4,30,30,A4
0000078c   02941a89           SET.S1        A5,0,26,A5
00000790   4f84d079 || [ B1]  ADD.L1X       A6,B1,A31
00000794   0204807a ||        ADD.L2        B4,B1,B4
00000798   039c1188           SET.S1        A7,0,17,A7
0000079c   e0a00010           .fphead       n, l, W, BU, nobr, nosat, 0000101b
000007a0   50000d11    [!B1]  B.S1          0x000808
000007a4   4880a359 || [ B1]  MVK.L1        0,A17
000007a8   44049ab0 || [ B1]  ADD.D1X       A4,B1,A8
000007ac   481509f9    [ B1]  CMPGTU.L1     A8,A5,A16
000007b0   440477a0 || [ B1]  AND.S1X       3,B1,A8
000007b4   48c41388    [ B1]  SET.S1        A17,0,19,A17
000007b8   449fe9f8    [ B1]  CMPGTU.L1     A31,A7,A9
000007bc   40260f78    [ B1]  AND.L1        A16,A9,A0
000007c0   44923bf8    [ B1]  CMPLTU.L1X    A17,B4,A9
000007c4   c0250ff9    [ A0]  OR.L1         A8,A9,A0
000007c8   d00477a0 || [!A0]  AND.S1X       3,B1,A0
000007cc   d28402e6    [!A0]  LDW.D2T2      *+B1[0],B5
000007d0   c100a35a    [ A0]  MVK.L2        0,B2
000007d4   d2000a2a    [!A0]  MVK.S2        0x0014,B4
000007d8   00002000           NOP           2
000007dc   d110aa7a    [!A0]  CMPEQ.L2      B5,B4,B2
000007e0   640422e4    [ B2]  LDW.D2T1      *+B1[1],A8
000007e4       3146           MV.L1X        B2,A1
000007e6       28e6    [ A0]  MVK.L1        1,A1
000007e8   00002000           NOP           2
000007ec   6121ea58    [ B2]  CMPEQ.L1      15,A8,A2
000007f0   9100a358    [!A1]  MVK.L1        0,A2
000007f4   c100a358    [ A0]  MVK.L1        0,A2
000007f8   a200a35a    [ A2]  MVK.L2        0,B4
000007fc   e0400000           .fphead       n, l, W, BU, nobr, nosat, 0000010b
00000800   a20402f6    [ A2]  STW.D2T2      B4,*+B1[0]
00000804   a20422f6    [ A2]  STW.D2T2      B4,*+B1[1]
00000808       ec01           ADD.L2        B0,-1,B0
0000080a       8a67    [ B0]  MVK.L2        0,B4
0000080c   208c9267 || [ B0]  LDW.D1T2      *++A3[4],B1
00000810   2fd06120 || [ B0]  BNOP.S1       0x7a0,3
00000814   2240006a    [ B0]  MVKH.S2       0x80000000,B4
00000818   2204807b    [ B0]  ADD.L2        B4,B1,B4
0000081c   e0800020           .fphead       n, l, W, BU, nobr, nosat, 0000100b
00000820   4f84d078 || [ B1]  ADD.L1X       A6,B1,A31
00000824   02ac02e6           LDW.D2T2      *+B11[0],B5
00000828   0200a35a           MVK.L2        0,B4
0000082c   02131d8a           SET.S2        B4,24,29,B4
00000830   00002000           NOP           2
00000834   0200a35b           MVK.L2        0,B4
00000838   0010aea2 ||        CMPLTSP.S2    B5,B4,B0
0000083c   265c6121    [ B0]  BNOP.S1       0x2190,3
00000840   322ca2e5 || [!B0]  LDW.D2T1      *+B11[5],A4
00000844   3280a35b || [!B0]  MVK.L2        0,B5
00000848   3880002a || [!B0]  MVK.S2        0x0000,B17
0000084c   38a1646a    [!B0]  MVKH.S2       0x42c80000,B17
00000850   0010be22           CMPEQSP.S2X   B5,A4,B0
00000854   00449e21           CMPEQSP.S1X   A4,B17,A0
00000858   3010bea3 || [!B0]  CMPLTSP.S2X   B5,A4,B0
0000085c   0680a35b ||        MVK.L2        0,B13
00000860   01800042 ||        MVK.D2        0,B3
00000864   02802ddb           XOR.L2        1,B0,B5
00000868   d0449ea1 || [!A0]  CMPLTSP.S1X   A4,B17,A0
0000086c   06b6fd8a ||        SET.S2        B13,23,29,B13
00000870   01802dd9           XOR.L1        1,A0,A3
00000874   0800202a ||        MVK.S2        0x0040,B16
00000878   00947ff8           OR.L1X        A3,B5,A1
0000087c   80001490    [ A1]  B.S1          0x000904
00000880   00349e20           CMPEQSP.S1X   A4,B13,A0
00000884   d0349ea1    [!A0]  CMPLTSP.S1X   A4,B13,A0
00000888   8680a35a || [ A1]  MVK.L2        0,B13
0000088c   8000a359    [ A1]  MVK.L1        0,A0
00000890   83b33329 || [ A1]  MVK.S1        0x6666,A7
00000894   86b6fd8a || [ A1]  SET.S2        B13,23,29,B13
00000898   c0000b90    [ A0]  B.S1          0x0008dc
0000089c   80002013    [ A1]  B.S2          0x000980
000008a0   839f7368 || [ A1]  MVKH.S1       0x3ee60000,A7
000008a4   d1eb8528    [!A0]  MVK.S1        0xffffd70a,A3
000008a8   d19e11e8    [!A0]  MVKH.S1       0x3c230000,A3
000008ac   d1906e00    [!A0]  MPYSP.M1      A3,A4,A3
000008b0   c0907e22    [ A0]  CMPEQSP.S2X   B3,A4,B1
000008b4       0c6e           NOP           1
000008b6       0c0b           BNOP.S2       0x900,0
000008b8   000c7e20           CMPEQSP.S1X   A3,B3,A0
000008bc   e4008000           .fphead       n, l, W, BU, br, nosat, 0100000b
000008c0   d00c7e60    [!A0]  CMPGTSP.S1X   A3,B3,A0
000008c4   c00dbea3    [ A0]  CMPLTSP.S2X   B13,A3,B0
000008c8   d00c0fdb || [!A0]  MV.L2         B3,B0
000008cc   d38c1fd8 || [!A0]  MV.L1X        B3,A7
000008d0   23b41fd9    [ B0]  MV.L1X        B13,A7
000008d4   d004a35a || [!A0]  MVK.L2        1,B0
000008d8   338c0fd8    [!B0]  MV.L1         A3,A7
000008dc   50907ea2    [!B1]  CMPLTSP.S2X   B3,A4,B1
000008e0   00000413           B.S2          0x000900
000008e4   5004a359 || [!B1]  MVK.L1        1,A0
000008e8   40349e60 || [ B1]  CMPGTSP.S1X   A4,B13,A0
000008ec   538c1fd8    [!B1]  MV.L1X        B3,A7
000008f0   d3900fd8    [!A0]  MV.L1         A4,A7
000008f4   00001fda           MV.L2X        A0,B0
000008f8   500c0fda    [!B1]  MV.L2         B3,B0
000008fc   23b41fd8    [ B0]  MV.L1X        B13,A7
00000900   80001012    [ A1]  B.S2          0x000980
00000904   9011be23    [!A1]  CMPEQSP.S2X   B13,A4,B0
00000908   83333328 || [ A1]  MVK.S1        0x6666,A6
0000090c   3011be63    [!B0]  CMPGTSP.S2X   B13,A4,B0
00000910   831f7368 || [ A1]  MVKH.S1       0x3ee60000,A6
00000914   8000a35a    [ A1]  MVK.L2        0,B0
00000918   20000b10    [ B0]  B.S1          0x000958
0000091c   80002692    [ A1]  B.S2          0x000a34
00000920   31eb8528    [!B0]  MVK.S1        0xffffd70a,A3
00000924   319e11e8    [!B0]  MVKH.S1       0x3c230000,A3
00000928   31906e00    [!B0]  MPYSP.M1      A3,A4,A3
0000092c   20907e22    [ B0]  CMPEQSP.S2X   B3,A4,B1
00000930       0c6e           NOP           1
00000932       0b8b           BNOP.S2       0x97c,0
00000934   000c7e20           CMPEQSP.S1X   A3,B3,A0
00000938   d00c7e60    [!A0]  CMPGTSP.S1X   A3,B3,A0
0000093c   e2008000           .fphead       n, l, W, BU, br, nosat, 0010000b
00000940   c00dbea3    [ A0]  CMPLTSP.S2X   B13,A3,B0
00000944   d00c0fdb || [!A0]  MV.L2         B3,B0
00000948   d30c1fd8 || [!A0]  MV.L1X        B3,A6
0000094c   23341fd9    [ B0]  MV.L1X        B13,A6
00000950   d004a35a || [!A0]  MVK.L2        1,B0
00000954   330c0fd8    [!B0]  MV.L1         A3,A6
00000958   50907ea2    [!B1]  CMPLTSP.S2X   B3,A4,B1
0000095c   00000793           B.S2          0x00097c
00000960   5004a359 || [!B1]  MVK.L1        1,A0
00000964   40349e60 || [ B1]  CMPGTSP.S1X   A4,B13,A0
00000968   530c1fd8    [!B1]  MV.L1X        B3,A6
0000096c   d3100fd8    [!A0]  MV.L1         A4,A6
00000970   00001fda           MV.L2X        A0,B0
00000974   500c0fda    [!B1]  MV.L2         B3,B0
00000978   23341fd8    [ B0]  MV.L1X        B13,A6
0000097c   80001a92    [ A1]  B.S2          0x000a34
00000980   9011be23    [!A1]  CMPEQSP.S2X   B13,A4,B0
00000984   82b33329 || [ A1]  MVK.S1        0x6666,A5
00000988   822cc2e6 || [ A1]  LDW.D2T2      *+B11[6],B4
0000098c   3011be63    [!B0]  CMPGTSP.S2X   B13,A4,B0
00000990   81df3ba8 || [ A1]  MVK.S1        0xffffbe77,A3
00000994   8000a35b    [ A1]  MVK.L2        0,B0
00000998   819fbfe8 || [ A1]  MVKH.S1       0x3f7f0000,A3
0000099c   819c6e01    [ A1]  MPYSP.M1      A3,A7,A3
000009a0   20000890 || [ B0]  B.S1          0x0009e4
000009a4   829f7368    [ A1]  MVKH.S1       0x3ee60000,A5
000009a8   31eb8528    [!B0]  MVK.S1        0xffffd70a,A3
000009ac   319e11e8    [!B0]  MVKH.S1       0x3c230000,A3
000009b0   31906e00    [!B0]  MPYSP.M1      A3,A4,A3
000009b4   20907e22    [ B0]  CMPEQSP.S2X   B3,A4,B1
000009b8   022cc2e6           LDW.D2T2      *+B11[6],B4
000009bc   00001192           B.S2          0x000a2c
000009c0   000c7e20           CMPEQSP.S1X   A3,B3,A0
000009c4   d00c7e60    [!A0]  CMPGTSP.S1X   A3,B3,A0
000009c8   c00dbea3    [ A0]  CMPLTSP.S2X   B13,A3,B0
000009cc   d00c0fdb || [!A0]  MV.L2         B3,B0
000009d0   d28c1fd8 || [!A0]  MV.L1X        B3,A5
000009d4   22b41fd9    [ B0]  MV.L1X        B13,A5
000009d8   d004a35a || [!A0]  MVK.L2        1,B0
000009dc   328c0fd9    [!B0]  MV.L1         A3,A5
000009e0   01df3ba8 ||        MVK.S1        0xffffbe77,A3
000009e4   01df3ba9           MVK.S1        0xffffbe77,A3
000009e8   022cc2e7 ||        LDW.D2T2      *+B11[6],B4
000009ec   50907ea2 || [!B1]  CMPLTSP.S2X   B3,A4,B1
000009f0   019fbfe9           MVKH.S1       0x3f7f0000,A3
000009f4   5004a359 || [!B1]  MVK.L1        1,A0
000009f8   528c18f1 || [!B1]  MV.D1X        B3,A5
000009fc   00000d12 ||        B.S2          0x000a48
00000a00   019c6e01           MPYSP.M1      A3,A7,A3
00000a04   40349e61 || [ B1]  CMPGTSP.S1X   A4,B13,A0
00000a08   028937aa ||        MVK.S2        0x126f,B5
00000a0c   d2900fd9    [!A0]  MV.L1         A4,A5
00000a10   029d41ea ||        MVKH.S2       0x3a830000,B5
00000a14   00001fda           MV.L2X        A0,B0
00000a18   500c0fdb    [!B1]  MV.L2         B3,B0
00000a1c   00c48e22 ||        CMPEQSP.S2    B4,B17,B1
00000a20   018cce01           MPYSP.M1      A6,A3,A3
00000a24   22b41fd9 || [ B0]  MV.L1X        B13,A5
00000a28   000c8e22 ||        CMPEQSP.S2    B4,B3,B0
00000a2c   019fbfe8           MVKH.S1       0x3f7f0000,A3
00000a30   019c6e00           MPYSP.M1      A3,A7,A3
00000a34   028937aa           MVK.S2        0x126f,B5
00000a38   000c8e22           CMPEQSP.S2    B4,B3,B0
00000a3c   00c48e22           CMPEQSP.S2    B4,B17,B1
00000a40   029d41eb           MVKH.S2       0x3a830000,B5
00000a44   018cce00 ||        MPYSP.M1      A6,A3,A3
00000a48   50c48ea2    [!B1]  CMPLTSP.S2    B4,B17,B1
00000a4c   300c8e62    [!B0]  CMPGTSP.S2    B4,B3,B0
00000a50       2409           AND.L2        B1,B0,B0
00000a52       2047           MV.L2         B0,B1
00000a54   018cae01 ||        MPYSP.M1      A5,A3,A3
00000a58   30001991 || [!B0]  B.S1          0x000b0c
00000a5c   e2000200           .fphead       n, l, W, BU, nobr, nosat, 0010000b
00000a60   010008f3 ||        MV.D2         B0,B2
00000a64   00348e22 ||        CMPEQSP.S2    B4,B13,B0
00000a68   30348ea2    [!B0]  CMPLTSP.S2    B4,B13,B0
00000a6c   7000a35a    [!B2]  MVK.L2        0,B0
00000a70   20192120    [ B0]  BNOP.S1       0xac4,1
00000a74   030cb21b           ADDSP.L2X     B5,A3,B6
00000a78   519999a8 || [!B1]  MVK.S1        0x3333,A3
00000a7c   32eb852a    [!B0]  MVK.S2        0xffffd70a,B5
00000a80   329e11ea    [!B0]  MVKH.S2       0x3c230000,B5
00000a84   3210ae02    [!B0]  MPYSP.M2      B5,B4,B4
00000a88   0200a359           MVK.L1        0,A4
00000a8c   0b08e1ab ||        MVK.S2        0x11c3,B22
00000a90       06a7 ||        MVK.L2        0,B21
00000a92       daa3           SET.S2        B21,30,30,B21
00000a94   0220cc68 ||        MVKH.S1       0x41980000,A4
00000a98   00001511           B.S1          0x000b28
00000a9c   e2080200           .fphead       n, h, W, BU, nobr, nosat, 0010000b
00000aa0   0b3f79ea ||        MVKH.S2       0x7ef30000,B22
00000aa4   008c8e22           CMPEQSP.S2    B4,B3,B1
00000aa8   508c8e62    [!B1]  CMPGTSP.S2    B4,B3,B1
00000aac   40348e63    [ B1]  CMPGTSP.S2    B4,B13,B0
00000ab0   500c0fdb || [!B1]  MV.L2         B3,B0
00000ab4   518c1fd8 || [!B1]  MV.L1X        B3,A3
00000ab8   21b41fd9    [ B0]  MV.L1X        B13,A3
00000abc   5004a35a || [!B1]  MVK.L2        1,B0
00000ac0   31901fd8    [!B0]  MV.L1X        B4,A3
00000ac4   008c8e23           CMPEQSP.S2    B4,B3,B1
00000ac8   0200a359 ||        MVK.L1        0,A4
00000acc   0a80a35a ||        MVK.L2        0,B21
00000ad0   508c8e63    [!B1]  CMPGTSP.S2    B4,B3,B1
00000ad4   0220cc68 ||        MVKH.S1       0x41980000,A4
00000ad8   41348e63    [ B1]  CMPGTSP.S2    B4,B13,B2
00000adc   5104a35b || [!B1]  MVK.L2        1,B2
00000ae0   518c1fd8 || [!B1]  MV.L1X        B3,A3
00000ae4   00080fdb           MV.L2         B2,B0
00000ae8   71901fd9 || [!B2]  MV.L1X        B4,A3
00000aec   0b08e1aa ||        MVK.S2        0x11c3,B22
00000af0   500c0fdb    [!B1]  MV.L2         B3,B0
00000af4   0b3f79ea ||        MVKH.S2       0x7ef30000,B22
00000af8   21b41fd8    [ B0]  MV.L1X        B13,A3
00000afc   00166121           BNOP.S1       0xb38,3
00000b00   020c8e00 ||        MPYSP.M1      A4,A3,A4
00000b04   01906e00           MPYSP.M1      A3,A4,A3
00000b08   0ad7de8a           SET.S2        B21,30,30,B21
00000b0c   0a80a35b           MVK.L2        0,B21
00000b10   0b08e1ab ||        MVK.S2        0x11c3,B22
00000b14   0200a359 ||        MVK.L1        0,A4
00000b18   019f59e8 ||        MVKH.S1       0x3eb30000,A3
00000b1c   0220cc69           MVKH.S1       0x41980000,A4
00000b20   0ad7de8a ||        SET.S2        B21,30,30,B21
00000b24   0b3f79ea           MVKH.S2       0x7ef30000,B22
00000b28   020c8e00           MPYSP.M1      A4,A3,A4
00000b2c   00004000           NOP           3
00000b30   01906e00           MPYSP.M1      A3,A4,A3
00000b34   00000000           NOP           
00000b38   00002000           NOP           2
00000b3c   028db21a           ADDSP.L2X     B13,A3,B5
00000b40   00004000           NOP           3
00000b44   0216c0fa           SUB.L2        B22,B5,B4
00000b48   03948e02           MPYSP.M2      B4,B5,B7
00000b4c   00004000           NOP           3
00000b50   039ea23a           SUBSP.L2      B21,B7,B7
00000b54   00004000           NOP           3
00000b58   021c8e02           MPYSP.M2      B4,B7,B4
00000b5c   00004000           NOP           3
00000b60   03948e02           MPYSP.M2      B4,B5,B7
00000b64   00004000           NOP           3
00000b68   039ea23a           SUBSP.L2      B21,B7,B7
00000b6c   00004000           NOP           3
00000b70   039c8e03           MPYSP.M2      B4,B7,B7
00000b74   022ce2e6 ||        LDW.D2T2      *+B11[7],B4
00000b78   00004000           NOP           3
00000b7c   0294ee02           MPYSP.M2      B7,B5,B5
00000b80   00c48e22           CMPEQSP.S2    B4,B17,B1
00000b84   000c8e22           CMPEQSP.S2    B4,B3,B0
00000b88   300c8e62    [!B0]  CMPGTSP.S2    B4,B3,B0
00000b8c   50c48ea3    [!B1]  CMPLTSP.S2    B4,B17,B1
00000b90   0296a23a ||        SUBSP.L2      B21,B5,B5
00000b94       2409           AND.L2        B1,B0,B0
00000b96       2047           MV.L2         B0,B1
00000b98       404f ||        MV.S2         B0,B2
00000b9a       1046           MV.L1X        B0,A0
00000b9c   ec002800           .fphead       n, l, W, BU, nobr, nosat, 1100000b
00000ba0   30001b11 || [!B0]  B.S1          0x000c78
00000ba4   00348e22 ||        CMPEQSP.S2    B4,B13,B0
00000ba8   30348ea3    [!B0]  CMPLTSP.S2    B4,B13,B0
00000bac   d22d02e7 || [!A0]  LDW.D2T2      *+B11[8],B4
00000bb0   526666a9 || [!B1]  MVK.S1        0xffffcccd,A4
00000bb4   0414ee02 ||        MPYSP.M2      B7,B5,B8
00000bb8   7000a35b    [!B2]  MVK.L2        0,B0
00000bbc   521f2668 || [!B1]  MVKH.S1       0x3e4c0000,A4
00000bc0   201a2120    [ B0]  BNOP.S1       0xc28,1
00000bc4   52901fda    [!B1]  MV.L2X        A4,B5
00000bc8   31eb8528    [!B0]  MVK.S1        0xffffd70a,A3
00000bcc   319e11e8    [!B0]  MVKH.S1       0x3c230000,A3
00000bd0   31907e01    [!B0]  MPYSP.M1X     A3,B4,A3
00000bd4   200c8e22 || [ B0]  CMPEQSP.S2    B4,B3,B0
00000bd8   00006000           NOP           4
00000bdc   000c7e22           CMPEQSP.S2X   B3,A3,B0
00000be0   300c7ea2    [!B0]  CMPLTSP.S2X   B3,A3,B0
00000be4   32e666a9    [!B0]  MVK.S1        0xffffcccd,A5
00000be8   308c1fd8 || [!B0]  MV.L1X        B3,A1
00000bec   329f2669    [!B0]  MVKH.S1       0x3e4c0000,A5
00000bf0   320c1fd8 || [!B0]  MV.L1X        B3,A4
00000bf4   20b47e60    [ B0]  CMPGTSP.S1X   A3,B13,A1
00000bf8   00001291           B.S1          0x000c74
00000bfc   00040fd9 ||        MV.L1         A1,A0
00000c00   32941fdb || [!B0]  MV.L2X        A5,B5
00000c04   826666ab || [ A1]  MVK.S2        0xffffcccd,B4
00000c08   823418f0 || [ A1]  MV.D1X        B13,A4
00000c0c   821f266b    [ A1]  MVKH.S2       0x3e4c0000,B4
00000c10   3004a358 || [!B0]  MVK.L1        1,A0
00000c14   d20c0fd9    [!A0]  MV.L1         A3,A4
00000c18   82900fda || [ A1]  MV.L2         B4,B5
00000c1c   022d02e6           LDW.D2T2      *+B11[8],B4
00000c20   d2e666aa    [!A0]  MVK.S2        0xffffcccd,B5
00000c24   d29f266a    [!A0]  MVKH.S2       0x3e4c0000,B5
00000c28   300c8e62    [!B0]  CMPGTSP.S2    B4,B3,B0
00000c2c   3084a35b    [!B0]  MVK.L2        1,B1
00000c30   20b48e63 || [ B0]  CMPGTSP.S2    B4,B13,B1
00000c34   32e666a9 || [!B0]  MVK.S1        0xffffcccd,A5
00000c38   320c1fd8 || [!B0]  MV.L1X        B3,A4
00000c3c   329f2669    [!B0]  MVKH.S1       0x3e4c0000,A5
00000c40   53e666ab || [!B1]  MVK.S2        0xffffcccd,B7
00000c44   52101fd8 || [!B1]  MV.L1X        B4,A4
00000c48       10c6           MV.L1X        B1,A0
00000c4a       068a ||        BNOP.S1       0xc74,0
00000c4c   539f266a || [!B1]  MVKH.S2       0x3e4c0000,B7
00000c50   300c1fd9    [!B0]  MV.L1X        B3,A0
00000c54   32941fda || [!B0]  MV.L2X        A5,B5
00000c58   c26666ab    [ A0]  MVK.S2        0xffffcccd,B4
00000c5c   e0808030           .fphead       n, l, W, BU, br, nosat, 0000100b
00000c60   529c0fda || [!B1]  MV.L2         B7,B5
00000c64   c21f266a    [ A0]  MVKH.S2       0x3e4c0000,B4
00000c68   c2900fdb    [ A0]  MV.L2         B4,B5
00000c6c   022d02e6 ||        LDW.D2T2      *+B11[8],B4
00000c70   c2341fd8    [ A0]  MV.L1X        B13,A4
00000c74   00004000           NOP           3
00000c78   00c48e23           CMPEQSP.S2    B4,B17,B1
00000c7c   0191b2b8 ||        SUBSP.L1X     B13,A4,A3
00000c80   000c8e22           CMPEQSP.S2    B4,B3,B0
00000c84   50c48ea2    [!B1]  CMPLTSP.S2    B4,B17,B1
00000c88   300c8e62    [!B0]  CMPGTSP.S2    B4,B3,B0
00000c8c   0e80102b           MVK.S2        0x0020,B29
00000c90       2409 ||        AND.L2        B1,B0,B0
00000c92       2047           MV.L2         B0,B1
00000c94       404f ||        MV.S2         B0,B2
00000c96       1046           MV.L1X        B0,A0
00000c98   30001991 || [!B0]  B.S1          0x000d4c
00000c9c   e6000a00           .fphead       n, l, W, BU, nobr, nosat, 0110000b
00000ca0   00348e22 ||        CMPEQSP.S2    B4,B13,B0
00000ca4   30348ea3    [!B0]  CMPLTSP.S2    B4,B13,B0
00000ca8   d20cbe03 || [!A0]  MPYSP.M2X     B5,A3,B4
00000cac   d23a5e28 || [!A0]  MVK.S1        0x74bc,A4
00000cb0   7000a35b    [!B2]  MVK.L2        0,B0
00000cb4   53b3332a || [!B1]  MVK.S2        0x6666,B7
00000cb8   20000d91    [ B0]  B.S1          0x000d0c
00000cbc   539f736a || [!B1]  MVKH.S2       0x3ee60000,B7
00000cc0   d39da23a    [!A0]  SUBSP.L2      B13,B7,B7
00000cc4   d21d89e8    [!A0]  MVKH.S1       0x3b130000,A4
00000cc8   34eb852a    [!B0]  MVK.S2        0xffffd70a,B9
00000ccc   349e11ea    [!B0]  MVKH.S2       0x3c230000,B9
00000cd0   32112e02    [!B0]  MPYSP.M2      B9,B4,B4
00000cd4   023a5e28           MVK.S1        0x74bc,A4
00000cd8   021d89e8           MVKH.S1       0x3b130000,A4
00000cdc   00000000           NOP           
00000ce0   000c8e22           CMPEQSP.S2    B4,B3,B0
00000ce4   300c8e63    [!B0]  CMPGTSP.S2    B4,B3,B0
00000ce8   00000c10 ||        B.S1          0x000d40
00000cec   20b48e63    [ B0]  CMPGTSP.S2    B4,B13,B1
00000cf0   308c0fdb || [!B0]  MV.L2         B3,B1
00000cf4   338c08f2 || [!B0]  MV.D2         B3,B7
00000cf8   43b40fda    [ B1]  MV.L2         B13,B7
00000cfc   00041fd8           MV.L1X        B1,A0
00000d00   3004a358    [!B0]  MVK.L1        1,A0
00000d04   d3900fdb    [!A0]  MV.L2         B4,B7
00000d08   020cbe02 ||        MPYSP.M2X     B5,A3,B4
00000d0c   000c8e23           CMPEQSP.S2    B4,B3,B0
00000d10   023a5e28 ||        MVK.S1        0x74bc,A4
00000d14   300c8e63    [!B0]  CMPGTSP.S2    B4,B3,B0
00000d18       088a ||        BNOP.S1       0xd44,0
00000d1a       e8e7    [!B0]  MVK.L2        1,B1
00000d1c   e800a000           .fphead       n, l, W, BU, br, nosat, 1000000b
00000d20   20b48e63 || [ B0]  CMPGTSP.S2    B4,B13,B1
00000d24   338c08f3 || [!B0]  MV.D2         B3,B7
00000d28   021d89e8 ||        MVKH.S1       0x3b130000,A4
00000d2c   53900fdb    [!B1]  MV.L2         B4,B7
00000d30   020cbe02 ||        MPYSP.M2X     B5,A3,B4
00000d34   00041fd8           MV.L1X        B1,A0
00000d38   300c1fd8    [!B0]  MV.L1X        B3,A0
00000d3c   c3b40fda    [ A0]  MV.L2         B13,B7
00000d40   00000000           NOP           
00000d44   039da23a           SUBSP.L2      B13,B7,B7
00000d48   00000000           NOP           
00000d4c   04b5f0ab           MVK.S2        0x6be1,B9
00000d50   028c9e03 ||        MPYSP.M2X     B4,A3,B5
00000d54   022d22e6 ||        LDW.D2T2      *+B11[9],B4
00000d58   0f836ca8           MVK.S1        0x06d9,A31
00000d5c   021c9e00           MPYSP.M1X     A4,B7,A4
00000d60   049bdf6a           MVKH.S2       0x37be0000,B9
00000d64   0f9cb768           MVKH.S1       0x396e0000,A31
00000d68   00c48e23           CMPEQSP.S2    B4,B17,B1
00000d6c   01947e00 ||        MPYSP.M1X     A3,B5,A3
00000d70   000c8e22           CMPEQSP.S2    B4,B3,B0
00000d74   0910fe03           MPYSP.M2X     B7,A4,B18
00000d78   50c48ea2 || [!B1]  CMPLTSP.S2    B4,B17,B1
00000d7c   300c8e62    [!B0]  CMPGTSP.S2    B4,B3,B0
00000d80   0e0fee19           ADDSP.S1      A31,A3,A28
00000d84       2409 ||        AND.L2        B1,B0,B0
00000d86       2047           MV.L2         B0,B1
00000d88   30001813 || [!B0]  B.S2          0x000e40
00000d8c       4057 ||        MV.D2         B0,B2
00000d8e       1046           MV.L1X        B0,A0
00000d90   02c8ee03 ||        MPYSP.M2      B7,B18,B5
00000d94   00348e22 ||        CMPEQSP.S2    B4,B13,B0
00000d98   30348ea3    [!B0]  CMPLTSP.S2    B4,B13,B0
00000d9c   e1400088           .fphead       n, l, W, BU, nobr, nosat, 0001010b
00000da0   d200a359 || [!A0]  MVK.L1        0,A4
00000da4   d22d42e7 || [!A0]  LDW.D2T2      *+B11[10],B4
00000da8   518c18f0 || [!B1]  MV.D1X        B3,A3
00000dac   7000a35b    [!B2]  MVK.L2        0,B0
00000db0   d2202068 || [!A0]  MVKH.S1       0x40400000,A4
00000db4   20000c10    [ B0]  B.S1          0x000e00
00000db8   0295221a           ADDSP.L2      B9,B5,B5
00000dbc   33eb852a    [!B0]  MVK.S2        0xffffd70a,B7
00000dc0   339e11ea    [!B0]  MVKH.S2       0x3c230000,B7
00000dc4   3210ee02    [!B0]  MPYSP.M2      B7,B4,B4
00000dc8       0c6e           NOP           1
00000dca       0626           MVK.L1        0,A4
00000dcc   00001010           B.S1          0x000e40
00000dd0   008c8e23           CMPEQSP.S2    B4,B3,B1
00000dd4   02202068 ||        MVKH.S1       0x40400000,A4
00000dd8   508c8e62    [!B1]  CMPGTSP.S2    B4,B3,B1
00000ddc   e0800000           .fphead       n, l, W, BU, nobr, nosat, 0000100b
00000de0   40348e63    [ B1]  CMPGTSP.S2    B4,B13,B0
00000de4   500c0fdb || [!B1]  MV.L2         B3,B0
00000de8   518c1fd8 || [!B1]  MV.L1X        B3,A3
00000dec   21b41fd9    [ B0]  MV.L1X        B13,A3
00000df0   5004a35a || [!B1]  MVK.L2        1,B0
00000df4   31901fd9    [!B0]  MV.L1X        B4,A3
00000df8   022d42e7 ||        LDW.D2T2      *+B11[10],B4
00000dfc   00000000 ||        NOP           
00000e00   008c8e23           CMPEQSP.S2    B4,B3,B1
00000e04   0200a358 ||        MVK.L1        0,A4
00000e08   508c8e63    [!B1]  CMPGTSP.S2    B4,B3,B1
00000e0c   02202068 ||        MVKH.S1       0x40400000,A4
00000e10   5104a35b    [!B1]  MVK.L2        1,B2
00000e14   518c1fd9 || [!B1]  MV.L1X        B3,A3
00000e18   41348e62 || [ B1]  CMPGTSP.S2    B4,B13,B2
00000e1c   71901fd9    [!B2]  MV.L1X        B4,A3
00000e20   022d42e7 ||        LDW.D2T2      *+B11[10],B4
00000e24       0147 ||        MV.L2         B2,B0
00000e26       058b ||        BNOP.S2       0xe4c,0
00000e28   500c0fda    [!B1]  MV.L2         B3,B0
00000e2c   21b41fd8    [ B0]  MV.L1X        B13,A3
00000e30   020c8e00           MPYSP.M1      A4,A3,A4
00000e34   00000000           NOP           
00000e38   00c48e22           CMPEQSP.S2    B4,B17,B1
00000e3c   e0408004           .fphead       n, l, W, BU, br, nosat, 0000010b
00000e40   020c8e00           MPYSP.M1      A4,A3,A4
00000e44   00004000           NOP           3
00000e48   00c48e22           CMPEQSP.S2    B4,B17,B1
00000e4c   000c8e22           CMPEQSP.S2    B4,B3,B0
00000e50   300c8e63    [!B0]  CMPGTSP.S2    B4,B3,B0
00000e54   01906e00 ||        MPYSP.M1      A3,A4,A3
00000e58   50c48ea2    [!B1]  CMPLTSP.S2    B4,B17,B1
00000e5c   00002f7a           AND.L2        B1,B0,B0
00000e60   30001813    [!B0]  B.S2          0x000f20
00000e64       2047 ||        MV.L2         B0,B1
00000e66       4057 ||        MV.D2         B0,B2
00000e68   538c0fdb    [!B1]  MV.L2         B3,B7
00000e6c   00348e23 ||        CMPEQSP.S2    B4,B13,B0
00000e70   00801fd8 ||        MV.L1X        B0,A1
00000e74   939e2e03    [!A1]  MPYSP.M2      B17,B7,B7
00000e78   98a980fb || [!A1]  SUB.L2        B12,B10,B17
00000e7c   e0400004           .fphead       n, l, W, BU, nobr, nosat, 0000010b
00000e80   922988c3 || [!A1]  SUB.D2        B10,B12,B4
00000e84   30348ea2 || [!B0]  CMPLTSP.S2    B4,B13,B0
00000e88   98408afb    [!A1]  CMPLT.L2      B4,B16,B16
00000e8c   7000002a || [!B2]  MVK.S2        0x0000,B0
00000e90   20000b11    [ B0]  B.S1          0x000ed8
00000e94   048db21b ||        ADDSP.L2X     B13,A3,B9
00000e98   01c578f8 ||        CMPGT.L1X     A11,B17,A3
00000e9c   00407f78           AND.L1X       A3,B16,A0
00000ea0   396b852a    [!B0]  MVK.S2        0xffffd70a,B18
00000ea4   391e11ea    [!B0]  MVKH.S2       0x3c230000,B18
00000ea8   32124e02    [!B0]  MPYSP.M2      B18,B4,B4
00000eac       0c6e           NOP           1
00000eae       2c6e           NOP           2
00000eb0   000c8e22           CMPEQSP.S2    B4,B3,B0
00000eb4   300c8e63    [!B0]  CMPGTSP.S2    B4,B3,B0
00000eb8   00000c90 ||        B.S1          0x000f04
00000ebc   e1000000           .fphead       n, l, W, BU, nobr, nosat, 0001000b
00000ec0   20b48e63    [ B0]  CMPGTSP.S2    B4,B13,B1
00000ec4   308c0fdb || [!B0]  MV.L2         B3,B1
00000ec8   338c08f2 || [!B0]  MV.D2         B3,B7
00000ecc   43b40fda    [ B1]  MV.L2         B13,B7
00000ed0       10c6           MV.L1X        B1,A0
00000ed2       e866    [!B0]  MVK.L1        1,A0
00000ed4   d3900fda    [!A0]  MV.L2         B4,B7
00000ed8   000c8e22           CMPEQSP.S2    B4,B3,B0
00000edc   e2000000           .fphead       n, l, W, BU, nobr, nosat, 0010000b
00000ee0   300c8e63    [!B0]  CMPGTSP.S2    B4,B3,B0
00000ee4       048a ||        BNOP.S1       0xf04,0
00000ee6       e8e7    [!B0]  MVK.L2        1,B1
00000ee8   20b48e63 || [ B0]  CMPGTSP.S2    B4,B13,B1
00000eec   338c08f2 || [!B0]  MV.D2         B3,B7
00000ef0   53900fda    [!B1]  MV.L2         B4,B7
00000ef4   00041fd8           MV.L1X        B1,A0
00000ef8   300c1fd8    [!B0]  MV.L1X        B3,A0
00000efc   e0408008           .fphead       n, l, W, BU, br, nosat, 0000010b
00000f00   c3b40fda    [ A0]  MV.L2         B13,B7
00000f04   023140fb           SUB.L2        B10,B12,B4
00000f08   039e2e03 ||        MPYSP.M2      B17,B7,B7
00000f0c   08a985e2 ||        SUB.S2        B12,B10,B17
00000f10   08408afa           CMPLT.L2      B4,B16,B16
00000f14   01c578f8           CMPGT.L1X     A11,B17,A3
00000f18   00407f79           AND.L1X       A3,B16,A0
00000f1c   00000000 ||        NOP           
00000f20   c18c1fd9    [ A0]  MV.L1X        B3,A3
00000f24   c0810041 || [ A0]  MVK.D1        8,A1
00000f28   0f80002b ||        MVK.S2        0x0000,B31
00000f2c   cd309ec3 || [ A0]  ADDAD.D2      B12,0x4,B26
00000f30   d0004890 || [!A0]  B.S1          0x001164
00000f34   027f1d8b           SET.S2        B31,24,29,B4
00000f38   c30fff89 || [ A0]  SET.S1        A3,31,31,A6
00000f3c   c2181fd9 || [ A0]  MV.L1X        B6,A4
00000f40   cc800042 || [ A0]  MVK.D2        0,B25
00000f44   0090ee23           CMPEQSP.S2    B7,B4,B1
00000f48   c0ffff51 || [ A0]  ADDK.S1       -2,A1
00000f4c   c28c1fd9 || [ A0]  MV.L1X        B3,A5
00000f50   d9b09ec3 || [!A0]  ADDAD.D2      B12,0x4,B19
00000f54   c8240fda || [ A0]  MV.L2         B9,B16
00000f58   5090ee63    [!B1]  CMPGTSP.S2    B7,B4,B1
00000f5c   c26802e7 || [ A0]  LDW.D2T2      *+B26[0],B4
00000f60   cbb40fda || [ A0]  MV.L2         B13,B23
00000f64   cca0406b    [ A0]  MVKH.S2       0x40800000,B25
00000f68   ca280fdb || [ A0]  MV.L2         B10,B20
00000f6c   cdb089c2 || [ A0]  SUB.D2        B12,0x4,B27
00000f70   c9701fdb    [ A0]  MV.L2X        A28,B18
00000f74   c9a006a3 || [ A0]  MV.S2         B8,B19
00000f78   c89408f2 || [ A0]  MV.D2         B5,B17
00000f7c   00002000           NOP           2
00000f80   5c100fdb    [!B1]  MV.L2         B4,B24
00000f84   0010be61 ||        CMPGTSP.S1X   A5,B4,A0
00000f88   02d042e6 ||        LDW.D2T2      *+B20[2],B5
00000f8c   c21892e2    [ A0]  XOR.S2X       B4,A6,B4
00000f90   00648e22           CMPEQSP.S2    B4,B25,B0
00000f94   30648ea2    [!B0]  CMPLTSP.S2    B4,B25,B0
00000f98   326406a2    [!B0]  MV.S2         B25,B4
00000f9c   00148e63           CMPGTSP.S2    B4,B5,B0
00000fa0   0314823a ||        SUBSP.L2      B4,B5,B6
00000fa4   224806a3    [ B0]  MV.S2         B18,B4
00000fa8   32440fda || [!B0]  MV.L2         B17,B4
00000fac   00002000           NOP           2
00000fb0   02188e02           MPYSP.M2      B4,B6,B4
00000fb4   00004000           NOP           3
00000fb8   0214821a           ADDSP.L2      B4,B5,B4
00000fbc   00002000           NOP           2
00000fc0   03ec32e6           LDW.D2T2      *++B27[1],B7
00000fc4   025042f6           STW.D2T2      B4,*+B20[2]
00000fc8   035042e6           LDW.D2T2      *+B20[2],B6
00000fcc   00006000           NOP           4
00000fd0   029ac0fa           SUB.L2        B22,B6,B5
00000fd4   0218ae02           MPYSP.M2      B5,B6,B4
00000fd8   00004000           NOP           3
00000fdc   0212a23a           SUBSP.L2      B21,B4,B4
00000fe0   00004000           NOP           3
00000fe4   0290ae02           MPYSP.M2      B5,B4,B5
00000fe8   00004000           NOP           3
00000fec   0218ae02           MPYSP.M2      B5,B6,B4
00000ff0   00004000           NOP           3
00000ff4   0212a23a           SUBSP.L2      B21,B4,B4
00000ff8   00004000           NOP           3
00000ffc   0e10ae02           MPYSP.M2      B5,B4,B28
00001000   00000000           NOP           
00001004   0310d2b8           SUBSP.L1X     B6,A4,A6
00001008   00000000           NOP           
0000100c   029b8e02           MPYSP.M2      B28,B6,B5
00001010   00002000           NOP           2
00001014   021a7e02           MPYSP.M2X     B19,A6,B4
00001018   0296a23a           SUBSP.L2      B21,B5,B5
0000101c   00000000           NOP           
00001020   01189ea0           CMPLTSP.S1X   A4,B6,A2
00001024   b25c06a3    [!A2]  MV.S2         B23,B4
00001028   a490921a || [ A2]  ADDSP.L2X     B4,A4,B9
0000102c   a4178e02    [ A2]  MPYSP.M2      B28,B5,B8
00001030   00080fd8           MV.L1         A2,A0
00001034   b004a358    [!A2]  MVK.L1        1,A0
00001038   d4980fda    [!A0]  MV.L2         B6,B9
0000103c   a2212e02    [ A2]  MPYSP.M2      B9,B8,B4
00001040   00004000           NOP           3
00001044   021c8e02           MPYSP.M2      B4,B7,B4
00001048   00004000           NOP           3
0000104c   02120e02           MPYSP.M2      B16,B4,B4
00001050   00004000           NOP           3
00001054   026c02f6           STW.D2T2      B4,*+B27[0]
00001058   80fa1021    [ A1]  BDEC.S1       0xf80,A1
0000105c   4c6c02e6 || [ B1]  LDW.D2T2      *+B27[0],B24
00001060   026822e6           LDW.D2T2      *+B26[1],B4
00001064   00004000           NOP           3
00001068   0c6836f7           STW.D2T2      B24,*B26++[1]
0000106c   030fff88 ||        SET.S1        A3,31,31,A6
00001070   035042e7           LDW.D2T2      *+B20[2],B6
00001074   0010be61 ||        CMPGTSP.S1X   A5,B4,A0
00001078   5c100fda || [!B1]  MV.L2         B4,B24
0000107c   c2189dfa    [ A0]  XOR.L2X       B4,A6,B4
00001080   00648e22           CMPEQSP.S2    B4,B25,B0
00001084   30648ea2    [!B0]  CMPLTSP.S2    B4,B25,B0
00001088   32640fda    [!B0]  MV.L2         B25,B4
0000108c   0298823a           SUBSP.L2      B4,B6,B5
00001090   00188e62           CMPGTSP.S2    B4,B6,B0
00001094   32440fda    [!B0]  MV.L2         B17,B4
00001098   224806a2    [ B0]  MV.S2         B18,B4
0000109c   02148e02           MPYSP.M2      B4,B5,B4
000010a0   03ec32e6           LDW.D2T2      *++B27[1],B7
000010a4   01941fda           MV.L2X        A5,B3
000010a8   05500fda           MV.L2         B20,B10
000010ac   0218821a           ADDSP.L2      B4,B6,B4
000010b0       a7c7           MV.L2         B23,B13
000010b2       2c6e           NOP           2
000010b4   025042f6           STW.D2T2      B4,*+B20[2]
000010b8   035042e6           LDW.D2T2      *+B20[2],B6
000010bc   e2080000           .fphead       n, h, W, BU, nobr, nosat, 0010000b
000010c0   00006000           NOP           4
000010c4   029ac0fa           SUB.L2        B22,B6,B5
000010c8   0218ae02           MPYSP.M2      B5,B6,B4
000010cc   0190d2b8           SUBSP.L1X     B6,A4,A3
000010d0   01189ea0           CMPLTSP.S1X   A4,B6,A2
000010d4   00080fd8           MV.L1         A2,A0
000010d8   0892a23a           SUBSP.L2      B21,B4,B17
000010dc   b004a358    [!A2]  MVK.L1        1,A0
000010e0   020e7e02           MPYSP.M2X     B19,A3,B4
000010e4   00000000           NOP           
000010e8   02c4ae02           MPYSP.M2      B5,B17,B5
000010ec   00004000           NOP           3
000010f0   0898ae02           MPYSP.M2      B5,B6,B17
000010f4   a490921a    [ A2]  ADDSP.L2X     B4,A4,B9
000010f8   b25c0fda    [!A2]  MV.L2         B23,B4
000010fc   00000000           NOP           
00001100   08c6a23a           SUBSP.L2      B21,B17,B17
00001104   d4980fda    [!A0]  MV.L2         B6,B9
00001108       cc0d           LDW.D2T1      *B15[2],A0
0000110a       0c6e           NOP           1
0000110c   0e44ae02           MPYSP.M2      B5,B17,B28
00001110   00004000           NOP           3
00001114   029b8e02           MPYSP.M2      B28,B6,B5
00001118       d247           MV.L2X        A4,B6
0000111a       2c6e           NOP           2
0000111c   e8800000           .fphead       n, l, W, BU, nobr, nosat, 1000100b
00001120   0296a23a           SUBSP.L2      B21,B5,B5
00001124   00004000           NOP           3
00001128   a4178e02    [ A2]  MPYSP.M2      B28,B5,B8
0000112c   00004000           NOP           3
00001130   a2212e02    [ A2]  MPYSP.M2      B9,B8,B4
00001134       05c7           MV.L2         B19,B8
00001136       2447           MV.L2         B16,B9
00001138   00000000           NOP           
0000113c   e4080000           .fphead       n, h, W, BU, nobr, nosat, 0100000b
00001140   021c8e02           MPYSP.M2      B4,B7,B4
00001144   00004000           NOP           3
00001148   02120e02           MPYSP.M2      B16,B4,B4
0000114c   00004000           NOP           3
00001150   026c02f6           STW.D2T2      B4,*+B27[0]
00001154   4c6c02e7    [ B1]  LDW.D2T2      *+B27[0],B24
00001158   0000c890 ||        B.S1          0x001784
0000115c   d40c6120    [!A0]  BNOP.S1       0x2170,3
00001160   0c6836f6           STW.D2T2      B24,*B26++[1]
00001164   06cc02e5           LDW.D2T1      *+B19[0],A13
00001168       e1c7 ||        MV.L2         B3,B7
0000116a       55c6 ||        MV.L1X        B3,A10
0000116c   05800029 ||        MVK.S1        0x0000,A11
00001170   082006a2 ||        MV.S2         B8,B16
00001174   0a1fff8b           SET.S2        B7,31,31,B20
00001178   01a842e5 ||        LDW.D2T1      *+B10[2],A3
0000117c   e0800030           .fphead       n, l, W, BU, nobr, nosat, 0000100b
00001180   05a04069 ||        MVKH.S1       0x40800000,A11
00001184   0d941fd8 ||        MV.L1X        B5,A27
00001188   0fcc22e5           LDW.D2T1      *+B19[1],A31
0000118c   0f9fff8b ||        SET.S2        B7,31,31,B31
00001190   06339058 ||        SUB.L1X       B12,0x4,A12
00001194   0ecc42e5           LDW.D2T1      *+B19[2],A29
00001198   0f1fff8a ||        SET.S2        B7,31,31,B30
0000119c   0c4c62e5           LDW.D2T1      *+B19[3],A24
000011a0   0e1fff8a ||        SET.S2        B7,31,31,B28
000011a4   0029aea1           CMPLTSP.S1    A13,A10,A0
000011a8   0d9fff8a ||        SET.S2        B7,31,31,B27
000011ac   c251bdf9    [ A0]  XOR.L1X       A13,B20,A4
000011b0   d23406a1 || [!A0]  MV.S1         A13,A4
000011b4   030c08f0 ||        MV.D1         A3,A6
000011b8   002c8e20           CMPEQSP.S1    A4,A11,A0
000011bc   d02c8ea0    [!A0]  CMPLTSP.S1    A4,A11,A0
000011c0   d22c0fd8    [!A0]  MV.L1         A11,A4
000011c4   028c8238           SUBSP.L1      A4,A3,A5
000011c8   0b7c0fd8           MV.L1         A31,A22
000011cc   00188e60           CMPGTSP.S1    A4,A6,A0
000011d0   c07006a1    [ A0]  MV.S1         A28,A0
000011d4   d06c08f0 || [!A0]  MV.D1         A27,A0
000011d8   02140e00           MPYSP.M1      A0,A5,A4
000011dc   09f40fd8           MV.L1         A29,A19
000011e0   012beea0           CMPLTSP.S1    A31,A10,A2
000011e4   00abaea0           CMPLTSP.S1    A29,A10,A1
000011e8   080c8219           ADDSP.L1      A4,A3,A16
000011ec   a27ff2e1 || [ A2]  XOR.S1X       A31,B31,A4
000011f0   b27c08f0 || [!A2]  MV.D1         A31,A4
000011f4   002c8e21           CMPEQSP.S1    A4,A11,A0
000011f8   0fd41fd8 ||        MV.L1X        B21,A31
000011fc   d02c8ea0    [!A0]  CMPLTSP.S1    A4,A11,A0
00001200   d22c06a0    [!A0]  MV.S1         A11,A4
00001204   01c08e39           SUBSP.S1      A4,A16,A3
00001208   02c2d2f8 ||        SUB.L1X       B22,A16,A5
0000120c   00408e61           CMPGTSP.S1    A4,A16,A0
00001210   02160e00 ||        MPYSP.M1      A16,A5,A4
00001214   04c00fd8           MV.L1         A16,A9
00001218   d06c0fd9    [!A0]  MV.L1         A27,A0
0000121c   c07008f0 || [ A0]  MV.D1         A28,A0
00001220   018c0e00           MPYSP.M1      A0,A3,A3
00001224   0312b2b9           SUBSP.L1X     B21,A4,A6
00001228   927406a0 || [!A1]  MV.S1         A29,A4
0000122c   827bbdf9    [ A1]  XOR.L1X       A29,B30,A4
00001230   00ab0ea0 ||        CMPLTSP.S1    A24,A10,A1
00001234   002c8e21           CMPEQSP.S1    A4,A11,A0
00001238   0e981fd8 ||        MV.L1X        B6,A29
0000123c   01c06218           ADDSP.L1      A3,A16,A3
00001240   d02c8ea0    [!A0]  CMPLTSP.S1    A4,A11,A0
00001244   0318ae00           MPYSP.M1      A5,A6,A6
00001248   d22c06a0    [!A0]  MV.S1         A11,A4
0000124c   028ed2f9           SUB.L1X       B22,A3,A5
00001250   038c8e39 ||        SUBSP.S1      A4,A3,A7
00001254   0a0c08f0 ||        MV.D1         A3,A20
00001258   04146e01           MPYSP.M1      A3,A5,A8
0000125c   000c8e60 ||        CMPGTSP.S1    A4,A3,A0
00001260   02192e00           MPYSP.M1      A9,A6,A4
00001264   d06c0fd9    [!A0]  MV.L1         A27,A0
00001268   c07008f0 || [ A0]  MV.D1         A28,A0
0000126c   049c0e00           MPYSP.M1      A0,A7,A9
00001270   03a2b2b8           SUBSP.L1X     B21,A8,A7
00001274   0412b2b9           SUBSP.L1X     B21,A4,A8
00001278   926006a0 || [!A1]  MV.S1         A24,A4
0000127c   82731df9    [ A1]  XOR.L1X       A24,B28,A4
00001280   00f60e60 ||        CMPGTSP.S1    A16,A29,A1
00001284   048d2219           ADDSP.L1      A9,A3,A9
00001288   002c8e20 ||        CMPEQSP.S1    A4,A11,A0
0000128c   0a9cae01           MPYSP.M1      A5,A7,A21
00001290       a356 ||        MV.D1         A6,A5
00001292       10c7 ||        MV.L2X        A1,B0
00001294   d02c8ea0 || [!A0]  CMPLTSP.S1    A4,A11,A0
00001298   02a0ae01           MPYSP.M1      A5,A8,A5
0000129c   e2000300           .fphead       n, l, W, BU, nobr, nosat, 0010000b
000012a0   d22c0fd9 || [!A0]  MV.L1         A11,A4
000012a4       e80e ||        MV.S1         A16,A7
000012a6       c696 ||        MV.D1         A13,A6
000012a8   06cc82e5 ||        LDW.D2T1      *+B19[4],A13
000012ac   9004a35a || [!A1]  MVK.L2        1,B0
000012b0   091b40f0           MVD.M1        A6,A18
000012b4   04248e39           SUBSP.S1      A4,A9,A8
000012b8   08a6d2f8 ||        SUB.L1X       B22,A9,A17
000012bc   e040000c           .fphead       n, l, W, BU, nobr, nosat, 0000010b
000012c0   0cc52e01           MPYSP.M1      A9,A17,A25
000012c4   00248e61 ||        CMPGTSP.S1    A4,A9,A0
000012c8   0218f239 ||        SUBSP.L1X     A7,B6,A4
000012cc   03303266 ||        LDW.D1T2      *++A12[1],B6
000012d0   0194ee01           MPYSP.M1      A7,A5,A3
000012d4   c0700fd9 || [ A0]  MV.L1         A28,A0
000012d8   d06c06a1 || [!A0]  MV.S1         A27,A0
000012dc   03d808f0 ||        MV.D1         A22,A7
000012e0   03568e00           MPYSP.M1      A20,A21,A6
000012e4   0b200e01           MPYSP.M1      A0,A8,A22
000012e8   0029aea0 ||        CMPLTSP.S1    A13,A10,A0
000012ec   041f40f1           MVD.M1        A7,A8
000012f0       e2c6 ||        MV.L1         A5,A7
000012f2       698e           MV.S1         A19,A3
000012f4   028eb2b9 ||        SUBSP.L1X     B21,A3,A5
000012f8   02911e03 ||        MPYSP.M2X     B8,A4,B5
000012fc   e2000200           .fphead       n, l, W, BU, nobr, nosat, 0010000b
00001300   d23408f0 || [!A0]  MV.D1         A13,A4
00001304   098f40f1           MVD.M1        A3,A19
00001308   01e6b2b9 ||        SUBSP.L1X     B21,A25,A3
0000130c   0b9bee38 ||        SUBSP.S1      A31,A6,A23
00001310   0326c219           ADDSP.L1      A22,A9,A6
00001314   c26db2e1 || [ A0]  XOR.S1X       A13,B27,A4
00001318   0b4b40f0 ||        MVD.M1        A18,A22
0000131c   002c8e21           CMPEQSP.S1    A4,A11,A0
00001320   092340f0 ||        MVD.M1        A8,A18
00001324   8474b21b    [ A1]  ADDSP.L2X     B5,A29,B8
00001328   8d14ee01 || [ A1]  MPYSP.M1      A7,A5,A26
0000132c       ea16 ||        MV.D1         A20,A7
0000132e       6a96           MV.D1         A21,A3
00001330   088e2e01 ||        MPYSP.M1      A17,A3,A17
00001334   d02c8ea0 || [!A0]  CMPLTSP.S1    A4,A11,A0
00001338   0adc6e01           MPYSP.M1      A3,A23,A21
0000133c   e1000080           .fphead       n, l, W, BU, nobr, nosat, 0001000b
00001340   d22c06a1 || [!A0]  MV.S1         A11,A4
00001344   0c9ad2f9 ||        SUB.L1X       B22,A6,A25
00001348   01a408f0 ||        MV.D1         A9,A3
0000134c   0b988239           SUBSP.L1      A4,A6,A23
00001350   0164ce01 ||        MPYSP.M1      A6,A25,A2
00001354   0a3408f1 ||        MV.D1         A13,A20
00001358   06cca2e5 ||        LDW.D2T1      *+B19[5],A13
0000135c   00188e60 ||        CMPGTSP.S1    A4,A6,A0
00001360   045b40f1           MVD.M1        A22,A8
00001364   d06c0fd9 || [!A0]  MV.L1         A27,A0
00001368   c07006a1 || [ A0]  MV.S1         A28,A0
0000136c   34401fdb || [!B0]  MV.L2X        A16,B8
00001370   04e008f0 ||        MV.D1         A24,A9
00001374   0b446e01           MPYSP.M1      A3,A17,A22
00001378   0274e238 ||        SUBSP.L1      A7,A29,A4
0000137c   02d4ee00           MPYSP.M1      A7,A21,A5
00001380   0f2408f1           MV.D1         A9,A30
00001384   89691e03 || [ A1]  MPYSP.M2X     B8,A26,B18
00001388       0bc6 ||        MV.L1         A7,A16
0000138a       25ce ||        MV.S1         A3,A9
0000138c   075c0e00 ||        MPYSP.M1      A0,A23,A14
00001390   0ba340f1           MVD.M1        A8,A23
00001394   018be239 ||        SUBSP.L1      A31,A2,A3
00001398       074e ||        MV.S1         A6,A8
0000139a       ea96           MV.D1         A21,A7
0000139c   e8802030           .fphead       n, l, W, BU, nobr, nosat, 1000100b
000013a0   08b40fdb ||        MV.L2         B13,B17
000013a4   0b4b40f1 ||        MVD.M1        A18,A22
000013a8   035be239 ||        SUBSP.L1      A31,A22,A6
000013ac   0a1fff8b ||        SET.S2        B7,31,31,B20
000013b0   0029aea0 ||        CMPLTSP.S1    A13,A10,A0
000013b4   99440fdb    [!A1]  MV.L2         B17,B18
000013b8   00f60e61 ||        CMPGTSP.S1    A16,A29,A1
000013bc   0297e239 ||        SUBSP.L1      A31,A5,A5
000013c0   02921e03 ||        MPYSP.M2X     B16,A4,B5
000013c4   0acf40f1 ||        MVD.M1        A19,A21
000013c8   d23408f0 || [!A0]  MV.D1         A13,A4
000013cc   031a4e03           MPYSP.M2      B18,B6,B6
000013d0   0a7b40f1 ||        MVD.M1        A30,A20
000013d4   09d008f1 ||        MV.D1         A20,A19
000013d8   0f21c219 ||        ADDSP.L1      A14,A8,A30
000013dc   c251b2e0 || [ A0]  XOR.S1X       A13,B20,A4
000013e0   002c8e21           CMPEQSP.S1    A4,A11,A0
000013e4   018f2e01 ||        MPYSP.M1      A25,A3,A3
000013e8   093408f1 ||        MV.D1         A13,A18
000013ec       0d27 ||        MVK.L2        8,B2
000013ee       5b16           MV.D1X        B22,A2
000013f0   017ffcd3 ||        ADDK.S2       -7,B2
000013f4   031a2e01 ||        MPYSP.M1      A17,A6,A6
000013f8   d02c8ea0 || [!A0]  CMPLTSP.S1    A4,A11,A0
000013fc   e1000080           .fphead       n, l, W, BU, nobr, nosat, 0001000b
00001400   8474b21b    [ A1]  ADDSP.L2X     B5,A29,B8
00001404   8d14ee01 || [ A1]  MPYSP.M1      A7,A5,A26
00001408   d22c06a0 || [!A0]  MV.S1         A11,A4
0000140c   0c5f40f1           MVD.M1        A23,A24
00001410   02992e03 ||        MPYSP.M2      B9,B6,B5
00001414   0cf845e1 ||        SUB.S1        A2,A30,A25
00001418   0bf88238 ||        SUBSP.L1      A4,A30,A23
0000141c   00041fdb           MV.L2X        A1,B0
00001420   088c0fd9 ||        MV.L1         A3,A17
00001424   01e7ce01 ||        MPYSP.M1      A30,A25,A3
00001428   06ccc2e4 ||        LDW.D2T1      *+B19[6],A13
0000142c   03303267           LDW.D1T2      *++A12[1],B6
00001430   900000ab || [!A1]  MVK.S2        0x0001,B0
00001434   02752239 ||        SUBSP.L1      A9,A29,A4
00001438   03c50e01 ||        MPYSP.M1      A8,A17,A7
0000143c   00788e60 ||        CMPGTSP.S1    A4,A30,A0
00001440   34401fdb    [!B0]  MV.L2X        A16,B8
00001444   02992e01 ||        MPYSP.M1      A9,A6,A5
00001448   d06c08f1 || [!A0]  MV.D1         A27,A0
0000144c   c07006a0 || [ A0]  MV.S1         A28,A0
00001450   02b02077           STW.D1T2      B5,*-A12[1]
00001454   89691e03 || [ A1]  MPYSP.M2X     B8,A26,B18
00001458   08240fd9 ||        MV.L1         A9,A16
0000145c   04a006a1 ||        MV.S1         A8,A9
00001460   075c0e00 ||        MPYSP.M1      A0,A23,A14
00001464   617d1023    [ B2]  BDEC.S2       0x1400,B2
00001468   42302067 || [ B1]  LDW.D1T2      *-A12[1],B4
0000146c   0bdb40f1 ||        MVD.M1        A22,A23
00001470   047806a1 ||        MV.S1         A30,A8
00001474   018fe238 ||        SUBSP.L1      A31,A3,A3
00001478   039808f1           MV.D1         A6,A7
0000147c   0b5740f1 ||        MVD.M1        A21,A22
00001480   031fe239 ||        SUBSP.L1      A31,A7,A6
00001484   0a1fff8b ||        SET.S2        B7,31,31,B20
00001488   0029aea0 ||        CMPLTSP.S1    A13,A10,A0
0000148c   99440fdb    [!A1]  MV.L2         B17,B18
00001490   00f60e61 ||        CMPGTSP.S1    A16,A29,A1
00001494   0297e239 ||        SUBSP.L1      A31,A5,A5
00001498   02921e03 ||        MPYSP.M2X     B16,A4,B5
0000149c   0ad340f1 ||        MVD.M1        A20,A21
000014a0   d23408f0 || [!A0]  MV.D1         A13,A4
000014a4   031a4e03           MPYSP.M2      B18,B6,B6
000014a8   0a4f40f1 ||        MVD.M1        A19,A20
000014ac   c251b2e1 || [ A0]  XOR.S1X       A13,B20,A4
000014b0   0f21c219 ||        ADDSP.L1      A14,A8,A30
000014b4       6956 ||        MV.D1         A18,A19
000014b6       4696           MV.D1         A13,A18
000014b8   018f2e01 ||        MPYSP.M1      A25,A3,A3
000014bc   e4080800           .fphead       n, h, W, BU, nobr, nosat, 0100000b
000014c0   52601fdb || [!B1]  MV.L2X        A24,B4
000014c4   002c8e20 ||        CMPEQSP.S1    A4,A11,A0
000014c8   024c36f7           STW.D2T2      B4,*B19++[1]
000014cc   031a2e01 ||        MPYSP.M1      A17,A6,A6
000014d0   d02c8ea1 || [!A0]  CMPLTSP.S1    A4,A11,A0
000014d4   00000001 ||        NOP           
000014d8   00000001 ||        NOP           
000014dc   00000000 ||        NOP           
000014e0   06c406a3           MV.S2         B17,B13
000014e4   8474b21b || [ A1]  ADDSP.L2X     B5,A29,B8
000014e8   8d14ee01 || [ A1]  MPYSP.M1      A7,A5,A26
000014ec   d22c06a0 || [!A0]  MV.S1         A11,A4
000014f0   01a81fdb           MV.L2X        A10,B3
000014f4   0c5f40f1 ||        MVD.M1        A23,A24
000014f8   02992e03 ||        MPYSP.M2      B9,B6,B5
000014fc   08f845e1 ||        SUB.S1        A2,A30,A17
00001500   05788238 ||        SUBSP.L1      A4,A30,A10
00001504       10c7           MV.L2X        A1,B0
00001506       e9c6 ||        MV.L1         A3,A23
00001508   01c7ce00 ||        MPYSP.M1      A30,A17,A3
0000150c   00788e61           CMPGTSP.S1    A4,A30,A0
00001510   03b03267 ||        LDW.D1T2      *++A12[1],B7
00001514   900000ab || [!A1]  MVK.S2        0x0001,B0
00001518   02f52239 ||        SUBSP.L1      A9,A29,A5
0000151c   e040000c           .fphead       n, l, W, BU, nobr, nosat, 0000010b
00001520   03dd0e01 ||        MPYSP.M1      A8,A23,A7
00001524   037418f2 ||        MV.D2X        A29,B6
00001528   34401fdb    [!B0]  MV.L2X        A16,B8
0000152c   0c992e01 ||        MPYSP.M1      A9,A6,A25
00001530   d06c08f1 || [!A0]  MV.D1         A27,A0
00001534   c07006a0 || [ A0]  MV.S1         A28,A0
00001538   02b02077           STW.D1T2      B5,*-A12[1]
0000153c   89691e03 || [ A1]  MPYSP.M2X     B8,A26,B18
00001540   07280e01 ||        MPYSP.M1      A0,A10,A14
00001544   022006a1 ||        MV.S1         A8,A4
00001548       0486 ||        MV.L1         A9,A16
0000154a       cf0e           MV.S1         A30,A22
0000154c   0e5b40f1 ||        MVD.M1        A22,A28
00001550   42302067 || [ B1]  LDW.D1T2      *-A12[1],B4
00001554   040fe238 ||        SUBSP.L1      A31,A3,A8
00001558   039808f1           MV.D1         A6,A7
0000155c   e0880020           .fphead       n, h, W, BU, nobr, nosat, 0000100b
00001560   01d740f1 ||        MVD.M1        A21,A3
00001564   031fe238 ||        SUBSP.L1      A31,A7,A6
00001568   99440fdb    [!A1]  MV.L2         B17,B18
0000156c   00f60e61 ||        CMPGTSP.S1    A16,A29,A1
00001570   02e7e239 ||        SUBSP.L1      A31,A25,A5
00001574   02961e03 ||        MPYSP.M2X     B16,A5,B5
00001578   0cd340f0 ||        MVD.M1        A20,A25
0000157c   039e4e03           MPYSP.M2      B18,B7,B7
00001580   0a4f40f1 ||        MVD.M1        A19,A20
00001584   09c808f1 ||        MV.D1         A18,A19
00001588   0dd9c218 ||        ADDSP.L1      A14,A22,A27
0000158c   52601fdb    [!B1]  MV.L2X        A24,B4
00001590   04a22e00 ||        MPYSP.M1      A17,A8,A9
00001594   024c36f7           STW.D2T2      B4,*B19++[1]
00001598   041aee00 ||        MPYSP.M1      A23,A6,A8
0000159c   8474b21b    [ A1]  ADDSP.L2X     B5,A29,B8
000015a0   8d14ee00 || [ A1]  MPYSP.M1      A7,A5,A26
000015a4   0c7340f1           MVD.M1        A28,A24
000015a8   029d2e03 ||        MPYSP.M2      B9,B7,B5
000015ac   036c45e0 ||        SUB.S1        A2,A27,A6
000015b0   00041fdb           MV.L2X        A1,B0
000015b4   0ba40fd9 ||        MV.L1         A9,A23
000015b8   049b6e00 ||        MPYSP.M1      A27,A6,A9
000015bc   03b03267           LDW.D1T2      *++A12[1],B7
000015c0   900000ab || [!A1]  MVK.S2        0x0001,B0
000015c4   08f48239 ||        SUBSP.L1      A4,A29,A17
000015c8   03dece00 ||        MPYSP.M1      A22,A23,A7
000015cc   34401fdb    [!B0]  MV.L2X        A16,B8
000015d0   02a08e00 ||        MPYSP.M1      A4,A8,A5
000015d4   02b02077           STW.D1T2      B5,*-A12[1]
000015d8   89691e03 || [ A1]  MPYSP.M2X     B8,A26,B18
000015dc   08100fd9 ||        MV.L1         A4,A16
000015e0       ab4e ||        MV.S1         A22,A21
000015e2       cd8e           MV.S1         A27,A22
000015e4   0d8f40f1 ||        MVD.M1        A3,A27
000015e8   42302067 || [ B1]  LDW.D1T2      *-A12[1],B4
000015ec   04a7e238 ||        SUBSP.L1      A31,A9,A9
000015f0   03a008f1           MV.D1         A8,A7
000015f4   01e740f1 ||        MVD.M1        A25,A3
000015f8   041fe238 ||        SUBSP.L1      A31,A7,A8
000015fc   e0280002           .fphead       n, h, W, BU, nobr, nosat, 0000001b
00001600   99440fdb    [!A1]  MV.L2         B17,B18
00001604   00f60e61 ||        CMPGTSP.S1    A16,A29,A1
00001608   0297e239 ||        SUBSP.L1      A31,A5,A5
0000160c   02c61e03 ||        MPYSP.M2X     B16,A17,B5
00001610   025340f0 ||        MVD.M1        A20,A4
00001614   039e4e03           MPYSP.M2      B18,B7,B7
00001618   0a4f40f0 ||        MVD.M1        A19,A20
0000161c   52601fdb    [!B1]  MV.L2X        A24,B4
00001620   04a4ce00 ||        MPYSP.M1      A6,A9,A9
00001624   024c36f7           STW.D2T2      B4,*B19++[1]
00001628   0322ee00 ||        MPYSP.M1      A23,A8,A6
0000162c   8474b21b    [ A1]  ADDSP.L2X     B5,A29,B8
00001630   8d14ee00 || [ A1]  MPYSP.M1      A7,A5,A26
00001634   0c6f40f1           MVD.M1        A27,A24
00001638   029d2e02 ||        MPYSP.M2      B9,B7,B5
0000163c   00041fdb           MV.L2X        A1,B0
00001640   08a40fd8 ||        MV.L1         A9,A17
00001644   03b03267           LDW.D1T2      *++A12[1],B7
00001648   900000ab || [!A1]  MVK.S2        0x0001,B0
0000164c   0476a239 ||        SUBSP.L1      A21,A29,A8
00001650   03c6ce00 ||        MPYSP.M1      A22,A17,A7
00001654   34401fdb    [!B0]  MV.L2X        A16,B8
00001658   029aae00 ||        MPYSP.M1      A21,A6,A5
0000165c   02b02077           STW.D1T2      B5,*-A12[1]
00001660   89691e03 || [ A1]  MPYSP.M2X     B8,A26,B18
00001664       0ac6 ||        MV.L1         A21,A16
00001666       274e ||        MV.S1         A22,A9
00001668   42302067    [ B1]  LDW.D1T2      *-A12[1],B4
0000166c   0b0f40f0 ||        MVD.M1        A3,A22
00001670   039808f1           MV.D1         A6,A7
00001674   019340f1 ||        MVD.M1        A4,A3
00001678   021fe238 ||        SUBSP.L1      A31,A7,A4
0000167c   e0480004           .fphead       n, h, W, BU, nobr, nosat, 0000010b
00001680   99440fdb    [!A1]  MV.L2         B17,B18
00001684   00f60e61 ||        CMPGTSP.S1    A16,A29,A1
00001688   0297e239 ||        SUBSP.L1      A31,A5,A5
0000168c   02a21e03 ||        MPYSP.M2X     B16,A8,B5
00001690   0ad340f0 ||        MVD.M1        A20,A21
00001694   039e4e02           MPYSP.M2      B18,B7,B7
00001698   52601fda    [!B1]  MV.L2X        A24,B4
0000169c   024c36f7           STW.D2T2      B4,*B19++[1]
000016a0   03122e00 ||        MPYSP.M1      A17,A4,A6
000016a4   8474b21b    [ A1]  ADDSP.L2X     B5,A29,B8
000016a8   8d14ee00 || [ A1]  MPYSP.M1      A7,A5,A26
000016ac   0c5b40f1           MVD.M1        A22,A24
000016b0   029d2e02 ||        MPYSP.M2      B9,B7,B5
000016b4   00041fda           MV.L2X        A1,B0
000016b8   03b03267           LDW.D1T2      *++A12[1],B7
000016bc   900000ab || [!A1]  MVK.S2        0x0001,B0
000016c0   02752238 ||        SUBSP.L1      A9,A29,A4
000016c4   34401fdb    [!B0]  MV.L2X        A16,B8
000016c8   02992e00 ||        MPYSP.M1      A9,A6,A5
000016cc   02b02077           STW.D1T2      B5,*-A12[1]
000016d0   89691e03 || [ A1]  MPYSP.M2X     B8,A26,B18
000016d4       0486 ||        MV.L1         A9,A16
000016d6       044e           MV.S1         A16,A8
000016d8   42302067 || [ B1]  LDW.D1T2      *-A12[1],B4
000016dc   e4080800           .fphead       n, h, W, BU, nobr, nosat, 0100000b
000016e0   0b0f40f0 ||        MVD.M1        A3,A22
000016e4   039808f1           MV.D1         A6,A7
000016e8   01d740f0 ||        MVD.M1        A21,A3
000016ec   99440fdb    [!A1]  MV.L2         B17,B18
000016f0   00f60e61 ||        CMPGTSP.S1    A16,A29,A1
000016f4   0297e239 ||        SUBSP.L1      A31,A5,A5
000016f8   02921e02 ||        MPYSP.M2X     B16,A4,B5
000016fc   039e4e02           MPYSP.M2      B18,B7,B7
00001700   52601fda    [!B1]  MV.L2X        A24,B4
00001704   024c36f6           STW.D2T2      B4,*B19++[1]
00001708   8474b21b    [ A1]  ADDSP.L2X     B5,A29,B8
0000170c   8d14ee00 || [ A1]  MPYSP.M1      A7,A5,A26
00001710   0c5b40f1           MVD.M1        A22,A24
00001714   039d2e02 ||        MPYSP.M2      B9,B7,B7
00001718   00041fda           MV.L2X        A1,B0
0000171c   02b03267           LDW.D1T2      *++A12[1],B5
00001720   900000aa || [!A1]  MVK.S2        0x0001,B0
00001724   34401fda    [!B0]  MV.L2X        A16,B8
00001728   04400fdb           MV.L2         B16,B8
0000172c   03b02077 ||        STW.D1T2      B7,*-A12[1]
00001730   89691e02 || [ A1]  MPYSP.M2X     B8,A26,B18
00001734   42302067    [ B1]  LDW.D1T2      *-A12[1],B4
00001738   018f40f0 ||        MVD.M1        A3,A3
0000173c   00000000           NOP           
00001740   99440fda    [!A1]  MV.L2         B17,B18
00001744   02964e02           MPYSP.M2      B18,B5,B5
00001748   52601fda    [!B1]  MV.L2X        A24,B4
0000174c   024c36f6           STW.D2T2      B4,*B19++[1]
00001750   00000000           NOP           
00001754   0c0f40f1           MVD.M1        A3,A24
00001758   02952e02 ||        MPYSP.M2      B9,B5,B5
0000175c   00004000           NOP           3
00001760   02b00276           STW.D1T2      B5,*+A12[0]
00001764   42300266    [ B1]  LDW.D1T2      *+A12[0],B4
00001768   00004000           NOP           3
0000176c   52601fda    [!B1]  MV.L2X        A24,B4
00001770   024c36f6           STW.D2T2      B4,*B19++[1]
00001774   042842f4           STW.D2T1      A8,*+B10[2]
00001778       cc0d           LDW.D2T1      *B15[2],A0
0000177a       6c6e           NOP           4
0000177c   e8000000           .fphead       n, l, W, BU, nobr, nosat, 1000000b
00001780   d27c8120    [!A0]  BNOP.S1       0x2170,4
00001784   c0a822e6    [ A0]  LDW.D2T2      *+B10[1],B1
00001788   00006000           NOP           4
0000178c   40009611    [ B1]  B.S1          0x001c30
00001790   5228e2e6 || [!B1]  LDW.D2T2      *+B10[7],B4
00001794   51a9a2e4    [!B1]  LDW.D2T1      *+B10[13],A3
00001798   4028e2e6    [ B1]  LDW.D2T2      *+B10[7],B0
0000179c   00002000           NOP           2
000017a0   02100a5a           CMPEQ.L2      0,B4,B4
000017a4   01bc6bf9           CMPLTU.L1     A3,A15,A3
000017a8   0282142a ||        MVK.S2        0x0428,B5
000017ac   02c0006b           MVKH.S2       0x80000000,B5
000017b0       f9e6 ||        XOR.L1        A3,1,A3
000017b2       7608           AND.L1X       A3,B4,A0
000017b4   d0013e91    [!A0]  B.S1          0x002194
000017b8   c22842e6 || [ A0]  LDW.D2T2      *+B10[2],B4
000017bc   e2000000           .fphead       n, l, W, BU, nobr, nosat, 0010000b
000017c0   c1bc22e4    [ A0]  LDW.D2T1      *+B15[1],A3
000017c4   c01403e6    [ A0]  LDDW.D2T2     *+B5[0],B1:B0
000017c8   ca1423e6    [ A0]  LDDW.D2T2     *+B5[1],B21:B20
000017cc   c91443e6    [ A0]  LDDW.D2T2     *+B5[2],B19:B18
000017d0   c81463e6    [ A0]  LDDW.D2T2     *+B5[3],B17:B16
000017d4   0228c2f7           STW.D2T2      B4,*+B10[6]
000017d8       0a13 ||        MVK.S2        8,B4
000017da       72c6 ||        MV.L1X        B5,A3
000017dc   e8003000           .fphead       n, l, W, BU, nobr, nosat, 1000000b
000017e0   028cfec1 ||        ADDAD.D1      A3,0x7,A5
000017e4   008000a8 ||        MVK.S1        0x0001,A1
000017e8   04a8a2f7           STW.D2T2      B9,*+B10[5]
000017ec   0c8cfec1 ||        ADDAD.D1      A3,0x7,A25
000017f0   0d020028 ||        MVK.S1        0x0400,A26
000017f4   042882f7           STW.D2T2      B8,*+B10[4]
000017f8   0ee55ec0 ||        ADDAD.D1      A25,0xa,A29
000017fc   032862f7           STW.D2T2      B6,*+B10[3]
00001800   0364bec0 ||        ADDAD.D1      A25,0x5,A6
00001804   0b1483e7           LDDW.D2T2     *+B5[4],B23:B22
00001808   03e4fec0 ||        ADDAD.D1      A25,0x7,A7
0000180c   00a88bf7           STNDW.D2T2    B1:B0,*+B10[B4]
00001810       8893 ||        MVK.S2        12,B1
00001812       df47 ||        MV.L2X        A6,B30
00001814   0364dec0 ||        ADDAD.D1      A25,0x6,A6
00001818       d0ed           LDDW.D2T2     *B5[6],B7:B6
0000181a       92c7 ||        MV.L2X        A5,B4
0000181c   ea043300           .fphead       n, l, DW/NDW, W, nobr, nosat, 1010000b
00001820   01e53ec1 ||        ADDAD.D1      A25,0x9,A3
00001824   0f002c52 ||        ADDK.S2       88,B30
00001828   0414a3e7           LDDW.D2T2     *+B5[5],B9:B8
0000182c       2a93 ||        MVK.S2        9,B5
0000182e       9f47 ||        MV.L2X        A6,B28
00001830   02649ec0 ||        ADDAD.D1      A25,0x4,A4
00001834   0aa8abf7           STNDW.D2T2    B21:B20,*+B10[B5]
00001838       4a93 ||        MVK.S2        10,B5
0000183a       5fc7 ||        MV.L2X        A7,B26
0000183c   e90030c0           .fphead       n, l, W, BU, nobr, nosat, 1001000b
00001840   0c802c51 ||        ADDK.S1       88,A25
00001844   0fe51ec0 ||        ADDAD.D1      A25,0x8,A31
00001848   09a8abf7           STNDW.D2T2    B19:B18,*+B10[B5]
0000184c       6a93 ||        MVK.S2        11,B5
0000184e       1247 ||        MV.L2X        A4,B0
00001850   0f802c51 ||        ADDK.S1       88,A31
00001854   0c153d40 ||        ADDAW.D1      A5,0x9,A24
00001858   08a8abf7           STNDW.D2T2    B17:B16,*+B10[B5]
0000185c   e10000c0           .fphead       n, l, W, BU, nobr, nosat, 0001000b
00001860       aa93 ||        MVK.S2        13,B5
00001862       1dc7 ||        MV.L2X        A3,B24
00001864   0195fd41 ||        ADDAW.D1      A5,0xf,A3
00001868   0c002c50 ||        ADDK.S1       88,A24
0000186c   0ba82bf7           STNDW.D2T2    B23:B22,*+B10[B1]
00001870   0b741fdb ||        MV.L2X        A29,B22
00001874   0b15bd41 ||        ADDAW.D1      A5,0xd,A22
00001878   00801c2a ||        MVK.S2        0x0038,B1
0000187c   e0200003           .fphead       n, l, W, BU, nobr, nosat, 0000001b
00001880   04a8abf7           STNDW.D2T2    B9:B8,*+B10[B5]
00001884   0b002c53 ||        ADDK.S2       88,B22
00001888   0b957d40 ||        ADDAW.D1      A5,0xb,A23
0000188c       ca93           MVK.S2        14,B5
0000188e       7cc6 ||        MV.L1X        B1,A27
00001890   03656165 ||        LDDW.D1T1     *-A25[11],A7:A6
00001894   0c92fd42 ||        ADDAW.D2      B4,0x17,B25
00001898   0e927d43           ADDAW.D2      B4,0x13,B29
0000189c   e10000c0           .fphead       n, l, W, BU, nobr, nosat, 0001000b
000018a0   8a654165 || [ A1]  LDDW.D1T1     *-A25[10],A21:A20
000018a4   0e002c52 ||        ADDK.S2       88,B28
000018a8   0f923d43           ADDAW.D2      B4,0x11,B31
000018ac   89652165 || [ A1]  LDDW.D1T1     *-A25[9],A19:A18
000018b0   0d002c52 ||        ADDK.S2       88,B26
000018b4   0d92bd43           ADDAW.D2      B4,0x15,B27
000018b8   88650165 || [ A1]  LDDW.D1T1     *-A25[8],A17:A16
000018bc   00002c52 ||        ADDK.S2       88,B0
000018c0   02137d43           ADDAW.D2      B4,0x1b,B4
000018c4   0c002c53 ||        ADDK.S2       88,B24
000018c8   847d6164 || [ A1]  LDDW.D1T1     *-A31[11],A9:A8
000018cc   03a8abf7           STNDW.D2T2    B7:B6,*+B10[B5]
000018d0   0b900fdb ||        MV.L2         B4,B23
000018d4   0f173d40 ||        ADDAW.D1      A5,0x19,A30
000018d8   025961e7           LDDW.D2T2     *-B22[11],B5:B4
000018dc   0e17bd40 ||        ADDAW.D1      A5,0x1d,A28
000018e0   887161e6    [ A1]  LDDW.D2T2     *-B28[11],B17:B16
000018e4   036161e6           LDDW.D2T2     *-B24[11],B7:B6
000018e8   8a0161e6    [ A1]  LDDW.D2T2     *-B0[11],B21:B20
000018ec   897961e6    [ A1]  LDDW.D2T2     *-B30[11],B19:B18
000018f0   846961e6    [ A1]  LDDW.D2T2     *-B26[11],B9:B8
000018f4   0b802c51           ADDK.S1       88,A23
000018f8   82101fd9 || [ A1]  MV.L1X        B4,A4
000018fc   83e16174 || [ A1]  STNDW.D1T1    A7:A6,*-A24[11]
00001900   0b002c51           ADDK.S1       88,A22
00001904   82941fd9 || [ A1]  MV.L1X        B5,A5
00001908   8add6174 || [ A1]  STNDW.D1T1    A21:A20,*-A23[11]
0000190c   01802c51           ADDK.S1       88,A3
00001910   89d96174 || [ A1]  STNDW.D1T1    A19:A18,*-A22[11]
00001914   0f802c53           ADDK.S2       88,B31
00001918   888d6174 || [ A1]  STNDW.D1T1    A17:A16,*-A3[11]
0000191c   0e802c53           ADDK.S2       88,B29
00001920   8afd61f6 || [ A1]  STNDW.D2T2    B21:B20,*-B31[11]
00001924   0d802c53           ADDK.S2       88,B27
00001928   89f561f6 || [ A1]  STNDW.D2T2    B19:B18,*-B29[11]
0000192c   0c802c53           ADDK.S2       88,B25
00001930   88ed61f6 || [ A1]  STNDW.D2T2    B17:B16,*-B27[11]
00001934   0f002c51           ADDK.S1       88,A30
00001938   84e561f6 || [ A1]  STNDW.D2T2    B9:B8,*-B25[11]
0000193c   0d802c51           ADDK.S1       88,A27
00001940   0b802c53 ||        ADDK.S2       88,B23
00001944   84f96174 || [ A1]  STNDW.D1T1    A9:A8,*-A30[11]
00001948   0e002c51           ADDK.S1       88,A28
0000194c   006b6bf9 ||        CMPLTU.L1     A27,A26,A0
00001950   83dd61f7 || [ A1]  STNDW.D2T2    B7:B6,*-B23[11]
00001954   0b002c52 ||        ADDK.S2       88,B22
00001958   d080a359    [!A0]  MVK.L1        0,A1
0000195c   82f16175 || [ A1]  STNDW.D1T1    A5:A4,*-A28[11]
00001960   0c002c52 ||        ADDK.S2       88,B24
00001964   8ffff293    [ A1]  B.S2          0x0018f4
00001968   836161e7 || [ A1]  LDDW.D2T2     *-B24[11],B7:B6
0000196c   0c802c50 ||        ADDK.S1       88,A25
00001970   0d002c53           ADDK.S2       88,B26
00001974   825961e7 || [ A1]  LDDW.D2T2     *-B22[11],B5:B4
00001978   83656164 || [ A1]  LDDW.D1T1     *-A25[11],A7:A6
0000197c   0e002c53           ADDK.S2       88,B28
00001980   846961e7 || [ A1]  LDDW.D2T2     *-B26[11],B9:B8
00001984   8a654164 || [ A1]  LDDW.D1T1     *-A25[10],A21:A20
00001988   0e802c51           ADDK.S1       88,A29
0000198c   0f002c53 ||        ADDK.S2       88,B30
00001990   887161e7 || [ A1]  LDDW.D2T2     *-B28[11],B17:B16
00001994   89652164 || [ A1]  LDDW.D1T1     *-A25[9],A19:A18
00001998   0f802c51           ADDK.S1       88,A31
0000199c   00002c53 ||        ADDK.S2       88,B0
000019a0   897961e7 || [ A1]  LDDW.D2T2     *-B30[11],B19:B18
000019a4   88650164 || [ A1]  LDDW.D1T1     *-A25[8],A17:A16
000019a8   0c002c51           ADDK.S1       88,A24
000019ac   847d6165 || [ A1]  LDDW.D1T1     *-A31[11],A9:A8
000019b0   8a0161e6 || [ A1]  LDDW.D2T2     *-B0[11],B21:B20
000019b4   0280a358           MVK.L1        0,A5
000019b8   0a281fd8           MV.L1X        B10,A20
000019bc   02506266           LDW.D1T2      *+A20[3],B4
000019c0   02a11668           MVKH.S1       0x422c0000,A5
000019c4   0f80a35a           MVK.L2        0,B31
000019c8   047f1d8a           SET.S2        B31,24,29,B8
000019cc   0204a358           MVK.L1        1,A4
000019d0   000c8ea2           CMPLTSP.S2    B4,B3,B0
000019d4   23a882e6    [ B0]  LDW.D2T2      *+B10[4],B7
000019d8   0290623a           SUBSP.L2      B3,B4,B5
000019dc   320c0fda    [!B0]  MV.L2         B3,B4
000019e0   08101fda           MV.L2X        A4,B16
000019e4   0f5555aa           MVK.S2        0xffffaaab,B30
000019e8   2394ee02    [ B0]  MPYSP.M2      B7,B5,B7
000019ec   02d0a266           LDW.D1T2      *+A20[5],B5
000019f0   03001ba8           MVK.S1        0x0037,A6
000019f4   022822f4           STW.D2T1      A4,*+B10[1]
000019f8   2210e21a    [ B0]  ADDSP.L2      B7,B4,B4
000019fc   0f1e156a           MVKH.S2       0x3c2a0000,B30
00001a00   03d38940           ADD.D1        A20,0x1c,A7
00001a04   0900a358           MVK.L1        0,A18
00001a08   0210ae02           MPYSP.M2      B5,B4,B4
00001a0c   01980fd8           MV.L1         A6,A3
00001a10   0e420942           ADD.D2        B16,0x10,B28
00001a14   02001fa8           MVK.S1        0x003f,A4
00001a18   000c8e62           CMPGTSP.S2    B4,B3,B0
00001a1c   20b48e63    [ B0]  CMPGTSP.S2    B4,B13,B1
00001a20   3080a35a || [!B0]  MVK.L2        0,B1
00001a24   43340fda    [ B1]  MV.L2         B13,B6
00001a28       10c6           MV.L1X        B1,A0
00001a2a       e866    [!B0]  MVK.L1        1,A0
00001a2c   d3100fda    [!A0]  MV.L2         B4,B6
00001a30   22980fdb    [ B0]  MV.L2         B6,B5
00001a34   328c06a2 || [!B0]  MV.S2         B3,B5
00001a38   0214be02           MPYSP.M2X     B5,A5,B4
00001a3c   e0800000           .fphead       n, l, W, BU, nobr, nosat, 0000100b
00001a40   02c0093a           INTSPU.L2     B16,B5
00001a44   0a780fda           MV.L2         B30,B20
00001a48   0ac1f058           ADD.L1X       15,B16,A21
00001a4c   0211021a           ADDSP.L2      B8,B4,B4
00001a50       7ac7           MV.L2X        A5,B19
00001a52       faf2           MVK.S1        127,A5
00001a54   0b1d3d40           ADDAW.D1      A7,0x9,A22
00001a58   0210017a           SPTRUNC.L2    B4,B4
00001a5c   e2000000           .fphead       n, l, W, BU, nobr, nosat, 0010000b
00001a60   0a84a35a           MVK.L2        1,B21
00001a64   02968e02           MPYSP.M2      B20,B5,B5
00001a68   0396a9f8           CMPGTU.L1     A21,A5,A7
00001a6c   0080102a           MVK.S2        0x0020,B1
00001a70   0410d0f9           SUB.L1X       A6,B4,A8
00001a74   02506266 ||        LDW.D1T2      *+A20[3],B4
00001a78   0f00a35a           MVK.L2        0,B30
00001a7c   0fd0a267           LDW.D1T2      *+A20[5],B31
00001a80   0ea01fdb ||        MV.L2X        A8,B29
00001a84   03701fd8 ||        MV.L1X        B28,A6
00001a88   00002000           NOP           2
00001a8c   0010ae62           CMPGTSP.S2    B5,B4,B0
00001a90   23d08266    [ B0]  LDW.D1T2      *+A20[4],B7
00001a94   0310a23a           SUBSP.L2      B5,B4,B6
00001a98   00004000           NOP           3
00001a9c   2298ee02    [ B0]  MPYSP.M2      B7,B6,B5
00001aa0       07a7           MVK.L2        0,B7
00001aa2       2c6e           NOP           2
00001aa4   2290a21a    [ B0]  ADDSP.L2      B5,B4,B5
00001aa8   00004000           NOP           3
00001aac   0217ee02           MPYSP.M2      B31,B5,B4
00001ab0   00004000           NOP           3
00001ab4   010c8e62           CMPGTSP.S2    B4,B3,B2
00001ab8   60348e63    [ B2]  CMPGTSP.S2    B4,B13,B0
00001abc   e0200000           .fphead       n, l, W, BU, nobr, nosat, 0000001b
00001ac0   7000a35b || [!B2]  MVK.L2        0,B0
00001ac4   728c08f2 || [!B2]  MV.D2         B3,B5
00001ac8   28b40fda    [ B0]  MV.L2         B13,B17
00001acc   00001fd8           MV.L1X        B0,A0
00001ad0   7004a358    [!B2]  MVK.L1        1,A0
00001ad4   d8900fda    [!A0]  MV.L2         B4,B17
00001ad8   62c40fda    [ B2]  MV.L2         B17,B5
00001adc   02966e02           MPYSP.M2      B19,B5,B5
00001ae0   027b1d8a           SET.S2        B30,24,29,B4
00001ae4   00002000           NOP           2
00001ae8   0214821a           ADDSP.L2      B4,B5,B4
00001aec   02a01fda           MV.L2X        A8,B5
00001af0   0914ef5a           AND.L2        7,B5,B18
00001af4   09564ce2           SHL.S2        B21,B18,B18
00001af8   0310017a           SPTRUNC.L2    B4,B6
00001afc   04949bf8           CMPLTU.L1X    A4,B5,A9
00001b00   00004000           NOP           3
00001b04   099870f8           SUB.L1X       A3,B6,A19
00001b08   002268f9           CMPGT.L1      A19,A8,A0
00001b0c   041416a0 ||        MV.S1X        B5,A8
00001b10   0ba08709           EXTU.S1       A8,4,7,A23
00001b14   d37672fb || [!A0]  SUB.L2X       A19,B29,B6
00001b18   08967a79 ||        CMPEQ.L1X     A19,B5,A17
00001b1c   d4ffffab || [!A0]  MVK.S2        0xffffffff,B9
00001b20   c4802042 || [ A0]  MVK.D2        1,B9
00001b24   014a29b1           AND.D1        A17,A18,A2
00001b28   c34fb0fb || [ A0]  SUB.L2X       B29,A19,B6
00001b2c   001d2ff9 ||        OR.L1         A9,A7,A0
00001b30       e782 ||        SHL.S1        A23,0x7,A23
00001b32       a3f0           ADD.L1        A21,A23,A23
00001b34   0218205b ||        ADD.L2        1,B6,B4
00001b38       0c6e ||        NOP           1
00001b3a       0c6e ||        NOP           1
00001b3c   ea081200           .fphead       n, h, W, BU, nobr, nosat, 1010000b
00001b40   d45eca17    [!A0]  LDBU.D1T2     *+A23[A22],B8
00001b44   b39c205a || [!A2]  ADD.L2        1,B7,B7
00001b48   a0256120    [ A2]  BNOP.S1       0x1bd4,3
00001b4c   d4224ffa    [!A0]  OR.L2         B18,B8,B8
00001b50   d45eca37    [!A0]  STB.D1T2      B8,*+A23[A22]
00001b54   b400802a || [!A2]  MVK.S2        0x0100,B8
00001b58   0020e8fa           CMPGT.L2      B7,B8,B0
00001b5c   3410807b    [!B0]  ADD.L2        B4,B4,B8
00001b60   20000e90 || [ B0]  B.S1          0x001bd4
00001b64   012048db           CMPGT.L2      2,B8,B2
00001b68       1046 ||        MV.L1X        B0,A0
00001b6a       296f    [ A0]  MVK.S2        1,B2
00001b6c   30190afa || [!B0]  CMPLT.L2      B8,B6,B0
00001b70   7ffffc13    [!B2]  B.S2          0x001b40
00001b74   3ad42059 || [!B0]  ADD.L1        1,A21,A21
00001b78   3210c07a || [!B0]  ADD.L2        B6,B4,B4
00001b7c   e0800020           .fphead       n, l, W, BU, nobr, nosat, 0000100b
00001b80   3396a9f8    [!B0]  CMPGTU.L1     A21,A5,A7
00001b84   391aaa78    [!B0]  CMPEQ.L1      A21,A6,A18
00001b88   7ba08709    [!B2]  EXTU.S1       A8,4,7,A23
00001b8c   7914ef5b || [!B2]  AND.L2        7,B5,B18
00001b90   701d2ff9 || [!B2]  OR.L1         A9,A7,A0
00001b94   714a29b0 || [!B2]  AND.D1        A17,A18,A2
00001b98   7bdceca1    [!B2]  SHL.S1        A23,0x7,A23
00001b9c   79564ce2 || [!B2]  SHL.S2        B21,B18,B18
00001ba0   7bdea078    [!B2]  ADD.L1        A21,A23,A23
00001ba4   0295207b           ADD.L2        B9,B5,B5
00001ba8       140a ||        BNOP.S1       0x1b40,0
00001baa       262f ||        ADDK.S2       1,B4
00001bac   0914ef5a           AND.L2        7,B5,B18
00001bb0   09564ce3           SHL.S2        B21,B18,B18
00001bb4   04141fd8 ||        MV.L1X        B5,A8
00001bb8   0ba08709           EXTU.S1       A8,4,7,A23
00001bbc   e0808010           .fphead       n, l, W, BU, br, nosat, 0000100b
00001bc0   04949bf8 ||        CMPLTU.L1X    A4,B5,A9
00001bc4   08967a79           CMPEQ.L1X     A19,B5,A17
00001bc8   001d28b1 ||        OR.D1         A9,A7,A0
00001bcc       e782 ||        SHL.S1        A23,0x7,A23
00001bce       a3f0           ADD.L1        A21,A23,A23
00001bd0   014a27e0 ||        AND.S1        A17,A18,A2
00001bd4   0087e05b           SUB.L2        B1,0x1,B1
00001bd8       242f ||        ADDK.S2       1,B16
00001bda       05c6 ||        MV.L1         A19,A8
00001bdc   e9081080           .fphead       n, h, W, BU, nobr, nosat, 1001000b
00001be0   4fffd511    [ B1]  B.S1          0x001a88
00001be4   02c0093b ||        INTSPU.L2     B16,B5
00001be8   42506267 || [ B1]  LDW.D1T2      *+A20[3],B4
00001bec   4e420943 || [ B1]  ADD.D2        B16,0x10,B28
00001bf0   4900a358 || [ B1]  MVK.L1        0,A18
00001bf4   4ac1f059    [ B1]  ADD.L1X       15,B16,A21
00001bf8   4ea01fdb || [ B1]  MV.L2X        A8,B29
00001bfc   4fd0a266 || [ B1]  LDW.D1T2      *+A20[5],B31
00001c00   437016a1    [ B1]  MV.S1X        B28,A6
00001c04   4396a9f9 || [ B1]  CMPGTU.L1     A21,A5,A7
00001c08   51bc92e6 || [!B1]  LDW.D2T2      *++B15[4],B3
00001c0c   563c33e4    [!B1]  LDDW.D2T1     *++B15[1],A13:A12
00001c10   02968e03           MPYSP.M2      B20,B5,B5
00001c14   573c33e4 || [!B1]  LDDW.D2T1     *++B15[1],A15:A14
00001c18   553c33e6    [!B1]  LDDW.D2T2     *++B15[1],B11:B10
00001c1c   063c33e6           LDDW.D2T2     *++B15[1],B13:B12
00001c20       01ef           BNOP.S2       B3,0
00001c22       6577 ||        LDW.D2T1      *++B15[2],A10
00001c24       65f7           LDW.D2T1      *++B15[2],A11
00001c26       45a6           MVK.L1        2,A3
00001c28   01d02274           STW.D1T1      A3,*+A20[1]
00001c2c   00002000           NOP           2
00001c30       ecc1           ADD.L2        B1,-1,B4
00001c32       a65b           SHL.S2        B4,0x5,B5
00001c34   33a81fd9 || [!B0]  MV.L1X        B10,A7
00001c38   2000ae90 || [ B0]  B.S1          0x002194
00001c3c   e2600201           .fphead       n, l, W, BU, nobr, nosat, 0010011b
00001c40   0314093a           INTSPU.L2     B5,B6
00001c44   321c6266    [!B0]  LDW.D1T2      *+A7[3],B4
00001c48   34d555aa    [!B0]  MVK.S2        0xffffaaab,B9
00001c4c   349e156a    [!B0]  MVKH.S2       0x3c2a0000,B9
00001c50   03192e02           MPYSP.M2      B9,B6,B6
00001c54   0f9ca266           LDW.D1T2      *+A7[5],B31
00001c58   0f00a35a           MVK.L2        0,B30
00001c5c   0180a358           MVK.L1        0,A3
00001c60   0010ce62           CMPGTSP.S2    B6,B4,B0
00001c64   281c8266    [ B0]  LDW.D1T2      *+A7[4],B16
00001c68   0390c23a           SUBSP.L2      B6,B4,B7
00001c6c   01a11668           MVKH.S1       0x422c0000,A3
00001c70   0aa40fda           MV.L2         B9,B21
00001c74   02001ba8           MVK.S1        0x0037,A4
00001c78   231e0e02    [ B0]  MPYSP.M2      B16,B7,B6
00001c7c   0994205a           ADD.L2        1,B5,B19
00001c80       88c7           MV.L2         B1,B20
00001c82       19c7           MV.L2X        A3,B16
00001c84   2310c21a    [ B0]  ADDSP.L2      B6,B4,B6
00001c88   00004000           NOP           3
00001c8c   021bee02           MPYSP.M2      B31,B6,B4
00001c90   00004000           NOP           3
00001c94   000c8e62           CMPGTSP.S2    B4,B3,B0
00001c98   21348e63    [ B0]  CMPGTSP.S2    B4,B13,B2
00001c9c   e0200000           .fphead       n, l, W, BU, nobr, nosat, 0000001b
00001ca0   330c08f3 || [!B0]  MV.D2         B3,B6
00001ca4   3100a35a || [!B0]  MVK.L2        0,B2
00001ca8   64340fda    [ B2]  MV.L2         B13,B8
00001cac       1146           MV.L1X        B2,A0
00001cae       e866    [!B0]  MVK.L1        1,A0
00001cb0   d4100fda    [!A0]  MV.L2         B4,B8
00001cb4   23200fda    [ B0]  MV.L2         B8,B6
00001cb8   030cde02           MPYSP.M2X     B6,A3,B6
00001cbc   e1000000           .fphead       n, l, W, BU, nobr, nosat, 0001000b
00001cc0   027b1d8a           SET.S2        B30,24,29,B4
00001cc4   00002000           NOP           2
00001cc8   0218821a           ADDSP.L2      B4,B6,B4
00001ccc   00004000           NOP           3
00001cd0   0310017b           SPTRUNC.L2    B4,B6
00001cd4   0217a1e2 ||        ADD.S2        B29,B5,B4
00001cd8   001269fb           CMPGTU.L2     B19,B4,B0
00001cdc   009485e2 ||        SUB.S2        B4,B5,B1
00001ce0   20003991    [ B0]  B.S1          0x001eac
00001ce4   02cc093b ||        INTSPU.L2     B19,B5
00001ce8   321c6267 || [!B0]  LDW.D1T2      *+A7[3],B4
00001cec   3e4e0943 || [!B0]  ADD.D2        B19,0x10,B28
00001cf0   3acdf059 || [!B0]  ADD.L1X       15,B19,A21
00001cf4   3f00002a || [!B0]  MVK.S2        0x0000,B30
00001cf8   33003fa9    [!B0]  MVK.S1        0x007f,A6
00001cfc   389f8941 || [!B0]  ADD.D1        A7,0x1c,A17
00001d00       c9e6 || [!B0]  MVK.L1        0,A19
00001d02       eb6f || [!B0]  MVK.S2        1,B22
00001d04   341aa9f9    [!B0]  CMPGTU.L1     A21,A6,A8
00001d08   3b453d41 || [!B0]  ADDAW.D1      A17,0x9,A22
00001d0c   31f016a0 || [!B0]  MV.S1X        B28,A3
00001d10   049890f9           SUB.L1X       A4,B6,A9
00001d14   3f9ca267 || [!B0]  LDW.D1T2      *+A7[5],B31
00001d18   32801fa8 || [!B0]  MVK.S1        0x003f,A5
00001d1c   e0280001           .fphead       n, h, W, BU, nobr, nosat, 0000001b
00001d20   0296ae02           MPYSP.M2      B21,B5,B5
00001d24   0ea41fda           MV.L2X        A9,B29
00001d28   00002000           NOP           2
00001d2c   0010ae62           CMPGTSP.S2    B5,B4,B0
00001d30   239c8266    [ B0]  LDW.D1T2      *+A7[4],B7
00001d34   0310a23a           SUBSP.L2      B5,B4,B6
00001d38   00004000           NOP           3
00001d3c   2298ee02    [ B0]  MPYSP.M2      B7,B6,B5
00001d40   00004000           NOP           3
00001d44   2290a21a    [ B0]  ADDSP.L2      B5,B4,B5
00001d48   00004000           NOP           3
00001d4c   0217ee02           MPYSP.M2      B31,B5,B4
00001d50   00004000           NOP           3
00001d54   010c8e62           CMPGTSP.S2    B4,B3,B2
00001d58   60348e63    [ B2]  CMPGTSP.S2    B4,B13,B0
00001d5c   7000a35b || [!B2]  MVK.L2        0,B0
00001d60   728c08f2 || [!B2]  MV.D2         B3,B5
00001d64   29340fda    [ B0]  MV.L2         B13,B18
00001d68   00001fd8           MV.L1X        B0,A0
00001d6c   7004a358    [!B2]  MVK.L1        1,A0
00001d70   d9100fda    [!A0]  MV.L2         B4,B18
00001d74   62c80fda    [ B2]  MV.L2         B18,B5
00001d78   02960e02           MPYSP.M2      B16,B5,B5
00001d7c   027b1d8a           SET.S2        B30,24,29,B4
00001d80   00002000           NOP           2
00001d84   0214821a           ADDSP.L2      B4,B5,B4
00001d88   02a41fda           MV.L2X        A9,B5
00001d8c   0894ef5a           AND.L2        7,B5,B17
00001d90   08da2ce2           SHL.S2        B22,B17,B17
00001d94   0310017a           SPTRUNC.L2    B4,B6
00001d98   0814bbf8           CMPLTU.L1X    A5,B5,A16
00001d9c   00004000           NOP           3
00001da0   0a1890f9           SUB.L1X       A4,B6,A20
00001da4       0727 ||        MVK.L2        0,B6
00001da6       36ce           MV.S1X        B5,A9
00001da8   002688f8 ||        CMPGT.L1      A20,A9,A0
00001dac   0ba48709           EXTU.S1       A9,4,7,A23
00001db0   d3f692fb || [!A0]  SUB.L2X       A20,B29,B7
00001db4   09169a79 ||        CMPEQ.L1X     A20,B5,A18
00001db8   d4ffffab || [!A0]  MVK.S2        0xffffffff,B9
00001dbc   e0400008           .fphead       n, l, W, BU, nobr, nosat, 0000010b
00001dc0   c4802042 || [ A0]  MVK.D2        1,B9
00001dc4   014e49b1           AND.D1        A18,A19,A2
00001dc8   c3d3b0fb || [ A0]  SUB.L2X       B29,A20,B7
00001dcc   00220ff9 ||        OR.L1         A16,A8,A0
00001dd0       e782 ||        SHL.S1        A23,0x7,A23
00001dd2       a3f0           ADD.L1        A21,A23,A23
00001dd4   021c205b ||        ADD.L2        1,B7,B4
00001dd8       0c6e ||        NOP           1
00001dda       0c6e ||        NOP           1
00001ddc   ea081200           .fphead       n, h, W, BU, nobr, nosat, 1010000b
00001de0   d45eca17    [!A0]  LDBU.D1T2     *+A23[A22],B8
00001de4   b318205a || [!A2]  ADD.L2        1,B6,B6
00001de8   a0256120    [ A2]  BNOP.S1       0x1e74,3
00001dec   d4222ffa    [!A0]  OR.L2         B17,B8,B8
00001df0   d45eca37    [!A0]  STB.D1T2      B8,*+A23[A22]
00001df4   b400802a || [!A2]  MVK.S2        0x0100,B8
00001df8   0020c8fa           CMPGT.L2      B6,B8,B0
00001dfc   3410807b    [!B0]  ADD.L2        B4,B4,B8
00001e00   20000e90 || [ B0]  B.S1          0x001e74
00001e04   012048db           CMPGT.L2      2,B8,B2
00001e08       1046 ||        MV.L1X        B0,A0
00001e0a       296f    [ A0]  MVK.S2        1,B2
00001e0c   301d0afa || [!B0]  CMPLT.L2      B8,B7,B0
00001e10   7ffffc13    [!B2]  B.S2          0x001de0
00001e14   3ad42059 || [!B0]  ADD.L1        1,A21,A21
00001e18   3210e07a || [!B0]  ADD.L2        B7,B4,B4
00001e1c   e0800020           .fphead       n, l, W, BU, nobr, nosat, 0000100b
00001e20   341aa9f8    [!B0]  CMPGTU.L1     A21,A6,A8
00001e24   398eaa78    [!B0]  CMPEQ.L1      A21,A3,A19
00001e28   7ba48709    [!B2]  EXTU.S1       A9,4,7,A23
00001e2c   7894ef5b || [!B2]  AND.L2        7,B5,B17
00001e30   70220ff9 || [!B2]  OR.L1         A16,A8,A0
00001e34   714e49b0 || [!B2]  AND.D1        A18,A19,A2
00001e38   7bdceca1    [!B2]  SHL.S1        A23,0x7,A23
00001e3c   78da2ce2 || [!B2]  SHL.S2        B22,B17,B17
00001e40   7bdea078    [!B2]  ADD.L1        A21,A23,A23
00001e44   0295207b           ADD.L2        B9,B5,B5
00001e48       140a ||        BNOP.S1       0x1de0,0
00001e4a       262f ||        ADDK.S2       1,B4
00001e4c   0894ef5a           AND.L2        7,B5,B17
00001e50   08da2ce3           SHL.S2        B22,B17,B17
00001e54   04941fd8 ||        MV.L1X        B5,A9
00001e58   0ba48709           EXTU.S1       A9,4,7,A23
00001e5c   e0808010           .fphead       n, l, W, BU, br, nosat, 0000100b
00001e60   0814bbf8 ||        CMPLTU.L1X    A5,B5,A16
00001e64   09169a79           CMPEQ.L1X     A20,B5,A18
00001e68   002208b1 ||        OR.D1         A16,A8,A0
00001e6c       e782 ||        SHL.S1        A23,0x7,A23
00001e6e       a3f0           ADD.L1        A21,A23,A23
00001e70   014e47e0 ||        AND.S1        A18,A19,A2
00001e74   0087e05b           SUB.L2        B1,0x1,B1
00001e78       25af ||        ADDK.S2       1,B19
00001e7a       2646 ||        MV.L1         A20,A9
00001e7c   e9081080           .fphead       n, h, W, BU, nobr, nosat, 1001000b
00001e80   4fffd511    [ B1]  B.S1          0x001d28
00001e84   02cc093b ||        INTSPU.L2     B19,B5
00001e88   421c6267 || [ B1]  LDW.D1T2      *+A7[3],B4
00001e8c   4e4e0943 || [ B1]  ADD.D2        B19,0x10,B28
00001e90   4980a358 || [ B1]  MVK.L1        0,A19
00001e94   4ea41fdb    [ B1]  MV.L2X        A9,B29
00001e98   4f9ca266 || [ B1]  LDW.D1T2      *+A7[5],B31
00001e9c   4acdf058    [ B1]  ADD.L1X       15,B19,A21
00001ea0   441aa9f8    [ B1]  CMPGTU.L1     A21,A6,A8
00001ea4   0296ae02           MPYSP.M2      B21,B5,B5
00001ea8   41f01fd8    [ B1]  MV.L1X        B28,A3
00001eac   00504bda           CMPLTU.L2     0x2,B20,B0
00001eb0   229cc267    [ B0]  LDW.D1T2      *+A7[6],B5
00001eb4   30005810 || [!B0]  B.S1          0x002160
00001eb8   221c6266    [ B0]  LDW.D1T2      *+A7[3],B4
00001ebc   31bc92e6    [!B0]  LDW.D2T2      *++B15[4],B3
00001ec0   363c33e4    [!B0]  LDDW.D2T1     *++B15[1],A13:A12
00001ec4   373c33e4    [!B0]  LDDW.D2T1     *++B15[1],A15:A14
00001ec8   03940fdb           MV.L2         B5,B7
00001ecc   353c33e6 || [!B0]  LDDW.D2T2     *++B15[1],B11:B10
00001ed0   0110ee63           CMPGTSP.S2    B7,B4,B2
00001ed4   0410a23a ||        SUBSP.L2      B5,B4,B8
00001ed8   639c8266    [ B2]  LDW.D1T2      *+A7[4],B7
00001edc   0f00a35a           MVK.L2        0,B30
00001ee0   0f9ca266           LDW.D1T2      *+A7[5],B31
00001ee4   0e80a35a           MVK.L2        0,B29
00001ee8   000cae62           CMPGTSP.S2    B5,B3,B0
00001eec   63a0ee02    [ B2]  MPYSP.M2      B7,B8,B7
00001ef0   3080a35a    [!B0]  MVK.L2        0,B1
00001ef4   20b4ae62    [ B0]  CMPGTSP.S2    B5,B13,B1
00001ef8   0f21606a           MVKH.S2       0x42c00000,B30
00001efc   6390e21a    [ B2]  ADDSP.L2      B7,B4,B7
00001f00   43340fda    [ B1]  MV.L2         B13,B6
00001f04       10c6           MV.L1X        B1,A0
00001f06       e866    [!B0]  MVK.L1        1,A0
00001f08   021fee02           MPYSP.M2      B31,B7,B4
00001f0c   d3140fda    [!A0]  MV.L2         B5,B6
00001f10   328c0fda    [!B0]  MV.L2         B3,B5
00001f14   22980fda    [ B0]  MV.L2         B6,B5
00001f18   000c8e62           CMPGTSP.S2    B4,B3,B0
00001f1c   e0400000           .fphead       n, l, W, BU, nobr, nosat, 0000010b
00001f20   20b48e63    [ B0]  CMPGTSP.S2    B4,B13,B1
00001f24   3080a35a || [!B0]  MVK.L2        0,B1
00001f28   0397ce02           MPYSP.M2      B30,B5,B7
00001f2c       10c6           MV.L1X        B1,A0
00001f2e       e866    [!B0]  MVK.L1        1,A0
00001f30   d6900fdb    [!A0]  MV.L2         B4,B13
00001f34   02771d8a ||        SET.S2        B29,24,29,B4
00001f38   21b40fdb    [ B0]  MV.L2         B13,B3
00001f3c   e1000000           .fphead       n, l, W, BU, nobr, nosat, 0001000b
00001f40   029006a2 ||        MV.S2         B4,B5
00001f44   030e0e02           MPYSP.M2      B16,B3,B6
00001f48   0e1ca21a           ADDSP.L2      B5,B7,B28
00001f4c   02803fa8           MVK.S1        0x007f,A5
00001f50   0480a35a           MVK.L2        0,B9
00001f54   0218821a           ADDSP.L2      B4,B6,B4
00001f58   0d941fda           MV.L2X        A5,B27
00001f5c   01f01178           SPTRUNC.L1X   B28,A3
00001f60   00000000           NOP           
00001f64   0290017a           SPTRUNC.L2    B4,B5
00001f68   00000000           NOP           
00001f6c   040e0940           ADD.D1        A3,0x10,A8
00001f70   00000000           NOP           
00001f74   03a37bfa           CMPLTU.L2X    B27,A8,B7
00001f78       9ae0           SUB.L1X       A4,B5,A6
00001f7a       fa32 ||        MVK.S1        63,A4
00001f7c   e8001000           .fphead       n, l, W, BU, nobr, nosat, 1000000b
00001f80   01988709           EXTU.S1       A6,4,7,A3
00001f84       ce68 ||        CMPGTU.L1     A6,A4,A0
00001f86       086f    [ A0]  MVK.S2        0,B0
00001f88   d01c0a5b || [!A0]  CMPEQ.L2      0,B7,B0
00001f8c       e582 ||        SHL.S1        A3,0x7,A3
00001f8e       ab6f    [ B0]  MVK.S2        1,B6
00001f90   018d0079 ||        ADD.L1        A8,A3,A3
00001f94   32901fdb || [!B0]  MV.L2X        A4,B5
00001f98   30000d90 || [!B0]  B.S1          0x001fec
00001f9c   e1400088           .fphead       n, l, W, BU, nobr, nosat, 0001010b
00001fa0   018ce079           ADD.L1        A7,A3,A3
00001fa4   3418bbfa || [!B0]  CMPLTU.L2X    B5,A6,B8
00001fa8   018d1ec1           ADDAD.D1      A3,0x8,A3
00001fac   2298ff5a || [ B0]  AND.L2X       7,A6,B5
00001fb0   31a3e059    [!B0]  SUB.L1        A8,0x1,A3
00001fb4   220c0217 || [ B0]  LDBU.D1T2     *+A3[0],B4
00001fb8   2298ace2 || [ B0]  SHL.S2        B6,B5,B5
00001fbc   301469f8    [!B0]  CMPGTU.L1     A3,A5,A0
00001fc0   d0200a5b    [!A0]  CMPEQ.L2      0,B8,B0
00001fc4   c02406a2 || [ A0]  MV.S2         B9,B0
00001fc8       2c6e           NOP           2
00001fca       b24f           MV.S2X        A4,B5
00001fcc   0210affa ||        OR.L2         B5,B4,B4
00001fd0   020c0237           STB.D1T2      B4,*+A3[0]
00001fd4   01a3e059 ||        SUB.L1        A8,0x1,A3
00001fd8   0418bbfa ||        CMPLTU.L2X    B5,A6,B8
00001fdc   e0800020           .fphead       n, l, W, BU, nobr, nosat, 0000100b
00001fe0   001469f8           CMPGTU.L1     A3,A5,A0
00001fe4   c02406a3    [ A0]  MV.S2         B9,B0
00001fe8   d0200a5a || [!A0]  CMPEQ.L2      0,B8,B0
00001fec   30000810    [!B0]  B.S1          0x002020
00001ff0   01988708           EXTU.S1       A6,4,7,A3
00001ff4   018ceca0           SHL.S1        A3,0x7,A3
00001ff8   018d0078           ADD.L1        A8,A3,A3
00001ffc   018ce078           ADD.L1        A7,A3,A3
00002000   01801fd0           ADDK.S1       63,A3
00002004   020c0216           LDBU.D1T2     *+A3[0],B4
00002008   0304a35a           MVK.L2        1,B6
0000200c   0298ff5a           AND.L2X       7,A6,B5
00002010   0298ace2           SHL.S2        B6,B5,B5
00002014   00000000           NOP           
00002018   0210affa           OR.L2         B5,B4,B4
0000201c   020c0236           STB.D1T2      B4,*+A3[0]
00002020   01a02058           ADD.L1        1,A8,A3
00002024   01988709           EXTU.S1       A6,4,7,A3
00002028       6ee8 ||        CMPGTU.L1     A3,A5,A0
0000202a       e582           SHL.S1        A3,0x7,A3
0000202c   c02406a3 || [ A0]  MV.S2         B9,B0
00002030   d0200a5a || [!A0]  CMPEQ.L2      0,B8,B0
00002034   30000c91    [!B0]  B.S1          0x002084
00002038   018d0079 ||        ADD.L1        A8,A3,A3
0000203c   e0800020           .fphead       n, l, W, BU, nobr, nosat, 0000100b
00002040   2218ff5b || [ B0]  AND.L2X       7,A6,B4
00002044       aaef || [ B0]  MVK.S2        1,B5
00002046       e1b0           ADD.L1        A7,A3,A3
00002048   22148ce2 || [ B0]  SHL.S2        B5,B4,B4
0000204c   018020d0           ADDK.S1       65,A3
00002050   319be059    [!B0]  SUB.L1        A6,0x1,A3
00002054   230c0216 || [ B0]  LDBU.D1T2     *+A3[0],B6
00002058   301069f8    [!B0]  CMPGTU.L1     A3,A4,A0
0000205c   e0400008           .fphead       n, l, W, BU, nobr, nosat, 0000010b
00002060   d01c0a5b    [!A0]  CMPEQ.L2      0,B7,B0
00002064   c02406a2 || [ A0]  MV.S2         B9,B0
00002068   00002000           NOP           2
0000206c   02188ffa           OR.L2         B4,B6,B4
00002070   020c0237           STB.D1T2      B4,*+A3[0]
00002074       ef30 ||        ADD.L1        A6,-1,A3
00002076       6e68           CMPGTU.L1     A3,A4,A0
00002078   c02406a3    [ A0]  MV.S2         B9,B0
0000207c   e4000000           .fphead       n, l, W, BU, nobr, nosat, 0100000b
00002080   d01c0a5a || [!A0]  CMPEQ.L2      0,B7,B0
00002084   30000c91    [!B0]  B.S1          0x0020e4
00002088   00800fda ||        MV.L2         B0,B1
0000208c   028c8709           EXTU.S1       A3,4,7,A5
00002090   31982058 || [!B0]  ADD.L1        1,A6,A3
00002094   301069f9    [!B0]  CMPGTU.L1     A3,A4,A0
00002098   0294eca0 ||        SHL.S1        A5,0x7,A5
0000209c   02950079           ADD.L1        A8,A5,A5
000020a0   d01c0a5b || [!A0]  CMPEQ.L2      0,B7,B0
000020a4   c02406a2 || [ A0]  MV.S2         B9,B0
000020a8   4004a35b    [ B1]  MVK.L2        1,B0
000020ac   0294e078 ||        ADD.L1        A7,A5,A5
000020b0   30001411    [!B0]  B.S1          0x002140
000020b4   02951ec0 ||        ADDAD.D1      A5,0x8,A5
000020b8       12ec           LDBU.D1T2     *A5[0],B6
000020ba       2730 ||        ADD.L1        A6,1,A3
000020bc   e8003000           .fphead       n, l, W, BU, nobr, nosat, 1000000b
000020c0   028cff5b ||        AND.L2X       7,A3,B5
000020c4       2213 ||        MVK.S2        1,B4
000020c6       6e68           CMPGTU.L1     A3,A4,A0
000020c8   0210ace2           SHL.S2        B4,B5,B4
000020cc   d01c0a5a    [!A0]  CMPEQ.L2      0,B7,B0
000020d0   c0240fda    [ A0]  MV.L2         B9,B0
000020d4   02188ffa           OR.L2         B4,B6,B4
000020d8   30001011    [!B0]  B.S1          0x002140
000020dc   e0400000           .fphead       n, l, W, BU, nobr, nosat, 0000010b
000020e0   02140236 ||        STB.D1T2      B4,*+A5[0]
000020e4   220c8709    [ B0]  EXTU.S1       A3,4,7,A4
000020e8   31bc92e6 || [!B0]  LDW.D2T2      *++B15[4],B3
000020ec   2210eca1    [ B0]  SHL.S1        A4,0x7,A4
000020f0   363c33e4 || [!B0]  LDDW.D2T1     *++B15[1],A13:A12
000020f4   22110079    [ B0]  ADD.L1        A8,A4,A4
000020f8   373c33e4 || [!B0]  LDDW.D2T1     *++B15[1],A15:A14
000020fc   2210e079    [ B0]  ADD.L1        A7,A4,A4
00002100   353c33e6 || [!B0]  LDDW.D2T2     *++B15[1],B11:B10
00002104   22111ec1    [ B0]  ADDAD.D1      A4,0x8,A4
00002108   363c33e6 || [!B0]  LDDW.D2T2     *++B15[1],B13:B12
0000210c       124c           LDBU.D1T2     *A4[0],B4
0000210e       2727           MVK.L2        1,B6
00002110   028cff5a           AND.L2X       7,A3,B5
00002114   0298ace2           SHL.S2        B6,B5,B5
00002118   00000000           NOP           
0000211c   e1000000           .fphead       n, l, W, BU, nobr, nosat, 0001000b
00002120   0210affa           OR.L2         B5,B4,B4
00002124   02100236           STB.D1T2      B4,*+A4[0]
00002128   01bc92e6           LDW.D2T2      *++B15[4],B3
0000212c       c677           LDDW.D2T1     *++B15[1],A13:A12
0000212e       c777           LDDW.D2T1     *++B15[1],A15:A14
00002130       d577           LDDW.D2T2     *++B15[1],B11:B10
00002132       d677           LDDW.D2T2     *++B15[1],B13:B12
00002134       0c6e ||        NOP           1
00002136       0c6e ||        NOP           1
00002138       0c6e ||        NOP           1
0000213a       0c6e ||        NOP           1
0000213c   ef001e00           .fphead       n, l, W, BU, nobr, nosat, 1111000b
00002140       6577           LDW.D2T1      *++B15[2],A10
00002142       01ef ||        BNOP.S2       B3,0
00002144   049d0277 ||        STW.D1T2      B9,*+A7[8]
00002148       25a6 ||        MVK.L1        1,A3
0000214a       65f7           LDW.D2T1      *++B15[2],A11
0000214c   049d2276 ||        STW.D1T2      B9,*+A7[9]
00002150       e1b4           STW.D1T1      A3,*A7[7]
00002152       7486           MV.L1X        B9,A3
00002154   019c2274           STW.D1T1      A3,*+A7[1]
00002158   049d6276           STW.D1T2      B9,*+A7[11]
0000215c   e2a00023           .fphead       n, l, W, BU, nobr, nosat, 0010101b
00002160       d677           LDDW.D2T2     *++B15[1],B13:B12
00002162       01ef           BNOP.S2       B3,0
00002164       6577 ||        LDW.D2T1      *++B15[2],A10
00002166       65f7           LDW.D2T1      *++B15[2],A11
00002168   0250205a           ADD.L2        1,B20,B4
0000216c       31c4           STW.D1T2      B4,*A7[1]
0000216e       2c6e           NOP           2
00002170   01bc92e7           LDW.D2T2      *++B15[4],B3
00002174       0627 ||        MVK.L2        0,B4
00002176       c677           LDDW.D2T1     *++B15[1],A13:A12
00002178   073c33e4           LDDW.D2T1     *++B15[1],A15:A14
0000217c   e5600002           .fphead       n, l, W, BU, nobr, nosat, 0101011b
00002180   022822f6           STW.D2T2      B4,*+B10[1]
00002184       d577           LDDW.D2T2     *++B15[1],B11:B10
00002186       d677           LDDW.D2T2     *++B15[1],B13:B12
00002188       6577           LDW.D2T1      *++B15[2],A10
0000218a       01ef ||        BNOP.S2       B3,0
0000218c       65f7           LDW.D2T1      *++B15[2],A11
0000218e       6c6e           NOP           4
00002190   022822f6           STW.D2T2      B4,*+B10[1]
00002194   01bc92e6           LDW.D2T2      *++B15[4],B3
00002198       c677           LDDW.D2T1     *++B15[1],A13:A12
0000219a       c777           LDDW.D2T1     *++B15[1],A15:A14
0000219c   e9c00010           .fphead       n, l, W, BU, nobr, nosat, 1001110b
000021a0   053c33e6           LDDW.D2T2     *++B15[1],B11:B10
000021a4   063c33e6           LDDW.D2T2     *++B15[1],B13:B12
000021a8   053c52e5           LDW.D2T1      *++B15[2],A10
000021ac   000c0362 ||        B.S2          B3
000021b0   05bc52e4           LDW.D2T1      *++B15[2],A11
000021b4   00006000           NOP           4
000021b8   00000000           NOP           
000021bc   00000000           NOP           
000021c0       caf3           MVK.S2        110,B5
000021c2       0246 ||        MV.L1         A4,A0
000021c4   c29042b7    [ A0]  STB.D2T2      B5,*+B4[2]
000021c8       a9d2 ||        MVK.S1        77,A3
000021ca       72d3           MVK.S2        83,B5
000021cc   c19002b4 || [ A0]  STB.D2T1      A3,*+B4[0]
000021d0   d29002b7    [!A0]  STB.D2T2      B5,*+B4[0]
000021d4       e9f2 ||        MVK.S1        111,A3
000021d6       01ef           BNOP.S2       B3,0
000021d8   c19062b4 || [ A0]  STB.D2T1      A3,*+B4[3]
000021dc   e4a00821           .fphead       n, l, W, BU, nobr, nosat, 0100101b
000021e0   c19022b5    [ A0]  STB.D2T1      A3,*+B4[1]
000021e4       12f3 ||        MVK.S2        112,B5
000021e6       05a6           MVK.L1        0,A3
000021e8   d29042b6 || [!A0]  STB.D2T2      B5,*+B4[2]
000021ec   c19082b5    [ A0]  STB.D2T1      A3,*+B4[4]
000021f0       06a7 ||        MVK.L2        0,B5
000021f2       a1f2           MVK.S1        101,A3
000021f4   d29062b7 || [!A0]  STB.D2T2      B5,*+B4[3]
000021f8   0210a358 ||        MVK.L1        4,A4
000021fc   e2400208           .fphead       n, l, W, BU, nobr, nosat, 0010010b
00002200   d19022b5    [!A0]  STB.D2T1      A3,*+B4[1]
00002204   d20ca358 || [!A0]  MVK.L1        3,A4
00002208   00000000           NOP           
0000220c   00000000           NOP           
00002210   00000000           NOP           
00002214   00000000           NOP           
00002218   00000000           NOP           
0000221c   00000000           NOP           
00002220       31f7           STW.D2T2      B3,*B15--[2]
00002222       c246 ||        MV.L1         A4,A6
00002224   0f9be266           LDW.D1T2      *+A6[31],B31
00002228       210c           LDW.D1T1      *A6[1],A0
0000222a       014c           LDW.D1T1      *A6[0],A4
0000222c   10002813 ||        CALLP.S2      0x002360,B3
00002230       0627 ||        MVK.L2        0,B4
00002232       1247           MV.L2X        A4,B0
00002234   201ca120    [ B0]  BNOP.S1       0x2258,5
00002238   0198e264           LDW.D1T1      *+A6[7],A3
0000223c   e2a00021           .fphead       n, l, W, BU, nobr, nosat, 0010101b
00002240   03333328           MVK.S1        0x6666,A6
00002244   03221868           MVKH.S1       0x44300000,A6
00002248       8046           MV.L1         A0,A4
0000224a       0c6e           NOP           1
0000224c   000c1362           B.S2X         A3
00002250   01858162           ADDKPC.S2     0x2254,B3,4
00002254   001ca120           BNOP.S1       0x2278,5
00002258       e13c           LDW.D1T1      *A6[7],A3
0000225a       71f7           LDW.D2T2      *++B15[2],B3
0000225c   e8800000           .fphead       n, l, W, BU, nobr, nosat, 1000100b
00002260   02b33328           MVK.S1        0x6666,A5
00002264   02a21868           MVKH.S1       0x44300000,A5
00002268   02003faa           MVK.S2        0x007f,B4
0000226c   000c1362           B.S2X         A3
00002270       c2c6           MV.L1         A5,A6
00002272       f603           SHL.S2        B4,0x17,B4
00002274       8046           MV.L1         A0,A4
00002276       2c6e           NOP           2
00002278       71f7           LDW.D2T2      *++B15[2],B3
0000227a       a1ef           BNOP.S2       B3,5
0000227c   ee100000           .fphead       p, l, W, BU, nobr, nosat, 1110000b
00002280       31f7           STW.D2T2      B3,*B15--[2]
00002282       e246 ||        MV.L1         A4,A7
00002284   0f9fe266           LDW.D1T2      *+A7[31],B31
00002288       218c           LDW.D1T1      *A7[1],A0
0000228a       01cc           LDW.D1T1      *A7[0],A4
0000228c   10001c13 ||        CALLP.S2      0x002360,B3
00002290       4627 ||        MVK.L2        2,B4
00002292       f712           MVK.S1        151,A6
00002294       0646           MV.L1         A4,A8
00002296       fe72 ||        MVK.S1        255,A4
00002298   10001c13           CALLP.S2      0x002360,B3
0000229c   e6a00421           .fphead       n, l, W, BU, nobr, nosat, 0110101b
000022a0   0f9ea267 ||        LDW.D1T2      *+A7[21],B31
000022a4       d602 ||        SHL.S1        A4,0x16,A4
000022a6       0627 ||        MVK.L2        0,B4
000022a8       1b77 ||        MVK.D2        0,B6
000022aa       e1bc           LDW.D1T1      *A7[7],A3
000022ac   01bc52e6           LDW.D2T2      *++B15[2],B3
000022b0   02b3332a           MVK.S2        0x6666,B5
000022b4   02a2186a           MVKH.S2       0x44300000,B5
000022b8   02101fda           MV.L2X        A4,B4
000022bc   e0c0000c           .fphead       n, l, W, BU, nobr, nosat, 0000110b
000022c0   000c1362           B.S2X         A3
000022c4       9212           MVK.S1        20,A4
000022c6       0240           ADD.L1        A0,A4,A4
000022c8       d2c6           MV.L1X        B5,A6
000022ca       2c6e           NOP           2
000022cc       31f7           STW.D2T2      B3,*B15--[2]
000022ce       e246 ||        MV.L1         A4,A7
000022d0   0f9fe266           LDW.D1T2      *+A7[31],B31
000022d4       218c           LDW.D1T1      *A7[1],A0
000022d6       01cc           LDW.D1T1      *A7[0],A4
000022d8   10001413 ||        CALLP.S2      0x002360,B3
000022dc   e5c00840           .fphead       n, l, W, BU, nobr, nosat, 0101110b
000022e0       6627 ||        MVK.L2        3,B4
000022e2       f712           MVK.S1        151,A6
000022e4       0646           MV.L1         A4,A8
000022e6       fe72 ||        MVK.S1        255,A4
000022e8   10001013           CALLP.S2      0x002360,B3
000022ec   0f9ea267 ||        LDW.D1T2      *+A7[21],B31
000022f0       d602 ||        SHL.S1        A4,0x16,A4
000022f2       0627 ||        MVK.L2        0,B4
000022f4       1b77 ||        MVK.D2        0,B6
000022f6       e1bc           LDW.D1T1      *A7[7],A3
000022f8   01bc52e6           LDW.D2T2      *++B15[2],B3
000022fc   e6600304           .fphead       n, l, W, BU, nobr, nosat, 0110011b
00002300   02b3332a           MVK.S2        0x6666,B5
00002304   02a2186a           MVKH.S2       0x44300000,B5
00002308   02101fda           MV.L2X        A4,B4
0000230c   000c1362           B.S2X         A3
00002310       1a12           MVK.S1        24,A4
00002312       0240           ADD.L1        A0,A4,A4
00002314       d2c6           MV.L1X        B5,A6
00002316       2c6e           NOP           2
00002318   10001c10           CALLP.S1      0x0023e0,A3
0000231c   e6000000           .fphead       n, l, W, BU, nobr, nosat, 0110000b
00002320       0246           MV.L1         A4,A0
00002322       4646           MV.L1         A4,A10
00002324       a256 ||        MV.D1         A4,A5
00002326       0e12 ||        MVK.S1        136,A4
00002328       0240           ADD.L1        A0,A4,A4
0000232a       000c           LDW.D1T1      *A4[0],A0
0000232c   0201bc2a           MVK.S2        0x0378,B4
00002330   0240006a           MVKH.S2       0x80000000,B4
00002334       20cc           LDW.D1T1      *A5[1],A4
00002336       9b12           MVK.S1        28,A6
00002338   10000813           CALLP.S2      0x002360,B3
0000233c   e4e00006           .fphead       n, l, W, BU, nobr, nosat, 0100111b
00002340   0f801fda ||        MV.L2X        A0,B31
00002344   1fffe813           CALLP.S2      0x002280,B3
00002348   02280fd8 ||        MV.L1         A10,A4
0000234c   1ffff193           CALLP.S2      0x0022cc,B3
00002350   02280fd8 ||        MV.L1         A10,A4
00002354   10001010           CALLP.S1      0x0023c0,A3
00002358   00000000           NOP           
0000235c   00000000           NOP           
00002360   013c54f4           STW.D2T1      A2,*B15--[2]
00002364   007c0363           B.S2          B31
00002368       8377 ||        STDW.D2T1     A7:A6,*B15--[1]
0000236a       8077           STDW.D2T1     A1:A0,*B15--[1]
0000236c       9377           STDW.D2T2     B7:B6,*B15--[1]
0000236e       9277           STDW.D2T2     B5:B4,*B15--[1]
00002370       9077           STDW.D2T2     B1:B0,*B15--[1]
00002372       9177           STDW.D2T2     B3:B2,*B15--[1]
00002374   01860162 ||        ADDKPC.S2     0x2378,B3,0
00002378       d177           LDDW.D2T2     *++B15[1],B3:B2
0000237a       d077           LDDW.D2T2     *++B15[1],B1:B0
0000237c   eb800200           .fphead       n, l, W, BU, nobr, nosat, 1011100b
00002380   023c33e6           LDDW.D2T2     *++B15[1],B5:B4
00002384   033c33e6           LDDW.D2T2     *++B15[1],B7:B6
00002388   003c33e4           LDDW.D2T1     *++B15[1],A1:A0
0000238c   000c0363           B.S2          B3
00002390   033c33e4 ||        LDDW.D2T1     *++B15[1],A7:A6
00002394   013c52e4           LDW.D2T1      *++B15[2],A2
00002398   00006000           NOP           4
0000239c   00000000           NOP           
000023a0       21ef           BNOP.S2       B3,1
000023a2       8426           MVK.L1        4,A0
000023a4   00015c2a ||        MVK.S2        0x02b8,B0
000023a8   0080f229           MVK.S1        0x01e4,A1
000023ac   0040006b ||        MVKH.S2       0x80000000,B0
000023b0       0204 ||        STB.D1T1      A0,*A4[0]
000023b2       3004           STW.D1T2      B0,*A4[1]
000023b4   00c00068 ||        MVKH.S1       0x80000000,A1
000023b8   00904274           STW.D1T1      A1,*+A4[2]
000023bc   e2200202           .fphead       n, l, W, BU, nobr, nosat, 0010001b
000023c0       d177           LDDW.D2T2     *++B15[1],B3:B2
000023c2       c577           LDDW.D2T1     *++B15[1],A11:A10
000023c4       d577           LDDW.D2T2     *++B15[1],B11:B10
000023c6       c677           LDDW.D2T1     *++B15[1],A13:A12
000023c8       d677           LDDW.D2T2     *++B15[1],B13:B12
000023ca       01ef           BNOP.S2       B3,0
000023cc       c777 ||        LDDW.D2T1     *++B15[1],A15:A14
000023ce       7777           LDW.D2T2      *++B15[2],B14
000023d0   00006000           NOP           4
000023d4   00000000           NOP           
000023d8   00000000           NOP           
000023dc   e1e00020           .fphead       n, l, W, BU, nobr, nosat, 0001111b
000023e0   073c54f6           STW.D2T2      B14,*B15--[2]
000023e4   000c1363           B.S2X         A3
000023e8       8777 ||        STDW.D2T1     A15:A14,*B15--[1]
000023ea       9677           STDW.D2T2     B13:B12,*B15--[1]
000023ec       8677           STDW.D2T1     A13:A12,*B15--[1]
000023ee       9577           STDW.D2T2     B11:B10,*B15--[1]
000023f0       8577           STDW.D2T1     A11:A10,*B15--[1]
000023f2       9177           STDW.D2T2     B3:B2,*B15--[1]
000023f4   00000000           NOP           
000023f8   00000000           NOP           
000023fc   e3800000           .fphead       n, l, W, BU, nobr, nosat, 0011100b
00002400       31f7           STW.D2T2      B3,*B15--[2]
00002402       c246 ||        MV.L1         A4,A6
00002404   0f9be266           LDW.D1T2      *+A6[31],B31
00002408       210c           LDW.D1T1      *A6[1],A0
0000240a       014c           LDW.D1T1      *A6[0],A4
0000240c   10002813 ||        CALLP.S2      0x002540,B3
00002410       0627 ||        MVK.L2        0,B4
00002412       1247           MV.L2X        A4,B0
00002414   201ca120    [ B0]  BNOP.S1       0x2438,5
00002418   0198e264           LDW.D1T1      *+A6[7],A3
0000241c   e2a00021           .fphead       n, l, W, BU, nobr, nosat, 0010101b
00002420   03333328           MVK.S1        0x6666,A6
00002424   03221868           MVKH.S1       0x44300000,A6
00002428       8046           MV.L1         A0,A4
0000242a       0c6e           NOP           1
0000242c   000c1362           B.S2X         A3
00002430   01858162           ADDKPC.S2     0x2434,B3,4
00002434   001ca120           BNOP.S1       0x2458,5
00002438       e13c           LDW.D1T1      *A6[7],A3
0000243a       71f7           LDW.D2T2      *++B15[2],B3
0000243c   e8800000           .fphead       n, l, W, BU, nobr, nosat, 1000100b
00002440   02b33328           MVK.S1        0x6666,A5
00002444   02a21868           MVKH.S1       0x44300000,A5
00002448   02003faa           MVK.S2        0x007f,B4
0000244c   000c1362           B.S2X         A3
00002450       c2c6           MV.L1         A5,A6
00002452       f603           SHL.S2        B4,0x17,B4
00002454       8046           MV.L1         A0,A4
00002456       2c6e           NOP           2
00002458       71f7           LDW.D2T2      *++B15[2],B3
0000245a       a1ef           BNOP.S2       B3,5
0000245c   ee100000           .fphead       p, l, W, BU, nobr, nosat, 1110000b
00002460       31f7           STW.D2T2      B3,*B15--[2]
00002462       e246 ||        MV.L1         A4,A7
00002464   0f9fe266           LDW.D1T2      *+A7[31],B31
00002468       218c           LDW.D1T1      *A7[1],A0
0000246a       01cc           LDW.D1T1      *A7[0],A4
0000246c   10001c13 ||        CALLP.S2      0x002540,B3
00002470       8627 ||        MVK.L2        4,B4
00002472       f712           MVK.S1        151,A6
00002474       0646           MV.L1         A4,A8
00002476       fe72 ||        MVK.S1        255,A4
00002478   10001c13           CALLP.S2      0x002540,B3
0000247c   e6a00421           .fphead       n, l, W, BU, nobr, nosat, 0110101b
00002480   0f9ea267 ||        LDW.D1T2      *+A7[21],B31
00002484       d602 ||        SHL.S1        A4,0x16,A4
00002486       0627 ||        MVK.L2        0,B4
00002488       1b77 ||        MVK.D2        0,B6
0000248a       e1bc           LDW.D1T1      *A7[7],A3
0000248c   01bc52e6           LDW.D2T2      *++B15[2],B3
00002490   02b3332a           MVK.S2        0x6666,B5
00002494   02a2186a           MVKH.S2       0x44300000,B5
00002498   02101fda           MV.L2X        A4,B4
0000249c   e0c0000c           .fphead       n, l, W, BU, nobr, nosat, 0000110b
000024a0   000c1362           B.S2X         A3
000024a4       9a12           MVK.S1        28,A4
000024a6       0240           ADD.L1        A0,A4,A4
000024a8       d2c6           MV.L1X        B5,A6
000024aa       2c6e           NOP           2
000024ac       31f7           STW.D2T2      B3,*B15--[2]
000024ae       e246 ||        MV.L1         A4,A7
000024b0   0f9fe266           LDW.D1T2      *+A7[31],B31
000024b4       218c           LDW.D1T1      *A7[1],A0
000024b6       01cc           LDW.D1T1      *A7[0],A4
000024b8   10001413 ||        CALLP.S2      0x002540,B3
000024bc   e5c00840           .fphead       n, l, W, BU, nobr, nosat, 0101110b
000024c0       6627 ||        MVK.L2        3,B4
000024c2       f712           MVK.S1        151,A6
000024c4       0646           MV.L1         A4,A8
000024c6       fe72 ||        MVK.S1        255,A4
000024c8   10001013           CALLP.S2      0x002540,B3
000024cc   0f9ea267 ||        LDW.D1T2      *+A7[21],B31
000024d0       d602 ||        SHL.S1        A4,0x16,A4
000024d2       0627 ||        MVK.L2        0,B4
000024d4       1b77 ||        MVK.D2        0,B6
000024d6       e1bc           LDW.D1T1      *A7[7],A3
000024d8   01bc52e6           LDW.D2T2      *++B15[2],B3
000024dc   e6600304           .fphead       n, l, W, BU, nobr, nosat, 0110011b
000024e0   02b3332a           MVK.S2        0x6666,B5
000024e4   02a2186a           MVKH.S2       0x44300000,B5
000024e8   02101fda           MV.L2X        A4,B4
000024ec   000c1362           B.S2X         A3
000024f0       1a12           MVK.S1        24,A4
000024f2       0240           ADD.L1        A0,A4,A4
000024f4       d2c6           MV.L1X        B5,A6
000024f6       2c6e           NOP           2
000024f8   10001c10           CALLP.S1      0x0025c0,A3
000024fc   e6000000           .fphead       n, l, W, BU, nobr, nosat, 0110000b
00002500       0246           MV.L1         A4,A0
00002502       4646           MV.L1         A4,A10
00002504       a256 ||        MV.D1         A4,A5
00002506       0e12 ||        MVK.S1        136,A4
00002508       0240           ADD.L1        A0,A4,A4
0000250a       000c           LDW.D1T1      *A4[0],A0
0000250c   0201bc2a           MVK.S2        0x0378,B4
00002510   0240006a           MVKH.S2       0x80000000,B4
00002514       20cc           LDW.D1T1      *A5[1],A4
00002516       9b12           MVK.S1        28,A6
00002518   10000813           CALLP.S2      0x002540,B3
0000251c   e4e00006           .fphead       n, l, W, BU, nobr, nosat, 0100111b
00002520   0f801fda ||        MV.L2X        A0,B31
00002524   1fffe813           CALLP.S2      0x002460,B3
00002528   02280fd8 ||        MV.L1         A10,A4
0000252c   1ffff193           CALLP.S2      0x0024ac,B3
00002530   02280fd8 ||        MV.L1         A10,A4
00002534   10001010           CALLP.S1      0x0025a0,A3
00002538   00000000           NOP           
0000253c   00000000           NOP           
00002540   013c54f4           STW.D2T1      A2,*B15--[2]
00002544   007c0363           B.S2          B31
00002548       8377 ||        STDW.D2T1     A7:A6,*B15--[1]
0000254a       8077           STDW.D2T1     A1:A0,*B15--[1]
0000254c       9377           STDW.D2T2     B7:B6,*B15--[1]
0000254e       9277           STDW.D2T2     B5:B4,*B15--[1]
00002550       9077           STDW.D2T2     B1:B0,*B15--[1]
00002552       9177           STDW.D2T2     B3:B2,*B15--[1]
00002554   01860162 ||        ADDKPC.S2     0x2558,B3,0
00002558       d177           LDDW.D2T2     *++B15[1],B3:B2
0000255a       d077           LDDW.D2T2     *++B15[1],B1:B0
0000255c   eb800200           .fphead       n, l, W, BU, nobr, nosat, 1011100b
00002560   023c33e6           LDDW.D2T2     *++B15[1],B5:B4
00002564   033c33e6           LDDW.D2T2     *++B15[1],B7:B6
00002568   003c33e4           LDDW.D2T1     *++B15[1],A1:A0
0000256c   000c0363           B.S2          B3
00002570   033c33e4 ||        LDDW.D2T1     *++B15[1],A7:A6
00002574   013c52e4           LDW.D2T1      *++B15[2],A2
00002578   00006000           NOP           4
0000257c   00000000           NOP           
00002580       21ef           BNOP.S2       B3,1
00002582       8426           MVK.L1        4,A0
00002584   00015c2a ||        MVK.S2        0x02b8,B0
00002588   0080f229           MVK.S1        0x01e4,A1
0000258c   0040006b ||        MVKH.S2       0x80000000,B0
00002590       0204 ||        STB.D1T1      A0,*A4[0]
00002592       3004           STW.D1T2      B0,*A4[1]
00002594   00c00068 ||        MVKH.S1       0x80000000,A1
00002598   00904274           STW.D1T1      A1,*+A4[2]
0000259c   e2200202           .fphead       n, l, W, BU, nobr, nosat, 0010001b
000025a0       d177           LDDW.D2T2     *++B15[1],B3:B2
000025a2       c577           LDDW.D2T1     *++B15[1],A11:A10
000025a4       d577           LDDW.D2T2     *++B15[1],B11:B10
000025a6       c677           LDDW.D2T1     *++B15[1],A13:A12
000025a8       d677           LDDW.D2T2     *++B15[1],B13:B12
000025aa       01ef           BNOP.S2       B3,0
000025ac       c777 ||        LDDW.D2T1     *++B15[1],A15:A14
000025ae       7777           LDW.D2T2      *++B15[2],B14
000025b0   00006000           NOP           4
000025b4   00000000           NOP           
000025b8   00000000           NOP           
000025bc   e1e00020           .fphead       n, l, W, BU, nobr, nosat, 0001111b
000025c0   073c54f6           STW.D2T2      B14,*B15--[2]
000025c4   000c1363           B.S2X         A3
000025c8       8777 ||        STDW.D2T1     A15:A14,*B15--[1]
000025ca       9677           STDW.D2T2     B13:B12,*B15--[1]
000025cc       8677           STDW.D2T1     A13:A12,*B15--[1]
000025ce       9577           STDW.D2T2     B11:B10,*B15--[1]
000025d0       8577           STDW.D2T1     A11:A10,*B15--[1]
000025d2       9177           STDW.D2T2     B3:B2,*B15--[1]
000025d4   00000000           NOP           
000025d8   00000000           NOP           
000025dc   e3800000           .fphead       n, l, W, BU, nobr, nosat, 0011100b
000025e0       31f7           STW.D2T2      B3,*B15--[2]
000025e2       c246 ||        MV.L1         A4,A6
000025e4   0f9be266           LDW.D1T2      *+A6[31],B31
000025e8       210c           LDW.D1T1      *A6[1],A0
000025ea       014c           LDW.D1T1      *A6[0],A4
000025ec   10002813 ||        CALLP.S2      0x002720,B3
000025f0       0627 ||        MVK.L2        0,B4
000025f2       1247           MV.L2X        A4,B0
000025f4   201ca120    [ B0]  BNOP.S1       0x2618,5
000025f8   0198e264           LDW.D1T1      *+A6[7],A3
000025fc   e2a00021           .fphead       n, l, W, BU, nobr, nosat, 0010101b
00002600   03333328           MVK.S1        0x6666,A6
00002604   03221868           MVKH.S1       0x44300000,A6
00002608       8046           MV.L1         A0,A4
0000260a       0c6e           NOP           1
0000260c   000c1362           B.S2X         A3
00002610   01858162           ADDKPC.S2     0x2614,B3,4
00002614   001ca120           BNOP.S1       0x2638,5
00002618       e13c           LDW.D1T1      *A6[7],A3
0000261a       71f7           LDW.D2T2      *++B15[2],B3
0000261c   e8800000           .fphead       n, l, W, BU, nobr, nosat, 1000100b
00002620   02b33328           MVK.S1        0x6666,A5
00002624   02a21868           MVKH.S1       0x44300000,A5
00002628   02003faa           MVK.S2        0x007f,B4
0000262c   000c1362           B.S2X         A3
00002630       c2c6           MV.L1         A5,A6
00002632       f603           SHL.S2        B4,0x17,B4
00002634       8046           MV.L1         A0,A4
00002636       2c6e           NOP           2
00002638       71f7           LDW.D2T2      *++B15[2],B3
0000263a       a1ef           BNOP.S2       B3,5
0000263c   ee100000           .fphead       p, l, W, BU, nobr, nosat, 1110000b
00002640       31f7           STW.D2T2      B3,*B15--[2]
00002642       e246 ||        MV.L1         A4,A7
00002644   0f9fe266           LDW.D1T2      *+A7[31],B31
00002648       218c           LDW.D1T1      *A7[1],A0
0000264a       01cc           LDW.D1T1      *A7[0],A4
0000264c   10001c13 ||        CALLP.S2      0x002720,B3
00002650       a627 ||        MVK.L2        5,B4
00002652       f712           MVK.S1        151,A6
00002654       0646           MV.L1         A4,A8
00002656       fe72 ||        MVK.S1        255,A4
00002658   10001c13           CALLP.S2      0x002720,B3
0000265c   e6a00421           .fphead       n, l, W, BU, nobr, nosat, 0110101b
00002660   0f9ea267 ||        LDW.D1T2      *+A7[21],B31
00002664       d602 ||        SHL.S1        A4,0x16,A4
00002666       0627 ||        MVK.L2        0,B4
00002668       1b77 ||        MVK.D2        0,B6
0000266a       e1bc           LDW.D1T1      *A7[7],A3
0000266c   01bc52e6           LDW.D2T2      *++B15[2],B3
00002670   02b3332a           MVK.S2        0x6666,B5
00002674   02a2186a           MVKH.S2       0x44300000,B5
00002678   02101fda           MV.L2X        A4,B4
0000267c   e0c0000c           .fphead       n, l, W, BU, nobr, nosat, 0000110b
00002680   000c1362           B.S2X         A3
00002684       0232           MVK.S1        32,A4
00002686       0240           ADD.L1        A0,A4,A4
00002688       d2c6           MV.L1X        B5,A6
0000268a       2c6e           NOP           2
0000268c       31f7           STW.D2T2      B3,*B15--[2]
0000268e       e246 ||        MV.L1         A4,A7
00002690   0f9fe266           LDW.D1T2      *+A7[31],B31
00002694       218c           LDW.D1T1      *A7[1],A0
00002696       01cc           LDW.D1T1      *A7[0],A4
00002698   10001413 ||        CALLP.S2      0x002720,B3
0000269c   e5c00840           .fphead       n, l, W, BU, nobr, nosat, 0101110b
000026a0       6627 ||        MVK.L2        3,B4
000026a2       f712           MVK.S1        151,A6
000026a4       0646           MV.L1         A4,A8
000026a6       fe72 ||        MVK.S1        255,A4
000026a8   10001013           CALLP.S2      0x002720,B3
000026ac   0f9ea267 ||        LDW.D1T2      *+A7[21],B31
000026b0       d602 ||        SHL.S1        A4,0x16,A4
000026b2       0627 ||        MVK.L2        0,B4
000026b4       1b77 ||        MVK.D2        0,B6
000026b6       e1bc           LDW.D1T1      *A7[7],A3
000026b8   01bc52e6           LDW.D2T2      *++B15[2],B3
000026bc   e6600304           .fphead       n, l, W, BU, nobr, nosat, 0110011b
000026c0   02b3332a           MVK.S2        0x6666,B5
000026c4   02a2186a           MVKH.S2       0x44300000,B5
000026c8   02101fda           MV.L2X        A4,B4
000026cc   000c1362           B.S2X         A3
000026d0       1a12           MVK.S1        24,A4
000026d2       0240           ADD.L1        A0,A4,A4
000026d4       d2c6           MV.L1X        B5,A6
000026d6       2c6e           NOP           2
000026d8   10001c10           CALLP.S1      0x0027a0,A3
000026dc   e6000000           .fphead       n, l, W, BU, nobr, nosat, 0110000b
000026e0       0246           MV.L1         A4,A0
000026e2       4646           MV.L1         A4,A10
000026e4       a256 ||        MV.D1         A4,A5
000026e6       0e12 ||        MVK.S1        136,A4
000026e8       0240           ADD.L1        A0,A4,A4
000026ea       000c           LDW.D1T1      *A4[0],A0
000026ec   0201bc2a           MVK.S2        0x0378,B4
000026f0   0240006a           MVKH.S2       0x80000000,B4
000026f4       20cc           LDW.D1T1      *A5[1],A4
000026f6       9b12           MVK.S1        28,A6
000026f8   10000813           CALLP.S2      0x002720,B3
000026fc   e4e00006           .fphead       n, l, W, BU, nobr, nosat, 0100111b
00002700   0f801fda ||        MV.L2X        A0,B31
00002704   1fffe813           CALLP.S2      0x002640,B3
00002708   02280fd8 ||        MV.L1         A10,A4
0000270c   1ffff193           CALLP.S2      0x00268c,B3
00002710   02280fd8 ||        MV.L1         A10,A4
00002714   10001010           CALLP.S1      0x002780,A3
00002718   00000000           NOP           
0000271c   00000000           NOP           
00002720   013c54f4           STW.D2T1      A2,*B15--[2]
00002724   007c0363           B.S2          B31
00002728       8377 ||        STDW.D2T1     A7:A6,*B15--[1]
0000272a       8077           STDW.D2T1     A1:A0,*B15--[1]
0000272c       9377           STDW.D2T2     B7:B6,*B15--[1]
0000272e       9277           STDW.D2T2     B5:B4,*B15--[1]
00002730       9077           STDW.D2T2     B1:B0,*B15--[1]
00002732       9177           STDW.D2T2     B3:B2,*B15--[1]
00002734   01860162 ||        ADDKPC.S2     0x2738,B3,0
00002738       d177           LDDW.D2T2     *++B15[1],B3:B2
0000273a       d077           LDDW.D2T2     *++B15[1],B1:B0
0000273c   eb800200           .fphead       n, l, W, BU, nobr, nosat, 1011100b
00002740   023c33e6           LDDW.D2T2     *++B15[1],B5:B4
00002744   033c33e6           LDDW.D2T2     *++B15[1],B7:B6
00002748   003c33e4           LDDW.D2T1     *++B15[1],A1:A0
0000274c   000c0363           B.S2          B3
00002750   033c33e4 ||        LDDW.D2T1     *++B15[1],A7:A6
00002754   013c52e4           LDW.D2T1      *++B15[2],A2
00002758   00006000           NOP           4
0000275c   00000000           NOP           
00002760       21ef           BNOP.S2       B3,1
00002762       8426           MVK.L1        4,A0
00002764   00015c2a ||        MVK.S2        0x02b8,B0
00002768   0080f229           MVK.S1        0x01e4,A1
0000276c   0040006b ||        MVKH.S2       0x80000000,B0
00002770       0204 ||        STB.D1T1      A0,*A4[0]
00002772       3004           STW.D1T2      B0,*A4[1]
00002774   00c00068 ||        MVKH.S1       0x80000000,A1
00002778   00904274           STW.D1T1      A1,*+A4[2]
0000277c   e2200202           .fphead       n, l, W, BU, nobr, nosat, 0010001b
00002780       d177           LDDW.D2T2     *++B15[1],B3:B2
00002782       c577           LDDW.D2T1     *++B15[1],A11:A10
00002784       d577           LDDW.D2T2     *++B15[1],B11:B10
00002786       c677           LDDW.D2T1     *++B15[1],A13:A12
00002788       d677           LDDW.D2T2     *++B15[1],B13:B12
0000278a       01ef           BNOP.S2       B3,0
0000278c       c777 ||        LDDW.D2T1     *++B15[1],A15:A14
0000278e       7777           LDW.D2T2      *++B15[2],B14
00002790   00006000           NOP           4
00002794   00000000           NOP           
00002798   00000000           NOP           
0000279c   e1e00020           .fphead       n, l, W, BU, nobr, nosat, 0001111b
000027a0   073c54f6           STW.D2T2      B14,*B15--[2]
000027a4   000c1363           B.S2X         A3
000027a8       8777 ||        STDW.D2T1     A15:A14,*B15--[1]
000027aa       9677           STDW.D2T2     B13:B12,*B15--[1]
000027ac       8677           STDW.D2T1     A13:A12,*B15--[1]
000027ae       9577           STDW.D2T2     B11:B10,*B15--[1]
000027b0       8577           STDW.D2T1     A11:A10,*B15--[1]
000027b2       9177           STDW.D2T2     B3:B2,*B15--[1]
000027b4   00000000           NOP           
000027b8   00000000           NOP           
000027bc   e3800000           .fphead       n, l, W, BU, nobr, nosat, 0011100b
000027c0       31f7           STW.D2T2      B3,*B15--[2]
000027c2       c246 ||        MV.L1         A4,A6
000027c4   0f9be266           LDW.D1T2      *+A6[31],B31
000027c8       210c           LDW.D1T1      *A6[1],A0
000027ca       014c           LDW.D1T1      *A6[0],A4
000027cc   10002813 ||        CALLP.S2      0x002900,B3
000027d0       0627 ||        MVK.L2        0,B4
000027d2       1247           MV.L2X        A4,B0
000027d4   201ca120    [ B0]  BNOP.S1       0x27f8,5
000027d8   0198e264           LDW.D1T1      *+A6[7],A3
000027dc   e2a00021           .fphead       n, l, W, BU, nobr, nosat, 0010101b
000027e0   03333328           MVK.S1        0x6666,A6
000027e4   03221868           MVKH.S1       0x44300000,A6
000027e8       8046           MV.L1         A0,A4
000027ea       0c6e           NOP           1
000027ec   000c1362           B.S2X         A3
000027f0   01858162           ADDKPC.S2     0x27f4,B3,4
000027f4   001ca120           BNOP.S1       0x2818,5
000027f8       e13c           LDW.D1T1      *A6[7],A3
000027fa       71f7           LDW.D2T2      *++B15[2],B3
000027fc   e8800000           .fphead       n, l, W, BU, nobr, nosat, 1000100b
00002800   02b33328           MVK.S1        0x6666,A5
00002804   02a21868           MVKH.S1       0x44300000,A5
00002808   02003faa           MVK.S2        0x007f,B4
0000280c   000c1362           B.S2X         A3
00002810       c2c6           MV.L1         A5,A6
00002812       f603           SHL.S2        B4,0x17,B4
00002814       8046           MV.L1         A0,A4
00002816       2c6e           NOP           2
00002818       71f7           LDW.D2T2      *++B15[2],B3
0000281a       a1ef           BNOP.S2       B3,5
0000281c   ee100000           .fphead       p, l, W, BU, nobr, nosat, 1110000b
00002820       31f7           STW.D2T2      B3,*B15--[2]
00002822       e246 ||        MV.L1         A4,A7
00002824   0f9fe266           LDW.D1T2      *+A7[31],B31
00002828       218c           LDW.D1T1      *A7[1],A0
0000282a       01cc           LDW.D1T1      *A7[0],A4
0000282c   10001c13 ||        CALLP.S2      0x002900,B3
00002830       c627 ||        MVK.L2        6,B4
00002832       f712           MVK.S1        151,A6
00002834       0646           MV.L1         A4,A8
00002836       fe72 ||        MVK.S1        255,A4
00002838   10001c13           CALLP.S2      0x002900,B3
0000283c   e6a00421           .fphead       n, l, W, BU, nobr, nosat, 0110101b
00002840   0f9ea267 ||        LDW.D1T2      *+A7[21],B31
00002844       d602 ||        SHL.S1        A4,0x16,A4
00002846       0627 ||        MVK.L2        0,B4
00002848       1b77 ||        MVK.D2        0,B6
0000284a       e1bc           LDW.D1T1      *A7[7],A3
0000284c   01bc52e6           LDW.D2T2      *++B15[2],B3
00002850   02b3332a           MVK.S2        0x6666,B5
00002854   02a2186a           MVKH.S2       0x44300000,B5
00002858   02101fda           MV.L2X        A4,B4
0000285c   e0c0000c           .fphead       n, l, W, BU, nobr, nosat, 0000110b
00002860   000c1362           B.S2X         A3
00002864       8232           MVK.S1        36,A4
00002866       0240           ADD.L1        A0,A4,A4
00002868       d2c6           MV.L1X        B5,A6
0000286a       2c6e           NOP           2
0000286c       31f7           STW.D2T2      B3,*B15--[2]
0000286e       e246 ||        MV.L1         A4,A7
00002870   0f9fe266           LDW.D1T2      *+A7[31],B31
00002874       218c           LDW.D1T1      *A7[1],A0
00002876       01cc           LDW.D1T1      *A7[0],A4
00002878   10001413 ||        CALLP.S2      0x002900,B3
0000287c   e5c00840           .fphead       n, l, W, BU, nobr, nosat, 0101110b
00002880       6627 ||        MVK.L2        3,B4
00002882       f712           MVK.S1        151,A6
00002884       0646           MV.L1         A4,A8
00002886       fe72 ||        MVK.S1        255,A4
00002888   10001013           CALLP.S2      0x002900,B3
0000288c   0f9ea267 ||        LDW.D1T2      *+A7[21],B31
00002890       d602 ||        SHL.S1        A4,0x16,A4
00002892       0627 ||        MVK.L2        0,B4
00002894       1b77 ||        MVK.D2        0,B6
00002896       e1bc           LDW.D1T1      *A7[7],A3
00002898   01bc52e6           LDW.D2T2      *++B15[2],B3
0000289c   e6600304           .fphead       n, l, W, BU, nobr, nosat, 0110011b
000028a0   02b3332a           MVK.S2        0x6666,B5
000028a4   02a2186a           MVKH.S2       0x44300000,B5
000028a8   02101fda           MV.L2X        A4,B4
000028ac   000c1362           B.S2X         A3
000028b0       1a12           MVK.S1        24,A4
000028b2       0240           ADD.L1        A0,A4,A4
000028b4       d2c6           MV.L1X        B5,A6
000028b6       2c6e           NOP           2
000028b8   10001c10           CALLP.S1      0x002980,A3
000028bc   e6000000           .fphead       n, l, W, BU, nobr, nosat, 0110000b
000028c0       0246           MV.L1         A4,A0
000028c2       4646           MV.L1         A4,A10
000028c4       a256 ||        MV.D1         A4,A5
000028c6       0e12 ||        MVK.S1        136,A4
000028c8       0240           ADD.L1        A0,A4,A4
000028ca       000c           LDW.D1T1      *A4[0],A0
000028cc   0201bc2a           MVK.S2        0x0378,B4
000028d0   0240006a           MVKH.S2       0x80000000,B4
000028d4       20cc           LDW.D1T1      *A5[1],A4
000028d6       9b12           MVK.S1        28,A6
000028d8   10000813           CALLP.S2      0x002900,B3
000028dc   e4e00006           .fphead       n, l, W, BU, nobr, nosat, 0100111b
000028e0   0f801fda ||        MV.L2X        A0,B31
000028e4   1fffe813           CALLP.S2      0x002820,B3
000028e8   02280fd8 ||        MV.L1         A10,A4
000028ec   1ffff193           CALLP.S2      0x00286c,B3
000028f0   02280fd8 ||        MV.L1         A10,A4
000028f4   10001010           CALLP.S1      0x002960,A3
000028f8   00000000           NOP           
000028fc   00000000           NOP           
00002900   013c54f4           STW.D2T1      A2,*B15--[2]
00002904   007c0363           B.S2          B31
00002908       8377 ||        STDW.D2T1     A7:A6,*B15--[1]
0000290a       8077           STDW.D2T1     A1:A0,*B15--[1]
0000290c       9377           STDW.D2T2     B7:B6,*B15--[1]
0000290e       9277           STDW.D2T2     B5:B4,*B15--[1]
00002910       9077           STDW.D2T2     B1:B0,*B15--[1]
00002912       9177           STDW.D2T2     B3:B2,*B15--[1]
00002914   01860162 ||        ADDKPC.S2     0x2918,B3,0
00002918       d177           LDDW.D2T2     *++B15[1],B3:B2
0000291a       d077           LDDW.D2T2     *++B15[1],B1:B0
0000291c   eb800200           .fphead       n, l, W, BU, nobr, nosat, 1011100b
00002920   023c33e6           LDDW.D2T2     *++B15[1],B5:B4
00002924   033c33e6           LDDW.D2T2     *++B15[1],B7:B6
00002928   003c33e4           LDDW.D2T1     *++B15[1],A1:A0
0000292c   000c0363           B.S2          B3
00002930   033c33e4 ||        LDDW.D2T1     *++B15[1],A7:A6
00002934   013c52e4           LDW.D2T1      *++B15[2],A2
00002938   00006000           NOP           4
0000293c   00000000           NOP           
00002940       21ef           BNOP.S2       B3,1
00002942       8426           MVK.L1        4,A0
00002944   00015c2a ||        MVK.S2        0x02b8,B0
00002948   0080f229           MVK.S1        0x01e4,A1
0000294c   0040006b ||        MVKH.S2       0x80000000,B0
00002950       0204 ||        STB.D1T1      A0,*A4[0]
00002952       3004           STW.D1T2      B0,*A4[1]
00002954   00c00068 ||        MVKH.S1       0x80000000,A1
00002958   00904274           STW.D1T1      A1,*+A4[2]
0000295c   e2200202           .fphead       n, l, W, BU, nobr, nosat, 0010001b
00002960       d177           LDDW.D2T2     *++B15[1],B3:B2
00002962       c577           LDDW.D2T1     *++B15[1],A11:A10
00002964       d577           LDDW.D2T2     *++B15[1],B11:B10
00002966       c677           LDDW.D2T1     *++B15[1],A13:A12
00002968       d677           LDDW.D2T2     *++B15[1],B13:B12
0000296a       01ef           BNOP.S2       B3,0
0000296c       c777 ||        LDDW.D2T1     *++B15[1],A15:A14
0000296e       7777           LDW.D2T2      *++B15[2],B14
00002970   00006000           NOP           4
00002974   00000000           NOP           
00002978   00000000           NOP           
0000297c   e1e00020           .fphead       n, l, W, BU, nobr, nosat, 0001111b
00002980   073c54f6           STW.D2T2      B14,*B15--[2]
00002984   000c1363           B.S2X         A3
00002988       8777 ||        STDW.D2T1     A15:A14,*B15--[1]
0000298a       9677           STDW.D2T2     B13:B12,*B15--[1]
0000298c       8677           STDW.D2T1     A13:A12,*B15--[1]
0000298e       9577           STDW.D2T2     B11:B10,*B15--[1]
00002990       8577           STDW.D2T1     A11:A10,*B15--[1]
00002992       9177           STDW.D2T2     B3:B2,*B15--[1]
00002994   00000000           NOP           
00002998   00000000           NOP           
0000299c   e3800000           .fphead       n, l, W, BU, nobr, nosat, 0011100b
000029a0       31f7           STW.D2T2      B3,*B15--[2]
000029a2       c246 ||        MV.L1         A4,A6
000029a4   0f9be266           LDW.D1T2      *+A6[31],B31
000029a8       210c           LDW.D1T1      *A6[1],A0
000029aa       014c           LDW.D1T1      *A6[0],A4
000029ac   10002813 ||        CALLP.S2      0x002ae0,B3
000029b0       0627 ||        MVK.L2        0,B4
000029b2       1247           MV.L2X        A4,B0
000029b4   201ca120    [ B0]  BNOP.S1       0x29d8,5
000029b8   0198e264           LDW.D1T1      *+A6[7],A3
000029bc   e2a00021           .fphead       n, l, W, BU, nobr, nosat, 0010101b
000029c0   03333328           MVK.S1        0x6666,A6
000029c4   03221868           MVKH.S1       0x44300000,A6
000029c8       8046           MV.L1         A0,A4
000029ca       0c6e           NOP           1
000029cc   000c1362           B.S2X         A3
000029d0   01858162           ADDKPC.S2     0x29d4,B3,4
000029d4   001ca120           BNOP.S1       0x29f8,5
000029d8       e13c           LDW.D1T1      *A6[7],A3
000029da       71f7           LDW.D2T2      *++B15[2],B3
000029dc   e8800000           .fphead       n, l, W, BU, nobr, nosat, 1000100b
000029e0   02b33328           MVK.S1        0x6666,A5
000029e4   02a21868           MVKH.S1       0x44300000,A5
000029e8   02003faa           MVK.S2        0x007f,B4
000029ec   000c1362           B.S2X         A3
000029f0       c2c6           MV.L1         A5,A6
000029f2       f603           SHL.S2        B4,0x17,B4
000029f4       8046           MV.L1         A0,A4
000029f6       2c6e           NOP           2
000029f8       71f7           LDW.D2T2      *++B15[2],B3
000029fa       a1ef           BNOP.S2       B3,5
000029fc   ee100000           .fphead       p, l, W, BU, nobr, nosat, 1110000b
00002a00       31f7           STW.D2T2      B3,*B15--[2]
00002a02       e246 ||        MV.L1         A4,A7
00002a04   0f9fe266           LDW.D1T2      *+A7[31],B31
00002a08       218c           LDW.D1T1      *A7[1],A0
00002a0a       01cc           LDW.D1T1      *A7[0],A4
00002a0c   10001c13 ||        CALLP.S2      0x002ae0,B3
00002a10       e627 ||        MVK.L2        7,B4
00002a12       f712           MVK.S1        151,A6
00002a14       0646           MV.L1         A4,A8
00002a16       fe72 ||        MVK.S1        255,A4
00002a18   10001c13           CALLP.S2      0x002ae0,B3
00002a1c   e6a00421           .fphead       n, l, W, BU, nobr, nosat, 0110101b
00002a20   0f9ea267 ||        LDW.D1T2      *+A7[21],B31
00002a24       d602 ||        SHL.S1        A4,0x16,A4
00002a26       0627 ||        MVK.L2        0,B4
00002a28       1b77 ||        MVK.D2        0,B6
00002a2a       e1bc           LDW.D1T1      *A7[7],A3
00002a2c   01bc52e6           LDW.D2T2      *++B15[2],B3
00002a30   02b3332a           MVK.S2        0x6666,B5
00002a34   02a2186a           MVKH.S2       0x44300000,B5
00002a38   02101fda           MV.L2X        A4,B4
00002a3c   e0c0000c           .fphead       n, l, W, BU, nobr, nosat, 0000110b
00002a40   000c1362           B.S2X         A3
00002a44       0a32           MVK.S1        40,A4
00002a46       0240           ADD.L1        A0,A4,A4
00002a48       d2c6           MV.L1X        B5,A6
00002a4a       2c6e           NOP           2
00002a4c       31f7           STW.D2T2      B3,*B15--[2]
00002a4e       e246 ||        MV.L1         A4,A7
00002a50   0f9fe266           LDW.D1T2      *+A7[31],B31
00002a54       218c           LDW.D1T1      *A7[1],A0
00002a56       01cc           LDW.D1T1      *A7[0],A4
00002a58   10001413 ||        CALLP.S2      0x002ae0,B3
00002a5c   e5c00840           .fphead       n, l, W, BU, nobr, nosat, 0101110b
00002a60       6627 ||        MVK.L2        3,B4
00002a62       f712           MVK.S1        151,A6
00002a64       0646           MV.L1         A4,A8
00002a66       fe72 ||        MVK.S1        255,A4
00002a68   10001013           CALLP.S2      0x002ae0,B3
00002a6c   0f9ea267 ||        LDW.D1T2      *+A7[21],B31
00002a70       d602 ||        SHL.S1        A4,0x16,A4
00002a72       0627 ||        MVK.L2        0,B4
00002a74       1b77 ||        MVK.D2        0,B6
00002a76       e1bc           LDW.D1T1      *A7[7],A3
00002a78   01bc52e6           LDW.D2T2      *++B15[2],B3
00002a7c   e6600304           .fphead       n, l, W, BU, nobr, nosat, 0110011b
00002a80   02b3332a           MVK.S2        0x6666,B5
00002a84   02a2186a           MVKH.S2       0x44300000,B5
00002a88   02101fda           MV.L2X        A4,B4
00002a8c   000c1362           B.S2X         A3
00002a90       1a12           MVK.S1        24,A4
00002a92       0240           ADD.L1        A0,A4,A4
00002a94       d2c6           MV.L1X        B5,A6
00002a96       2c6e           NOP           2
00002a98   10001c10           CALLP.S1      0x002b60,A3
00002a9c   e6000000           .fphead       n, l, W, BU, nobr, nosat, 0110000b
00002aa0       0246           MV.L1         A4,A0
00002aa2       4646           MV.L1         A4,A10
00002aa4       a256 ||        MV.D1         A4,A5
00002aa6       0e12 ||        MVK.S1        136,A4
00002aa8       0240           ADD.L1        A0,A4,A4
00002aaa       000c           LDW.D1T1      *A4[0],A0
00002aac   0201bc2a           MVK.S2        0x0378,B4
00002ab0   0240006a           MVKH.S2       0x80000000,B4
00002ab4       20cc           LDW.D1T1      *A5[1],A4
00002ab6       9b12           MVK.S1        28,A6
00002ab8   10000813           CALLP.S2      0x002ae0,B3
00002abc   e4e00006           .fphead       n, l, W, BU, nobr, nosat, 0100111b
00002ac0   0f801fda ||        MV.L2X        A0,B31
00002ac4   1fffe813           CALLP.S2      0x002a00,B3
00002ac8   02280fd8 ||        MV.L1         A10,A4
00002acc   1ffff193           CALLP.S2      0x002a4c,B3
00002ad0   02280fd8 ||        MV.L1         A10,A4
00002ad4   10001010           CALLP.S1      0x002b40,A3
00002ad8   00000000           NOP           
00002adc   00000000           NOP           
00002ae0   013c54f4           STW.D2T1      A2,*B15--[2]
00002ae4   007c0363           B.S2          B31
00002ae8       8377 ||        STDW.D2T1     A7:A6,*B15--[1]
00002aea       8077           STDW.D2T1     A1:A0,*B15--[1]
00002aec       9377           STDW.D2T2     B7:B6,*B15--[1]
00002aee       9277           STDW.D2T2     B5:B4,*B15--[1]
00002af0       9077           STDW.D2T2     B1:B0,*B15--[1]
00002af2       9177           STDW.D2T2     B3:B2,*B15--[1]
00002af4   01860162 ||        ADDKPC.S2     0x2af8,B3,0
00002af8       d177           LDDW.D2T2     *++B15[1],B3:B2
00002afa       d077           LDDW.D2T2     *++B15[1],B1:B0
00002afc   eb800200           .fphead       n, l, W, BU, nobr, nosat, 1011100b
00002b00   023c33e6           LDDW.D2T2     *++B15[1],B5:B4
00002b04   033c33e6           LDDW.D2T2     *++B15[1],B7:B6
00002b08   003c33e4           LDDW.D2T1     *++B15[1],A1:A0
00002b0c   000c0363           B.S2          B3
00002b10   033c33e4 ||        LDDW.D2T1     *++B15[1],A7:A6
00002b14   013c52e4           LDW.D2T1      *++B15[2],A2
00002b18   00006000           NOP           4
00002b1c   00000000           NOP           
00002b20       21ef           BNOP.S2       B3,1
00002b22       8426           MVK.L1        4,A0
00002b24   00015c2a ||        MVK.S2        0x02b8,B0
00002b28   0080f229           MVK.S1        0x01e4,A1
00002b2c   0040006b ||        MVKH.S2       0x80000000,B0
00002b30       0204 ||        STB.D1T1      A0,*A4[0]
00002b32       3004           STW.D1T2      B0,*A4[1]
00002b34   00c00068 ||        MVKH.S1       0x80000000,A1
00002b38   00904274           STW.D1T1      A1,*+A4[2]
00002b3c   e2200202           .fphead       n, l, W, BU, nobr, nosat, 0010001b
00002b40       d177           LDDW.D2T2     *++B15[1],B3:B2
00002b42       c577           LDDW.D2T1     *++B15[1],A11:A10
00002b44       d577           LDDW.D2T2     *++B15[1],B11:B10
00002b46       c677           LDDW.D2T1     *++B15[1],A13:A12
00002b48       d677           LDDW.D2T2     *++B15[1],B13:B12
00002b4a       01ef           BNOP.S2       B3,0
00002b4c       c777 ||        LDDW.D2T1     *++B15[1],A15:A14
00002b4e       7777           LDW.D2T2      *++B15[2],B14
00002b50   00006000           NOP           4
00002b54   00000000           NOP           
00002b58   00000000           NOP           
00002b5c   e1e00020           .fphead       n, l, W, BU, nobr, nosat, 0001111b
00002b60   073c54f6           STW.D2T2      B14,*B15--[2]
00002b64   000c1363           B.S2X         A3
00002b68       8777 ||        STDW.D2T1     A15:A14,*B15--[1]
00002b6a       9677           STDW.D2T2     B13:B12,*B15--[1]
00002b6c       8677           STDW.D2T1     A13:A12,*B15--[1]
00002b6e       9577           STDW.D2T2     B11:B10,*B15--[1]
00002b70       8577           STDW.D2T1     A11:A10,*B15--[1]
00002b72       9177           STDW.D2T2     B3:B2,*B15--[1]
00002b74   00000000           NOP           
00002b78   00000000           NOP           
00002b7c   e3800000           .fphead       n, l, W, BU, nobr, nosat, 0011100b
00002b80   000c0362           B.S2          B3
00002b84   00008000           NOP           5
00002b88   00000000           NOP           
00002b8c   00000000           NOP           
00002b90   00000000           NOP           
00002b94   00000000           NOP           
00002b98   00000000           NOP           
00002b9c   00000000           NOP           
00002ba0       21ef           BNOP.S2       B3,1
00002ba2       0c26           MVK.L1        8,A0
00002ba4   0000c62a ||        MVK.S2        0x018c,B0
00002ba8   00818629           MVK.S1        0x030c,A1
00002bac   0040006b ||        MVKH.S2       0x80000000,B0
00002bb0       0204 ||        STB.D1T1      A0,*A4[0]
00002bb2       3004           STW.D1T2      B0,*A4[1]
00002bb4   00c00068 ||        MVKH.S1       0x80000000,A1
00002bb8   00904274           STW.D1T1      A1,*+A4[2]
00002bbc   e2200202           .fphead       n, l, W, BU, nobr, nosat, 0010001b
00002bc0   00903d5b           LMBD.L2X      1,A4,B1
00002bc4   00903d59 ||        LMBD.L1X      1,B4,A1
00002bc8       0032 ||        MVK.S1        32,A0
00002bca       1976 ||        MVK.D1        0,A2
00002bcc   00909bf9           CMPLTU.L1X    A4,B4,A1
00002bd0   00043d73 ||        SUB.S2X       A1,B1,B0
00002bd4   51002040 || [!B1]  MVK.D1        1,A2
00002bd8   02100ce3           SHL.S2        B4,B0,B4
00002bdc   e0800010           .fphead       n, l, W, BU, nobr, nosat, 0000100b
00002be0   40002943 || [ B1]  ADD.D2        B0,0x1,B0
00002be4   030018f0 ||        MV.D1X        B0,A6
00002be8   011099fb           CMPGTU.L2X    B4,A4,B2
00002bec       1836 ||        SUB.D1X       A0,B0,A0
00002bee       c562 ||        SHL.S1        A2,A6,A2
00002bf0   00000c12 ||        B.S2          0x002c40
00002bf4   4100a35b    [ B1]  MVK.L2        0,B2
00002bf8   608808f3 || [ B2]  MV.D2         B2,B1
00002bfc   e10000c0           .fphead       n, l, W, BU, nobr, nosat, 0001000b
00002c00   610829a1 || [ B2]  SHRU.S1       A2,0x1,A2
00002c04   00000812 ||        B.S2          0x002c40
00002c08   621029a3    [ B2]  SHRU.S2       B4,0x1,B4
00002c0c   52109b31 || [!B1]  SUB.D1X       A4,B4,A4
00002c10   00000810 ||        B.S1          0x002c40
00002c14   521029a3    [!B1]  SHRU.S2       B4,0x1,B4
00002c18   62109b31 || [ B2]  SUB.D1X       A4,B4,A4
00002c1c   0100e8db ||        CMPGT.L2      7,B0,B2
00002c20   0080e9c3 ||        SUB.D2        B0,0x7,B1
00002c24   00000410 ||        B.S1          0x002c40
00002c28   6080a35b    [ B2]  MVK.L2        0,B1
00002c2c   22109979 || [ B0]  SUBC.L1X      A4,B4,A4
00002c30   200029c3 || [ B0]  SUB.D2        B0,0x1,B0
00002c34   00000413 ||        B.S2          0x002c40
00002c38   00000001 ||        NOP           
00002c3c   00000000 ||        NOP           
00002c40   22109979    [ B0]  SUBC.L1X      A4,B4,A4
00002c44   200029c3 || [ B0]  SUB.D2        B0,0x1,B0
00002c48   4087e05b || [ B1]  SUB.L2        B1,0x1,B1
00002c4c   40000012 || [ B1]  B.S2          0x002c40
00002c50   000c0362           B.S2          B3
00002c54   92100ce1    [!A1]  SHL.S1        A4,A0,A4
00002c58   8200a358 || [ A1]  MVK.L1        0,A4
00002c5c   921009e0    [!A1]  SHRU.S1       A4,A0,A4
00002c60   92104840    [!A1]  ADD.D1        A4,A2,A4
00002c64   00002000           NOP           2
00002c68   00000000           NOP           
00002c6c   00000000           NOP           
00002c70   00000000           NOP           
00002c74   00000000           NOP           
00002c78   00000000           NOP           
00002c7c   00000000           NOP           

DATA Section .const (Little Endian), 0x828 bytes at 0x80000000 
80000000   e0100000           .word 0xe0100000
80000004   f000e010           .word 0xf000e010
80000008   1000f000           .word 0x1000f000
8000000c   000010f0           .word 0x000010f0
80000010   00303009           .word 0x00303009
80000014   0c00cccc           .word 0x0c00cccc
80000018   0c00000c           .word 0x0c00000c
8000001c   fcfc000c           .word 0xfcfc000c
80000020   000c0c00           .word 0x000c0c00
80000024   00fcfc00           .word 0x00fcfc00
80000028   f0000c0c           .word 0xf0000c0c
8000002c   fc0000f0           .word 0xfc0000f0
80000030   cccc00fc           .word 0xcccc00fc
80000034   000c0c00           .word 0x000c0c00
80000038   f0060000           .word 0xf0060000
8000003c   0c0c00f0           .word 0x0c0c00f0
80000040   fcfc0002           .word 0xfcfc0002
80000044   00f0f000           .word 0x00f0f000
80000048   0000fcfc           .word 0x0000fcfc
8000004c   cc00fcfc           .word 0xcc00fcfc
80000050   303000cc           .word 0x303000cc
80000054   2f000000           .word 0x2f000000
80000058   001010f0           .word 0x001010f0
8000005c   01101011           .word 0x01101011
80000060   10001111           .word 0x10001111
80000064   10110010           .word 0x10110010
80000068   1cfc0a10           .word 0x1cfc0a10
8000006c   1313011c           .word 0x1313011c
80000070   1c1c1000           .word 0x1c1c1000
80000074   001f1f00           .word 0x001f1f00
80000078   10001c1c           .word 0x10001c1c
8000007c   1c001f1f           .word 0x1c001f1f
80000080   1313001c           .word 0x1313001c
80000084   1f1f1000           .word 0x1f1f1000
80000088   1cfc1c00           .word 0x1cfc1c00
8000008c   1010001c           .word 0x1010001c
80000090   00131306           .word 0x00131306
80000094   10021c1c           .word 0x10021c1c
80000098   10001f1f           .word 0x10001f1f
8000009c   1f1f0010           .word 0x1f1f0010
800000a0   1f1ff000           .word 0x1f1ff000
800000a4   12101000           .word 0x12101000
800000a8   0000f090           .word 0x0000f090
800000ac   4040ff1d           .word 0x4040ff1d
800000b0   4040ff15           .word 0x4040ff15
800000b4   4040ff15           .word 0x4040ff15
800000b8   4040ff15           .word 0x4040ff15
800000bc   01c0c000           .word 0x01c0c000
800000c0   60004040           .word 0x60004040
800000c4   50500160           .word 0x50500160
800000c8   00484800           .word 0x00484800
800000cc   42014444           .word 0x42014444
800000d0   41410042           .word 0x41410042
800000d4   00ff4001           .word 0x00ff4001
800000d8   00ff1d00           .word 0x00ff1d00
800000dc   00ff1500           .word 0x00ff1500
800000e0   00ff1500           .word 0x00ff1500
800000e4   80800500           .word 0x80800500
800000e8   00404001           .word 0x00404001
800000ec   10012020           .word 0x10012020
800000f0   08080010           .word 0x08080010
800000f4   01040400           .word 0x01040400
800000f8   0101ff02           .word 0x0101ff02
800000fc   13000000           .word 0x13000000
80000100   1d0000ff           .word 0x1d0000ff
80000104   150101ff           .word 0x150101ff
80000108   0a0101ff           .word 0x0a0101ff
8000010c   41018181           .word 0x41018181
80000110   21210041           .word 0x21210041
80000114   00111101           .word 0x00111101
80000118   0505ff09           .word 0x0505ff09
8000011c   00030301           .word 0x00030301
80000120   ff100101           .word 0xff100101
80000124   ff150101           .word 0xff150101
80000128   ff1d0000           .word 0xff1d0000
8000012c   840f0404           .word 0x840f0404
80000130   44440184           .word 0x44440184
80000134   24ff2400           .word 0x24ff2400
80000138   0c001414           .word 0x0c001414
8000013c   0404000c           .word 0x0404000c
80000140   00060601           .word 0x00060601
80000144   04000505           .word 0x04000505
80000148   04ff0904           .word 0x04ff0904
8000014c   04ff1504           .word 0x04ff1504
80000150   00ff1504           .word 0x00ff1504
80000154   f8881400           .word 0xf8881400
80000158   30f80088           .word 0x30f80088
8000015c   000000f8           .word 0x000000f8
80000160   c0c080ff           .word 0xc0c080ff
80000164   00a0a000           .word 0x00a0a000
80000168   88019090           .word 0x88019090
8000016c   84840088           .word 0x84840088
80000170   00828201           .word 0x00828201
80000174   80008181           .word 0x80008181
80000178   80ff0480           .word 0x80ff0480
8000017c   80ff1580           .word 0x80ff1580
80000180   80ff1580           .word 0x80ff1580
80000184   00ff1580           .word 0x00ff1580
80000188   00008d00           .word 0x00008d00
8000018c   664f6e4f           .word 0x664f6e4f
80000190   00000066           .word 0x00000066
80000194   00000000           .word 0x00000000
80000198   00000001           .word 0x00000001
8000019c   00000000           .word 0x00000000
800001a0   00000000           .word 0x00000000
800001a4   00000000           .word 0x00000000
800001a8   00002220           .word 0x00002220
800001ac   00000000           .word 0x00000000
800001b0   00000000           .word 0x00000000
800001b4   00000000           .word 0x00000000
800001b8   00000000           .word 0x00000000
800001bc   65646953           .word 0x65646953
800001c0   00706d43           .word 0x00706d43
800001c4   00000000           .word 0x00000000
800001c8   ffffffff           .word 0xffffffff
800001cc   00000000           .word 0x00000000
800001d0   00000001           .word 0x00000001
800001d4   00000000           .word 0x00000000
800001d8   00002b80           .word 0x00002b80
800001dc   00000000           .word 0x00000000
800001e0   00000000           .word 0x00000000
800001e4   41000000           .word 0x41000000
800001e8   00000000           .word 0x00000000
800001ec   65726854           .word 0x65726854
800001f0   00006873           .word 0x00006873
800001f4   00000000           .word 0x00000000
800001f8   00000064           .word 0x00000064
800001fc   0000002d           .word 0x0000002d
80000200   00000000           .word 0x00000000
80000204   00000000           .word 0x00000000
80000208   00002280           .word 0x00002280
8000020c   00000000           .word 0x00000000
80000210   00000000           .word 0x00000000
80000214   00000000           .word 0x00000000
80000218   00000000           .word 0x00000000
8000021c   69746152           .word 0x69746152
80000220   0000006f           .word 0x0000006f
80000224   00000000           .word 0x00000000
80000228   00000064           .word 0x00000064
8000022c   00000023           .word 0x00000023
80000230   00000000           .word 0x00000000
80000234   00000000           .word 0x00000000
80000238   000022cc           .word 0x000022cc
8000023c   00000000           .word 0x00000000
80000240   00000000           .word 0x00000000
80000244   00000000           .word 0x00000000
80000248   00000000           .word 0x00000000
8000024c   61747441           .word 0x61747441
80000250   00006b63           .word 0x00006b63
80000254   00000000           .word 0x00000000
80000258   00000064           .word 0x00000064
8000025c   00000014           .word 0x00000014
80000260   00000000           .word 0x00000000
80000264   00000000           .word 0x00000000
80000268   00002460           .word 0x00002460
8000026c   00000000           .word 0x00000000
80000270   00000000           .word 0x00000000
80000274   00000000           .word 0x00000000
80000278   00000000           .word 0x00000000
8000027c   656c6552           .word 0x656c6552
80000280   00657361           .word 0x00657361
80000284   00000000           .word 0x00000000
80000288   00000064           .word 0x00000064
8000028c   0000002d           .word 0x0000002d
80000290   00000000           .word 0x00000000
80000294   00000000           .word 0x00000000
80000298   00002640           .word 0x00002640
8000029c   00000000           .word 0x00000000
800002a0   00000000           .word 0x00000000
800002a4   00000000           .word 0x00000000
800002a8   00000000           .word 0x00000000
800002ac   656b614d           .word 0x656b614d
800002b0   00007075           .word 0x00007075
800002b4   00000000           .word 0x00000000
800002b8   00000064           .word 0x00000064
800002bc   00000000           .word 0x00000000
800002c0   00000000           .word 0x00000000
800002c4   00000000           .word 0x00000000
800002c8   00002820           .word 0x00002820
800002cc   00000000           .word 0x00000000
800002d0   00000000           .word 0x00000000
800002d4   00000000           .word 0x00000000
800002d8   00000000           .word 0x00000000
800002dc   7074754f           .word 0x7074754f
800002e0   00007475           .word 0x00007475
800002e4   00000000           .word 0x00000000
800002e8   00000001           .word 0x00000001
800002ec   00000000           .word 0x00000000
800002f0   00000000           .word 0x00000000
800002f4   00000000           .word 0x00000000
800002f8   00002a00           .word 0x00002a00
800002fc   00000000           .word 0x00000000
80000300   000021c0           .word 0x000021c0
80000304   00000000           .word 0x00000000
80000308   00000004           .word 0x00000004
8000030c   00000000           .word 0x00000000
80000310   00000001           .word 0x00000001
80000314   00000000           .word 0x00000000
80000318   00000080           .word 0x00000080
8000031c   00000040           .word 0x00000040
80000320   80000000           .word 0x80000000
80000324   00000015           .word 0x00000015
80000328   00000017           .word 0x00000017
8000032c   00000006           .word 0x00000006
80000330   00000002           .word 0x00000002
80000334   0000000e           .word 0x0000000e
80000338   0000002e           .word 0x0000002e
8000033c   80000828           .word 0x80000828
80000340   00000003           .word 0x00000003
80000344   00000037           .word 0x00000037
80000348   0000002e           .word 0x0000002e
8000034c   80000828           .word 0x80000828
80000350   00000004           .word 0x00000004
80000354   00000060           .word 0x00000060
80000358   0000002e           .word 0x0000002e
8000035c   80000828           .word 0x80000828
80000360   00000000           .word 0x00000000
80000364   00000000           .word 0x00000000
80000368   00000000           .word 0x00000000
8000036c   00000000           .word 0x00000000
80000370   00000000           .word 0x00000000
80000374   00000000           .word 0x00000000
80000378   00000000           .word 0x00000000
8000037c   00000000           .word 0x00000000
80000380   00000000           .word 0x00000000
80000384   00000000           .word 0x00000000
80000388   00000000           .word 0x00000000
8000038c   00000000           .word 0x00000000
80000390   00000000           .word 0x00000000
80000394   00000000           .word 0x00000000
80000398   00000000           .word 0x00000000
8000039c   00000000           .word 0x00000000
800003a0   00000000           .word 0x00000000
800003a4   00000000           .word 0x00000000
800003a8   00000000           .word 0x00000000
800003ac   00000000           .word 0x00000000
800003b0   00000000           .word 0x00000000
800003b4   00000000           .word 0x00000000
800003b8   00000000           .word 0x00000000
800003bc   00000000           .word 0x00000000
800003c0   00000000           .word 0x00000000
800003c4   00000000           .word 0x00000000
800003c8   00000000           .word 0x00000000
800003cc   00000000           .word 0x00000000
800003d0   00000000           .word 0x00000000
800003d4   00000000           .word 0x00000000
800003d8   00000000           .word 0x00000000
800003dc   00000000           .word 0x00000000
800003e0   00000000           .word 0x00000000
800003e4   00000000           .word 0x00000000
800003e8   00000000           .word 0x00000000
800003ec   00000000           .word 0x00000000
800003f0   00000000           .word 0x00000000
800003f4   00000000           .word 0x00000000
800003f8   00000000           .word 0x00000000
800003fc   00000000           .word 0x00000000
80000400   00000000           .word 0x00000000
80000404   00000000           .word 0x00000000
80000408   00000000           .word 0x00000000
8000040c   00000000           .word 0x00000000
80000410   00000000           .word 0x00000000
80000414   00000000           .word 0x00000000
80000418   00000000           .word 0x00000000
8000041c   00000000           .word 0x00000000
80000420   00000000           .word 0x00000000
80000424   00000000           .word 0x00000000
80000428   00000000           .word 0x00000000
8000042c   00000000           .word 0x00000000
80000430   00000000           .word 0x00000000
80000434   00000000           .word 0x00000000
80000438   10e00000           .word 0x10e00000
8000043c   00f000e0           .word 0x00f000e0
80000440   f01000f0           .word 0xf01000f0
80000444   00000010           .word 0x00000010
80000448   00000000           .word 0x00000000
8000044c   00000000           .word 0x00000000
80000450   00000000           .word 0x00000000
80000454   00000000           .word 0x00000000
80000458   00000000           .word 0x00000000
8000045c   00000000           .word 0x00000000
80000460   00000000           .word 0x00000000
80000464   00000000           .word 0x00000000
80000468   00000000           .word 0x00000000
8000046c   00000000           .word 0x00000000
80000470   00000000           .word 0x00000000
80000474   00000000           .word 0x00000000
80000478   00000000           .word 0x00000000
8000047c   00000000           .word 0x00000000
80000480   00000000           .word 0x00000000
80000484   00000000           .word 0x00000000
80000488   00000000           .word 0x00000000
8000048c   00000000           .word 0x00000000
80000490   00000000           .word 0x00000000
80000494   00000000           .word 0x00000000
80000498   00000000           .word 0x00000000
8000049c   00000000           .word 0x00000000
800004a0   00000000           .word 0x00000000
800004a4   00000000           .word 0x00000000
800004a8   00000000           .word 0x00000000
800004ac   00000000           .word 0x00000000
800004b0   00000000           .word 0x00000000
800004b4   00000000           .word 0x00000000
800004b8   111010f0           .word 0x111010f0
800004bc   11101010           .word 0x11101010
800004c0   11101011           .word 0x11101011
800004c4   10101010           .word 0x10101010
800004c8   10101010           .word 0x10101010
800004cc   10101010           .word 0x10101010
800004d0   101010f0           .word 0x101010f0
800004d4   10101010           .word 0x10101010
800004d8   10101010           .word 0x10101010
800004dc   10101010           .word 0x10101010
800004e0   10101010           .word 0x10101010
800004e4   10101010           .word 0x10101010
800004e8   101010f0           .word 0x101010f0
800004ec   10101010           .word 0x10101010
800004f0   10101010           .word 0x10101010
800004f4   10101010           .word 0x10101010
800004f8   10101010           .word 0x10101010
800004fc   10101010           .word 0x10101010
80000500   101010f0           .word 0x101010f0
80000504   10101010           .word 0x10101010
80000508   10101010           .word 0x10101010
8000050c   10101010           .word 0x10101010
80000510   10101010           .word 0x10101010
80000514   10101010           .word 0x10101010
80000518   000000f0           .word 0x000000f0
8000051c   00000000           .word 0x00000000
80000520   00000000           .word 0x00000000
80000524   00000000           .word 0x00000000
80000528   00000000           .word 0x00000000
8000052c   00000000           .word 0x00000000
80000530   00000000           .word 0x00000000
80000534   00000000           .word 0x00000000
80000538   404040ff           .word 0x404040ff
8000053c   40404040           .word 0x40404040
80000540   40404040           .word 0x40404040
80000544   40404040           .word 0x40404040
80000548   40404040           .word 0x40404040
8000054c   40404040           .word 0x40404040
80000550   404040ff           .word 0x404040ff
80000554   40404040           .word 0x40404040
80000558   40404040           .word 0x40404040
8000055c   40404040           .word 0x40404040
80000560   40404040           .word 0x40404040
80000564   40404040           .word 0x40404040
80000568   404040ff           .word 0x404040ff
8000056c   40404040           .word 0x40404040
80000570   40404040           .word 0x40404040
80000574   40404040           .word 0x40404040
80000578   40404040           .word 0x40404040
8000057c   40404040           .word 0x40404040
80000580   404040ff           .word 0x404040ff
80000584   40404040           .word 0x40404040
80000588   40404040           .word 0x40404040
8000058c   40404040           .word 0x40404040
80000590   40404040           .word 0x40404040
80000594   40404040           .word 0x40404040
80000598   000000ff           .word 0x000000ff
8000059c   00000000           .word 0x00000000
800005a0   00000000           .word 0x00000000
800005a4   00000000           .word 0x00000000
800005a8   00000000           .word 0x00000000
800005ac   00000000           .word 0x00000000
800005b0   00000000           .word 0x00000000
800005b4   00000000           .word 0x00000000
800005b8   000000ff           .word 0x000000ff
800005bc   00000000           .word 0x00000000
800005c0   00000000           .word 0x00000000
800005c4   00000000           .word 0x00000000
800005c8   00000000           .word 0x00000000
800005cc   00000000           .word 0x00000000
800005d0   000000ff           .word 0x000000ff
800005d4   00000000           .word 0x00000000
800005d8   00000000           .word 0x00000000
800005dc   00000000           .word 0x00000000
800005e0   00000000           .word 0x00000000
800005e4   00000000           .word 0x00000000
800005e8   000000ff           .word 0x000000ff
800005ec   00000000           .word 0x00000000
800005f0   00000000           .word 0x00000000
800005f4   00000000           .word 0x00000000
800005f8   00000000           .word 0x00000000
800005fc   00000000           .word 0x00000000
80000600   000000ff           .word 0x000000ff
80000604   00000000           .word 0x00000000
80000608   00000000           .word 0x00000000
8000060c   00000000           .word 0x00000000
80000610   00000000           .word 0x00000000
80000614   00000000           .word 0x00000000
80000618   000000ff           .word 0x000000ff
8000061c   00000000           .word 0x00000000
80000620   00000000           .word 0x00000000
80000624   00000000           .word 0x00000000
80000628   00000000           .word 0x00000000
8000062c   00000000           .word 0x00000000
80000630   00000000           .word 0x00000000
80000634   00000000           .word 0x00000000
80000638   010101ff           .word 0x010101ff
8000063c   01010101           .word 0x01010101
80000640   01010101           .word 0x01010101
80000644   01010101           .word 0x01010101
80000648   01010101           .word 0x01010101
8000064c   01010101           .word 0x01010101
80000650   010101ff           .word 0x010101ff
80000654   01010101           .word 0x01010101
80000658   01010101           .word 0x01010101
8000065c   01010101           .word 0x01010101
80000660   01010101           .word 0x01010101
80000664   01010101           .word 0x01010101
80000668   010101ff           .word 0x010101ff
8000066c   01010101           .word 0x01010101
80000670   01010101           .word 0x01010101
80000674   01010101           .word 0x01010101
80000678   01010101           .word 0x01010101
8000067c   01010101           .word 0x01010101
80000680   010101ff           .word 0x010101ff
80000684   01010101           .word 0x01010101
80000688   01010101           .word 0x01010101
8000068c   01010101           .word 0x01010101
80000690   01010101           .word 0x01010101
80000694   01010101           .word 0x01010101
80000698   000000ff           .word 0x000000ff
8000069c   00000000           .word 0x00000000
800006a0   00000000           .word 0x00000000
800006a4   00000000           .word 0x00000000
800006a8   00000000           .word 0x00000000
800006ac   00000000           .word 0x00000000
800006b0   00000000           .word 0x00000000
800006b4   00000000           .word 0x00000000
800006b8   040404ff           .word 0x040404ff
800006bc   04040404           .word 0x04040404
800006c0   04040404           .word 0x04040404
800006c4   04040404           .word 0x04040404
800006c8   04040404           .word 0x04040404
800006cc   04040404           .word 0x04040404
800006d0   040404ff           .word 0x040404ff
800006d4   04040404           .word 0x04040404
800006d8   04040404           .word 0x04040404
800006dc   04040404           .word 0x04040404
800006e0   04040404           .word 0x04040404
800006e4   04040404           .word 0x04040404
800006e8   040404ff           .word 0x040404ff
800006ec   04040404           .word 0x04040404
800006f0   04040404           .word 0x04040404
800006f4   04040404           .word 0x04040404
800006f8   04040404           .word 0x04040404
800006fc   04040404           .word 0x04040404
80000700   040404ff           .word 0x040404ff
80000704   04040404           .word 0x04040404
80000708   04040404           .word 0x04040404
8000070c   04040404           .word 0x04040404
80000710   04040404           .word 0x04040404
80000714   04040404           .word 0x04040404
80000718   000000ff           .word 0x000000ff
8000071c   00000000           .word 0x00000000
80000720   00000000           .word 0x00000000
80000724   00000000           .word 0x00000000
80000728   00000000           .word 0x00000000
8000072c   88000000           .word 0x88000000
80000730   f80088f8           .word 0xf80088f8
80000734   0000f830           .word 0x0000f830
80000738   808080ff           .word 0x808080ff
8000073c   80808080           .word 0x80808080
80000740   80808080           .word 0x80808080
80000744   80808080           .word 0x80808080
80000748   80808080           .word 0x80808080
8000074c   80808080           .word 0x80808080
80000750   808080ff           .word 0x808080ff
80000754   80808080           .word 0x80808080
80000758   80808080           .word 0x80808080
8000075c   80808080           .word 0x80808080
80000760   80808080           .word 0x80808080
80000764   80808080           .word 0x80808080
80000768   808080ff           .word 0x808080ff
8000076c   80808080           .word 0x80808080
80000770   80808080           .word 0x80808080
80000774   80808080           .word 0x80808080
80000778   80808080           .word 0x80808080
8000077c   80808080           .word 0x80808080
80000780   808080ff           .word 0x808080ff
80000784   80808080           .word 0x80808080
80000788   80808080           .word 0x80808080
8000078c   80808080           .word 0x80808080
80000790   80808080           .word 0x80808080
80000794   80808080           .word 0x80808080
80000798   000000ff           .word 0x000000ff
8000079c   00000000           .word 0x00000000
800007a0   00000000           .word 0x00000000
800007a4   00000000           .word 0x00000000
800007a8   00000000           .word 0x00000000
800007ac   00000000           .word 0x00000000
800007b0   00000000           .word 0x00000000
800007b4   00000000           .word 0x00000000
800007b8   00000000           .word 0x00000000
800007bc   00000000           .word 0x00000000
800007c0   00000000           .word 0x00000000
800007c4   00000000           .word 0x00000000
800007c8   00000000           .word 0x00000000
800007cc   00000000           .word 0x00000000
800007d0   00000000           .word 0x00000000
800007d4   00000000           .word 0x00000000
800007d8   00000000           .word 0x00000000
800007dc   00000000           .word 0x00000000
800007e0   00000000           .word 0x00000000
800007e4   00000000           .word 0x00000000
800007e8   00000000           .word 0x00000000
800007ec   00000000           .word 0x00000000
800007f0   00000000           .word 0x00000000
800007f4   00000000           .word 0x00000000
800007f8   00000000           .word 0x00000000
800007fc   00000000           .word 0x00000000
80000800   00000000           .word 0x00000000
80000804   00000000           .word 0x00000000
80000808   00000000           .word 0x00000000
8000080c   00000000           .word 0x00000000
80000810   00000000           .word 0x00000000
80000814   00000000           .word 0x00000000
80000818   00000000           .word 0x00000000
8000081c   00000000           .word 0x00000000
80000820   00000000           .word 0x00000000
80000824   00000000           .word 0x00000000

DATA Section .fardata (Little Endian), 0x18 bytes at 0x80000828 
80000828   00000014           .word 0x00000014
8000082c   0000000f           .word 0x0000000f
80000830   0000000b           .word 0x0000000b
80000834   00000000           .word 0x00000000
80000838   00000002           .word 0x00000002
8000083c   00000000           .word 0x00000000
