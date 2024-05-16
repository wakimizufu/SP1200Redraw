; Disassembly of the file "C:\WorkSpace\E-mu SP1200 OS Firmware ROM-20211031T013319Z-001\E-mu SP1200 OS Firmware ROM\edited_1NOLCDString_E-mu SP1200 OS Firmware ROM.save_memory.obj"
; 
; CPU Type: Z80
; 
; Created with dZ80 2.0
; 
; on Sunday, 31 of October 2021 at 10:26 PM
; 
0000 1867      JR      0069H
0002 D358      OUT     (58H),A
0004 00        NOP     
0005 00        NOP     
0006 00        NOP     
0007 00        NOP     
0008 08        EX      AF,AF'
0009 D9        EXX     
000A ED40      IN      B,(C)
000C 7D        LD      A,L
000D D398      OUT     (98H),A
000F 7C        LD      A,H
0010 D39C      OUT     (9CH),A
0012 23        INC     HL
0013 1B        DEC     DE
0014 7A        LD      A,D
0015 B3        OR      E
0016 D9        EXX     
0017 2802      JR      Z,001BH
0019 08        EX      AF,AF'
001A C9        RET     

001B E1        POP     HL
001C C9        RET     

001D 00        NOP     
001E 00        NOP     
001F 00        NOP     
0020 00        NOP     
0021 00        NOP     
0022 00        NOP     
0023 00        NOP     
0024 00        NOP     
0025 00        NOP     
0026 00        NOP     
0027 00        NOP     
0028 00        NOP     
0029 00        NOP     
002A 00        NOP     
002B 00        NOP     
002C 00        NOP     
002D 00        NOP     
002E 00        NOP     
002F 00        NOP     
0030 00        NOP     
0031 00        NOP     
0032 00        NOP     
0033 00        NOP     
0034 00        NOP     
0035 00        NOP     
0036 00        NOP     
0037 00        NOP     
0038 C3AB01    JP      01ABH
003B 00        NOP     
003C 00        NOP     
003D 00        NOP     
003E 00        NOP     
003F 00        NOP     
0040 00        NOP     
0041 00        NOP     
0042 00        NOP     
0043 00        NOP     
0044 00        NOP     
0045 00        NOP     
0046 00        NOP     
0047 00        NOP     
0048 00        NOP     
0049 00        NOP     
004A 00        NOP     
004B 00        NOP     
004C 00        NOP     
004D 00        NOP     
004E 00        NOP     
004F 00        NOP     
0050 00        NOP     
0051 00        NOP     
0052 00        NOP     
0053 00        NOP     
0054 00        NOP     
0055 00        NOP     
0056 00        NOP     
0057 00        NOP     
0058 00        NOP     
0059 00        NOP     
005A 00        NOP     
005B 00        NOP     
005C 00        NOP     
005D 00        NOP     
005E 00        NOP     
005F 00        NOP     
0060 00        NOP     
0061 00        NOP     
0062 00        NOP     
0063 00        NOP     
0064 00        NOP     
0065 00        NOP     
0066 C3AB01    JP      01ABH
0069 310062    LD      SP,6200H
006C AF        XOR     A
006D CD6401    CALL    0164H
0070 3E7C      LD      A,7CH
0072 D388      OUT     (88H),A
0074 215901    LD      HL,0159H
0077 46        LD      B,(HL)
0078 23        INC     HL
0079 7E        LD      A,(HL)
007A CD6510    CALL    1065H
007D 10F9      DJNZ    0078H
007F 111301    LD      DE,0113H
0082 CDD50F    CALL    0FD5H
0085 AF        XOR     A
0086 D38C      OUT     (8CH),A
0088 D390      OUT     (90H),A
008A 3D        DEC     A
008B 210000    LD      HL,0000H
008E 010000    LD      BC,0000H
0091 00        NOP     
0092 23        INC     HL
0093 10FC      DJNZ    0091H
0095 0D        DEC     C
0096 20F9      JR      NZ,0091H
0098 D38C      OUT     (8CH),A
009A D390      OUT     (90H),A
009C 215D01    LD      HL,015DH
009F 015107    LD      BC,0751H
00A2 EDB3      OTIR    
00A4 3E7C      LD      A,7CH
00A6 327961    LD      (6179H),A
00A9 ED5E      IM      2
00AB 3E60      LD      A,60H
00AD 327A61    LD      (617AH),A
00B0 21FC00    LD      HL,00FCH
00B3 CD9F01    CALL    019FH
00B6 CDAE01    CALL    01AEH
00B9 DB58      IN      A,(58H)
00BB E660      AND     60H
00BD CAAB01    JP      Z,01ABH
00C0 CB77      BIT     6,A
00C2 CAFF06    JP      Z,06FFH
00C5 CB6F      BIT     5,A
00C7 CA7B10    JP      Z,107BH
00CA 21FD00    LD      HL,00FDH
00CD CD9F01    CALL    019FH
00D0 CDAE01    CALL    01AEH
00D3 FD7E09    LD      A,(IY+09H)
00D6 FE80      CP      80H
00D8 280F      JR      Z,00E9H
00DA FEC2      CP      0C2H
00DC 114701    LD      DE,0147H
00DF 2003      JR      NZ,00E4H
00E1 113501    LD      DE,0135H
00E4 CDD50F    CALL    0FD5H
00E7 18C7      JR      00B0H
00E9 210801    LD      HL,0108H
00EC CD9F01    CALL    019FH
00EF CDAE01    CALL    01AEH
00F2 FD7E09    LD      A,(IY+09H)
00F5 FE80      CP      80H
00F7 CA0200    JP      Z,0002H
00FA 18DE      JR      00DAH
00FC 00        NOP     
00FD 0A        LD      A,(BC)
00FE 00        NOP     
00FF 00        NOP     
0100 00        NOP     
0101 40        LD      B,B
0102 61        LD      H,C
0103 00        NOP     
0104 00        NOP     
0105 00        NOP     
0106 00        NOP     
0107 00        NOP     
0108 0A        LD      A,(BC)
0109 00        NOP     
010A A0        AND     B
010B 00        NOP     
010C 00        NOP     
010D 46        LD      B,(HL)
010E 00        NOP     
010F 00        NOP     
0110 00        NOP     
0111 00        NOP     
0112 07        RLCA    
0113 00        NOP     
0114 00        NOP     
0115 00        NOP     
0116 00        NOP     
0117 00        NOP     
0118 00        NOP     
0119 00        NOP     
011A 00        NOP     
011B 00        NOP     
011C 00        NOP     
011D 00        NOP     
011E 00        NOP     
011F 00        NOP     
0120 00        NOP     
0121 00        NOP     
0122 00        NOP     
0123 00        NOP     
0124 00        NOP     
0125 00        NOP     
0126 00        NOP     
0127 00        NOP     
0128 00        NOP     
0129 00        NOP     
012A 00        NOP     
012B 00        NOP     
012C 00        NOP     
012D 00        NOP     
012E 00        NOP     
012F 00        NOP     
0130 00        NOP     
0131 00        NOP     
0132 00        NOP     
0133 00        NOP     
0134 00        NOP     
0135 00        NOP     
0136 00        NOP     
0137 00        NOP     
0138 00        NOP     
0139 00        NOP     
013A 00        NOP     
013B 00        NOP     
013C 00        NOP     
013D 00        NOP     
013E 00        NOP     
013F 00        NOP     
0140 00        NOP     
0141 00        NOP     
0142 00        NOP     
0143 00        NOP     
0144 00        NOP     
0145 00        NOP     
0146 00        NOP     
0147 00        NOP     
0148 00        NOP     
0149 00        NOP     
014A 00        NOP     
014B 00        NOP     
014C 00        NOP     
014D 00        NOP     
014E 00        NOP     
014F 00        NOP     
0150 00        NOP     
0151 00        NOP     
0152 00        NOP     
0153 00        NOP     
0154 00        NOP     
0155 00        NOP     
0156 00        NOP     
0157 00        NOP     
0158 00        NOP     
0159 03        INC     BC
015A 00        NOP     
015B 00        NOP     
015C 00        NOP     
015D 1804      JR      0163H
015F CC03C1    CALL    Z,0C103H
0162 05        DEC     B
0163 68        LD      L,B
0164 018008    LD      BC,0880H
0167 ED79      OUT     (C),A
0169 0C        INC     C
016A 10FB      DJNZ    0167H
016C 010008    LD      BC,0800H
016F 21FDFF    LD      HL,0FFFDH
0172 3E02      LD      A,02H
0174 CD9501    CALL    0195H
0177 3E00      LD      A,00H
0179 CD9501    CALL    0195H
017C 210000    LD      HL,0000H
017F 3E03      LD      A,03H
0181 CD9501    CALL    0195H
0184 3E04      LD      A,04H
0186 CD9501    CALL    0195H
0189 79        LD      A,C
018A C608      ADD     A,08H
018C 4F        LD      C,A
018D 10E0      DJNZ    016FH
018F 210000    LD      HL,0000H
0192 0E07      LD      C,07H
0194 AF        XOR     A
0195 81        ADD     A,C
0196 D394      OUT     (94H),A
0198 7D        LD      A,L
0199 D398      OUT     (98H),A
019B 7C        LD      A,H
019C D39C      OUT     (9CH),A
019E C9        RET     

019F 117B61    LD      DE,617BH
01A2 D5        PUSH    DE
01A3 FDE1      POP     IY
01A5 010B00    LD      BC,000BH
01A8 EDB0      LDIR    
01AA C9        RET     

01AB C30000    JP      0000H
01AE FD7E00    LD      A,(IY+00H)
01B1 E6FE      AND     0FEH
01B3 2829      JR      Z,01DEH
01B5 21DB01    LD      HL,01DBH
01B8 010300    LD      BC,0003H
01BB EDB1      CPIR    
01BD 2827      JR      Z,01E6H
01BF 3EC1      LD      A,0C1H
01C1 FD7709    LD      (IY+09H),A
01C4 3E05      LD      A,05H
01C6 D353      OUT     (53H),A
01C8 3A7A61    LD      A,(617AH)
01CB D353      OUT     (53H),A
01CD 118001    LD      DE,0180H
01D0 1B        DEC     DE
01D1 7A        LD      A,D
01D2 B3        OR      E
01D3 20FB      JR      NZ,01D0H
01D5 FD7E09    LD      A,(IY+09H)
01D8 FE80      CP      80H
01DA C9        RET     

01DB 0A        LD      A,(BC)
01DC 0E1E      LD      C,1EH
01DE 3D        DEC     A
01DF 325A61    LD      (615AH),A
01E2 3E80      LD      A,80H
01E4 18DB      JR      01C1H
01E6 3E04      LD      A,04H
01E8 325B61    LD      (615BH),A
01EB 3E0A      LD      A,0AH
01ED 325C61    LD      (615CH),A
01F0 3E05      LD      A,05H
01F2 D353      OUT     (53H),A
01F4 3E66      LD      A,66H
01F6 D353      OUT     (53H),A
01F8 0603      LD      B,03H
01FA 10FE      DJNZ    01FAH
01FC 3E10      LD      A,10H
01FE D351      OUT     (51H),A
0200 DB51      IN      A,(51H)
0202 CB67      BIT     4,A
0204 280A      JR      Z,0210H
0206 FDCB0056  BIT     2,(IY+00H)
020A 2804      JR      Z,0210H
020C 3EC3      LD      A,0C3H
020E 18B1      JR      01C1H
0210 FD360900  LD      (IY+09H),00H
0214 FD5E04    LD      E,(IY+04H)
0217 FD5605    LD      D,(IY+05H)
021A FD7E06    LD      A,(IY+06H)
021D ED536661  LD      (6166H),DE
0221 326861    LD      (6168H),A
0224 FD4E07    LD      C,(IY+07H)
0227 FD4608    LD      B,(IY+08H)
022A ED436961  LD      (6169H),BC
022E FD6E01    LD      L,(IY+01H)
0231 FD6602    LD      H,(IY+02H)
0234 FD7E03    LD      A,(IY+03H)
0237 327761    LD      (6177H),A
023A A7        AND     A
023B 2826      JR      Z,0263H
023D CB85      RES     0,L
023F CB83      RES     0,E
0241 CB81      RES     0,C
0243 ED536661  LD      (6166H),DE
0247 ED436961  LD      (6169H),BC
024B E607      AND     07H
024D 5F        LD      E,A
024E 16FC      LD      D,0FCH
0250 018008    LD      BC,0880H
0253 ED59      OUT     (C),E
0255 7A        LD      A,D
0256 C608      ADD     A,08H
0258 57        LD      D,A
0259 D394      OUT     (94H),A
025B AF        XOR     A
025C D398      OUT     (98H),A
025E D39C      OUT     (9CH),A
0260 0C        INC     C
0261 10F0      DJNZ    0253H
0263 227561    LD      (6175H),HL
0266 FD7E0A    LD      A,(IY+0AH)
0269 A7        AND     A
026A 1F        RRA     
026B 325D61    LD      (615DH),A
026E 5F        LD      E,A
026F 1F        RRA     
0270 E680      AND     80H
0272 325E61    LD      (615EH),A
0275 CDDB06    CALL    06DBH
0278 EB        EX      DE,HL
0279 3A5A61    LD      A,(615AH)
027C CB7F      BIT     7,A
027E 2019      JR      NZ,0299H
0280 95        SUB     L
0281 CA0703    JP      Z,0307H
0284 67        LD      H,A
0285 7D        LD      A,L
0286 A7        AND     A
0287 2810      JR      Z,0299H
0289 325A61    LD      (615AH),A
028C 7C        LD      A,H
028D 2608      LD      H,08H
028F CB7F      BIT     7,A
0291 2818      JR      Z,02ABH
0293 2600      LD      H,00H
0295 ED44      NEG     
0297 1812      JR      02ABH
0299 AF        XOR     A
029A 325A61    LD      (615AH),A
029D 2608      LD      H,08H
029F 3E10      LD      A,10H
02A1 D353      OUT     (53H),A
02A3 DB53      IN      A,(53H)
02A5 CB6F      BIT     5,A
02A7 2021      JR      NZ,02CAH
02A9 3E5A      LD      A,5AH
02AB 3D        DEC     A
02AC 326061    LD      (6160H),A
02AF 3A7961    LD      A,(6179H)
02B2 E6F7      AND     0F7H
02B4 B4        OR      H
02B5 D388      OUT     (88H),A
02B7 327961    LD      (6179H),A
02BA 3E05      LD      A,05H
02BC D353      OUT     (53H),A
02BE 3EE6      LD      A,0E6H
02C0 D353      OUT     (53H),A
02C2 3E05      LD      A,05H
02C4 D353      OUT     (53H),A
02C6 3E66      LD      A,66H
02C8 D353      OUT     (53H),A
02CA 118001    LD      DE,0180H
02CD 1B        DEC     DE
02CE 7A        LD      A,D
02CF B3        OR      E
02D0 20FB      JR      NZ,02CDH
02D2 3A6061    LD      A,(6160H)
02D5 3D        DEC     A
02D6 FAED02    JP      M,02EDH
02D9 326061    LD      (6160H),A
02DC 3A7961    LD      A,(6179H)
02DF CB5F      BIT     3,A
02E1 28D7      JR      Z,02BAH
02E3 3E10      LD      A,10H
02E5 D353      OUT     (53H),A
02E7 DB53      IN      A,(53H)
02E9 CB6F      BIT     5,A
02EB 28CD      JR      Z,02BAH
02ED 3A5D61    LD      A,(615DH)
02F0 6F        LD      L,A
02F1 3A5A61    LD      A,(615AH)
02F4 95        SUB     L
02F5 2802      JR      Z,02F9H
02F7 188B      JR      0284H
02F9 FDCB0056  BIT     2,(IY+00H)
02FD 2808      JR      Z,0307H
02FF 118307    LD      DE,0783H
0302 1B        DEC     DE
0303 7A        LD      A,D
0304 B3        OR      E
0305 20FB      JR      NZ,0302H
0307 119CAD    LD      DE,0AD9CH
030A 1B        DEC     DE
030B 7A        LD      A,D
030C B3        OR      E
030D 2005      JR      NZ,0314H
030F 3EC2      LD      A,0C2H
0311 C3C101    JP      01C1H
0314 3E10      LD      A,10H
0316 D351      OUT     (51H),A
0318 DB51      IN      A,(51H)
031A CB5F      BIT     3,A
031C 28EC      JR      Z,030AH
031E 215F03    LD      HL,035FH
0321 FDCB0066  BIT     4,(IY+00H)
0325 2809      JR      Z,0330H
0327 FDCB096E  BIT     5,(IY+09H)
032B 2003      JR      NZ,0330H
032D 218105    LD      HL,0581H
0330 117145    LD      DE,4571H
0333 1B        DEC     DE
0334 7A        LD      A,D
0335 B3        OR      E
0336 2005      JR      NZ,033DH
0338 3EC2      LD      A,0C2H
033A C3C101    JP      01C1H
033D 3E10      LD      A,10H
033F D351      OUT     (51H),A
0341 DB51      IN      A,(51H)
0343 CB6F      BIT     5,A
0345 20E9      JR      NZ,0330H
0347 117145    LD      DE,4571H
034A 1B        DEC     DE
034B 7A        LD      A,D
034C B3        OR      E
034D 2005      JR      NZ,0354H
034F 3EC2      LD      A,0C2H
0351 C3C101    JP      01C1H
0354 3E10      LD      A,10H
0356 D351      OUT     (51H),A
0358 DB51      IN      A,(51H)
035A CB6F      BIT     5,A
035C 28E9      JR      Z,0347H
035E E9        JP      (HL)
035F DB52      IN      A,(52H)
0361 DB52      IN      A,(52H)
0363 DB52      IN      A,(52H)
0365 DB52      IN      A,(52H)
0367 3E43      LD      A,43H
0369 D353      OUT     (53H),A
036B 3ED9      LD      A,0D9H
036D D353      OUT     (53H),A
036F 111405    LD      DE,0514H
0372 DB53      IN      A,(53H)
0374 E601      AND     01H
0376 200A      JR      NZ,0382H
0378 1B        DEC     DE
0379 7A        LD      A,D
037A B3        OR      E
037B 20F5      JR      NZ,0372H
037D 3EC4      LD      A,0C4H
037F C3C101    JP      01C1H
0382 216261    LD      HL,6162H
0385 015204    LD      BC,0452H
0388 EDA2      INI     
038A DB53      IN      A,(53H)
038C E601      AND     01H
038E 28FA      JR      Z,038AH
0390 EDA2      INI     
0392 20F6      JR      NZ,038AH
0394 DB53      IN      A,(53H)
0396 CB47      BIT     0,A
0398 28FA      JR      Z,0394H
039A 3E01      LD      A,01H
039C D353      OUT     (53H),A
039E DB53      IN      A,(53H)
03A0 CB77      BIT     6,A
03A2 C29004    JP      NZ,0490H
03A5 3A6261    LD      A,(6162H)
03A8 67        LD      H,A
03A9 3A5E61    LD      A,(615EH)
03AC 17        RLA     
03AD 3A5D61    LD      A,(615DH)
03B0 17        RLA     
03B1 BC        CP      H
03B2 C29004    JP      NZ,0490H
03B5 FDCB0056  BIT     2,(IY+00H)
03B9 C2EE05    JP      NZ,05EEH
03BC 3E03      LD      A,03H
03BE D353      OUT     (53H),A
03C0 3ED9      LD      A,0D9H
03C2 D353      OUT     (53H),A
03C4 DB52      IN      A,(52H)
03C6 DB52      IN      A,(52H)
03C8 DB52      IN      A,(52H)
03CA DB52      IN      A,(52H)
03CC 2A6961    LD      HL,(6169H)
03CF ED5B7561  LD      DE,(6175H)
03D3 3A7761    LD      A,(6177H)
03D6 A7        AND     A
03D7 2811      JR      Z,03EAH
03D9 3E07      LD      A,07H
03DB D394      OUT     (94H),A
03DD 7B        LD      A,E
03DE D398      OUT     (98H),A
03E0 7A        LD      A,D
03E1 D39C      OUT     (9CH),A
03E3 44        LD      B,H
03E4 4D        LD      C,L
03E5 CB38      SRL     B
03E7 CB19      RR      C
03E9 09        ADD     HL,BC
03EA 010E00    LD      BC,000EH
03ED FDCB096E  BIT     5,(IY+09H)
03F1 2803      JR      Z,03F6H
03F3 21FFFF    LD      HL,0FFFFH
03F6 7C        LD      A,H
03F7 B5        OR      L
03F8 2810      JR      Z,040AH
03FA DB53      IN      A,(53H)
03FC E601      AND     01H
03FE 28FA      JR      Z,03FAH
0400 DB52      IN      A,(52H)
0402 2B        DEC     HL
0403 10F1      DJNZ    03F6H
0405 0D        DEC     C
0406 20EE      JR      NZ,03F6H
0408 182D      JR      0437H
040A 3A7761    LD      A,(6177H)
040D A7        AND     A
040E C23A04    JP      NZ,043AH
0411 2A6661    LD      HL,(6166H)
0414 7C        LD      A,H
0415 B5        OR      L
0416 2812      JR      Z,042AH
0418 DB53      IN      A,(53H)
041A E601      AND     01H
041C 28F6      JR      Z,0414H
041E DB52      IN      A,(52H)
0420 12        LD      (DE),A
0421 13        INC     DE
0422 2B        DEC     HL
0423 10EF      DJNZ    0414H
0425 0D        DEC     C
0426 20EC      JR      NZ,0414H
0428 180D      JR      0437H
042A DB53      IN      A,(53H)
042C E601      AND     01H
042E 28FA      JR      Z,042AH
0430 DB52      IN      A,(52H)
0432 10F6      DJNZ    042AH
0434 0D        DEC     C
0435 20F3      JR      NZ,042AH
0437 C3C004    JP      04C0H
043A 2A6661    LD      HL,(6166H)
043D 2B        DEC     HL
043E D5        PUSH    DE
043F EB        EX      DE,HL
0440 213F09    LD      HL,093FH
0443 ED52      SBC     HL,DE
0445 EB        EX      DE,HL
0446 3003      JR      NC,044BH
0448 213F09    LD      HL,093FH
044B 23        INC     HL
044C D1        POP     DE
044D DB53      IN      A,(53H)
044F E601      AND     01H
0451 28FA      JR      Z,044DH
0453 DB52      IN      A,(52H)
0455 D341      OUT     (41H),A
0457 13        INC     DE
0458 7B        LD      A,E
0459 D398      OUT     (98H),A
045B 7A        LD      A,D
045C D39C      OUT     (9CH),A
045E 1003      DJNZ    0463H
0460 0D        DEC     C
0461 28D4      JR      Z,0437H
0463 DB53      IN      A,(53H)
0465 E601      AND     01H
0467 28FA      JR      Z,0463H
0469 DB52      IN      A,(52H)
046B D341      OUT     (41H),A
046D 1003      DJNZ    0472H
046F 0D        DEC     C
0470 28C5      JR      Z,0437H
0472 DB53      IN      A,(53H)
0474 E601      AND     01H
0476 28FA      JR      Z,0472H
0478 DB52      IN      A,(52H)
047A D340      OUT     (40H),A
047C 13        INC     DE
047D 7B        LD      A,E
047E D398      OUT     (98H),A
0480 7A        LD      A,D
0481 D39C      OUT     (9CH),A
0483 2B        DEC     HL
0484 2B        DEC     HL
0485 1003      DJNZ    048AH
0487 0D        DEC     C
0488 28AD      JR      Z,0437H
048A 7C        LD      A,H
048B B5        OR      L
048C 289C      JR      Z,042AH
048E 18BD      JR      044DH
0490 2A7161    LD      HL,(6171H)
0493 23        INC     HL
0494 227161    LD      (6171H),HL
0497 3A5B61    LD      A,(615BH)
049A 3D        DEC     A
049B 2005      JR      NZ,04A2H
049D 3EC5      LD      A,0C5H
049F C3C101    JP      01C1H
04A2 325B61    LD      (615BH),A
04A5 FE03      CP      03H
04A7 2011      JR      NZ,04BAH
04A9 2B        DEC     HL
04AA 227161    LD      (6171H),HL
04AD 2A7361    LD      HL,(6173H)
04B0 23        INC     HL
04B1 227361    LD      (6173H),HL
04B4 CDDB06    CALL    06DBH
04B7 C30703    JP      0307H
04BA CDDB06    CALL    06DBH
04BD C39902    JP      0299H
04C0 2604      LD      H,04H
04C2 DB53      IN      A,(53H)
04C4 CB47      BIT     0,A
04C6 28FA      JR      Z,04C2H
04C8 DB52      IN      A,(52H)
04CA 25        DEC     H
04CB 20F5      JR      NZ,04C2H
04CD DB53      IN      A,(53H)
04CF CB47      BIT     0,A
04D1 28FA      JR      Z,04CDH
04D3 3E01      LD      A,01H
04D5 D353      OUT     (53H),A
04D7 DB53      IN      A,(53H)
04D9 CB77      BIT     6,A
04DB C25605    JP      NZ,0556H
04DE 3E03      LD      A,03H
04E0 D353      OUT     (53H),A
04E2 3EC0      LD      A,0C0H
04E4 D353      OUT     (53H),A
04E6 3A7761    LD      A,(6177H)
04E9 A7        AND     A
04EA 2805      JR      Z,04F1H
04EC 214009    LD      HL,0940H
04EF 1803      JR      04F4H
04F1 21000E    LD      HL,0E00H
04F4 ED4B6961  LD      BC,(6169H)
04F8 A7        AND     A
04F9 ED42      SBC     HL,BC
04FB 44        LD      B,H
04FC 4D        LD      C,L
04FD 2A7561    LD      HL,(6175H)
0500 09        ADD     HL,BC
0501 227561    LD      (6175H),HL
0504 2A6661    LD      HL,(6166H)
0507 3A6861    LD      A,(6168H)
050A A7        AND     A
050B ED42      SBC     HL,BC
050D 226661    LD      (6166H),HL
0510 DE00      SBC     A,00H
0512 326861    LD      (6168H),A
0515 3805      JR      C,051CH
0517 B4        OR      H
0518 B5        OR      L
0519 2001      JR      NZ,051CH
051B 37        SCF     
051C 3E80      LD      A,80H
051E DAC101    JP      C,01C1H
0521 3E04      LD      A,04H
0523 325B61    LD      (615BH),A
0526 3E0A      LD      A,0AH
0528 325C61    LD      (615CH),A
052B FDCB09AE  RES     5,(IY+09H)
052F 3A5E61    LD      A,(615EH)
0532 EE80      XOR     80H
0534 325E61    LD      (615EH),A
0537 210000    LD      HL,0000H
053A 226961    LD      (6169H),HL
053D CDDB06    CALL    06DBH
0540 CB7F      BIT     7,A
0542 C20703    JP      NZ,0307H
0545 3A5D61    LD      A,(615DH)
0548 3C        INC     A
0549 325D61    LD      (615DH),A
054C 325A61    LD      (615AH),A
054F 3E01      LD      A,01H
0551 2600      LD      H,00H
0553 C3AB02    JP      02ABH
0556 3A5C61    LD      A,(615CH)
0559 FE0A      CP      0AH
055B 2809      JR      Z,0566H
055D 2A6D61    LD      HL,(616DH)
0560 23        INC     HL
0561 226D61    LD      (616DH),HL
0564 1807      JR      056DH
0566 2A6F61    LD      HL,(616FH)
0569 23        INC     HL
056A 226F61    LD      (616FH),HL
056D 3D        DEC     A
056E 280C      JR      Z,057CH
0570 325C61    LD      (615CH),A
0573 CDDB06    CALL    06DBH
0576 215F03    LD      HL,035FH
0579 C33003    JP      0330H
057C 3EC6      LD      A,0C6H
057E C3C101    JP      01C1H
0581 3E05      LD      A,05H
0583 D351      OUT     (51H),A
0585 3A5E61    LD      A,(615EH)
0588 F66A      OR      6AH
058A D351      OUT     (51H),A
058C 219B00    LD      HL,009BH
058F 2B        DEC     HL
0590 7C        LD      A,H
0591 B5        OR      L
0592 20FB      JR      NZ,058FH
0594 D352      OUT     (52H),A
0596 3E05      LD      A,05H
0598 D353      OUT     (53H),A
059A 3E6E      LD      A,6EH
059C D353      OUT     (53H),A
059E 21FA06    LD      HL,06FAH
05A1 015205    LD      BC,0552H
05A4 DB53      IN      A,(53H)
05A6 CB57      BIT     2,A
05A8 28FA      JR      Z,05A4H
05AA EDA3      OUTI    
05AC 20F6      JR      NZ,05A4H
05AE DB53      IN      A,(53H)
05B0 CB57      BIT     2,A
05B2 28FA      JR      Z,05AEH
05B4 3E85      LD      A,85H
05B6 D353      OUT     (53H),A
05B8 3E66      LD      A,66H
05BA F66F      OR      6FH
05BC D353      OUT     (53H),A
05BE 3A5E61    LD      A,(615EH)
05C1 17        RLA     
05C2 3A5D61    LD      A,(615DH)
05C5 17        RLA     
05C6 D352      OUT     (52H),A
05C8 3ED0      LD      A,0D0H
05CA D353      OUT     (53H),A
05CC DB53      IN      A,(53H)
05CE CB77      BIT     6,A
05D0 3E10      LD      A,10H
05D2 D353      OUT     (53H),A
05D4 28F6      JR      Z,05CCH
05D6 AF        XOR     A
05D7 D352      OUT     (52H),A
05D9 DB53      IN      A,(53H)
05DB CB57      BIT     2,A
05DD 28FA      JR      Z,05D9H
05DF AF        XOR     A
05E0 D352      OUT     (52H),A
05E2 3E05      LD      A,05H
05E4 D353      OUT     (53H),A
05E6 3E66      LD      A,66H
05E8 D353      OUT     (53H),A
05EA 061C      LD      B,1CH
05EC 10FE      DJNZ    05ECH
05EE FDCB096E  BIT     5,(IY+09H)
05F2 C2BC03    JP      NZ,03BCH
05F5 3E05      LD      A,05H
05F7 D351      OUT     (51H),A
05F9 3A5E61    LD      A,(615EH)
05FC F66A      OR      6AH
05FE D351      OUT     (51H),A
0600 214D00    LD      HL,004DH
0603 2B        DEC     HL
0604 7C        LD      A,H
0605 B5        OR      L
0606 20FB      JR      NZ,0603H
0608 D352      OUT     (52H),A
060A 3E15      LD      A,15H
060C D353      OUT     (53H),A
060E 3E6E      LD      A,6EH
0610 D353      OUT     (53H),A
0612 21FA06    LD      HL,06FAH
0615 015205    LD      BC,0552H
0618 DB53      IN      A,(53H)
061A CB57      BIT     2,A
061C 28FA      JR      Z,0618H
061E EDA3      OUTI    
0620 20F6      JR      NZ,0618H
0622 2A7561    LD      HL,(6175H)
0625 010E00    LD      BC,000EH
0628 3E07      LD      A,07H
062A D394      OUT     (94H),A
062C 7D        LD      A,L
062D D398      OUT     (98H),A
062F 7C        LD      A,H
0630 D39C      OUT     (9CH),A
0632 3A7761    LD      A,(6177H)
0635 A7        AND     A
0636 3E6F      LD      A,6FH
0638 F5        PUSH    AF
0639 DB53      IN      A,(53H)
063B CB57      BIT     2,A
063D 28FA      JR      Z,0639H
063F 3E85      LD      A,85H
0641 D353      OUT     (53H),A
0643 F1        POP     AF
0644 D353      OUT     (53H),A
0646 283D      JR      Z,0685H
0648 DB53      IN      A,(53H)
064A E604      AND     04H
064C 28FA      JR      Z,0648H
064E DB41      IN      A,(41H)
0650 D352      OUT     (52H),A
0652 23        INC     HL
0653 7D        LD      A,L
0654 D398      OUT     (98H),A
0656 7C        LD      A,H
0657 D39C      OUT     (9CH),A
0659 1003      DJNZ    065EH
065B 0D        DEC     C
065C 2836      JR      Z,0694H
065E DB53      IN      A,(53H)
0660 E604      AND     04H
0662 28FA      JR      Z,065EH
0664 DB41      IN      A,(41H)
0666 D352      OUT     (52H),A
0668 1003      DJNZ    066DH
066A 0D        DEC     C
066B 2827      JR      Z,0694H
066D DB53      IN      A,(53H)
066F E604      AND     04H
0671 28FA      JR      Z,066DH
0673 DB40      IN      A,(40H)
0675 D352      OUT     (52H),A
0677 23        INC     HL
0678 7D        LD      A,L
0679 D398      OUT     (98H),A
067B 7C        LD      A,H
067C D39C      OUT     (9CH),A
067E 10C8      DJNZ    0648H
0680 0D        DEC     C
0681 20C5      JR      NZ,0648H
0683 180F      JR      0694H
0685 DB53      IN      A,(53H)
0687 E604      AND     04H
0689 28FA      JR      Z,0685H
068B 7E        LD      A,(HL)
068C D352      OUT     (52H),A
068E 23        INC     HL
068F 10F4      DJNZ    0685H
0691 0D        DEC     C
0692 20F1      JR      NZ,0685H
0694 3ED0      LD      A,0D0H
0696 D353      OUT     (53H),A
0698 DB53      IN      A,(53H)
069A CB77      BIT     6,A
069C 3E10      LD      A,10H
069E D353      OUT     (53H),A
06A0 28F6      JR      Z,0698H
06A2 AF        XOR     A
06A3 D352      OUT     (52H),A
06A5 DB53      IN      A,(53H)
06A7 CB57      BIT     2,A
06A9 28FA      JR      Z,06A5H
06AB AF        XOR     A
06AC D352      OUT     (52H),A
06AE DB53      IN      A,(53H)
06B0 CB57      BIT     2,A
06B2 28FA      JR      Z,06AEH
06B4 3E05      LD      A,05H
06B6 D353      OUT     (53H),A
06B8 3E66      LD      A,66H
06BA D353      OUT     (53H),A
06BC 212200    LD      HL,0022H
06BF 2B        DEC     HL
06C0 7C        LD      A,H
06C1 B5        OR      L
06C2 20FB      JR      NZ,06BFH
06C4 FDCB09EE  SET     5,(IY+09H)
06C8 3E02      LD      A,02H
06CA 325C61    LD      (615CH),A
06CD 3E05      LD      A,05H
06CF D351      OUT     (51H),A
06D1 3A5E61    LD      A,(615EH)
06D4 F668      OR      68H
06D6 D351      OUT     (51H),A
06D8 C37305    JP      0573H
06DB 21F006    LD      HL,06F0H
06DE 015308    LD      BC,0853H
06E1 EDB3      OTIR    
06E3 015102    LD      BC,0251H
06E6 3A5E61    LD      A,(615EH)
06E9 F668      OR      68H
06EB EDB3      OTIR    
06ED D351      OUT     (51H),A
06EF C9        RET     

06F0 04        INC     B
06F1 1006      DJNZ    06F9H
06F3 FA0796    JP      M,9607H
06F6 03        INC     BC
06F7 C0        RET     NZ

06F8 1005      DJNZ    06FFH
06FA 00        NOP     
06FB 00        NOP     
06FC 00        NOP     
06FD FA96CD    JP      M,0CD96H
0700 B3        OR      E
0701 0ECD      LD      C,0CDH
0703 D7        RST     10H
0704 0E21      LD      C,21H
0706 76        HALT    
0707 07        RLCA    
0708 015107    LD      BC,0751H
070B EDB3      OTIR    
070D 3E7F      LD      A,7FH
070F D388      OUT     (88H),A
0711 111608    LD      DE,0816H
0714 CDD50F    CALL    0FD5H
0717 DB58      IN      A,(58H)
0719 CB77      BIT     6,A
071B 282F      JR      Z,074CH
071D CB6F      BIT     5,A
071F 20F6      JR      NZ,0717H
0721 113108    LD      DE,0831H
0724 CDD50F    CALL    0FD5H
0727 3E03      LD      A,03H
0729 32D168    LD      (68D1H),A
072C CD0608    CALL    0806H
072F DB58      IN      A,(58H)
0731 CB77      BIT     6,A
0733 280D      JR      Z,0742H
0735 CB6F      BIT     5,A
0737 280E      JR      Z,0747H
0739 CB67      BIT     4,A
073B 20F2      JR      NZ,072FH
073D CD9807    CALL    0798H
0740 18CB      JR      070DH
0742 CD8B07    CALL    078BH
0745 18DA      JR      0721H
0747 CD7D07    CALL    077DH
074A 18D5      JR      0721H
074C 115408    LD      DE,0854H
074F CDD50F    CALL    0FD5H
0752 AF        XOR     A
0753 32D168    LD      (68D1H),A
0756 CD0608    CALL    0806H
0759 DB58      IN      A,(58H)
075B CB77      BIT     6,A
075D 280D      JR      Z,076CH
075F CB6F      BIT     5,A
0761 280E      JR      Z,0771H
0763 CB67      BIT     4,A
0765 20F2      JR      NZ,0759H
0767 CD9807    CALL    0798H
076A 18A1      JR      070DH
076C CD8B07    CALL    078BH
076F 18DB      JR      074CH
0771 CD7D07    CALL    077DH
0774 18D6      JR      074CH
0776 1804      JR      077CH
0778 CC0568    CALL    Z,6805H
077B 03        INC     BC
077C C1        POP     BC
077D CDD507    CALL    07D5H
0780 CD6D09    CALL    096DH
0783 F5        PUSH    AF
0784 DCD70E    CALL    C,0ED7H
0787 F1        POP     AF
0788 C3A607    JP      07A6H
078B CDD507    CALL    07D5H
078E CD0F0B    CALL    0B0FH
0791 F5        PUSH    AF
0792 DCB30E    CALL    C,0EB3H
0795 F1        POP     AF
0796 180E      JR      07A6H
0798 11B208    LD      DE,08B2H
079B CDD50F    CALL    0FD5H
079E CD580F    CALL    0F58H
07A1 2003      JR      NZ,07A6H
07A3 CD640F    CALL    0F64H
07A6 F5        PUSH    AF
07A7 CD0608    CALL    0806H
07AA F1        POP     AF
07AB 21C107    LD      HL,07C1H
07AE 87        ADD     A,A
07AF 5F        LD      E,A
07B0 1600      LD      D,00H
07B2 19        ADD     HL,DE
07B3 5E        LD      E,(HL)
07B4 23        INC     HL
07B5 56        LD      D,(HL)
07B6 CDD50F    CALL    0FD5H
07B9 CDE807    CALL    07E8H
07BC 3E7F      LD      A,7FH
07BE D388      OUT     (88H),A
07C0 C9        RET     

07C1 D1        POP     DE
07C2 08        EX      AF,AF'
07C3 DC08E6    CALL    C,0E608H
07C6 08        EX      AF,AF'
07C7 F7        RST     30H
07C8 08        EX      AF,AF'
07C9 08        EX      AF,AF'
07CA 09        ADD     HL,BC
07CB 08        EX      AF,AF'
07CC 09        ADD     HL,BC
07CD 0A        LD      A,(BC)
07CE 09        ADD     HL,BC
07CF 1B        DEC     DE
07D0 09        ADD     HL,BC
07D1 2D        DEC     L
07D2 09        ADD     HL,BC
07D3 3F        CCF     
07D4 09        ADD     HL,BC
07D5 FD21D168  LD      IY,68D1H
07D9 117708    LD      DE,0877H
07DC FDCB004E  BIT     1,(IY+00H)
07E0 2803      JR      Z,07E5H
07E2 118708    LD      DE,0887H
07E5 CDD50F    CALL    0FD5H
07E8 119808    LD      DE,0898H
07EB CDD50F    CALL    0FD5H
07EE 3E7D      LD      A,7DH
07F0 D388      OUT     (88H),A
07F2 DB58      IN      A,(58H)
07F4 CB7F      BIT     7,A
07F6 20FA      JR      NZ,07F2H
07F8 11A508    LD      DE,08A5H
07FB CDD50F    CALL    0FD5H
07FE 3E7E      LD      A,7EH
0800 D388      OUT     (88H),A
0802 FD7E00    LD      A,(IY+00H)
0805 C9        RET     

0806 DB58      IN      A,(58H)
0808 F607      OR      07H
080A 3C        INC     A
080B 20F9      JR      NZ,0806H
080D 211432    LD      HL,3214H
0810 2B        DEC     HL
0811 7C        LD      A,H
0812 B5        OR      L
0813 20FB      JR      NZ,0810H
0815 C9        RET     

0816 00        NOP     
0817 00        NOP     
0818 00        NOP     
0819 00        NOP     
081A 00        NOP     
081B 00        NOP     
081C 00        NOP     
081D 00        NOP     
081E 00        NOP     
081F 00        NOP     
0820 00        NOP     
0821 00        NOP     
0822 00        NOP     
0823 00        NOP     
0824 00        NOP     
0825 00        NOP     
0826 00        NOP     
0827 00        NOP     
0828 00        NOP     
0829 00        NOP     
082A 00        NOP     
082B 00        NOP     
082C 00        NOP     
082D 00        NOP     
082E 00        NOP     
082F 00        NOP     
0830 00        NOP     
0831 00        NOP     
0832 00        NOP     
0833 00        NOP     
0834 00        NOP     
0835 00        NOP     
0836 00        NOP     
0837 00        NOP     
0838 00        NOP     
0839 00        NOP     
083A 00        NOP     
083B 00        NOP     
083C 00        NOP     
083D 00        NOP     
083E 00        NOP     
083F 00        NOP     
0840 00        NOP     
0841 00        NOP     
0842 00        NOP     
0843 00        NOP     
0844 00        NOP     
0845 00        NOP     
0846 00        NOP     
0847 00        NOP     
0848 00        NOP     
0849 00        NOP     
084A 00        NOP     
084B 00        NOP     
084C 00        NOP     
084D 00        NOP     
084E 00        NOP     
084F 00        NOP     
0850 00        NOP     
0851 00        NOP     
0852 00        NOP     
0853 00        NOP     
0854 00        NOP     
0855 00        NOP     
0856 00        NOP     
0857 00        NOP     
0858 00        NOP     
0859 00        NOP     
085A 00        NOP     
085B 00        NOP     
085C 00        NOP     
085D 00        NOP     
085E 00        NOP     
085F 00        NOP     
0860 00        NOP     
0861 00        NOP     
0862 00        NOP     
0863 00        NOP     
0864 00        NOP     
0865 00        NOP     
0866 00        NOP     
0867 00        NOP     
0868 00        NOP     
0869 00        NOP     
086A 00        NOP     
086B 00        NOP     
086C 00        NOP     
086D 00        NOP     
086E 00        NOP     
086F 00        NOP     
0870 00        NOP     
0871 00        NOP     
0872 00        NOP     
0873 00        NOP     
0874 00        NOP     
0875 00        NOP     
0876 00        NOP     
0877 00        NOP     
0878 00        NOP     
0879 00        NOP     
087A 00        NOP     
087B 00        NOP     
087C 00        NOP     
087D 00        NOP     
087E 00        NOP     
087F 00        NOP     
0880 00        NOP     
0881 00        NOP     
0882 00        NOP     
0883 00        NOP     
0884 00        NOP     
0885 00        NOP     
0886 00        NOP     
0887 00        NOP     
0888 00        NOP     
0889 00        NOP     
088A 00        NOP     
088B 00        NOP     
088C 00        NOP     
088D 00        NOP     
088E 00        NOP     
088F 00        NOP     
0890 00        NOP     
0891 00        NOP     
0892 00        NOP     
0893 00        NOP     
0894 00        NOP     
0895 00        NOP     
0896 00        NOP     
0897 00        NOP     
0898 00        NOP     
0899 00        NOP     
089A 00        NOP     
089B 00        NOP     
089C 00        NOP     
089D 00        NOP     
089E 00        NOP     
089F 00        NOP     
08A0 00        NOP     
08A1 00        NOP     
08A2 00        NOP     
08A3 00        NOP     
08A4 00        NOP     
08A5 00        NOP     
08A6 00        NOP     
08A7 00        NOP     
08A8 00        NOP     
08A9 00        NOP     
08AA 00        NOP     
08AB 00        NOP     
08AC 00        NOP     
08AD 00        NOP     
08AE 00        NOP     
08AF 00        NOP     
08B0 00        NOP     
08B1 00        NOP     
08B2 00        NOP     
08B3 00        NOP     
08B4 00        NOP     
08B5 00        NOP     
08B6 00        NOP     
08B7 00        NOP     
08B8 00        NOP     
08B9 00        NOP     
08BA 00        NOP     
08BB 00        NOP     
08BC 00        NOP     
08BD 00        NOP     
08BE 00        NOP     
08BF 00        NOP     
08C0 00        NOP     
08C1 00        NOP     
08C2 00        NOP     
08C3 00        NOP     
08C4 00        NOP     
08C5 00        NOP     
08C6 00        NOP     
08C7 00        NOP     
08C8 00        NOP     
08C9 00        NOP     
08CA 00        NOP     
08CB 00        NOP     
08CC 00        NOP     
08CD 00        NOP     
08CE 00        NOP     
08CF 00        NOP     
08D0 00        NOP     
08D1 00        NOP     
08D2 00        NOP     
08D3 00        NOP     
08D4 00        NOP     
08D5 00        NOP     
08D6 00        NOP     
08D7 00        NOP     
08D8 00        NOP     
08D9 00        NOP     
08DA 00        NOP     
08DB 00        NOP     
08DC 00        NOP     
08DD 00        NOP     
08DE 00        NOP     
08DF 00        NOP     
08E0 00        NOP     
08E1 00        NOP     
08E2 00        NOP     
08E3 00        NOP     
08E4 00        NOP     
08E5 00        NOP     
08E6 00        NOP     
08E7 00        NOP     
08E8 00        NOP     
08E9 00        NOP     
08EA 00        NOP     
08EB 00        NOP     
08EC 00        NOP     
08ED 00        NOP     
08EE 00        NOP     
08EF 00        NOP     
08F0 00        NOP     
08F1 00        NOP     
08F2 00        NOP     
08F3 00        NOP     
08F4 00        NOP     
08F5 00        NOP     
08F6 00        NOP     
08F7 00        NOP     
08F8 00        NOP     
08F9 00        NOP     
08FA 00        NOP     
08FB 00        NOP     
08FC 00        NOP     
08FD 00        NOP     
08FE 00        NOP     
08FF 00        NOP     
0900 00        NOP     
0901 00        NOP     
0902 00        NOP     
0903 00        NOP     
0904 00        NOP     
0905 00        NOP     
0906 00        NOP     
0907 00        NOP     
0908 00        NOP     
0909 00        NOP     
090A 00        NOP     
090B 00        NOP     
090C 00        NOP     
090D 00        NOP     
090E 00        NOP     
090F 00        NOP     
0910 00        NOP     
0911 00        NOP     
0912 00        NOP     
0913 00        NOP     
0914 00        NOP     
0915 00        NOP     
0916 00        NOP     
0917 00        NOP     
0918 00        NOP     
0919 00        NOP     
091A 00        NOP     
091B 00        NOP     
091C 00        NOP     
091D 00        NOP     
091E 00        NOP     
091F 00        NOP     
0920 00        NOP     
0921 00        NOP     
0922 00        NOP     
0923 00        NOP     
0924 00        NOP     
0925 00        NOP     
0926 00        NOP     
0927 00        NOP     
0928 00        NOP     
0929 00        NOP     
092A 00        NOP     
092B 00        NOP     
092C 00        NOP     
092D 00        NOP     
092E 00        NOP     
092F 00        NOP     
0930 00        NOP     
0931 00        NOP     
0932 00        NOP     
0933 00        NOP     
0934 00        NOP     
0935 00        NOP     
0936 00        NOP     
0937 00        NOP     
0938 00        NOP     
0939 00        NOP     
093A 00        NOP     
093B 00        NOP     
093C 00        NOP     
093D 00        NOP     
093E 00        NOP     
093F 00        NOP     
0940 00        NOP     
0941 00        NOP     
0942 00        NOP     
0943 00        NOP     
0944 00        NOP     
0945 00        NOP     
0946 00        NOP     
0947 00        NOP     
0948 00        NOP     
0949 00        NOP     
094A 00        NOP     
094B 00        NOP     
094C 00        NOP     
094D 00        NOP     
094E 00        NOP     
094F 00        NOP     
0950 FDCB004E  BIT     1,(IY+00H)
0954 C2380D    JP      NZ,0D38H
0957 C3E60B    JP      0BE6H
095A FDCB004E  BIT     1,(IY+00H)
095E C22A0D    JP      NZ,0D2AH
0961 C3490C    JP      0C49H
0964 FDCB004E  BIT     1,(IY+00H)
0968 C2200D    JP      NZ,0D20H
096B AF        XOR     A
096C C9        RET     

096D CD5A09    CALL    095AH
0970 A7        AND     A
0971 C0        RET     NZ

0972 210000    LD      HL,0000H
0975 110100    LD      DE,0001H
0978 0600      LD      B,00H
097A CD5009    CALL    0950H
097D A7        AND     A
097E C0        RET     NZ

097F 3A2069    LD      A,(6920H)
0982 FE18      CP      18H
0984 3E03      LD      A,03H
0986 2802      JR      Z,098AH
0988 BF        CP      A
0989 C9        RET     

098A 3EFF      LD      A,0FFH
098C 327C6C    LD      (6C7CH),A
098F 212169    LD      HL,6921H
0992 11F06B    LD      DE,6BF0H
0995 01FF00    LD      BC,00FFH
0998 CD5B0A    CALL    0A5BH
099B 0603      LD      B,03H
099D C5        PUSH    BC
099E D5        PUSH    DE
099F 210000    LD      HL,0000H
09A2 110100    LD      DE,0001H
09A5 0600      LD      B,00H
09A7 CD5009    CALL    0950H
09AA D1        POP     DE
09AB C1        POP     BC
09AC D8        RET     C

09AD C5        PUSH    BC
09AE 05        DEC     B
09AF 010001    LD      BC,0100H
09B2 2003      JR      NZ,09B7H
09B4 010F00    LD      BC,000FH
09B7 212069    LD      HL,6920H
09BA CD5B0A    CALL    0A5BH
09BD C1        POP     BC
09BE 10DD      DJNZ    099DH
09C0 210000    LD      HL,0000H
09C3 22D768    LD      (68D7H),HL
09C6 2A7A6C    LD      HL,(6C7AH)
09C9 CDDD0A    CALL    0ADDH
09CC 3E07      LD      A,07H
09CE 32D668    LD      (68D6H),A
09D1 7C        LD      A,H
09D2 B5        OR      L
09D3 2005      JR      NZ,09DAH
09D5 3E06      LD      A,06H
09D7 32D668    LD      (68D6H),A
09DA 22D968    LD      (68D9H),HL
09DD E5        PUSH    HL
09DE 2A786C    LD      HL,(6C78H)
09E1 CDDD0A    CALL    0ADDH
09E4 D1        POP     DE
09E5 19        ADD     HL,DE
09E6 7C        LD      A,H
09E7 B5        OR      L
09E8 C8        RET     Z

09E9 EB        EX      DE,HL
09EA 210000    LD      HL,0000H
09ED 0600      LD      B,00H
09EF DD217D0A  LD      IX,0A7DH
09F3 CD5009    CALL    0950H
09F6 D8        RET     C

09F7 CD7D0A    CALL    0A7DH
09FA F5        PUSH    AF
09FB 210000    LD      HL,0000H
09FE 22746C    LD      (6C74H),HL
0A01 22766C    LD      (6C76H),HL
0A04 DD217E6C  LD      IX,6C7EH
0A08 010A00    LD      BC,000AH
0A0B 21F06B    LD      HL,6BF0H
0A0E 110400    LD      DE,0004H
0A11 3E20      LD      A,20H
0A13 DDCB0156  BIT     2,(IX+01H)
0A17 2035      JR      NZ,0A4EH
0A19 3600      LD      (HL),00H
0A1B 23        INC     HL
0A1C 3600      LD      (HL),00H
0A1E 23        INC     HL
0A1F 3600      LD      (HL),00H
0A21 23        INC     HL
0A22 3600      LD      (HL),00H
0A24 DD360180  LD      (IX+01H),80H
0A28 DD360017  LD      (IX+00H),17H
0A2C DD360200  LD      (IX+02H),00H
0A30 DD360300  LD      (IX+03H),00H
0A34 DD3604FD  LD      (IX+04H),0FDH
0A38 DD3605FF  LD      (IX+05H),0FFH
0A3C DD360600  LD      (IX+06H),00H
0A40 DD360700  LD      (IX+07H),00H
0A44 DD3608FD  LD      (IX+08H),0FDH
0A48 DD3609FF  LD      (IX+09H),0FFH
0A4C 1803      JR      0A51H
0A4E 23        INC     HL
0A4F 23        INC     HL
0A50 23        INC     HL
0A51 23        INC     HL
0A52 DD09      ADD     IX,BC
0A54 3D        DEC     A
0A55 20BC      JR      NZ,0A13H
0A57 F1        POP     AF
0A58 C36409    JP      0964H
0A5B EDB0      LDIR    
0A5D C9        RET     

0A5E CDF30A    CALL    0AF3H
0A61 0600      LD      B,00H
0A63 1805      JR      0A6AH
0A65 C5        PUSH    BC
0A66 CDF30A    CALL    0AF3H
0A69 C1        POP     BC
0A6A 212069    LD      HL,6920H
0A6D 3ADD68    LD      A,(68DDH)
0A70 A7        AND     A
0A71 2812      JR      Z,0A85H
0A73 23        INC     HL
0A74 05        DEC     B
0A75 3D        DEC     A
0A76 20FB      JR      NZ,0A73H
0A78 32DD68    LD      (68DDH),A
0A7B 1808      JR      0A85H
0A7D CDF30A    CALL    0AF3H
0A80 0600      LD      B,00H
0A82 212069    LD      HL,6920H
0A85 ED5BD768  LD      DE,(68D7H)
0A89 0E41      LD      C,41H
0A8B FDCB006E  BIT     5,(IY+00H)
0A8F 2023      JR      NZ,0AB4H
0A91 CB43      BIT     0,E
0A93 200B      JR      NZ,0AA0H
0A95 7B        LD      A,E
0A96 D398      OUT     (98H),A
0A98 7A        LD      A,D
0A99 D39C      OUT     (9CH),A
0A9B EDA3      OUTI    
0A9D 13        INC     DE
0A9E 2822      JR      Z,0AC2H
0AA0 7B        LD      A,E
0AA1 D398      OUT     (98H),A
0AA3 7A        LD      A,D
0AA4 D39C      OUT     (9CH),A
0AA6 EDA3      OUTI    
0AA8 2812      JR      Z,0ABCH
0AAA 13        INC     DE
0AAB 0D        DEC     C
0AAC EDA3      OUTI    
0AAE 2812      JR      Z,0AC2H
0AB0 0C        INC     C
0AB1 C3950A    JP      0A95H
0AB4 7B        LD      A,E
0AB5 D398      OUT     (98H),A
0AB7 7A        LD      A,D
0AB8 D39C      OUT     (9CH),A
0ABA 18EE      JR      0AAAH
0ABC FDCB00EE  SET     5,(IY+00H)
0AC0 1804      JR      0AC6H
0AC2 FDCB00AE  RES     5,(IY+00H)
0AC6 ED53D768  LD      (68D7H),DE
0ACA 2AD968    LD      HL,(68D9H)
0ACD 2B        DEC     HL
0ACE 22D968    LD      (68D9H),HL
0AD1 7C        LD      A,H
0AD2 B5        OR      L
0AD3 C0        RET     NZ

0AD4 3E06      LD      A,06H
0AD6 32D668    LD      (68D6H),A
0AD9 22D768    LD      (68D7H),HL
0ADC C9        RET     

0ADD 7C        LD      A,H
0ADE B5        OR      L
0ADF C8        RET     Z

0AE0 2B        DEC     HL
0AE1 6C        LD      L,H
0AE2 2600      LD      H,00H
0AE4 23        INC     HL
0AE5 CB45      BIT     0,L
0AE7 2801      JR      Z,0AEAH
0AE9 23        INC     HL
0AEA 7C        LD      A,H
0AEB 1F        RRA     
0AEC 7D        LD      A,L
0AED 1F        RRA     
0AEE 85        ADD     A,L
0AEF 6F        LD      L,A
0AF0 D0        RET     NC

0AF1 24        INC     H
0AF2 C9        RET     

0AF3 018008    LD      BC,0880H
0AF6 2604      LD      H,04H
0AF8 3AD668    LD      A,(68D6H)
0AFB 6F        LD      L,A
0AFC ED69      OUT     (C),L
0AFE 7C        LD      A,H
0AFF D394      OUT     (94H),A
0B01 C608      ADD     A,08H
0B03 67        LD      H,A
0B04 AF        XOR     A
0B05 D39C      OUT     (9CH),A
0B07 0C        INC     C
0B08 10F2      DJNZ    0AFCH
0B0A 3E07      LD      A,07H
0B0C D394      OUT     (94H),A
0B0E C9        RET     

0B0F CD5A09    CALL    095AH
0B12 A7        AND     A
0B13 C0        RET     NZ

0B14 210000    LD      HL,0000H
0B17 110100    LD      DE,0001H
0B1A 0600      LD      B,00H
0B1C CD5009    CALL    0950H
0B1F A7        AND     A
0B20 C0        RET     NZ

0B21 3A2069    LD      A,(6920H)
0B24 FE17      CP      17H
0B26 3E03      LD      A,03H
0B28 C2A70B    JP      NZ,0BA7H
0B2B ED5B2169  LD      DE,(6921H)
0B2F 2AFE6E    LD      HL,(6EFEH)
0B32 A7        AND     A
0B33 ED52      SBC     HL,DE
0B35 7C        LD      A,H
0B36 32D668    LD      (68D6H),A
0B39 2A2169    LD      HL,(6921H)
0B3C ED5B2569  LD      DE,(6925H)
0B40 A7        AND     A
0B41 ED52      SBC     HL,DE
0B43 44        LD      B,H
0B44 4D        LD      C,L
0B45 2AFE6E    LD      HL,(6EFEH)
0B48 A7        AND     A
0B49 ED42      SBC     HL,BC
0B4B 22026F    LD      (6F02H),HL
0B4E 23        INC     HL
0B4F 22DB68    LD      (68DBH),HL
0B52 2A2369    LD      HL,(6923H)
0B55 22006F    LD      (6F00H),HL
0B58 11046F    LD      DE,6F04H
0B5B A7        AND     A
0B5C ED52      SBC     HL,DE
0B5E 44        LD      B,H
0B5F 4D        LD      C,L
0B60 212769    LD      HL,6927H
0B63 3EF9      LD      A,0F9H
0B65 CDD10B    CALL    0BD1H
0B68 2AFE6E    LD      HL,(6EFEH)
0B6B ED5BDB68  LD      DE,(68DBH)
0B6F 23        INC     HL
0B70 A7        AND     A
0B71 ED52      SBC     HL,DE
0B73 09        ADD     HL,BC
0B74 45        LD      B,L
0B75 5C        LD      E,H
0B76 78        LD      A,B
0B77 A7        AND     A
0B78 2801      JR      Z,0B7BH
0B7A 1C        INC     E
0B7B 1600      LD      D,00H
0B7D C5        PUSH    BC
0B7E 210000    LD      HL,0000H
0B81 DD21C30B  LD      IX,0BC3H
0B85 CD5009    CALL    0950H
0B88 C1        POP     BC
0B89 D8        RET     C

0B8A CDC50B    CALL    0BC5H
0B8D 3AD668    LD      A,(68D6H)
0B90 A7        AND     A
0B91 2811      JR      Z,0BA4H
0B93 4F        LD      C,A
0B94 0664      LD      B,64H
0B96 21CC6F    LD      HL,6FCCH
0B99 7E        LD      A,(HL)
0B9A 23        INC     HL
0B9B B6        OR      (HL)
0B9C 2803      JR      Z,0BA1H
0B9E 7E        LD      A,(HL)
0B9F 81        ADD     A,C
0BA0 77        LD      (HL),A
0BA1 23        INC     HL
0BA2 10F5      DJNZ    0B99H
0BA4 C36409    JP      0964H
0BA7 F5        PUSH    AF
0BA8 CD6409    CALL    0964H
0BAB F1        POP     AF
0BAC A7        AND     A
0BAD C9        RET     

0BAE 0600      LD      B,00H
0BB0 212069    LD      HL,6920H
0BB3 3ADD68    LD      A,(68DDH)
0BB6 A7        AND     A
0BB7 280F      JR      Z,0BC8H
0BB9 23        INC     HL
0BBA 05        DEC     B
0BBB 3D        DEC     A
0BBC 20FB      JR      NZ,0BB9H
0BBE 32DD68    LD      (68DDH),A
0BC1 1805      JR      0BC8H
0BC3 0600      LD      B,00H
0BC5 212069    LD      HL,6920H
0BC8 ED5BD768  LD      DE,(68D7H)
0BCC 78        LD      A,B
0BCD ED4BD968  LD      BC,(68D9H)
0BD1 EDA0      LDI     
0BD3 EADA0B    JP      PE,0BDAH
0BD6 ED5BDB68  LD      DE,(68DBH)
0BDA 3D        DEC     A
0BDB 20F4      JR      NZ,0BD1H
0BDD ED53D768  LD      (68D7H),DE
0BE1 ED43D968  LD      (68D9H),BC
0BE5 C9        RET     

0BE6 C5        PUSH    BC
0BE7 EB        EX      DE,HL
0BE8 37        SCF     
0BE9 ED52      SBC     HL,DE
0BEB EB        EX      DE,HL
0BEC D8        RET     C

0BED 13        INC     DE
0BEE 7C        LD      A,H
0BEF B5        OR      L
0BF0 280C      JR      Z,0BFEH
0BF2 2B        DEC     HL
0BF3 0600      LD      B,00H
0BF5 E5        PUSH    HL
0BF6 CD230C    CALL    0C23H
0BF9 E1        POP     HL
0BFA 3810      JR      C,0C0CH
0BFC 18F0      JR      0BEEH
0BFE 1B        DEC     DE
0BFF 7A        LD      A,D
0C00 E67F      AND     7FH
0C02 B3        OR      E
0C03 2815      JR      Z,0C1AH
0C05 0600      LD      B,00H
0C07 CD230C    CALL    0C23H
0C0A 3002      JR      NC,0C0EH
0C0C C1        POP     BC
0C0D C9        RET     

0C0E D5        PUSH    DE
0C0F B7        OR      A
0C10 CB7A      BIT     7,D
0C12 CC210C    CALL    Z,0C21H
0C15 D1        POP     DE
0C16 38F4      JR      C,0C0CH
0C18 18E4      JR      0BFEH
0C1A C1        POP     BC
0C1B CD230C    CALL    0C23H
0C1E D8        RET     C

0C1F AF        XOR     A
0C20 C9        RET     

0C21 DDE9      JP      (IX)
0C23 212069    LD      HL,6920H
0C26 CD330C    CALL    0C33H
0C29 D8        RET     C

0C2A 77        LD      (HL),A
0C2B 23        INC     HL
0C2C 10F8      DJNZ    0C26H
0C2E C9        RET     

0C2F CD930C    CALL    0C93H
0C32 D8        RET     C

0C33 DB53      IN      A,(53H)
0C35 E601      AND     01H
0C37 28F6      JR      Z,0C2FH
0C39 3E01      LD      A,01H
0C3B D353      OUT     (53H),A
0C3D DB53      IN      A,(53H)
0C3F E610      AND     10H
0C41 3E02      LD      A,02H
0C43 37        SCF     
0C44 C0        RET     NZ

0C45 DB52      IN      A,(52H)
0C47 A7        AND     A
0C48 C9        RET     

0C49 119C0C    LD      DE,0C9CH
0C4C CDD50F    CALL    0FD5H
0C4F CD680C    CALL    0C68H
0C52 CD930C    CALL    0C93H
0C55 D8        RET     C

0C56 3E10      LD      A,10H
0C58 D353      OUT     (53H),A
0C5A DB53      IN      A,(53H)
0C5C E610      AND     10H
0C5E 20F2      JR      NZ,0C52H
0C60 11AE0C    LD      DE,0CAEH
0C63 CDD50F    CALL    0FD5H
0C66 AF        XOR     A
0C67 C9        RET     

0C68 3E03      LD      A,03H
0C6A D349      OUT     (49H),A
0C6C D34A      OUT     (4AH),A
0C6E 3E07      LD      A,07H
0C70 D34A      OUT     (4AH),A
0C72 3E2B      LD      A,2BH
0C74 D34A      OUT     (4AH),A
0C76 21890C    LD      HL,0C89H
0C79 01530A    LD      BC,0A53H
0C7C EDB3      OTIR    
0C7E 0604      LD      B,04H
0C80 DB52      IN      A,(52H)
0C82 10FC      DJNZ    0C80H
0C84 3E30      LD      A,30H
0C86 D353      OUT     (53H),A
0C88 C9        RET     

0C89 04        INC     B
0C8A 11069D    LD      DE,9D06H
0C8D 07        RLCA    
0C8E 65        LD      H,L
0C8F 05        DEC     B
0C90 E0        RET     PO

0C91 03        INC     BC
0C92 D1        POP     DE
0C93 DB58      IN      A,(58H)
0C95 E620      AND     20H
0C97 C0        RET     NZ

0C98 3E01      LD      A,01H
0C9A 37        SCF     
0C9B C9        RET     

0C9C 00        NOP     
0C9D 00        NOP     
0C9E 00        NOP     
0C9F 00        NOP     
0CA0 00        NOP     
0CA1 00        NOP     
0CA2 00        NOP     
0CA3 00        NOP     
0CA4 00        NOP     
0CA5 00        NOP     
0CA6 00        NOP     
0CA7 00        NOP     
0CA8 00        NOP     
0CA9 00        NOP     
0CAA 00        NOP     
0CAB 00        NOP     
0CAC 00        NOP     
0CAD 00        NOP     
0CAE 00        NOP     
0CAF 00        NOP     
0CB0 00        NOP     
0CB1 00        NOP     
0CB2 00        NOP     
0CB3 00        NOP     
0CB4 00        NOP     
0CB5 00        NOP     
0CB6 00        NOP     
0CB7 00        NOP     
0CB8 00        NOP     
0CB9 00        NOP     
0CBA 00        NOP     
0CBB 00        NOP     
0CBC 00        NOP     
0CBD 00        NOP     
0CBE 00        NOP     
0CBF 00        NOP     
0CC0 CDCD0C    CALL    0CCDH
0CC3 F5        PUSH    AF
0CC4 CDCD0C    CALL    0CCDH
0CC7 FEF7      CP      0F7H
0CC9 20F9      JR      NZ,0CC4H
0CCB F1        POP     AF
0CCC C9        RET     

0CCD CD480E    CALL    0E48H
0CD0 D8        RET     C

0CD1 CDD60C    CALL    0CD6H
0CD4 18F7      JR      0CCDH
0CD6 DB58      IN      A,(58H)
0CD8 E620      AND     20H
0CDA C0        RET     NZ

0CDB 3E01      LD      A,01H
0CDD F5        PUSH    AF
0CDE CD200D    CALL    0D20H
0CE1 F1        POP     AF
0CE2 37        SCF     
0CE3 DDF9      LD      SP,IX
0CE5 C9        RET     

0CE6 3E00      LD      A,00H
0CE8 CD220D    CALL    0D22H
0CEB CD010D    CALL    0D01H
0CEE CDC30C    CALL    0CC3H
0CF1 4F        LD      C,A
0CF2 E6BC      AND     0BCH
0CF4 201C      JR      NZ,0D12H
0CF6 CB71      BIT     6,C
0CF8 2818      JR      Z,0D12H
0CFA CB41      BIT     0,C
0CFC 3E09      LD      A,09H
0CFE 28DD      JR      Z,0CDDH
0D00 C9        RET     

0D01 010030    LD      BC,3000H
0D04 C5        PUSH    BC
0D05 CD480E    CALL    0E48H
0D08 C1        POP     BC
0D09 D8        RET     C

0D0A CDD60C    CALL    0CD6H
0D0D 0B        DEC     BC
0D0E 78        LD      A,B
0D0F B1        OR      C
0D10 20F2      JR      NZ,0D04H
0D12 3E08      LD      A,08H
0D14 18C7      JR      0CDDH
0D16 CDC00C    CALL    0CC0H
0D19 FE20      CP      20H
0D1B C8        RET     Z

0D1C 3E02      LD      A,02H
0D1E 18BD      JR      0CDDH
0D20 3E01      LD      A,01H
0D22 CD260E    CALL    0E26H
0D25 CD3B0E    CALL    0E3BH
0D28 AF        XOR     A
0D29 C9        RET     

0D2A CD090E    CALL    0E09H
0D2D CDE60C    CALL    0CE6H
0D30 11B30D    LD      DE,0DB3H
0D33 CDD50F    CALL    0FD5H
0D36 AF        XOR     A
0D37 C9        RET     

0D38 CD0F0E    CALL    0E0FH
0D3B EB        EX      DE,HL
0D3C 22EF68    LD      (68EFH),HL
0D3F CBBC      RES     7,H
0D41 37        SCF     
0D42 ED52      SBC     HL,DE
0D44 23        INC     HL
0D45 D8        RET     C

0D46 EB        EX      DE,HL
0D47 CDAA0D    CALL    0DAAH
0D4A EB        EX      DE,HL
0D4B CD740D    CALL    0D74H
0D4E E5        PUSH    HL
0D4F 3E04      LD      A,04H
0D51 CD8D0D    CALL    0D8DH
0D54 CDD00D    CALL    0DD0H
0D57 CDA70D    CALL    0DA7H
0D5A CD1A0E    CALL    0E1AH
0D5D 200D      JR      NZ,0D6CH
0D5F E1        POP     HL
0D60 7C        LD      A,H
0D61 B5        OR      L
0D62 C8        RET     Z

0D63 CD740D    CALL    0D74H
0D66 E5        PUSH    HL
0D67 3E04      LD      A,04H
0D69 CD8D0D    CALL    0D8DH
0D6C 21540D    LD      HL,0D54H
0D6F E5        PUSH    HL
0D70 2AED68    LD      HL,(68EDH)
0D73 E9        JP      (HL)
0D74 111800    LD      DE,0018H
0D77 B7        OR      A
0D78 ED52      SBC     HL,DE
0D7A 3005      JR      NC,0D81H
0D7C 19        ADD     HL,DE
0D7D EB        EX      DE,HL
0D7E 210000    LD      HL,0000H
0D81 3AF068    LD      A,(68F0H)
0D84 E680      AND     80H
0D86 B2        OR      D
0D87 57        LD      D,A
0D88 ED53EF68  LD      (68EFH),DE
0D8C C9        RET     

0D8D CD260E    CALL    0E26H
0D90 3AF268    LD      A,(68F2H)
0D93 CD3D0E    CALL    0E3DH
0D96 3AF168    LD      A,(68F1H)
0D99 CD3D0E    CALL    0E3DH
0D9C 7B        LD      A,E
0D9D CD3D0E    CALL    0E3DH
0DA0 CD3B0E    CALL    0E3BH
0DA3 CD160D    CALL    0D16H
0DA6 C9        RET     

0DA7 210100    LD      HL,0001H
0DAA ED4BF168  LD      BC,(68F1H)
0DAE 09        ADD     HL,BC
0DAF 22F168    LD      (68F1H),HL
0DB2 C9        RET     

0DB3 00        NOP     
0DB4 00        NOP     
0DB5 00        NOP     
0DB6 00        NOP     
0DB7 00        NOP     
0DB8 00        NOP     
0DB9 00        NOP     
0DBA 00        NOP     
0DBB 00        NOP     
0DBC 00        NOP     
0DBD 00        NOP     
0DBE 00        NOP     
0DBF 00        NOP     
0DC0 00        NOP     
0DC1 00        NOP     
0DC2 00        NOP     
0DC3 00        NOP     
0DC4 00        NOP     
0DC5 00        NOP     
0DC6 00        NOP     
0DC7 00        NOP     
0DC8 00        NOP     
0DC9 00        NOP     
0DCA 00        NOP     
0DCB 00        NOP     
0DCC 00        NOP     
0DCD 00        NOP     
0DCE 00        NOP     
0DCF 00        NOP     
0DD0 212069    LD      HL,6920H
0DD3 E5        PUSH    HL
0DD4 3E05      LD      A,05H
0DD6 CD220D    CALL    0D22H
0DD9 CDFF0D    CALL    0DFFH
0DDC E1        POP     HL
0DDD 0E00      LD      C,00H
0DDF 0601      LD      B,01H
0DE1 CDFF0D    CALL    0DFFH
0DE4 EB        EX      DE,HL
0DE5 67        LD      H,A
0DE6 CDFF0D    CALL    0DFFH
0DE9 6F        LD      L,A
0DEA CB15      RL      L
0DEC C5        PUSH    BC
0DED 29        ADD     HL,HL
0DEE 10FD      DJNZ    0DEDH
0DF0 C1        POP     BC
0DF1 EB        EX      DE,HL
0DF2 72        LD      (HL),D
0DF3 23        INC     HL
0DF4 0D        DEC     C
0DF5 CAC30C    JP      Z,0CC3H
0DF8 04        INC     B
0DF9 CB58      BIT     3,B
0DFB 28E7      JR      Z,0DE4H
0DFD 18E0      JR      0DDFH
0DFF C5        PUSH    BC
0E00 D5        PUSH    DE
0E01 E5        PUSH    HL
0E02 CDCD0C    CALL    0CCDH
0E05 E1        POP     HL
0E06 D1        POP     DE
0E07 C1        POP     BC
0E08 C9        RET     

0E09 210000    LD      HL,0000H
0E0C 22F168    LD      (68F1H),HL
0E0F DD22ED68  LD      (68EDH),IX
0E13 DD210200  LD      IX,0002H
0E17 DD39      ADD     IX,SP
0E19 C9        RET     

0E1A 2AEF68    LD      HL,(68EFH)
0E1D 2B        DEC     HL
0E1E 7C        LD      A,H
0E1F E67F      AND     7FH
0E21 B5        OR      L
0E22 22EF68    LD      (68EFH),HL
0E25 C9        RET     

0E26 F5        PUSH    AF
0E27 3EF0      LD      A,0F0H
0E29 CD3D0E    CALL    0E3DH
0E2C 3E18      LD      A,18H
0E2E CD3D0E    CALL    0E3DH
0E31 3E01      LD      A,01H
0E33 CD3D0E    CALL    0E3DH
0E36 F1        POP     AF
0E37 CD3D0E    CALL    0E3DH
0E3A C9        RET     

0E3B 3EF7      LD      A,0F7H
0E3D 4F        LD      C,A
0E3E DB51      IN      A,(51H)
0E40 CB57      BIT     2,A
0E42 28FA      JR      Z,0E3EH
0E44 79        LD      A,C
0E45 D350      OUT     (50H),A
0E47 C9        RET     

0E48 DB51      IN      A,(51H)
0E4A E601      AND     01H
0E4C C8        RET     Z

0E4D DB50      IN      A,(50H)
0E4F B7        OR      A
0E50 FA5F0E    JP      M,0E5FH
0E53 47        LD      B,A
0E54 3A0E69    LD      A,(690EH)
0E57 FE03      CP      03H
0E59 78        LD      A,B
0E5A 37        SCF     
0E5B C8        RET     Z

0E5C B7        OR      A
0E5D 37        SCF     
0E5E F8        RET     M

0E5F F5        PUSH    AF
0E60 DDE5      PUSH    IX
0E62 FDE5      PUSH    IY
0E64 CD720E    CALL    0E72H
0E67 FDE1      POP     IY
0E69 DDE1      POP     IX
0E6B F1        POP     AF
0E6C FEF7      CP      0F7H
0E6E 28E3      JR      Z,0E53H
0E70 B7        OR      A
0E71 C9        RET     

0E72 B7        OR      A
0E73 F2820E    JP      P,0E82H
0E76 FEF8      CP      0F8H
0E78 C8        RET     Z

0E79 D0        RET     NC

0E7A 32A968    LD      (68A9H),A
0E7D AF        XOR     A
0E7E 320E69    LD      (690EH),A
0E81 C9        RET     

0E82 47        LD      B,A
0E83 3AA968    LD      A,(68A9H)
0E86 4F        LD      C,A
0E87 FEF0      CP      0F0H
0E89 C0        RET     NZ

0E8A 3A0E69    LD      A,(690EH)
0E8D FE02      CP      02H
0E8F D0        RET     NC

0E90 CD9F0E    CALL    0E9FH
0E93 EB        EX      DE,HL
0E94 3602      LD      (HL),02H
0E96 FE01      CP      01H
0E98 C0        RET     NZ

0E99 78        LD      A,B
0E9A FE18      CP      18H
0E9C C0        RET     NZ

0E9D 34        INC     (HL)
0E9E C9        RET     

0E9F 210F69    LD      HL,690FH
0EA2 110E69    LD      DE,690EH
0EA5 1A        LD      A,(DE)
0EA6 B7        OR      A
0EA7 2005      JR      NZ,0EAEH
0EA9 3C        INC     A
0EAA 12        LD      (DE),A
0EAB 70        LD      (HL),B
0EAC E1        POP     HL
0EAD C9        RET     

0EAE AF        XOR     A
0EAF 12        LD      (DE),A
0EB0 78        LD      A,B
0EB1 46        LD      B,(HL)
0EB2 C9        RET     

0EB3 06C8      LD      B,0C8H
0EB5 21046F    LD      HL,6F04H
0EB8 3600      LD      (HL),00H
0EBA 23        INC     HL
0EBB 10FB      DJNZ    0EB8H
0EBD 06C8      LD      B,0C8H
0EBF 21CC6F    LD      HL,6FCCH
0EC2 3600      LD      (HL),00H
0EC4 23        INC     HL
0EC5 10FB      DJNZ    0EC2H
0EC7 219471    LD      HL,7194H
0ECA 22006F    LD      (6F00H),HL
0ECD 21FFFF    LD      HL,0FFFFH
0ED0 22026F    LD      (6F02H),HL
0ED3 22FE6E    LD      (6EFEH),HL
0ED6 C9        RET     

0ED7 21F06B    LD      HL,6BF0H
0EDA 117F6C    LD      DE,6C7FH
0EDD 018C00    LD      BC,008CH
0EE0 3600      LD      (HL),00H
0EE2 EDB0      LDIR    
0EE4 3EFF      LD      A,0FFH
0EE6 327C6C    LD      (6C7CH),A
0EE9 3E1F      LD      A,1FH
0EEB 327D6C    LD      (6C7DH),A
0EEE 214E0F    LD      HL,0F4EH
0EF1 117E6C    LD      DE,6C7EH
0EF4 010A00    LD      BC,000AH
0EF7 EDB0      LDIR    
0EF9 217E6C    LD      HL,6C7EH
0EFC 013601    LD      BC,0136H
0EFF EDB0      LDIR    
0F01 0604      LD      B,04H
0F03 210A00    LD      HL,000AH
0F06 78        LD      A,B
0F07 3D        DEC     A
0F08 CB4F      BIT     1,A
0F0A 2802      JR      Z,0F0EH
0F0C CBD7      SET     2,A
0F0E 32D668    LD      (68D6H),A
0F11 E5        PUSH    HL
0F12 C5        PUSH    BC
0F13 CDF30A    CALL    0AF3H
0F16 C1        POP     BC
0F17 E1        POP     HL
0F18 7D        LD      A,L
0F19 D398      OUT     (98H),A
0F1B 7C        LD      A,H
0F1C D39C      OUT     (9CH),A
0F1E 3E80      LD      A,80H
0F20 D341      OUT     (41H),A
0F22 AF        XOR     A
0F23 D340      OUT     (40H),A
0F25 2B        DEC     HL
0F26 7C        LD      A,H
0F27 B5        OR      L
0F28 20EE      JR      NZ,0F18H
0F2A 10D7      DJNZ    0F03H
0F2C 21306B    LD      HL,6B30H
0F2F 3E20      LD      A,20H
0F31 0604      LD      B,04H
0F33 16C4      LD      D,0C4H
0F35 0E08      LD      C,08H
0F37 1EB1      LD      E,0B1H
0F39 72        LD      (HL),D
0F3A 23        INC     HL
0F3B 73        LD      (HL),E
0F3C 23        INC     HL
0F3D 36A0      LD      (HL),0A0H
0F3F 23        INC     HL
0F40 77        LD      (HL),A
0F41 23        INC     HL
0F42 77        LD      (HL),A
0F43 23        INC     HL
0F44 77        LD      (HL),A
0F45 23        INC     HL
0F46 1C        INC     E
0F47 0D        DEC     C
0F48 20EF      JR      NZ,0F39H
0F4A 15        DEC     D
0F4B 10E8      DJNZ    0F35H
0F4D C9        RET     

0F4E 17        RLA     
0F4F 80        ADD     A,B
0F50 00        NOP     
0F51 00        NOP     
0F52 FDFF      RST     38H
0F54 00        NOP     
0F55 00        NOP     
0F56 FDFF      RST     38H
0F58 21B40F    LD      HL,0FB4H
0F5B CDA80F    CALL    0FA8H
0F5E CDAE01    CALL    01AEH
0F61 C3970F    JP      0F97H
0F64 21BF0F    LD      HL,0FBFH
0F67 CDA80F    CALL    0FA8H
0F6A CDAE01    CALL    01AEH
0F6D 2028      JR      NZ,0F97H
0F6F 21CA0F    LD      HL,0FCAH
0F72 CDA80F    CALL    0FA8H
0F75 0604      LD      B,04H
0F77 C5        PUSH    BC
0F78 CDAE01    CALL    01AEH
0F7B C1        POP     BC
0F7C 2019      JR      NZ,0F97H
0F7E FD7E03    LD      A,(IY+03H)
0F81 3C        INC     A
0F82 FE82      CP      82H
0F84 2002      JR      NZ,0F88H
0F86 3E86      LD      A,86H
0F88 FD7703    LD      (IY+03H),A
0F8B FD7E0A    LD      A,(IY+0AH)
0F8E C61C      ADD     A,1CH
0F90 FD770A    LD      (IY+0AH),A
0F93 10E2      DJNZ    0F77H
0F95 3E80      LD      A,80H
0F97 D680      SUB     80H
0F99 C8        RET     Z

0F9A C6C3      ADD     A,0C3H
0F9C FE06      CP      06H
0F9E C8        RET     Z

0F9F C604      ADD     A,04H
0FA1 FE09      CP      09H
0FA3 C8        RET     Z

0FA4 3E07      LD      A,07H
0FA6 37        SCF     
0FA7 C9        RET     

0FA8 117B61    LD      DE,617BH
0FAB D5        PUSH    DE
0FAC FDE1      POP     IY
0FAE 010B00    LD      BC,000BH
0FB1 EDB0      LDIR    
0FB3 C9        RET     

0FB4 0E00      LD      C,00H
0FB6 6F        LD      L,A
0FB7 00        NOP     
0FB8 00        NOP     
0FB9 9A        SBC     A,D
0FBA 00        NOP     
0FBB 00        NOP     
0FBC 00        NOP     
0FBD 00        NOP     
0FBE 0C        INC     C
0FBF 0E30      LD      C,30H
0FC1 6B        LD      L,E
0FC2 00        NOP     
0FC3 00        NOP     
0FC4 0E00      LD      C,00H
0FC6 00        NOP     
0FC7 00        NOP     
0FC8 00        NOP     
0FC9 17        RLA     
0FCA 0E00      LD      C,00H
0FCC 00        NOP     
0FCD 80        ADD     A,B
0FCE 00        NOP     
0FCF 00        NOP     
0FD0 010000    LD      BC,0000H
0FD3 00        NOP     
0FD4 181A      JR      0FF0H
0FD5 1A        LD      A,(DE)
0FD6 13        INC     DE
0FD7 FEFE      CP      0FEH
0FD9 C8        RET     Z

0FDA 47        LD      B,A
0FDB E660      AND     60H
0FDD 78        LD      A,B
0FDE 2005      JR      NZ,0FE5H
0FE0 CDEA0F    CALL    0FEAH
0FE3 18F0      JR      0FD5H
0FE5 CD7110    CALL    1071H
0FE8 18EB      JR      0FD5H
0FEA FE10      CP      10H
0FEC 2875      JR      Z,1063H
0FEE FE17      CP      17H
0FF0 2816      JR      Z,1008H
0FF2 FE18      CP      18H
0FF4 2817      JR      Z,100DH
0FF6 FE19      CP      19H
0FF8 2823      JR      Z,101DH
0FFA FE15      CP      15H
0FFC 284A      JR      Z,1048H
0FFE FE90      CP      90H
1000 3863      JR      C,1065H
1002 E60F      AND     0FH
1004 F6C0      OR      0C0H
1006 185D      JR      1065H
1008 CD4010    CALL    1040H
100B 1862      JR      106FH
100D CD4010    CALL    1040H
1010 2E0A      LD      L,0AH
1012 CD3810    CALL    1038H
1015 F5        PUSH    AF
1016 78        LD      A,B
1017 CD6F10    CALL    106FH
101A F1        POP     AF
101B 1852      JR      106FH
101D CD4010    CALL    1040H
1020 2E64      LD      L,64H
1022 CD3810    CALL    1038H
1025 F5        PUSH    AF
1026 78        LD      A,B
1027 CD6F10    CALL    106FH
102A F1        POP     AF
102B 2E0A      LD      L,0AH
102D CD3810    CALL    1038H
1030 F5        PUSH    AF
1031 78        LD      A,B
1032 CD6F10    CALL    106FH
1035 F1        POP     AF
1036 1837      JR      106FH
1038 06FF      LD      B,0FFH
103A 04        INC     B
103B 95        SUB     L
103C 30FC      JR      NC,103AH
103E 85        ADD     A,L
103F C9        RET     

1040 EB        EX      DE,HL
1041 5E        LD      E,(HL)
1042 23        INC     HL
1043 56        LD      D,(HL)
1044 23        INC     HL
1045 EB        EX      DE,HL
1046 7E        LD      A,(HL)
1047 C9        RET     

1048 FDE5      PUSH    IY
104A E1        POP     HL
104B 7C        LD      A,H
104C CD5010    CALL    1050H
104F 7D        LD      A,L
1050 F5        PUSH    AF
1051 0F        RRCA    
1052 0F        RRCA    
1053 0F        RRCA    
1054 0F        RRCA    
1055 CD5910    CALL    1059H
1058 F1        POP     AF
1059 E60F      AND     0FH
105B FE0A      CP      0AH
105D 3802      JR      C,1061H
105F C607      ADD     A,07H
1061 180C      JR      106FH
1063 3E01      LD      A,01H
1065 0EA2      LD      C,0A2H
1067 ED70      IN      F,(C)
1069 FA6710    JP      M,1067H
106C D3A0      OUT     (0A0H),A
106E C9        RET     

106F C630      ADD     A,30H
1071 0EA2      LD      C,0A2H
1073 ED70      IN      F,(C)
1075 FA7310    JP      M,1073H
1078 D3A1      OUT     (0A1H),A
107A C9        RET     

107B CDA110    CALL    10A1H
107E CD3611    CALL    1136H
1081 CD8E11    CALL    118EH
1084 CD0613    CALL    1306H
1087 CD4A15    CALL    154AH
108A CD9C15    CALL    159CH
108D CDE015    CALL    15E0H
1090 CD4B16    CALL    164BH
1093 CDAB16    CALL    16ABH
1096 CD4717    CALL    1747H
1099 CD9318    CALL    1893H
109C CD2019    CALL    1920H
109F 18E3      JR      1084H
10A1 11F110    LD      DE,10F1H
10A4 CDD50F    CALL    0FD5H
10A7 DDE1      POP     IX
10A9 0601      LD      B,01H
10AB 210020    LD      HL,2000H
10AE 48        LD      C,B
10AF 71        LD      (HL),C
10B0 23        INC     HL
10B1 CB11      RL      C
10B3 7C        LD      A,H
10B4 B5        OR      L
10B5 20F8      JR      NZ,10AFH
10B7 210020    LD      HL,2000H
10BA 48        LD      C,B
10BB 7E        LD      A,(HL)
10BC A9        XOR     C
10BD 2014      JR      NZ,10D3H
10BF 23        INC     HL
10C0 CB11      RL      C
10C2 7C        LD      A,H
10C3 B5        OR      L
10C4 20F5      JR      NZ,10BBH
10C6 3E2E      LD      A,2EH
10C8 D3A1      OUT     (0A1H),A
10CA CB10      RL      B
10CC 30DD      JR      NC,10ABH
10CE 112211    LD      DE,1122H
10D1 1810      JR      10E3H
10D3 E60F      AND     0FH
10D5 3E20      LD      A,20H
10D7 2804      JR      Z,10DDH
10D9 3C        INC     A
10DA E5        PUSH    HL
10DB FDE1      POP     IY
10DD 326168    LD      (6861H),A
10E0 110711    LD      DE,1107H
10E3 CDD50F    CALL    0FD5H
10E6 3E7D      LD      A,7DH
10E8 D388      OUT     (88H),A
10EA CD5615    CALL    1556H
10ED 28FB      JR      Z,10EAH
10EF DDE9      JP      (IX)
10F1 00        NOP     
10F2 00        NOP     
10F3 00        NOP     
10F4 00        NOP     
10F5 00        NOP     
10F6 00        NOP     
10F7 00        NOP     
10F8 00        NOP     
10F9 00        NOP     
10FA 00        NOP     
10FB 00        NOP     
10FC 00        NOP     
10FD 00        NOP     
10FE 00        NOP     
10FF 00        NOP     
1100 00        NOP     
1101 00        NOP     
1102 00        NOP     
1103 00        NOP     
1104 00        NOP     
1105 00        NOP     
1106 00        NOP     
1107 00        NOP     
1108 00        NOP     
1109 00        NOP     
110A 00        NOP     
110B 00        NOP     
110C 00        NOP     
110D 00        NOP     
110E 00        NOP     
110F 00        NOP     
1110 00        NOP     
1111 00        NOP     
1112 00        NOP     
1113 00        NOP     
1114 00        NOP     
1115 00        NOP     
1116 00        NOP     
1117 00        NOP     
1118 00        NOP     
1119 00        NOP     
111A 00        NOP     
111B 00        NOP     
111C 00        NOP     
111D 00        NOP     
111E 00        NOP     
111F 00        NOP     
1120 00        NOP     
1121 00        NOP     
1122 00        NOP     
1123 00        NOP     
1124 00        NOP     
1125 00        NOP     
1126 00        NOP     
1127 00        NOP     
1128 00        NOP     
1129 00        NOP     
112A 00        NOP     
112B 00        NOP     
112C 00        NOP     
112D 00        NOP     
112E 00        NOP     
112F 00        NOP     
1130 00        NOP     
1131 00        NOP     
1132 00        NOP     
1133 00        NOP     
1134 00        NOP     
1135 00        NOP     
1136 FD210000  LD      IY,0000H
113A 210000    LD      HL,0000H
113D 1600      LD      D,00H
113F 5E        LD      E,(HL)
1140 23        INC     HL
1141 FD19      ADD     IY,DE
1143 7C        LD      A,H
1144 FE20      CP      20H
1146 20F7      JR      NZ,113FH
1148 116E11    LD      DE,116EH
114B 3E7F      LD      A,7FH
114D D388      OUT     (88H),A
114F 327961    LD      (6179H),A
1152 CDD50F    CALL    0FD5H
1155 DB58      IN      A,(58H)
1157 CB77      BIT     6,A
1159 C8        RET     Z

115A CB6F      BIT     5,A
115C 20F7      JR      NZ,1155H
115E CD7015    CALL    1570H
1161 DB58      IN      A,(58H)
1163 CB6F      BIT     5,A
1165 28FA      JR      Z,1161H
1167 CD7015    CALL    1570H
116A F1        POP     AF
116B C39C10    JP      109CH
116E 1000      DJNZ    1170H
1170 00        NOP     
1171 00        NOP     
1172 00        NOP     
1173 00        NOP     
1174 00        NOP     
1175 00        NOP     
1176 00        NOP     
1177 00        NOP     
1178 00        NOP     
1179 00        NOP     
117A 00        NOP     
117B 00        NOP     
117C 00        NOP     
117D 00        NOP     
117E 00        NOP     
117F 00        NOP     
1180 00        NOP     
1181 00        NOP     
1182 00        NOP     
1183 00        NOP     
1184 00        NOP     
1185 00        NOP     
1186 00        NOP     
1187 00        NOP     
1188 00        NOP     
1189 00        NOP     
118A 00        NOP     
118B 00        NOP     
118C 00        NOP     
118D 00        NOP     
118E 11AC12    LD      DE,12ACH
1191 CDD50F    CALL    0FD5H
1194 AF        XOR     A
1195 CDBF11    CALL    11BFH
1198 3818      JR      C,11B2H
119A 3E01      LD      A,01H
119C CDBF11    CALL    11BFH
119F 3811      JR      C,11B2H
11A1 3E06      LD      A,06H
11A3 CDBF11    CALL    11BFH
11A6 380A      JR      C,11B2H
11A8 3E07      LD      A,07H
11AA CDBF11    CALL    11BFH
11AD 3803      JR      C,11B2H
11AF 11C612    LD      DE,12C6H
11B2 CDD50F    CALL    0FD5H
11B5 3E7D      LD      A,7DH
11B7 D388      OUT     (88H),A
11B9 CD5615    CALL    1556H
11BC 28FB      JR      Z,11B9H
11BE C9        RET     

11BF 326268    LD      (6862H),A
11C2 CD6401    CALL    0164H
11C5 210000    LD      HL,0000H
11C8 2B        DEC     HL
11C9 3E07      LD      A,07H
11CB D394      OUT     (94H),A
11CD 7D        LD      A,L
11CE D398      OUT     (98H),A
11D0 7C        LD      A,H
11D1 D39C      OUT     (9CH),A
11D3 7D        LD      A,L
11D4 0F        RRCA    
11D5 9F        SBC     A,A
11D6 D341      OUT     (41H),A
11D8 7D        LD      A,L
11D9 0F        RRCA    
11DA 0F        RRCA    
11DB 9F        SBC     A,A
11DC D340      OUT     (40H),A
11DE 7C        LD      A,H
11DF B5        OR      L
11E0 C2C811    JP      NZ,11C8H
11E3 3E2E      LD      A,2EH
11E5 D3A1      OUT     (0A1H),A
11E7 110001    LD      DE,0100H
11EA 210000    LD      HL,0000H
11ED 2B        DEC     HL
11EE 3E07      LD      A,07H
11F0 D394      OUT     (94H),A
11F2 7D        LD      A,L
11F3 D398      OUT     (98H),A
11F5 7C        LD      A,H
11F6 D39C      OUT     (9CH),A
11F8 CB45      BIT     0,L
11FA DB41      IN      A,(41H)
11FC 2801      JR      Z,11FFH
11FE 2F        CPL     
11FF AB        XOR     E
1200 2072      JR      NZ,1274H
1202 7D        LD      A,L
1203 0F        RRCA    
1204 9F        SBC     A,A
1205 AA        XOR     D
1206 D341      OUT     (41H),A
1208 CB45      BIT     0,L
120A 2811      JR      Z,121DH
120C DB40      IN      A,(40H)
120E CB4D      BIT     1,L
1210 2801      JR      Z,1213H
1212 2F        CPL     
1213 AB        XOR     E
1214 2063      JR      NZ,1279H
1216 7D        LD      A,L
1217 0F        RRCA    
1218 0F        RRCA    
1219 9F        SBC     A,A
121A AA        XOR     D
121B D340      OUT     (40H),A
121D 7C        LD      A,H
121E B5        OR      L
121F C2ED11    JP      NZ,11EDH
1222 5A        LD      E,D
1223 CB22      SLA     D
1225 7A        LD      A,D
1226 B7        OR      A
1227 20C1      JR      NZ,11EAH
1229 210000    LD      HL,0000H
122C 010000    LD      BC,0000H
122F 3E07      LD      A,07H
1231 D394      OUT     (94H),A
1233 7D        LD      A,L
1234 D398      OUT     (98H),A
1236 7C        LD      A,H
1237 D39C      OUT     (9CH),A
1239 AF        XOR     A
123A D341      OUT     (41H),A
123C D340      OUT     (40H),A
123E EDA1      CPI     
1240 EA2F12    JP      PE,122FH
1243 3E2E      LD      A,2EH
1245 D3A1      OUT     (0A1H),A
1247 210000    LD      HL,0000H
124A 010000    LD      BC,0000H
124D 1100FF    LD      DE,0FF00H
1250 3E07      LD      A,07H
1252 D394      OUT     (94H),A
1254 7D        LD      A,L
1255 D398      OUT     (98H),A
1257 0F        RRCA    
1258 7C        LD      A,H
1259 D39C      OUT     (9CH),A
125B 3808      JR      C,1265H
125D DB40      IN      A,(40H)
125F AB        XOR     E
1260 2017      JR      NZ,1279H
1262 7A        LD      A,D
1263 D340      OUT     (40H),A
1265 DB41      IN      A,(41H)
1267 AB        XOR     E
1268 200A      JR      NZ,1274H
126A 7A        LD      A,D
126B D341      OUT     (41H),A
126D EDA1      CPI     
126F EA5012    JP      PE,1250H
1272 AF        XOR     A
1273 C9        RET     

1274 01A412    LD      BC,12A4H
1277 1803      JR      127CH
1279 019C12    LD      BC,129CH
127C E60F      AND     0FH
127E 2001      JR      NZ,1281H
1280 03        INC     BC
1281 E5        PUSH    HL
1282 FDE1      POP     IY
1284 7D        LD      A,L
1285 E601      AND     01H
1287 07        RLCA    
1288 6F        LD      L,A
1289 3A6268    LD      A,(6862H)
128C E604      AND     04H
128E B5        OR      L
128F 6F        LD      L,A
1290 2600      LD      H,00H
1292 09        ADD     HL,BC
1293 7E        LD      A,(HL)
1294 326368    LD      (6863H),A
1297 11E412    LD      DE,12E4H
129A 37        SCF     
129B C9        RET     

129C 2624      LD      H,24H
129E 2624      LD      H,24H
12A0 27        DAA     
12A1 25        DEC     H
12A2 27        DAA     
12A3 25        DEC     H
12A4 2E2F      LD      L,2FH
12A6 2C        INC     L
12A7 2D        DEC     L
12A8 2A2B28    LD      HL,(282BH)
12AB 29        ADD     HL,HL
12AC 00        NOP     
12AD 00        NOP     
12AE 00        NOP     
12AF 00        NOP     
12B0 00        NOP     
12B1 00        NOP     
12B2 00        NOP     
12B3 00        NOP     
12B4 00        NOP     
12B5 00        NOP     
12B6 00        NOP     
12B7 00        NOP     
12B8 00        NOP     
12B9 00        NOP     
12BA 00        NOP     
12BB 00        NOP     
12BC 00        NOP     
12BD 00        NOP     
12BE 00        NOP     
12BF 00        NOP     
12C0 00        NOP     
12C1 00        NOP     
12C2 00        NOP     
12C3 00        NOP     
12C4 00        NOP     
12C5 00        NOP     
12C6 00        NOP     
12C7 00        NOP     
12C8 00        NOP     
12C9 00        NOP     
12CA 00        NOP     
12CB 00        NOP     
12CC 00        NOP     
12CD 00        NOP     
12CE 00        NOP     
12CF 00        NOP     
12D0 00        NOP     
12D1 00        NOP     
12D2 00        NOP     
12D3 00        NOP     
12D4 00        NOP     
12D5 00        NOP     
12D6 00        NOP     
12D7 00        NOP     
12D8 00        NOP     
12D9 00        NOP     
12DA 00        NOP     
12DB 00        NOP     
12DC 00        NOP     
12DD 00        NOP     
12DE 00        NOP     
12DF 00        NOP     
12E0 00        NOP     
12E1 00        NOP     
12E2 00        NOP     
12E3 00        NOP     
12E4 00        NOP     
12E5 00        NOP     
12E6 00        NOP     
12E7 00        NOP     
12E8 00        NOP     
12E9 00        NOP     
12EA 00        NOP     
12EB 00        NOP     
12EC 00        NOP     
12ED 00        NOP     
12EE 00        NOP     
12EF 00        NOP     
12F0 00        NOP     
12F1 00        NOP     
12F2 00        NOP     
12F3 00        NOP     
12F4 00        NOP     
12F5 00        NOP     
12F6 00        NOP     
12F7 00        NOP     
12F8 00        NOP     
12F9 00        NOP     
12FA 00        NOP     
12FB 00        NOP     
12FC 00        NOP     
12FD 00        NOP     
12FE 00        NOP     
12FF 00        NOP     
1300 00        NOP     
1301 00        NOP     
1302 00        NOP     
1303 00        NOP     
1304 00        NOP     
1305 00        NOP     
1306 117413    LD      DE,1374H
1309 CDD50F    CALL    0FD5H
130C 0E08      LD      C,08H
130E 3E78      LD      A,78H
1310 0D        DEC     C
1311 B1        OR      C
1312 D388      OUT     (88H),A
1314 0605      LD      B,05H
1316 DB58      IN      A,(58H)
1318 17        RLA     
1319 3013      JR      NC,132EH
131B 10FB      DJNZ    1318H
131D 79        LD      A,C
131E A7        AND     A
131F 20ED      JR      NZ,130EH
1321 DB58      IN      A,(58H)
1323 1F        RRA     
1324 3008      JR      NC,132EH
1326 05        DEC     B
1327 1F        RRA     
1328 3004      JR      NC,132EH
132A 05        DEC     B
132B 1F        RRA     
132C 38DE      JR      C,130CH
132E 78        LD      A,B
132F A7        AND     A
1330 21E913    LD      HL,13E9H
1333 280C      JR      Z,1341H
1335 CB78      BIT     7,B
1337 280C      JR      Z,1345H
1339 CB40      BIT     0,B
133B 23        INC     HL
133C 23        INC     HL
133D 2002      JR      NZ,1341H
133F 23        INC     HL
1340 23        INC     HL
1341 AF        XOR     A
1342 F5        PUSH    AF
1343 180E      JR      1353H
1345 3D        DEC     A
1346 07        RLCA    
1347 07        RLCA    
1348 07        RLCA    
1349 B1        OR      C
134A F5        PUSH    AF
134B 87        ADD     A,A
134C 219913    LD      HL,1399H
134F 4F        LD      C,A
1350 0600      LD      B,00H
1352 09        ADD     HL,BC
1353 5E        LD      E,(HL)
1354 23        INC     HL
1355 56        LD      D,(HL)
1356 D5        PUSH    DE
1357 119713    LD      DE,1397H
135A CDD50F    CALL    0FD5H
135D D1        POP     DE
135E CDD50F    CALL    0FD5H
1361 210032    LD      HL,3200H
1364 2B        DEC     HL
1365 7C        LD      A,H
1366 B5        OR      L
1367 20FB      JR      NZ,1364H
1369 DB58      IN      A,(58H)
136B 3C        INC     A
136C 20F3      JR      NZ,1361H
136E F1        POP     AF
136F FE25      CP      25H
1371 2093      JR      NZ,1306H
1373 C9        RET     

1374 00        NOP     
1375 00        NOP     
1376 00        NOP     
1377 00        NOP     
1378 00        NOP     
1379 00        NOP     
137A 00        NOP     
137B 00        NOP     
137C 00        NOP     
137D 00        NOP     
137E 00        NOP     
137F 00        NOP     
1380 00        NOP     
1381 00        NOP     
1382 00        NOP     
1383 00        NOP     
1384 00        NOP     
1385 00        NOP     
1386 00        NOP     
1387 00        NOP     
1388 00        NOP     
1389 00        NOP     
138A 00        NOP     
138B 00        NOP     
138C 00        NOP     
138D 00        NOP     
138E 00        NOP     
138F 00        NOP     
1390 00        NOP     
1391 00        NOP     
1392 00        NOP     
1393 00        NOP     
1394 00        NOP     
1395 00        NOP     
1396 00        NOP     
1397 00        NOP     
1398 00        NOP     
1399 3F        CCF     
139A 14        INC     D
139B 1614      LD      D,14H
139D 62        LD      H,D
139E 14        INC     D
139F A0        AND     B
13A0 14        INC     D
13A1 D8        RET     C

13A2 14        INC     D
13A3 FC1445    CALL    M,4514H
13A6 15        DEC     D
13A7 2B        DEC     HL
13A8 15        DEC     D
13A9 46        LD      B,(HL)
13AA 14        INC     D
13AB 1F        RRA     
13AC 14        INC     D
13AD 6E        LD      L,(HL)
13AE 14        INC     D
13AF A9        XOR     C
13B0 14        INC     D
13B1 F3        DI      
13B2 14        INC     D
13B3 08        EX      AF,AF'
13B4 15        DEC     D
13B5 3F        CCF     
13B6 15        DEC     D
13B7 25        DEC     H
13B8 15        DEC     D
13B9 4D        LD      C,L
13BA 14        INC     D
13BB 2A1477    LD      HL,(7714H)
13BE 14        INC     D
13BF B6        OR      (HL)
13C0 14        INC     D
13C1 EC1410    CALL    PE,1014H
13C4 15        DEC     D
13C5 39        ADD     HL,SP
13C6 15        DEC     D
13C7 211554    LD      HL,5415H
13CA 14        INC     D
13CB 311488    LD      SP,8814H
13CE 14        INC     D
13CF C314E7    JP      0E714H
13D2 14        INC     D
13D3 0E15      LD      C,15H
13D5 35        DEC     (HL)
13D6 15        DEC     D
13D7 1D        DEC     E
13D8 15        DEC     D
13D9 5B        LD      E,E
13DA 14        INC     D
13DB 3814      JR      C,13F1H
13DD 92        SUB     D
13DE 14        INC     D
13DF CC1403    CALL    Z,0314H
13E2 15        DEC     D
13E3 12        LD      (DE),A
13E4 15        DEC     D
13E5 3015      JR      NC,13FCH
13E7 1815      JR      13FEH
13E9 EF        RST     28H
13EA 13        INC     DE
13EB FC1309    CALL    M,0913H
13EE 14        INC     D
13EF 00        NOP     
13F0 00        NOP     
13F1 00        NOP     
13F2 00        NOP     
13F3 00        NOP     
13F4 00        NOP     
13F5 00        NOP     
13F6 00        NOP     
13F7 00        NOP     
13F8 00        NOP     
13F9 00        NOP     
13FA 00        NOP     
13FB 00        NOP     
13FC 00        NOP     
13FD 00        NOP     
13FE 00        NOP     
13FF 00        NOP     
1400 00        NOP     
1401 00        NOP     
1402 00        NOP     
1403 00        NOP     
1404 00        NOP     
1405 00        NOP     
1406 00        NOP     
1407 00        NOP     
1408 00        NOP     
1409 00        NOP     
140A 00        NOP     
140B 00        NOP     
140C 00        NOP     
140D 00        NOP     
140E 00        NOP     
140F 00        NOP     
1410 00        NOP     
1411 00        NOP     
1412 00        NOP     
1413 00        NOP     
1414 00        NOP     
1415 00        NOP     
1416 00        NOP     
1417 00        NOP     
1418 00        NOP     
1419 00        NOP     
141A 00        NOP     
141B 00        NOP     
141C 00        NOP     
141D 00        NOP     
141E 00        NOP     
141F 00        NOP     
1420 00        NOP     
1421 00        NOP     
1422 00        NOP     
1423 00        NOP     
1424 00        NOP     
1425 00        NOP     
1426 00        NOP     
1427 00        NOP     
1428 00        NOP     
1429 00        NOP     
142A 00        NOP     
142B 00        NOP     
142C 00        NOP     
142D 00        NOP     
142E 00        NOP     
142F 00        NOP     
1430 00        NOP     
1431 00        NOP     
1432 00        NOP     
1433 00        NOP     
1434 00        NOP     
1435 00        NOP     
1436 00        NOP     
1437 00        NOP     
1438 00        NOP     
1439 00        NOP     
143A 00        NOP     
143B 00        NOP     
143C 00        NOP     
143D 00        NOP     
143E 00        NOP     
143F 00        NOP     
1440 00        NOP     
1441 00        NOP     
1442 00        NOP     
1443 00        NOP     
1444 00        NOP     
1445 00        NOP     
1446 00        NOP     
1447 00        NOP     
1448 00        NOP     
1449 00        NOP     
144A 00        NOP     
144B 00        NOP     
144C 00        NOP     
144D 00        NOP     
144E 00        NOP     
144F 00        NOP     
1450 00        NOP     
1451 00        NOP     
1452 00        NOP     
1453 00        NOP     
1454 00        NOP     
1455 00        NOP     
1456 00        NOP     
1457 00        NOP     
1458 00        NOP     
1459 00        NOP     
145A 00        NOP     
145B 00        NOP     
145C 00        NOP     
145D 00        NOP     
145E 00        NOP     
145F 00        NOP     
1460 00        NOP     
1461 00        NOP     
1462 00        NOP     
1463 00        NOP     
1464 00        NOP     
1465 00        NOP     
1466 00        NOP     
1467 00        NOP     
1468 00        NOP     
1469 00        NOP     
146A 00        NOP     
146B 00        NOP     
146C 00        NOP     
146D 00        NOP     
146E 00        NOP     
146F 00        NOP     
1470 00        NOP     
1471 00        NOP     
1472 00        NOP     
1473 00        NOP     
1474 00        NOP     
1475 00        NOP     
1476 00        NOP     
1477 00        NOP     
1478 00        NOP     
1479 00        NOP     
147A 00        NOP     
147B 00        NOP     
147C 00        NOP     
147D 00        NOP     
147E 00        NOP     
147F 00        NOP     
1480 00        NOP     
1481 00        NOP     
1482 00        NOP     
1483 00        NOP     
1484 00        NOP     
1485 00        NOP     
1486 00        NOP     
1487 00        NOP     
1488 00        NOP     
1489 00        NOP     
148A 00        NOP     
148B 00        NOP     
148C 00        NOP     
148D 00        NOP     
148E 00        NOP     
148F 00        NOP     
1490 00        NOP     
1491 00        NOP     
1492 00        NOP     
1493 00        NOP     
1494 00        NOP     
1495 00        NOP     
1496 00        NOP     
1497 00        NOP     
1498 00        NOP     
1499 00        NOP     
149A 00        NOP     
149B 00        NOP     
149C 00        NOP     
149D 00        NOP     
149E 00        NOP     
149F 00        NOP     
14A0 00        NOP     
14A1 00        NOP     
14A2 00        NOP     
14A3 00        NOP     
14A4 00        NOP     
14A5 00        NOP     
14A6 00        NOP     
14A7 00        NOP     
14A8 00        NOP     
14A9 00        NOP     
14AA 00        NOP     
14AB 00        NOP     
14AC 00        NOP     
14AD 00        NOP     
14AE 00        NOP     
14AF 00        NOP     
14B0 00        NOP     
14B1 00        NOP     
14B2 00        NOP     
14B3 00        NOP     
14B4 00        NOP     
14B5 00        NOP     
14B6 00        NOP     
14B7 00        NOP     
14B8 00        NOP     
14B9 00        NOP     
14BA 00        NOP     
14BB 00        NOP     
14BC 00        NOP     
14BD 00        NOP     
14BE 00        NOP     
14BF 00        NOP     
14C0 00        NOP     
14C1 00        NOP     
14C2 00        NOP     
14C3 00        NOP     
14C4 00        NOP     
14C5 00        NOP     
14C6 00        NOP     
14C7 00        NOP     
14C8 00        NOP     
14C9 00        NOP     
14CA 00        NOP     
14CB 00        NOP     
14CC 00        NOP     
14CD 00        NOP     
14CE 00        NOP     
14CF 00        NOP     
14D0 00        NOP     
14D1 00        NOP     
14D2 00        NOP     
14D3 00        NOP     
14D4 00        NOP     
14D5 00        NOP     
14D6 00        NOP     
14D7 00        NOP     
14D8 00        NOP     
14D9 00        NOP     
14DA 00        NOP     
14DB 00        NOP     
14DC 00        NOP     
14DD 00        NOP     
14DE 00        NOP     
14DF 00        NOP     
14E0 00        NOP     
14E1 00        NOP     
14E2 00        NOP     
14E3 00        NOP     
14E4 00        NOP     
14E5 00        NOP     
14E6 00        NOP     
14E7 00        NOP     
14E8 00        NOP     
14E9 00        NOP     
14EA 00        NOP     
14EB 00        NOP     
14EC 00        NOP     
14ED 00        NOP     
14EE 00        NOP     
14EF 00        NOP     
14F0 00        NOP     
14F1 00        NOP     
14F2 00        NOP     
14F3 00        NOP     
14F4 00        NOP     
14F5 00        NOP     
14F6 00        NOP     
14F7 00        NOP     
14F8 00        NOP     
14F9 00        NOP     
14FA 00        NOP     
14FB 00        NOP     
14FC 00        NOP     
14FD 00        NOP     
14FE 00        NOP     
14FF 00        NOP     
1500 00        NOP     
1501 00        NOP     
1502 00        NOP     
1503 00        NOP     
1504 00        NOP     
1505 00        NOP     
1506 00        NOP     
1507 00        NOP     
1508 00        NOP     
1509 00        NOP     
150A 00        NOP     
150B 00        NOP     
150C 00        NOP     
150D 00        NOP     
150E 00        NOP     
150F 00        NOP     
1510 00        NOP     
1511 00        NOP     
1512 00        NOP     
1513 00        NOP     
1514 00        NOP     
1515 00        NOP     
1516 00        NOP     
1517 00        NOP     
1518 00        NOP     
1519 00        NOP     
151A 00        NOP     
151B 00        NOP     
151C 00        NOP     
151D 00        NOP     
151E 00        NOP     
151F 00        NOP     
1520 00        NOP     
1521 00        NOP     
1522 00        NOP     
1523 00        NOP     
1524 00        NOP     
1525 00        NOP     
1526 00        NOP     
1527 00        NOP     
1528 00        NOP     
1529 00        NOP     
152A 00        NOP     
152B 00        NOP     
152C 00        NOP     
152D 00        NOP     
152E 00        NOP     
152F 00        NOP     
1530 00        NOP     
1531 00        NOP     
1532 00        NOP     
1533 00        NOP     
1534 00        NOP     
1535 00        NOP     
1536 00        NOP     
1537 00        NOP     
1538 00        NOP     
1539 00        NOP     
153A 00        NOP     
153B 00        NOP     
153C 00        NOP     
153D 00        NOP     
153E 00        NOP     
153F 00        NOP     
1540 00        NOP     
1541 00        NOP     
1542 00        NOP     
1543 00        NOP     
1544 00        NOP     
1545 00        NOP     
1546 00        NOP     
1547 00        NOP     
1548 00        NOP     
1549 00        NOP     
154A 117915    LD      DE,1579H
154D CDD50F    CALL    0FD5H
1550 CD5615    CALL    1556H
1553 C0        RET     NZ

1554 18FA      JR      1550H
1556 DB58      IN      A,(58H)
1558 3C        INC     A
1559 C8        RET     Z

155A 3D        DEC     A
155B F5        PUSH    AF
155C DB58      IN      A,(58H)
155E 3C        INC     A
155F 20FB      JR      NZ,155CH
1561 CD7015    CALL    1570H
1564 DB58      IN      A,(58H)
1566 3C        INC     A
1567 20F3      JR      NZ,155CH
1569 F1        POP     AF
156A C9        RET     

156B 218000    LD      HL,0080H
156E 1803      JR      1573H
1570 210064    LD      HL,6400H
1573 2B        DEC     HL
1574 7C        LD      A,H
1575 B5        OR      L
1576 20FB      JR      NZ,1573H
1578 C9        RET     

1579 80        ADD     A,B
157A FF        RST     38H
157B FF        RST     38H
157C FF        RST     38H
157D FF        RST     38H
157E FF        RST     38H
157F FF        RST     38H
1580 FF        RST     38H
1581 FF        RST     38H
1582 FF        RST     38H
1583 FF        RST     38H
1584 FF        RST     38H
1585 FF        RST     38H
1586 FF        RST     38H
1587 FF        RST     38H
1588 FF        RST     38H
1589 FF        RST     38H
158A 90        SUB     B
158B FF        RST     38H
158C FF        RST     38H
158D FF        RST     38H
158E FF        RST     38H
158F FF        RST     38H
1590 FF        RST     38H
1591 FF        RST     38H
1592 FF        RST     38H
1593 FF        RST     38H
1594 FF        RST     38H
1595 FF        RST     38H
1596 FF        RST     38H
1597 FF        RST     38H
1598 FF        RST     38H
1599 FF        RST     38H
159A FF        RST     38H
159B FE11      CP      11H
159D C0        RET     NZ

159E 15        DEC     D
159F CDD50F    CALL    0FD5H
15A2 110100    LD      DE,0001H
15A5 EB        EX      DE,HL
15A6 29        ADD     HL,HL
15A7 CB5D      BIT     3,L
15A9 20FB      JR      NZ,15A6H
15AB 3001      JR      NC,15AEH
15AD 2C        INC     L
15AE 7D        LD      A,L
15AF 2F        CPL     
15B0 D38C      OUT     (8CH),A
15B2 7C        LD      A,H
15B3 2F        CPL     
15B4 D390      OUT     (90H),A
15B6 EB        EX      DE,HL
15B7 CD7015    CALL    1570H
15BA CD5615    CALL    1556H
15BD C0        RET     NZ

15BE 18E5      JR      15A5H
15C0 00        NOP     
15C1 00        NOP     
15C2 00        NOP     
15C3 00        NOP     
15C4 00        NOP     
15C5 00        NOP     
15C6 00        NOP     
15C7 00        NOP     
15C8 00        NOP     
15C9 00        NOP     
15CA 00        NOP     
15CB 00        NOP     
15CC 00        NOP     
15CD 00        NOP     
15CE 00        NOP     
15CF 00        NOP     
15D0 00        NOP     
15D1 00        NOP     
15D2 00        NOP     
15D3 00        NOP     
15D4 00        NOP     
15D5 00        NOP     
15D6 00        NOP     
15D7 00        NOP     
15D8 00        NOP     
15D9 00        NOP     
15DA 00        NOP     
15DB 00        NOP     
15DC 00        NOP     
15DD 00        NOP     
15DE 00        NOP     
15DF 00        NOP     
15E0 3EFF      LD      A,0FFH
15E2 D38C      OUT     (8CH),A
15E4 D390      OUT     (90H),A
15E6 211A68    LD      HL,681AH
15E9 111B68    LD      DE,681BH
15EC 010F00    LD      BC,000FH
15EF 3600      LD      (HL),00H
15F1 EDB0      LDIR    
15F3 112816    LD      DE,1628H
15F6 CDD50F    CALL    0FD5H
15F9 CD5615    CALL    1556H
15FC C0        RET     NZ

15FD 0608      LD      B,08H
15FF 78        LD      A,B
1600 3D        DEC     A
1601 D3C0      OUT     (0C0H),A
1603 CD6B15    CALL    156BH
1606 DBC0      IN      A,(0C0H)
1608 58        LD      E,B
1609 1D        DEC     E
160A 37        SCF     
160B CB13      RL      E
160D 1600      LD      D,00H
160F 211A68    LD      HL,681AH
1612 19        ADD     HL,DE
1613 5F        LD      E,A
1614 96        SUB     (HL)
1615 280D      JR      Z,1624H
1617 3D        DEC     A
1618 280A      JR      Z,1624H
161A 3C        INC     A
161B 3C        INC     A
161C 2806      JR      Z,1624H
161E 73        LD      (HL),E
161F 2B        DEC     HL
1620 A7        AND     A
1621 CB1B      RR      E
1623 73        LD      (HL),E
1624 10D9      DJNZ    15FFH
1626 18CB      JR      15F3H
1628 80        ADD     A,B
1629 19        ADD     HL,DE
162A 1A        LD      A,(DE)
162B 68        LD      L,B
162C 2019      JR      NZ,1647H
162E 1E68      LD      E,68H
1630 2019      JR      NZ,164BH
1632 226820    LD      (2068H),HL
1635 19        ADD     HL,DE
1636 2668      LD      H,68H
1638 2090      JR      NZ,15CAH
163A 2019      JR      NZ,1655H
163C 1C        INC     E
163D 68        LD      L,B
163E 2019      JR      NZ,1659H
1640 2068      JR      NZ,16AAH
1642 2019      JR      NZ,165DH
1644 24        INC     H
1645 68        LD      L,B
1646 2019      JR      NZ,1661H
1648 2868      JR      Z,16B2H
164A FE11      CP      11H
164C 88        ADC     A,B
164D 16CD      LD      D,0CDH
164F D5        PUSH    DE
1650 0F        RRCA    
1651 11A116    LD      DE,16A1H
1654 CDD50F    CALL    0FD5H
1657 3E1D      LD      A,1DH
1659 D388      OUT     (88H),A
165B 0610      LD      B,10H
165D 110000    LD      DE,0000H
1660 DB41      IN      A,(41H)
1662 6F        LD      L,A
1663 DB40      IN      A,(40H)
1665 2600      LD      H,00H
1667 29        ADD     HL,HL
1668 29        ADD     HL,HL
1669 29        ADD     HL,HL
166A 29        ADD     HL,HL
166B E60F      AND     0FH
166D B5        OR      L
166E 6F        LD      L,A
166F 19        ADD     HL,DE
1670 EB        EX      DE,HL
1671 10ED      DJNZ    1660H
1673 0604      LD      B,04H
1675 CB3A      SRL     D
1677 CB1B      RR      E
1679 10FA      DJNZ    1675H
167B D5        PUSH    DE
167C FDE1      POP     IY
167E CD5615    CALL    1556H
1681 28CE      JR      Z,1651H
1683 3E7D      LD      A,7DH
1685 D388      OUT     (88H),A
1687 C9        RET     

1688 00        NOP     
1689 00        NOP     
168A 00        NOP     
168B 00        NOP     
168C 00        NOP     
168D 00        NOP     
168E 00        NOP     
168F 00        NOP     
1690 00        NOP     
1691 00        NOP     
1692 00        NOP     
1693 00        NOP     
1694 00        NOP     
1695 00        NOP     
1696 00        NOP     
1697 00        NOP     
1698 00        NOP     
1699 00        NOP     
169A 00        NOP     
169B 00        NOP     
169C 00        NOP     
169D 00        NOP     
169E 00        NOP     
169F 00        NOP     
16A0 00        NOP     
16A1 96        SUB     (HL)
16A2 15        DEC     D
16A3 FE18      CP      18H
16A5 04        INC     B
16A6 CC0568    CALL    Z,6805H
16A9 03        INC     BC
16AA C1        POP     BC
16AB 11EC16    LD      DE,16ECH
16AE CDD50F    CALL    0FD5H
16B1 CD5615    CALL    1556H
16B4 28FB      JR      Z,16B1H
16B6 21A416    LD      HL,16A4H
16B9 015107    LD      BC,0751H
16BC EDB3      OTIR    
16BE 0600      LD      B,00H
16C0 78        LD      A,B
16C1 D350      OUT     (50H),A
16C3 0E00      LD      C,00H
16C5 0D        DEC     C
16C6 2814      JR      Z,16DCH
16C8 DB51      IN      A,(51H)
16CA 0F        RRCA    
16CB 30F8      JR      NC,16C5H
16CD DB50      IN      A,(50H)
16CF B8        CP      B
16D0 200A      JR      NZ,16DCH
16D2 10EC      DJNZ    16C0H
16D4 110F17    LD      DE,170FH
16D7 CDD50F    CALL    0FD5H
16DA 1806      JR      16E2H
16DC 112517    LD      DE,1725H
16DF CDD50F    CALL    0FD5H
16E2 CD5615    CALL    1556H
16E5 28FB      JR      Z,16E2H
16E7 CB7F      BIT     7,A
16E9 C8        RET     Z

16EA 18BF      JR      16ABH
16EC 00        NOP     
16ED 00        NOP     
16EE 00        NOP     
16EF 00        NOP     
16F0 00        NOP     
16F1 00        NOP     
16F2 00        NOP     
16F3 00        NOP     
16F4 00        NOP     
16F5 00        NOP     
16F6 00        NOP     
16F7 00        NOP     
16F8 00        NOP     
16F9 00        NOP     
16FA 00        NOP     
16FB 00        NOP     
16FC 00        NOP     
16FD 00        NOP     
16FE 00        NOP     
16FF 00        NOP     
1700 00        NOP     
1701 00        NOP     
1702 00        NOP     
1703 00        NOP     
1704 00        NOP     
1705 00        NOP     
1706 00        NOP     
1707 00        NOP     
1708 00        NOP     
1709 00        NOP     
170A 00        NOP     
170B 00        NOP     
170C 00        NOP     
170D 00        NOP     
170E 00        NOP     
170F 00        NOP     
1710 00        NOP     
1711 00        NOP     
1712 00        NOP     
1713 00        NOP     
1714 00        NOP     
1715 00        NOP     
1716 00        NOP     
1717 00        NOP     
1718 00        NOP     
1719 00        NOP     
171A 00        NOP     
171B 00        NOP     
171C 00        NOP     
171D 00        NOP     
171E 00        NOP     
171F 00        NOP     
1720 00        NOP     
1721 00        NOP     
1722 00        NOP     
1723 00        NOP     
1724 00        NOP     
1725 00        NOP     
1726 00        NOP     
1727 00        NOP     
1728 00        NOP     
1729 00        NOP     
172A 00        NOP     
172B 00        NOP     
172C 00        NOP     
172D 00        NOP     
172E 00        NOP     
172F 00        NOP     
1730 00        NOP     
1731 00        NOP     
1732 00        NOP     
1733 00        NOP     
1734 00        NOP     
1735 00        NOP     
1736 00        NOP     
1737 00        NOP     
1738 00        NOP     
1739 00        NOP     
173A 00        NOP     
173B 00        NOP     
173C 00        NOP     
173D 00        NOP     
173E 00        NOP     
173F 00        NOP     
1740 00        NOP     
1741 00        NOP     
1742 00        NOP     
1743 00        NOP     
1744 00        NOP     
1745 00        NOP     
1746 00        NOP     
1747 111D18    LD      DE,181DH
174A CDD50F    CALL    0FD5H
174D CD5615    CALL    1556H
1750 28FB      JR      Z,174DH
1752 114018    LD      DE,1840H
1755 CDD50F    CALL    0FD5H
1758 062B      LD      B,2BH
175A CD9417    CALL    1794H
175D 210A18    LD      HL,180AH
1760 01530F    LD      BC,0F53H
1763 EDB3      OTIR    
1765 CDA017    CALL    17A0H
1768 381A      JR      C,1784H
176A 0636      LD      B,36H
176C CD9417    CALL    1794H
176F 211918    LD      HL,1819H
1772 015304    LD      BC,0453H
1775 EDB3      OTIR    
1777 CDA017    CALL    17A0H
177A 3808      JR      C,1784H
177C 115218    LD      DE,1852H
177F CDD50F    CALL    0FD5H
1782 1806      JR      178AH
1784 117018    LD      DE,1870H
1787 CDD50F    CALL    0FD5H
178A CD5615    CALL    1556H
178D 28FB      JR      Z,178AH
178F CB7F      BIT     7,A
1791 C8        RET     Z

1792 18B3      JR      1747H
1794 3E03      LD      A,03H
1796 D34A      OUT     (4AH),A
1798 3E07      LD      A,07H
179A D34A      OUT     (4AH),A
179C 78        LD      A,B
179D D34A      OUT     (4AH),A
179F C9        RET     

17A0 0610      LD      B,10H
17A2 DB52      IN      A,(52H)
17A4 10FC      DJNZ    17A2H
17A6 111400    LD      DE,0014H
17A9 CDF717    CALL    17F7H
17AC FE5A      CP      5AH
17AE 2808      JR      Z,17B8H
17B0 1B        DEC     DE
17B1 7A        LD      A,D
17B2 B3        OR      E
17B3 20F4      JR      NZ,17A9H
17B5 37        SCF     
17B6 181B      JR      17D3H
17B8 110000    LD      DE,0000H
17BB 62        LD      H,D
17BC CDE217    CALL    17E2H
17BF 3812      JR      C,17D3H
17C1 62        LD      H,D
17C2 25        DEC     H
17C3 CDE217    CALL    17E2H
17C6 380B      JR      C,17D3H
17C8 CDF717    CALL    17F7H
17CB 3806      JR      C,17D3H
17CD BA        CP      D
17CE 2008      JR      NZ,17D8H
17D0 15        DEC     D
17D1 20EE      JR      NZ,17C1H
17D3 3E03      LD      A,03H
17D5 D34A      OUT     (4AH),A
17D7 C9        RET     

17D8 FE5A      CP      5AH
17DA 2003      JR      NZ,17DFH
17DC 1D        DEC     E
17DD 20E9      JR      NZ,17C8H
17DF 37        SCF     
17E0 18F1      JR      17D3H
17E2 014000    LD      BC,0040H
17E5 DB53      IN      A,(53H)
17E7 CB57      BIT     2,A
17E9 2007      JR      NZ,17F2H
17EB 10F8      DJNZ    17E5H
17ED 0D        DEC     C
17EE 20F5      JR      NZ,17E5H
17F0 37        SCF     
17F1 C9        RET     

17F2 7C        LD      A,H
17F3 D352      OUT     (52H),A
17F5 B7        OR      A
17F6 C9        RET     

17F7 014000    LD      BC,0040H
17FA DB53      IN      A,(53H)
17FC 0F        RRCA    
17FD 3807      JR      C,1806H
17FF 10F9      DJNZ    17FAH
1801 0D        DEC     C
1802 20F6      JR      NZ,17FAH
1804 37        SCF     
1805 C9        RET     

1806 DB52      IN      A,(52H)
1808 B7        OR      A
1809 C9        RET     

180A 1818      JR      1824H
180C 1801      JR      180FH
180E 04        INC     B
180F 04        INC     B
1810 00        NOP     
1811 065A      LD      B,5AH
1813 07        RLCA    
1814 5A        LD      E,D
1815 05        DEC     B
1816 E8        RET     PE

1817 03        INC     BC
1818 D1        POP     DE
1819 05        DEC     B
181A 68        LD      L,B
181B 03        INC     BC
181C D1        POP     DE
181D 00        NOP     
181E 00        NOP     
181F 00        NOP     
1820 00        NOP     
1821 00        NOP     
1822 00        NOP     
1823 00        NOP     
1824 00        NOP     
1825 00        NOP     
1826 00        NOP     
1827 00        NOP     
1828 00        NOP     
1829 00        NOP     
182A 00        NOP     
182B 00        NOP     
182C 00        NOP     
182D 00        NOP     
182E 00        NOP     
182F 00        NOP     
1830 00        NOP     
1831 00        NOP     
1832 00        NOP     
1833 00        NOP     
1834 00        NOP     
1835 00        NOP     
1836 00        NOP     
1837 00        NOP     
1838 00        NOP     
1839 00        NOP     
183A 00        NOP     
183B 00        NOP     
183C 00        NOP     
183D 00        NOP     
183E 00        NOP     
183F 00        NOP     
1840 00        NOP     
1841 00        NOP     
1842 00        NOP     
1843 00        NOP     
1844 00        NOP     
1845 00        NOP     
1846 00        NOP     
1847 00        NOP     
1848 00        NOP     
1849 00        NOP     
184A 00        NOP     
184B 00        NOP     
184C 00        NOP     
184D 00        NOP     
184E 00        NOP     
184F 00        NOP     
1850 00        NOP     
1851 00        NOP     
1852 00        NOP     
1853 00        NOP     
1854 00        NOP     
1855 00        NOP     
1856 00        NOP     
1857 00        NOP     
1858 00        NOP     
1859 00        NOP     
185A 00        NOP     
185B 00        NOP     
185C 00        NOP     
185D 00        NOP     
185E 00        NOP     
185F 00        NOP     
1860 00        NOP     
1861 00        NOP     
1862 00        NOP     
1863 00        NOP     
1864 00        NOP     
1865 00        NOP     
1866 00        NOP     
1867 00        NOP     
1868 00        NOP     
1869 00        NOP     
186A 00        NOP     
186B 00        NOP     
186C 00        NOP     
186D 00        NOP     
186E 00        NOP     
186F 00        NOP     
1870 00        NOP     
1871 00        NOP     
1872 00        NOP     
1873 00        NOP     
1874 00        NOP     
1875 00        NOP     
1876 00        NOP     
1877 00        NOP     
1878 00        NOP     
1879 00        NOP     
187A 00        NOP     
187B 00        NOP     
187C 00        NOP     
187D 00        NOP     
187E 00        NOP     
187F 00        NOP     
1880 00        NOP     
1881 00        NOP     
1882 00        NOP     
1883 00        NOP     
1884 00        NOP     
1885 00        NOP     
1886 00        NOP     
1887 00        NOP     
1888 00        NOP     
1889 00        NOP     
188A 00        NOP     
188B 00        NOP     
188C 00        NOP     
188D 00        NOP     
188E 00        NOP     
188F 00        NOP     
1890 00        NOP     
1891 00        NOP     
1892 00        NOP     
1893 110219    LD      DE,1902H
1896 CDD50F    CALL    0FD5H
1899 3E78      LD      A,78H
189B CDB218    CALL    18B2H
189E 201B      JR      NZ,18BBH
18A0 EB        EX      DE,HL
18A1 3E79      LD      A,79H
18A3 CDB218    CALL    18B2H
18A6 2013      JR      NZ,18BBH
18A8 3E7D      LD      A,7DH
18AA CDB218    CALL    18B2H
18AD C25615    JP      NZ,1556H
18B0 18E7      JR      1899H
18B2 D388      OUT     (88H),A
18B4 CDF918    CALL    18F9H
18B7 DB58      IN      A,(58H)
18B9 3C        INC     A
18BA C9        RET     

18BB 0608      LD      B,08H
18BD 3EF7      LD      A,0F7H
18BF D38C      OUT     (8CH),A
18C1 118168    LD      DE,6881H
18C4 3E07      LD      A,07H
18C6 D3C0      OUT     (0C0H),A
18C8 CDF918    CALL    18F9H
18CB DBC0      IN      A,(0C0H)
18CD 12        LD      (DE),A
18CE 13        INC     DE
18CF 10F3      DJNZ    18C4H
18D1 010008    LD      BC,0800H
18D4 59        LD      E,C
18D5 218168    LD      HL,6881H
18D8 7E        LD      A,(HL)
18D9 B9        CP      C
18DA 3801      JR      C,18DDH
18DC 4F        LD      C,A
18DD 23        INC     HL
18DE 10F5      DJNZ    18D5H
18E0 79        LD      A,C
18E1 326168    LD      (6861H),A
18E4 111B19    LD      DE,191BH
18E7 CDD50F    CALL    0FD5H
18EA DB58      IN      A,(58H)
18EC 3C        INC     A
18ED 20FB      JR      NZ,18EAH
18EF CDF918    CALL    18F9H
18F2 DB58      IN      A,(58H)
18F4 3C        INC     A
18F5 28A2      JR      Z,1899H
18F7 18F1      JR      18EAH
18F9 213901    LD      HL,0139H
18FC 2B        DEC     HL
18FD 7C        LD      A,H
18FE B5        OR      L
18FF 20FB      JR      NZ,18FCH
1901 C9        RET     

1902 00        NOP     
1903 00        NOP     
1904 00        NOP     
1905 00        NOP     
1906 00        NOP     
1907 00        NOP     
1908 00        NOP     
1909 00        NOP     
190A 00        NOP     
190B 00        NOP     
190C 00        NOP     
190D 00        NOP     
190E 00        NOP     
190F 00        NOP     
1910 00        NOP     
1911 00        NOP     
1912 00        NOP     
1913 00        NOP     
1914 00        NOP     
1915 00        NOP     
1916 00        NOP     
1917 00        NOP     
1918 00        NOP     
1919 00        NOP     
191A 00        NOP     
191B 97        SUB     A
191C 19        ADD     HL,DE
191D 61        LD      H,C
191E 68        LD      L,B
191F FE3E      CP      3EH
1921 7F        LD      A,A
1922 D388      OUT     (88H),A
1924 327961    LD      (6179H),A
1927 11551A    LD      DE,1A55H
192A CDD50F    CALL    0FD5H
192D 210000    LD      HL,0000H
1930 226168    LD      (6861H),HL
1933 226368    LD      (6863H),HL
1936 226D61    LD      (616DH),HL
1939 226F61    LD      (616FH),HL
193C 227161    LD      (6171H),HL
193F 227361    LD      (6173H),HL
1942 210A1B    LD      HL,1B0AH
1945 CDCD19    CALL    19CDH
1948 DB58      IN      A,(58H)
194A 3C        INC     A
194B 20FB      JR      NZ,1948H
194D CD7015    CALL    1570H
1950 DB58      IN      A,(58H)
1952 CB67      BIT     4,A
1954 C8        RET     Z

1955 CB77      BIT     6,A
1957 2831      JR      Z,198AH
1959 CB6F      BIT     5,A
195B 20F3      JR      NZ,1950H
195D CDE219    CALL    19E2H
1960 C0        RET     NZ

1961 CD2C1A    CALL    1A2CH
1964 21201B    LD      HL,1B20H
1967 CDD619    CALL    19D6H
196A CDD019    CALL    19D0H
196D C49B19    CALL    NZ,199BH
1970 38B8      JR      C,192AH
1972 FD7E0A    LD      A,(IY+0AH)
1975 3C        INC     A
1976 FD770A    LD      (IY+0AH),A
1979 FE88      CP      88H
197B 20ED      JR      NZ,196AH
197D 21151B    LD      HL,1B15H
1980 CDCD19    CALL    19CDH
1983 C49B19    CALL    NZ,199BH
1986 38A2      JR      C,192AH
1988 18D3      JR      195DH
198A CDE219    CALL    19E2H
198D C0        RET     NZ

198E 21151B    LD      HL,1B15H
1991 CDCD19    CALL    19CDH
1994 C49B19    CALL    NZ,199BH
1997 3891      JR      C,192AH
1999 18EF      JR      198AH
199B 4F        LD      C,A
199C 2A6168    LD      HL,(6861H)
199F 25        DEC     H
19A0 7C        LD      A,H
19A1 B5        OR      L
19A2 201C      JR      NZ,19C0H
19A4 79        LD      A,C
19A5 FEC3      CP      0C3H
19A7 2005      JR      NZ,19AEH
19A9 119B1A    LD      DE,1A9BH
19AC 1810      JR      19BEH
19AE FEC2      CP      0C2H
19B0 2005      JR      NZ,19B7H
19B2 11781A    LD      DE,1A78H
19B5 1807      JR      19BEH
19B7 FEC4      CP      0C4H
19B9 2005      JR      NZ,19C0H
19BB 11BE1A    LD      DE,1ABEH
19BE 37        SCF     
19BF C9        RET     

19C0 3A6368    LD      A,(6863H)
19C3 FE63      CP      63H
19C5 2804      JR      Z,19CBH
19C7 3C        INC     A
19C8 326368    LD      (6863H),A
19CB A7        AND     A
19CC C9        RET     

19CD CDD619    CALL    19D6H
19D0 CDAE01    CALL    01AEH
19D3 FE80      CP      80H
19D5 C9        RET     

19D6 117B61    LD      DE,617BH
19D9 D5        PUSH    DE
19DA FDE1      POP     IY
19DC 010B00    LD      BC,000BH
19DF EDB0      LDIR    
19E1 C9        RET     

19E2 3A6268    LD      A,(6862H)
19E5 3C        INC     A
19E6 FE64      CP      64H
19E8 2008      JR      NZ,19F2H
19EA 3A6168    LD      A,(6861H)
19ED 3C        INC     A
19EE 326168    LD      (6861H),A
19F1 AF        XOR     A
19F2 326268    LD      (6862H),A
19F5 2A6D61    LD      HL,(616DH)
19F8 CD211A    CALL    1A21H
19FB 326468    LD      (6864H),A
19FE 2A7161    LD      HL,(6171H)
1A01 CD211A    CALL    1A21H
1A04 326568    LD      (6865H),A
1A07 2A7361    LD      HL,(6173H)
1A0A ED5B6F61  LD      DE,(616FH)
1A0E 19        ADD     HL,DE
1A0F CD211A    CALL    1A21H
1A12 326668    LD      (6866H),A
1A15 11E11A    LD      DE,1AE1H
1A18 CDD50F    CALL    0FD5H
1A1B DB58      IN      A,(58H)
1A1D 2F        CPL     
1A1E E617      AND     17H
1A20 C9        RET     

1A21 116400    LD      DE,0064H
1A24 7D        LD      A,L
1A25 A7        AND     A
1A26 ED52      SBC     HL,DE
1A28 D8        RET     C

1A29 3E63      LD      A,63H
1A2B C9        RET     

1A2C ED5F      LD      A,R
1A2E 67        LD      H,A
1A2F 6F        LD      L,A
1A30 37        SCF     
1A31 119471    LD      DE,7194H
1A34 0EAB      LD      C,0ABH
1A36 3E05      LD      A,05H
1A38 08        EX      AF,AF'
1A39 0618      LD      B,18H
1A3B ED6A      ADC     HL,HL
1A3D 8F        ADC     A,A
1A3E CB6F      BIT     5,A
1A40 2801      JR      Z,1A43H
1A42 3F        CCF     
1A43 10F6      DJNZ    1A3BH
1A45 EB        EX      DE,HL
1A46 73        LD      (HL),E
1A47 23        INC     HL
1A48 72        LD      (HL),D
1A49 23        INC     HL
1A4A 77        LD      (HL),A
1A4B 23        INC     HL
1A4C EB        EX      DE,HL
1A4D 0D        DEC     C
1A4E 20E9      JR      NZ,1A39H
1A50 08        EX      AF,AF'
1A51 3D        DEC     A
1A52 20E4      JR      NZ,1A38H
1A54 C9        RET     

1A55 00        NOP     
1A56 00        NOP     
1A57 00        NOP     
1A58 00        NOP     
1A59 00        NOP     
1A5A 00        NOP     
1A5B 00        NOP     
1A5C 00        NOP     
1A5D 00        NOP     
1A5E 00        NOP     
1A5F 00        NOP     
1A60 00        NOP     
1A61 00        NOP     
1A62 00        NOP     
1A63 00        NOP     
1A64 00        NOP     
1A65 00        NOP     
1A66 00        NOP     
1A67 00        NOP     
1A68 00        NOP     
1A69 00        NOP     
1A6A 00        NOP     
1A6B 00        NOP     
1A6C 00        NOP     
1A6D 00        NOP     
1A6E 00        NOP     
1A6F 00        NOP     
1A70 00        NOP     
1A71 00        NOP     
1A72 00        NOP     
1A73 00        NOP     
1A74 00        NOP     
1A75 00        NOP     
1A76 00        NOP     
1A77 00        NOP     
1A78 00        NOP     
1A79 00        NOP     
1A7A 00        NOP     
1A7B 00        NOP     
1A7C 00        NOP     
1A7D 00        NOP     
1A7E 00        NOP     
1A7F 00        NOP     
1A80 00        NOP     
1A81 00        NOP     
1A82 00        NOP     
1A83 00        NOP     
1A84 00        NOP     
1A85 00        NOP     
1A86 00        NOP     
1A87 00        NOP     
1A88 00        NOP     
1A89 00        NOP     
1A8A 00        NOP     
1A8B 00        NOP     
1A8C 00        NOP     
1A8D 00        NOP     
1A8E 00        NOP     
1A8F 00        NOP     
1A90 00        NOP     
1A91 00        NOP     
1A92 00        NOP     
1A93 00        NOP     
1A94 00        NOP     
1A95 00        NOP     
1A96 00        NOP     
1A97 00        NOP     
1A98 00        NOP     
1A99 00        NOP     
1A9A 00        NOP     
1A9B 00        NOP     
1A9C 00        NOP     
1A9D 00        NOP     
1A9E 00        NOP     
1A9F 00        NOP     
1AA0 00        NOP     
1AA1 00        NOP     
1AA2 00        NOP     
1AA3 00        NOP     
1AA4 00        NOP     
1AA5 00        NOP     
1AA6 00        NOP     
1AA7 00        NOP     
1AA8 00        NOP     
1AA9 00        NOP     
1AAA 00        NOP     
1AAB 00        NOP     
1AAC 00        NOP     
1AAD 00        NOP     
1AAE 00        NOP     
1AAF 00        NOP     
1AB0 00        NOP     
1AB1 00        NOP     
1AB2 00        NOP     
1AB3 00        NOP     
1AB4 00        NOP     
1AB5 00        NOP     
1AB6 00        NOP     
1AB7 00        NOP     
1AB8 00        NOP     
1AB9 00        NOP     
1ABA 00        NOP     
1ABB 00        NOP     
1ABC 00        NOP     
1ABD 00        NOP     
1ABE 00        NOP     
1ABF 00        NOP     
1AC0 00        NOP     
1AC1 00        NOP     
1AC2 00        NOP     
1AC3 00        NOP     
1AC4 00        NOP     
1AC5 00        NOP     
1AC6 00        NOP     
1AC7 00        NOP     
1AC8 00        NOP     
1AC9 00        NOP     
1ACA 00        NOP     
1ACB 00        NOP     
1ACC 00        NOP     
1ACD 00        NOP     
1ACE 00        NOP     
1ACF 00        NOP     
1AD0 00        NOP     
1AD1 00        NOP     
1AD2 00        NOP     
1AD3 00        NOP     
1AD4 00        NOP     
1AD5 00        NOP     
1AD6 00        NOP     
1AD7 00        NOP     
1AD8 00        NOP     
1AD9 00        NOP     
1ADA 00        NOP     
1ADB 00        NOP     
1ADC 00        NOP     
1ADD 00        NOP     
1ADE 00        NOP     
1ADF 00        NOP     
1AE0 00        NOP     
1AE1 00        NOP     
1AE2 00        NOP     
1AE3 00        NOP     
1AE4 00        NOP     
1AE5 00        NOP     
1AE6 00        NOP     
1AE7 00        NOP     
1AE8 00        NOP     
1AE9 00        NOP     
1AEA 00        NOP     
1AEB 00        NOP     
1AEC 00        NOP     
1AED 00        NOP     
1AEE 00        NOP     
1AEF 00        NOP     
1AF0 00        NOP     
1AF1 00        NOP     
1AF2 00        NOP     
1AF3 00        NOP     
1AF4 00        NOP     
1AF5 00        NOP     
1AF6 00        NOP     
1AF7 00        NOP     
1AF8 00        NOP     
1AF9 00        NOP     
1AFA 00        NOP     
1AFB 00        NOP     
1AFC 00        NOP     
1AFD 00        NOP     
1AFE 00        NOP     
1AFF 00        NOP     
1B00 00        NOP     
1B01 00        NOP     
1B02 00        NOP     
1B03 00        NOP     
1B04 00        NOP     
1B05 00        NOP     
1B06 00        NOP     
1B07 00        NOP     
1B08 00        NOP     
1B09 00        NOP     
1B0A 00        NOP     
1B0B 00        NOP     
1B0C 00        NOP     
1B0D 00        NOP     
1B0E 00        NOP     
1B0F 00        NOP     
1B10 00        NOP     
1B11 00        NOP     
1B12 00        NOP     
1B13 00        NOP     
1B14 00        NOP     
1B15 0A        LD      A,(BC)
1B16 00        NOP     
1B17 00        NOP     
1B18 80        ADD     A,B
1B19 00        NOP     
1B1A EA0400    JP      PE,0004H
1B1D 00        NOP     
1B1E 00        NOP     
1B1F 00        NOP     
1B20 0E94      LD      C,94H
1B22 71        LD      (HL),C
1B23 00        NOP     
1B24 00        NOP     
1B25 0E00      LD      C,00H
