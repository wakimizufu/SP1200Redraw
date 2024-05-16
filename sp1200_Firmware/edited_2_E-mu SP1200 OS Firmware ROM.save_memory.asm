;--------------------------------------------------
;Z80 DISASSEMBLER LISTING
;Line   Addr Opcodes     Label   Instruction
;--------------------------------------------------

;[Routin]開始アドレス
0001   0000 18 67       L0032:  JR L0001	;0069Hへ

;[Routin]
0002   0002 D3 58       L0016:  OUT (58H),A
0003   0004 00          L0522:  NOP
0004   0005 00                  NOP
0005   0006 00                  NOP
0006   0007 00                  NOP
0007   0008 08                  EX AF,AF'
0008   0009 D9                  EXX
0009   000A ED 40               IN B,(C)
0010   000C 7D                  LD A,L
0011   000D D3 98               OUT (98H),A
0012   000F 7C                  LD A,H
0013   0010 D3 9C               OUT (9CH),A
0014   0012 23                  INC HL
0015   0013 1B                  DEC DE
0016   0014 7A                  LD A,D
0017   0015 B3                  OR E
0018   0016 D9                  EXX
0019   0017 28 02               JR Z,L0002
0020   0019 08                  EX AF,AF'
0021   001A C9                  RET
0022   001B E1          L0002:  POP HL
0023   001C C9                  RET

0024   001D 00                  NOP
0025   001E 00                  NOP
0026   001F 00                  NOP
0027   0020 00                  NOP
0028   0021 00                  NOP
0029   0022 00                  NOP
0030   0023 00                  NOP
0031   0024 00                  NOP
0032   0025 00                  NOP
0033   0026 00                  NOP
0034   0027 00                  NOP
0035   0028 00                  NOP
0036   0029 00                  NOP
0037   002A 00                  NOP
0038   002B 00                  NOP
0039   002C 00                  NOP
0040   002D 00                  NOP
0041   002E 00                  NOP
0042   002F 00                  NOP
0043   0030 00                  NOP
0044   0031 00                  NOP
0045   0032 00                  NOP
0046   0033 00                  NOP
0047   0034 00                  NOP
0048   0035 00                  NOP
0049   0036 00                  NOP
0050   0037 00                  NOP
0051   0038 C3 AB 01            JP L0003
0052   003B 00                  NOP
0053   003C 00                  NOP
0054   003D 00                  NOP
0055   003E 00                  NOP
0056   003F 00                  NOP
0057   0040 00                  NOP
0058   0041 00                  NOP
0059   0042 00                  NOP
0060   0043 00                  NOP
0061   0044 00                  NOP
0062   0045 00                  NOP
0063   0046 00                  NOP
0064   0047 00                  NOP
0065   0048 00                  NOP

;[Intrapt]NMI割り込み時開始アドレス(回路図からは使ってない)
0066   0049 00                  NOP
0067   004A 00                  NOP
0068   004B 00                  NOP
0069   004C 00                  NOP
0070   004D 00                  NOP
0071   004E 00                  NOP
0072   004F 00                  NOP
0073   0050 00                  NOP
0074   0051 00                  NOP
0075   0052 00                  NOP
0076   0053 00                  NOP
0077   0054 00                  NOP
0078   0055 00                  NOP
0079   0056 00                  NOP
0080   0057 00                  NOP
0081   0058 00                  NOP
0082   0059 00                  NOP
0083   005A 00                  NOP
0084   005B 00                  NOP
0085   005C 00                  NOP
0086   005D 00                  NOP
0087   005E 00                  NOP
0088   005F 00                  NOP
0089   0060 00                  NOP
0090   0061 00                  NOP
0091   0062 00                  NOP
0092   0063 00                  NOP
0093   0064 00                  NOP
0094   0065 00                  NOP
0095   0066 C3 AB 01            JP L0003

;[Routin]リセット時初期化
0096   0069 31 00 62    L0001:  LD SP,6200H	;スタックポイント=6200H設定
0097   006C AF                  XOR A
0098   006D CD 64 01            CALL L0004  ;ポート初期化?OUT (80H～88H)←00H, OUT(94H)/OUT(98H)/OUT(9CH) 固定値シーケンス設定
0099   0070 3E 7C               LD A,7CH
0100   0072 D3 88               OUT (88H),A ;OUT(88H)←7CH
0101   0074 21 59 01            LD HL,0159H ;
0102   0077 46                  LD B,(HL)
0103   0078 23          L0006:  INC HL
0104   0079 7E                  LD A,(HL)
0105   007A CD 65 10            CALL L0005  ;LCDレジスタ書き込み 015Ah-015Ch	LCD初期設定値⇒アドレス順に(0x38h⇒0x0Ch⇒0x01h)
0106   007D 10 F9               DJNZ L0006
0107   007F 11 13 01            LD DE,0113H
0108   0082 CD D5 0F            CALL L0007  ;LCDデータ出力 0113-0122h「SP-1200  REV B」0124-0133h「Loading Software」
0109   0085 AF                  XOR A
0110   0086 D3 8C               OUT (8CH),A ;LED全点灯 OUT(8CH)←00H
0111   0088 D3 90               OUT (90H),A ;LED全点灯 OUT(90H)←00H
0112   008A 3D                  DEC A
0113   008B 21 00 00            LD HL,0000H
0114   008E 01 00 00            LD BC,0000H
	;[wait]ウェイト処理?
	0115   0091 00          L0008:  NOP         ;暫定で「ld (hl),a」(77h)⇒「nop」(00h)に書き換え
	0116   0092 23                  INC HL
	0117   0093 10 FC               DJNZ L0008
	0118   0095 0D                  DEC C
	0119   0096 20 F9               JR NZ,L0008
0120   0098 D3 8C               OUT (8CH),A ;LED全消灯 OUT(8CH)←FFH
0121   009A D3 90               OUT (90H),A ;LED全消灯 OUT(90H)←FFH
0122   009C 21 5D 01            LD HL,015DH
0123   009F 01 51 07            LD BC,0751H
0124   00A2 ED B3               OTIR          ;Z80 SIO/2 Aチャネルレジスタ初期化 OUT (51H),(015DH～0163H)
0125   00A4 3E 7C               LD A,7CH
0126   00A6 32 79 61            LD (6179H),A  ;(6179H)←7CH
0127   00A9 ED 5E               IM 2					;割り込みモード2で設定→割り込み許可はしていないので使ってない
0128   00AB 3E 60               LD A,60H
0129   00AD 32 7A 61            LD (617AH),A  ;(617AH)←60H
;[Routin]ディスク挿入チェック&リードエラーチェック
0130   00B0 21 FC 00    L0015:  LD HL,00FCH   ;【ループ開始】
0131   00B3 CD 9F 01            CALL L0009    ;(00FCH～0106H)→(617BH～6185H)値をコピー IYレジスタ←617BH
0132   00B6 CD AE 01            CALL L0010    ;(00FCH)=00H→(617BH) addr:01B3H 【FDD】MotorEnable=offにしてL0010を終了
0133   00B9 DB 58               IN A,(58H)    ;SETUP/DISKボタン入力読み取り
0134   00BB E6 60               AND 60H
0135   00BD CA AB 01            JP Z,L0003    ;A&&60H＝1ならリセットする addr:01ABH⇒0000H⇒0069Hへジャンプ
0136   00C0 CB 77               BIT 6,A
0137   00C2 CA FF 06            JP Z,L0011    ;A||40H＝0なら CASSETTE/MIDIDISK OPARATION開始
0138   00C5 CB 6F               BIT 5,A
0139   00C7 CA 7B 10            JP Z,L0012    ;A||20H＝0なら DIAGNOSTICS開始
0140   00CA 21 FD 00            LD HL,00FDH
0141   00CD CD 9F 01            CALL L0009    ;(00FDH～0107H)→(617BH～6185H)値をコピー IYレジスタ←617BH
0142   00D0 CD AE 01            CALL L0010    ;(00FDH)=0AH→(617BH) addr:01B3H 【FDD】MotorEnable=offにしてL0010を終了
0143   00D3 FD 7E 09            LD A,(IY+09H) ;(617BH+09H＝6184H)⇒C3H→A
0144   00D6 FE 80               CP 80H
0145   00D8 28 0F               JR Z,L0013    ;A=80Hなら L0013へジャンプ
0146   00DA FE C2       L0017:  CP 0C2H       ;A=C2HよりZフラグを設定 A=C2⇒Z=1, A!=C2⇒Z=0
0147   00DC 11 47 01            LD DE,0147H
0148   00DF 20 03               JR NZ,L0014
0149   00E1 11 35 01            LD DE,0135H
0150   00E4 CD D5 0F    L0014:  CALL L0007  ;LCDデータ出力  addr:00DFH Z=1⇒0135-0145h「InsertDiskette」 Z=0⇒0147-0157h「Disk Read Error」
0151   00E7 18 C7               JR L0015    ;【ループ戻り】

;[Routin]
0152   00E9 21 08 01    L0013:  LD HL,0108H
0153   00EC CD 9F 01            CALL L0009    ;(0108H～0112H)→(617BH～6185H)値をコピー IYレジスタ←617BH
0154   00EF CD AE 01            CALL L0010    ;I/Oとメモリに設定？
0155   00F2 FD 7E 09            LD A,(IY+09H) ;(617BH+09H＝6184H)⇒A？
0156   00F5 FE 80               CP 80H
0157   00F7 CA 02 00            JP Z,L0016    ;A=80Hなら L0016へジャンプ
0158   00FA 18 DE               JR L0017      ;A!=80Hなら L0017へジャンプ


;0113-0122h「SP-1200  REV B」
;0124-0133h「Loading Software」
;0182   0113 53               
;0183   0114 50               
;0184   0115 2D               
;0185   0116 31 32 30         
;0186   0119 30 20            
;0187   011B 20 52            
;0188   011D 45               
;0189   011E 56               
;0190   011F 20 42            
;0191   0121 20 20            
;0192   0123 90                
;0193   0124 4C              
;0194   0125 6F              
;0195   0126 61              
;0196   0127 64              
;0197   0128 69              
;0198   0129 6E              
;0199   012A 67              
;0200   012B 20 53           
;0201   012D 6F              
;0202   012E 66              
;0203   012F 74              
;0204   0130 77              
;0205   0131 61              
;0206   0132 72              
;0207   0133 65              
;0208   0134 FE

;0136-0145h「InsertDiskette」
;0208   0135 90
;0209   0136 49         
;0210   0137 6E         
;0211   0138 73         
;0212   0139 65         
;0213   013A 72         
;0214   013B 74         
;0215   013C 20 44      
;0216   013E 69         
;0217   013F 73         
;0218   0140 6B         
;0219   0141 65         
;0220   0142 74         
;0221   0143 74         
;0222   0144 65         
;0223   0145 20 FE      

;0147-0157h「Disk Read Error」
;0224   0147 90        
;0225   0148 44        
;0226   0149 69        
;0227   014A 73        
;0228   014B 6B        
;0229   014C 20 52     
;0230   014E 65        
;0231   014F 61        
;0232   0150 64        
;0233   0151 20 45     
;0234   0153 72        
;0235   0154 72        
;0236   0155 6F        
;0237   0156 72        
;0238   0157 20 FE     


;015Ah-015Ch	LCD初期設定値⇒アドレス順に(0x38h⇒0x0Ch⇒0x01h)			
;0239   0159 03    
;0240   015A 38 0C 
;0241   015C 01 

;015Dh-0163h	Addr:00A2 Z80 SIO/2 Aチャネルレジスタ初期化 OUT (51H),(015DH～0163H)
;0241   015D 18     WR0:チャネルリセット
;0241   015E 04 CC  WR4:8ビットシンクキャラクタ/クロック×64/ストップビット長2ビット/パリティDisable
;0242   0160 03 C1  WR3:受信キャラ長8ビット/レシーバEnable
;0243   0162 05 68  WR5:【FDD】HeadSelect=off(DTR=0)/【FDD】Floppy Write Enable=off(RTS=0)/送信キャラ長8ビット/トランスミッタEnable

;[SubRoutin]ポート初期化? OUT (80H～88H)←00H, OUT(94H)/OUT(98H)/OUT(9CH) 固定値シーケンス設定
0245   0164 01 80 08    L0004:  LD BC,0880H
0246   0167 ED 79       L0030:  OUT (C),A    ;OUT (80H～88H)←00H
0247   0169 0C                  INC C
0248   016A 10 FB               DJNZ L0030
0249   016C 01 00 08            LD BC,0800H
0250   016F 21 FD FF    L0019:  LD HL,0FFFDH
0251   0172 3E 02               LD A,02H
0252   0174 CD 95 01            CALL L0031   
0253   0177 3E 00               LD A,00H
0254   0179 CD 95 01            CALL L0031   
0255   017C 21 00 00            LD HL,0000H
0256   017F 3E 03               LD A,03H
0257   0181 CD 95 01            CALL L0031   
0258   0184 3E 04               LD A,04H
0259   0186 CD 95 01            CALL L0031
0260   0189 79                  LD A,C
0261   018A C6 08               ADD A,08H
0262   018C 4F                  LD C,A
0263   018D 10 E0               DJNZ L0019
0264   018F 21 00 00            LD HL,0000H
0265   0192 0E 07               LD C,07H
0266   0194 AF                  XOR A
0267   0195 81          L0031:  ADD A,C
0268   0196 D3 94               OUT (94H),A
0269   0198 7D         (L0026:) LD A,L
0270   0199 D3 98               OUT (98H),A
0271   019B 7C                  LD A,H
0272   019C D3 9C               OUT (9CH),A
0273   019E C9                  RET

;[Routin]開始アドレス 0000Hへジャンプ
0280   01AB C3 00 00    L0003:  JP L0032

;-------------------------------------------------------------------
;[SubRoutin]I/Oとメモリに設定？ 入力:[(IYレジスタ)→Aレジスタ] 戻り:[(IY+09H):80H⇒フラグレジスタ]
;addr:01BBH Aレジスタと0AH,0EH,1EHと比較する
;0302   01DB 0A    
;0303   01DC 0E 1E 
0281   01AE FD 7E 00    L0010:  LD A,(IY+00H) ;A←(617BH)
0282   01B1 E6 FE               AND 0FEH
0283   01B3 28 29               JR Z,L0033    ;Aレジスタ=00H L0033へジャンプ⇒【FDD】MotorEnable=offにしてL0010を終了
0284   01B5 21 DB 01            LD HL,01DBH
0285   01B8 01 03 00            LD BC,0003H
0286   01BB ED B1               CPIR          ;Aレジスタと01DBH-01DDH(0AH,0EH,1EH)と一致する→Zフラグ=1
0287   01BD 28 27               JR Z,L0034    ;Zフラグ=1 L0034へジャンプ
0288   01BF 3E C1               LD A,0C1H
0304   01DE 3D          L0033:  DEC A
0305   01DF 32 5A 61            LD (615AH),A  ;(615AH)←Aレジスタ
0306   01E2 3E 80               LD A,80H
0307   01E4 18 DB               JR L0036

;[Routin]【FDD】MotorEnable=off
0289   01C1 FD 77 09    L0036:  LD (IY+09H),A ;(617BH+09H＝6184H)←Aレジスタ
0290   01C4 3E 05               LD A,05H
0291   01C6 D3 53               OUT (53H),A   ;OUT(53H)←05H Z80 SIO/2 Bチャネルレジスタ WR0:WR5選択 
0292   01C8 3A 7A 61            LD A,(617AH)
0293   01CB D3 53               OUT (53H),A   ;OUT(53H)←(617AH)=60H Z80 SIO/2 Bチャネルレジスタ WR5:【FDD】STEP=off(DTR=0)/MotorEnable=off(RTS=0)/送信キャラ長8ビット/CRC16ビット/トランスミッタDisable
	;[wait]ウェイト処理?
	0294   01CD 11 80 01            LD DE,0180H
	0295   01D0 1B          L0035:  DEC DE
	0296   01D1 7A                  LD A,D
	0297   01D2 B3                  OR E
	0298   01D3 20 FB               JR NZ,L0035
0299   01D5 FD 7E 09            LD A,(IY+09H) ;Aレジスタ←(617BH+09H＝6184H)
0300   01D8 FE 80               CP 80H       ;A=80HよりZフラグを設定 A=80H⇒Z=1, A!=80H⇒Z=0
0301   01DA C9                  RET

;[Routin]
0308   01E6 3E 04       L0034:  LD A,04H
0309   01E8 32 5B 61            LD (615BH),A  ;(615BH)←04H
0310   01EB 3E 0A               LD A,0AH
0311   01ED 32 5C 61            LD (615CH),A  ;(615CH)←0AH
0312   01F0 3E 05               LD A,05H
0313   01F2 D3 53               OUT (53H),A   ;OUT(53H)←05H SIO Bチャネルレジスタ WR0:WR5選択 
0314   01F4 3E 66               LD A,66H
0315   01F6 D3 53               OUT (53H),A   ;OUT(53H)←66H SIO Bチャネルレジスタ WR5:【FDD】STEP=off(DTR=0)/MotorEnable=on(RTS=1)/送信キャラ長8ビット/CRC16ビットトランスミッタDisable
	;[wait]ウェイト処理
	0316   01F8 06 03               LD B,03H
	0317   01FA 10 FE       L0037:  DJNZ L0037
0318   01FC 3E 10               LD A,10H
0319   01FE D3 51               OUT (51H),A     ;OUT(51H)←10H Z80 SIO/2 Aチャネルレジスタ WR0：外部/ステータス割り込みリセット
0320   0200 DB 51               IN A,(51H)      ;A←IN(51H) Z80 SIO/2 Aチャネル RR0レジスタ読み込み
0321   0202 CB 67               BIT 4,A         ;A||10H＝0→【FDD】WriteProtect=off(シンク/ハント割り込み無し)   L0038へジャンプ
0322   0204 28 0A               JR Z,L0038
0323   0206 FD CB 00 56         BIT 2,(IY+00H)  ;(617BH)||04H＝0→ L0038へジャンプ
0324   020A 28 04               JR Z,L0038
0325   020C 3E C3               LD A,0C3H
0326   020E 18 B1               JR L0036        ;A←C3H addr:0289H (617BH+09H＝6184H)←C3H

;[Routin]
0327   0210 FD 36 09 00 L0038:  LD (IY+09H),00H  ;(6184H)←00H
0328   0214 FD 5E 04            LD E,(IY+04H)    ;E←(617FH)
0329   0217 FD 56 05            LD D,(IY+05H)    ;D←(6180H)
0330   021A FD 7E 06            LD A,(IY+06H)    ;A←(6181H)
0331   021D ED 53 66 61         LD (6166H),DE    ;(6166H)←(6180H),(6167H)←(617FH)
0332   0221 32 68 61            LD (6168H),A     ;(6168H)←(6181H)
0333   0224 FD 4E 07            LD C,(IY+07H)    ;C←(6182H)
0334   0227 FD 46 08            LD B,(IY+08H)    ;B←(6183H)
0335   022A ED 43 69 61         LD (6169H),BC    ;(6169H)←(6183H),(616AH)←(6182H)
0336   022E FD 6E 01            LD L,(IY+01H)    ;L←(617CH)
0337   0231 FD 66 02            LD H,(IY+02H)    ;H←(617DH)
0338   0234 FD 7E 03            LD A,(IY+03H)    ;A←(617EH)
0339   0237 32 77 61            LD (6177H),A     ;(6177H)←(617EH)
0340   023A A7                  AND A
0341   023B 28 26               JR Z,L0039       ;Aレジスタ=00H L0039へジャンプ
0342   023D CB 85               RES 0,L          ;Lレジスタ 0bit←0
0343   023F CB 83               RES 0,E          ;Eレジスタ 0bit←0
0344   0241 CB 81               RES 0,C          ;Cレジスタ 0bit←0
0345   0243 ED 53 66 61         LD (6166H),DE    ;(6166H)←D←(6180H), (6167H)←E←(617FH)&&FEH
0346   0247 ED 43 69 61         LD (6169H),BC    ;(6169H)←B←(6183H), (616AH)←C←(6182H)&&FEH
0347   024B E6 07               AND 07H
0348   024D 5F                  LD E,A           ;E←A←(617EH)
0349   024E 16 FC               LD D,0FCH
0350   0250 01 80 08            LD BC,0880H
	;繰り返し処理
	0351   0253 ED 59       L0040:  OUT (C),E    ;OUT(80H～88H)←Eレジスタ
	0352   0255 7A                  LD A,D
	0353   0256 C6 08               ADD A,08H
	0354   0258 57                  LD D,A
	0355   0259 D3 94               OUT (94H),A  ;OUT(94H)←Z80 レジスタFile 04H,0CH,14H,1CH,24H,2CH,34H,3CH,44H
	0356   025B AF                  XOR A
	0357   025C D3 98               OUT (98H),A  ;OUT(98H)←Z80 uControler Lowバイト00H
	0358   025E D3 9C               OUT (9CH),A  ;OUT(9CH)←Z80 uControler Highバイト00H
	0359   0260 0C                  INC C
	0360   0261 10 F0               DJNZ L0040
0361   0263 22 75 61    L0039:  LD (6175H),HL  ;(6175H)←HL←(617DH)(617CH)
0362   0266 FD 7E 0A            LD A,(IY+0AH)  ;A←(6185H)
0363   0269 A7                  AND A
0364   026A 1F                  RRA            ;A+Cフラグ 右1bitシフト
0365   026B 32 5D 61            LD (615DH),A   ;(615DH)←A
0366   026E 5F                  LD E,A
0367   026F 1F                  RRA            ;A+Cフラグ 右1bitシフト
0368   0270 E6 80               AND 80H
0369   0272 32 5E 61            LD (615EH),A   ;A=80H or 00H
0370   0275 CD DB 06            CALL L0041      ;SIO設定 【FDD】HeadSelectを設定
0371   0278 EB                  EX DE,HL        ;DE←HL,HL←DE
0372   0279 3A 5A 61            LD A,(615AH)
0373   027C CB 7F               BIT 7,A
0374   027E 20 19               JR NZ,L0042     ;(615AH)||80H = 80H ⇒【FDD】Track00チェック(L0042)へジャンプ
0375   0280 95                  SUB L           ;A-L⇒A 
0376   0281 CA 07 03            JP Z,L0043      ;A=00H ⇒L0043へジャンプ
;[Routin]Track00移動ルーチン開始
0377   0284 67          L0050:  LD H,A
0378   0285 7D                  LD A,L
0379   0286 A7                  AND A
0380   0287 28 10               JR Z,L0042      ;A=00H ⇒【FDD】Track00チェック(L0042)へジャンプ
0381   0289 32 5A 61            LD (615AH),A
0382   028C 7C                  LD A,H
0383   028D 26 08               LD H,08H
0384   028F CB 7F               BIT 7,A
0385   0291 28 18               JR Z,L0044   ;H=08H【FDD】Direction on⇒アウター方向設定 へジャンプ
0386   0293 26 00               LD H,00H
0387   0295 ED 44               NEG          
0388   0297 18 12               JR L0044     ;H=00H【FDD】Direction off⇒インナー方向設定 へジャンプ

;[Routin]【FDD】Track00チェック　⇒Track00ならL0045へジャンプ
0389   0299 AF          L0042:  XOR A        ;A←00H
0390   029A 32 5A 61            LD (615AH),A ;(615AH)←00H
0391   029D 26 08               LD H,08H
0392   029F 3E 10               LD A,10H
0393   02A1 D3 53               OUT (53H),A  ;OUT(53H)←10H SIO Bチャネル WR0:外部/ステータス割り込みリセット
0394   02A3 DB 53               IN A,(53H)   ;A←IN(53H) SIO Bチャネル RR0レジスタ読み込み
0395   02A5 CB 6F               BIT 5,A      ;【FDD】Track00=off(CTS割り込み無し)⇒Track00である L0045へジャンプ⇒STEPを進めない
0396   02A7 20 21               JR NZ,L0045
0397   02A9 3E 5A               LD A,5AH
;[Routin]【FDD】Direction on/off設定
0398   02AB 3D          L0044:  DEC A
0399   02AC 32 60 61            LD (6160H),A
0400   02AF 3A 79 61            LD A,(6179H)
0401   02B2 E6 F7               AND 0F7H
0402   02B4 B4                  OR H
0403   02B5 D3 88               OUT (88H),A  ;OUT(88H)　bit:4【FDD】Direction on/off
0404   02B7 32 79 61            LD (6179H),A
;[Routin]【FDD】STEP Direction設定に向けてTrackをTrack00に位置するまで1Trackづつ移動する
0405   02BA 3E 05       L0048:  LD A,05H
0406   02BC D3 53               OUT (53H),A  ;OUT(53H)←05H SIO Bチャネル WR0:WR5選択
0407   02BE 3E E6               LD A,E6H
0408   02C0 D3 53               OUT (53H),A  ;OUT(53H)←E6H SIO Bチャネル WR5:【FDD】STEP=on(DTR=1)/MotorEnable=on(RTS=1)/送信キャラ長8ビット/CRC16ビットトランスミッタDisable
0409   02C2 3E 05               LD A,05H
0410   02C4 D3 53               OUT (53H),A  ;OUT(53H)←05H SIO Bチャネル WR0:WR5選択
0411   02C6 3E 66               LD A,66H
0412   02C8 D3 53               OUT (53H),A  ;OUT(53H)←66H SIO Bチャネル WR5:【FDD】STEP=off(DTR=0)/MotorEnable=on(RTS=1)/送信キャラ長8ビット/CRC16ビットトランスミッタDisable
	;[wait]ウェイト処理
	0413   02CA 11 80 01    L0045:  LD DE,0180H
	0414   02CD 1B          L0046:  DEC DE
	0415   02CE 7A                  LD A,D
	0416   02CF B3                  OR E
	0417   02D0 20 FB               JR NZ,L0046
0418   02D2 3A 60 61            LD A,(6160H)
0419   02D5 3D                  DEC A
0420   02D6 FA ED 02            JP M,L0047   ;
0421   02D9 32 60 61            LD (6160H),A
0422   02DC 3A 79 61            LD A,(6179H)
0423   02DF CB 5F               BIT 3,A
0424   02E1 28 D7               JR Z,L0048   ;
0425   02E3 3E 10               LD A,10H
0426   02E5 D3 53               OUT (53H),A  ;OUT(53H)←10H SIO Bチャネル WR0:外部/ステータス割り込みリセット
0427   02E7 DB 53               IN A,(53H)   ;A←IN(53H) SIO Bチャネル RR0レジスタ読み込み
0428   02E9 CB 6F               BIT 5,A      ;【FDD】Track00=on(CTS割り込み有) Track00では無いなら L0048へジャンプ
0429   02EB 28 CD               JR Z,L0048
;[Routin]
0430   02ED 3A 5D 61    L0047:  LD A,(615DH)
0431   02F0 6F                  LD L,A
0432   02F1 3A 5A 61            LD A,(615AH)
0433   02F4 95                  SUB L
0434   02F5 28 02               JR Z,L0049   ;A-L=A ⇒00Hなら L0049へジャンプ
0435   02F7 18 8B               JR L0050     ;A-L=A ⇒00H以外なら Track00移動ルーチン開始(L0050へジャンプ)

;[Routin]
0436   02F9 FD CB 00 56 L0049:  BIT 2,(IY+00H)
0437   02FD 28 08               JR Z,L0043      ;(617BH)||04H=04H ⇒L0043へジャンプ
	;[wait]ウェイト処理
	0438   02FF 11 83 07            LD DE,0783H
	0439   0302 1B          L0051:  DEC DE
	0440   0303 7A                  LD A,D
	0441   0304 B3                  OR E
	0442   0305 20 FB               JR NZ,L0051
0443   0307 11 9C AD    L0043:  LD DE,AD9CH
0444   030A 1B          L0053:  DEC DE
0445   030B 7A                  LD A,D
0446   030C B3                  OR E
0447   030D 20 05               JR NZ,L0052
0448   030F 3E C2               LD A,C2H
0449   0311 C3 C1 01            JP L0036

;[Routin]
0450   0314 3E 10       L0052:  LD A,10H
0451   0316 D3 51               OUT (51H),A  ;OUT(51H)←10H SIO Aチャネル WR0:外部/ステータス割り込みリセット
0452   0318 DB 51               IN A,(51H)   ;A←IN(51H) SIO Aチャネル RR0レジスタ読み込み
0453   031A CB 5F               BIT 3,A      ;【FDD】Ready=on(DCD割り込み有) L0053へジャンプ
0454   031C 28 EC               JR Z,L0053
0455   031E 21 5F 03            LD HL,035FH
0456   0321 FD CB 00 66         BIT 4,(IY+00H)
0457   0325 28 09               JR Z,L0054
0458   0327 FD CB 09 6E         BIT 5,(IY+09H)
0459   032B 20 03               JR NZ,L0054
0460   032D 21 81 05            LD HL,0581H
	;[Routin]ウェイト処理&分岐処理?
	0461   0330 11 71 45    L0054:  LD DE,4571H
	0462   0333 1B                  DEC DE
	0463   0334 7A                  LD A,D
	0464   0335 B3                  OR E
	0465   0336 20 05               JR NZ,L0055
0466   0338 3E C2               LD A,0C2H
0467   033A C3 C1 01            JP L0036

;[Routin]
0468   033D 3E 10       L0055:  LD A,10H
0469   033F D3 51               OUT (51H),A  ;OUT(51H)←10H SIO Aチャネル WR0:外部/ステータス割り込みリセット
0470   0341 DB 51               IN A,(51H)   ;A←IN(51H) SIO Aチャネル RR0レジスタ読み込み
0471   0343 CB 6F               BIT 5,A      ;【FDD】Index=off(CTS割り込み無し) L0054へジャンプ
0472   0345 20 E9               JR NZ,L0054
0473   0347 11 71 45    L0057:  LD DE,4571H
0474   034A 1B                  DEC DE
0475   034B 7A                  LD A,D
0476   034C B3                  OR E
0477   034D 20 05               JR NZ,L0056
0478   034F 3E C2               LD A,0C2H
0479   0351 C3 C1 01            JP L0036

;[Routin]
0480   0354 3E 10       L0056:  LD A,10H
0481   0356 D3 51               OUT (51H),A  ;OUT(51H)←10H SIO Aチャネル WR0:外部/ステータス割り込みリセット
0482   0358 DB 51               IN A,(51H)   ;A←IN(51H) SIO Aチャネル RR0レジスタ読み込み
0483   035A CB 6F               BIT 5,A      ;【FDD】Index=on(CTS割り込み有) L0057へジャンプ
0484   035C 28 E9               JR Z,L0057
0485   035E E9                  JP (HL)
0486   035F DB 52               IN A,(52H)   ;A←IN(52H) SIO Bチャネル 1バイト受信
0487   0361 DB 52               IN A,(52H)   ;A←IN(52H) SIO Bチャネル 1バイト受信
0488   0363 DB 52               IN A,(52H)   ;A←IN(52H) SIO Bチャネル 1バイト受信
0489   0365 DB 52               IN A,(52H)   ;A←IN(52H) SIO Bチャネル 1バイト受信
0490   0367 3E 43               LD A,43H
0491   0369 D3 53               OUT (53H),A  ;OUT(53H)←43H SIO Bチャネル WR0:WR3選択/受信CRCチェッカリセット
0492   036B 3E D9               LD A,0D9H
0493   036D D3 53               OUT (53H),A  ;OUT(53H)←D9H SIO Bチャネル WR3:ハンドモード入る/受信キャラ長8ビット/レシーバEnable/受信CRCチェッカEnable
0494   036F 11 14 05            LD DE,0514H
0495   0372 DB 53       L0059:  IN A,(53H)   ;A←IN(53H)←SIO Bチャネル RR0レジスタ読み込み
0496   0374 E6 01               AND 01H      ;受信キャラクタ・アベイラブル=ON L0058へジャンプ
0497   0376 20 0A               JR NZ,L0058
0498   0378 1B                  DEC DE
0499   0379 7A                  LD A,D
0500   037A B3                  OR E
0501   037B 20 F5               JR NZ,L0059
0502   037D 3E C4               LD A,0C4H
0503   037F C3 C1 01            JP L0036

;[Routin]
0504   0382 21 62 61    L0058:  LD HL,6162H
0505   0385 01 52 04            LD BC,0452H
0506   0388 ED A2               INI          ;(6162H)←IN(52H) HL++,B--
	0507   038A DB 53       L0060:  IN A,(53H)   ;A←IN(53H) SIO Bチャネル RR0レジスタ読み込み
	0508   038C E6 01               AND 01H      ;受信キャラクタ・アベイラブル=ON L0060へジャンプ
	0509   038E 28 FA               JR Z,L0060
	0510   0390 ED A2               INI          ;(6163H-6165H)←IN(52H) HL++,B--
	0511   0392 20 F6               JR NZ,L0060  

	0512   0394 DB 53       L0061:  IN A,(53H)   ;A←IN(53H) SIO Bチャネル RR0レジスタ読み込み
	0513   0396 CB 47               BIT 0,A      ;受信キャラクタ・アベイラブル=ON L0061へジャンプ
	0514   0398 28 FA               JR Z,L0061
0515   039A 3E 01               LD A,01H
0516   039C D3 53               OUT (53H),A  ;OUT(53H)←01H SIO Bチャネル WR0:WR1選択
0517   039E DB 53               IN A,(53H)   ;A←IN(53H) SIO Bチャネル RR1レジスタ読み込み
0518   03A0 CB 77               BIT 6,A      ;CRCエラー無し L0062へジャンプ
0519   03A2 C2 90 04            JP NZ,L0062
0520   03A5 3A 62 61            LD A,(6162H)
0521   03A8 67                  LD H,A
0522   03A9 3A 5E 61            LD A,(615EH)
0523   03AC 17                  RLA
0524   03AD 3A 5D 61            LD A,(615DH)
0525   03B0 17                  RLA
0526   03B1 BC                  CP H
0527   03B2 C2 90 04            JP NZ,L0062
0528   03B5 FD CB 00 56         BIT 2,(IY+00H)
0529   03B9 C2 EE 05            JP NZ,L0063
0530   03BC 3E 03       L0095:  LD A,03H
0531   03BE D3 53               OUT (53H),A  ;OUT(53H)←01H SIO Bチャネル WR0:WR3選択
0532   03C0 3E D9               LD A,0D9H
0533   03C2 D3 53               OUT (53H),A  ;OUT(53H)←01H SIO Bチャネル WR3:ハンドモード入る/受信キャラ長8ビット/レシーバEnable/受信CRCチェッカEnable
0534   03C4 DB 52               IN A,(52H)   ;A←IN(52H) SIO Bチャネル 1バイト受信
0535   03C6 DB 52               IN A,(52H)   ;A←IN(52H) SIO Bチャネル 1バイト受信
0536   03C8 DB 52               IN A,(52H)   ;A←IN(52H) SIO Bチャネル 1バイト受信
0537   03CA DB 52               IN A,(52H)   ;A←IN(52H) SIO Bチャネル 1バイト受信
0538   03CC 2A 69 61            LD HL,(6169H)
0539   03CF ED 5B 75 61         LD DE,(6175H)
0540   03D3 3A 77 61            LD A,(6177H)
0541   03D6 A7                  AND A
0542   03D7 28 11               JR Z,L0064
0543   03D9 3E 07               LD A,07H
0544   03DB D3 94               OUT (94H),A  ;OUT(94H)←07H
0545   03DD 7B                  LD A,E
0546   03DE D3 98               OUT (98H),A  ;OUT(98H)←(6176H)
0547   03E0 7A                  LD A,D
0548   03E1 D3 9C               OUT (9CH),A  ;OUT(9CH)←(6175H)
0549   03E3 44                  LD B,H
0550   03E4 4D                  LD C,L
0551   03E5 CB 38               SRL B
0552   03E7 CB 19               RR C
0553   03E9 09                  ADD HL,BC
0554   03EA 01 0E 00    L0064:  LD BC,000EH
0555   03ED FD CB 09 6E         BIT 5,(IY+09H)
0556   03F1 28 03               JR Z,L0065
0557   03F3 21 FF FF            LD HL,0FFFFH
0558   03F6 7C          L0065:  LD A,H
0559   03F7 B5                  OR L
0560   03F8 28 10               JR Z,L0066
	0561   03FA DB 53       L0067:  IN A,(53H)   ;A←IN(53H)←SIO Bチャネル RR0レジスタ読み込み
	0562   03FC E6 01               AND 01H      ;受信キャラクタ・アベイラブル=ON L0067へジャンプ
	0563   03FE 28 FA               JR Z,L0067
0564   0400 DB 52               IN A,(52H)   ;A←IN(52H) SIO Bチャネル 1バイト受信
0565   0402 2B                  DEC HL
0566   0403 10 F1               DJNZ L0065
0567   0405 0D                  DEC C
0568   0406 20 EE               JR NZ,L0065
0569   0408 18 2D               JR L0068

;[Routin]
0570   040A 3A 77 61    L0066:  LD A,(6177H)
0571   040D A7                  AND A
0572   040E C2 3A 04            JP NZ,L0069
0573   0411 2A 66 61            LD HL,(6166H)
	0574   0414 7C          L0071:  LD A,H
	0575   0415 B5                  OR L
	0576   0416 28 12               JR Z,L0070
	0577   0418 DB 53               IN A,(53H)   ;A←IN(53H)←SIO Bチャネル RR0レジスタ読み込み
	0578   041A E6 01               AND 01H      ;受信キャラクタ・アベイラブル=ON L0071へジャンプ
	0579   041C 28 F6               JR Z,L0071
0580   041E DB 52               IN A,(52H)  ;(DE)←IN(52H) SIO Bチャネル 1バイト受信
0581   0420 12                  LD (DE),A
0582   0421 13                  INC DE
0583   0422 2B                  DEC HL
0584   0423 10 EF               DJNZ L0071
0585   0425 0D                  DEC C
0586   0426 20 EC               JR NZ,L0071
0587   0428 18 0D               JR L0068

;[Routin]
	0588   042A DB 53       L0070:  IN A,(53H)   ;A←IN(53H)←SIO Bチャネル RR0レジスタ読み込み
	0589   042C E6 01               AND 01H      ;受信キャラクタ・アベイラブル=ON L0070へジャンプ
	0590   042E 28 FA               JR Z,L0070
0591   0430 DB 52               IN A,(52H)  ;A←IN(52H) SIO Bチャネル 1バイト受信
0592   0432 10 F6               DJNZ L0070
0593   0434 0D                  DEC C
0594   0435 20 F3               JR NZ,L0070
0595   0437 C3 C0 04    L0068:  JP L0072

;[Routin]
0596   043A 2A 66 61    L0069:  LD HL,(6166H)
0597   043D 2B                  DEC HL
0598   043E D5                  PUSH DE
0599   043F EB                  EX DE,HL
0600   0440 21 3F 09            LD HL,093FH
0601   0443 ED 52               SBC HL,DE
0602   0445 EB                  EX DE,HL
0603   0446 30 03               JR NC,L0073
0604   0448 21 3F 09            LD HL,093FH
0605   044B 23          L0073:  INC HL
0606   044C D1                  POP DE
	0607   044D DB 53       L0074:  IN A,(53H)   ;A←IN(53H)←SIO Bチャネル RR0レジスタ読み込み
	0608   044F E6 01               AND 01H      ;受信キャラクタ・アベイラブル=ON L0074へジャンプ
	0609   0451 28 FA               JR Z,L0074
0610   0453 DB 52               IN A,(52H)  ;A←IN(52H)  SIO Bチャネル 1バイト受信
0611   0455 D3 41               OUT (41H),A ;OUT(41H)←IN(52H)  SIO Bチャネル 1バイト受信→サウンドRAMのデータバス？
0612   0457 13                  INC DE
0613   0458 7B                  LD A,E
0614   0459 D3 98               OUT (98H),A ;OUT(98H)←E Z80 uControler Lowバイト
0615   045B 7A                  LD A,D
0616   045C D3 9C               OUT (9CH),A ;OUT(9CH)←D Z80 uControler Highバイト
0617   045E 10 03               DJNZ L0075
0618   0460 0D                  DEC C
0619   0461 28 D4               JR Z,L0068
	0620   0463 DB 53       L0075:  IN A,(53H)   ;A←IN(53H)←SIO Bチャネル RR0レジスタ読み込み
	0621   0465 E6 01               AND 01H      ;受信キャラクタ・アベイラブル=ON L0075へジャンプ
	0622   0467 28 FA               JR Z,L0075
0623   0469 DB 52               IN A,(52H)  ;A←IN(52H)  SIO Bチャネル 1バイト受信
0624   046B D3 41               OUT (41H),A ;OUT(41H)←IN(52H)  SIO Bチャネル 1バイト受信→サウンドRAMのデータバス？
0625   046D 10 03               DJNZ L0076
0626   046F 0D                  DEC C
0627   0470 28 C5               JR Z,L0068
	0628   0472 DB 53       L0076:  IN A,(53H)   ;A←IN(53H)←SIO Bチャネル RR0レジスタ読み込み
	0629   0474 E6 01               AND 01H      ;受信キャラクタ・アベイラブル=ON L0076へジャンプ
	0630   0476 28 FA               JR Z,L0076  ;A←IN(52H)  SIO Bチャネル 1バイト受信
0631   0478 DB 52               IN A,(52H)  ;A←IN(52H)  SIO Bチャネル 1バイト受信
0632   047A D3 40               OUT (40H),A ;OUT(40H)←IN(52H)  SIO Bチャネル 1バイト受信→サウンドRAMのデータバス？
0633   047C 13                  INC DE
0634   047D 7B                  LD A,E
0635   047E D3 98               OUT (98H),A ;OUT(98H)←E Z80 uControler Lowバイト
0636   0480 7A                  LD A,D
0637   0481 D3 9C               OUT (9CH),A ;OUT(9CH)←D Z80 uControler Highバイト
0638   0483 2B                  DEC HL
0639   0484 2B                  DEC HL
0640   0485 10 03               DJNZ L0077
0641   0487 0D                  DEC C
0642   0488 28 AD               JR Z,L0068
0643   048A 7C          L0077:  LD A,H
0644   048B B5                  OR L
0645   048C 28 9C               JR Z,L0070
0646   048E 18 BD               JR L0074

;[Routin]
0647   0490 2A 71 61    L0062:  LD HL,(6171H)
0648   0493 23                  INC HL
0649   0494 22 71 61            LD (6171H),HL
0650   0497 3A 5B 61            LD A,(615BH)
0651   049A 3D                  DEC A
0652   049B 20 05               JR NZ,L0078
0653   049D 3E C5               LD A,0C5H
0654   049F C3 C1 01            JP L0036

;[Routin]
0655   04A2 32 5B 61    L0078:  LD (615BH),A
0656   04A5 FE 03               CP 03H
0657   04A7 20 11               JR NZ,L0079
0658   04A9 2B                  DEC HL
0659   04AA 22 71 61            LD (6171H),HL
0660   04AD 2A 73 61            LD HL,(6173H)
0661   04B0 23                  INC HL
0662   04B1 22 73 61            LD (6173H),HL
0663   04B4 CD DB 06            CALL L0041      ;OUT (53H),(06F0H～06F7H)；OUT (51H),(06F8H～06F9H)　SIO設定
0664   04B7 C3 07 03            JP L0043

;[Routin]
0665   04BA CD DB 06    L0079:  CALL L0041      ;OUT (53H),(06F0H～06F7H)；OUT (51H),(06F8H～06F9H)　SIO設定
0666   04BD C3 99 02            JP L0042        ;【FDD】Track00チェック(L0042)へジャンプ

;[Routin]
	0667   04C0 26 04       L0072:  LD H,04H
	0668   04C2 DB 53       L0080:  IN A,(53H)   ;A←IN(53H)←SIO Bチャネル RR0レジスタ読み込み
	0669   04C4 CB 47               BIT 0,A      ;受信キャラクタ・アベイラブル=ON L0080へジャンプ
	0670   04C6 28 FA               JR Z,L0080
	0671   04C8 DB 52               IN A,(52H)     ;A←IN(52H)  SIO Bチャネル 1バイト受信
	0672   04CA 25                  DEC H
	0673   04CB 20 F5               JR NZ,L0080

	0674   04CD DB 53       L0081:  IN A,(53H)   ;A←IN(53H)←SIO Bチャネル RR0レジスタ読み込み
	0675   04CF CB 47               BIT 0,A      ;受信キャラクタ・アベイラブル=ON L0081へジャンプ
	0676   04D1 28 FA               JR Z,L0081

0677   04D3 3E 01               LD A,01H
0678   04D5 D3 53               OUT (53H),A  ;OUT(53H)←01H SIO Bチャネル WR0:WR1選択
0679   04D7 DB 53               IN A,(53H)   ;A←IN(53H) SIO Bチャネル RR1レジスタ読み込み
0680   04D9 CB 77               BIT 6,A      ;CRCエラー無し L0082へジャンプ
0681   04DB C2 56 05            JP NZ,L0082
0682   04DE 3E 03               LD A,03H
0683   04E0 D3 53               OUT (53H),A  ;OUT(53H)←03H SIO Bチャネル WR0:WR3選択
0684   04E2 3E C0               LD A,0C0H
0685   04E4 D3 53               OUT (53H),A  ;OUT(53H)←C0H SIO Bチャネル WR3:受信キャラ長8ビット/レシーバDisable
0686   04E6 3A 77 61            LD A,(6177H)
0687   04E9 A7                  AND A
0688   04EA 28 05               JR Z,L0083
0689   04EC 21 40 09            LD HL,0940H
0690   04EF 18 03               JR L0084

;[Routin]
0691   04F1 21 00 0E    L0083:  LD HL,0E00H
0692   04F4 ED 4B 69 61 L0084:  LD BC,(6169H)
0693   04F8 A7                  AND A
0694   04F9 ED 42               SBC HL,BC
0695   04FB 44                  LD B,H
0696   04FC 4D                  LD C,L
0697   04FD 2A 75 61            LD HL,(6175H)
0698   0500 09                  ADD HL,BC
0699   0501 22 75 61            LD (6175H),HL
0700   0504 2A 66 61            LD HL,(6166H)
0701   0507 3A 68 61            LD A,(6168H)
0702   050A A7                  AND A
0703   050B ED 42               SBC HL,BC
0704   050D 22 66 61            LD (6166H),HL
0705   0510 DE 00               SBC A,00H
0706   0512 32 68 61            LD (6168H),A
0707   0515 38 05               JR C,L0085
0708   0517 B4                  OR H
0709   0518 B5                  OR L
0710   0519 20 01               JR NZ,L0085
0711   051B 37                  SCF
0712   051C 3E 80       L0085:  LD A,80H
0713   051E DA C1 01            JP C,L0036
0714   0521 3E 04               LD A,04H
0715   0523 32 5B 61            LD (615BH),A
0716   0526 3E 0A               LD A,0AH
0717   0528 32 5C 61            LD (615CH),A
0718   052B FD CB 09 AE         RES 5,(IY+09H)
0719   052F 3A 5E 61            LD A,(615EH)
0720   0532 EE 80               XOR 80H
0721   0534 32 5E 61            LD (615EH),A
0722   0537 21 00 00            LD HL,0000H
0723   053A 22 69 61            LD (6169H),HL
0724   053D CD DB 06            CALL L0041      ;OUT (53H),(06F0H～06F7H)；OUT (51H),(06F8H～06F9H)　SIO設定
0725   0540 CB 7F               BIT 7,A
0726   0542 C2 07 03            JP NZ,L0043
0727   0545 3A 5D 61            LD A,(615DH)
0728   0548 3C                  INC A
0729   0549 32 5D 61            LD (615DH),A
0730   054C 32 5A 61            LD (615AH),A
0731   054F 3E 01               LD A,01H
0732   0551 26 00               LD H,00H
0733   0553 C3 AB 02            JP L0044        ;【FDD】Direction on/off設定 へジャンプ

;[Routin]
0734   0556 3A 5C 61    L0082:  LD A,(615CH)
0735   0559 FE 0A               CP 0AH
0736   055B 28 09               JR Z,L0086
0737   055D 2A 6D 61            LD HL,(616DH)
0738   0560 23                  INC HL
0739   0561 22 6D 61            LD (616DH),HL
0740   0564 18 07               JR L0087

;[Routin]
0741   0566 2A 6F 61    L0086:  LD HL,(616FH)
0742   0569 23                  INC HL
0743   056A 22 6F 61            LD (616FH),HL
0744   056D 3D          L0087:  DEC A
0745   056E 28 0C               JR Z,L0088
0746   0570 32 5C 61            LD (615CH),A
0747   0573 CD DB 06    L0108:  CALL L0041      ;OUT (53H),(06F0H～06F7H)；OUT (51H),(06F8H～06F9H)　SIO設定
0748   0576 21 5F 03            LD HL,035FH
0749   0579 C3 30 03            JP L0054

;[Routin]
0750   057C 3E C6       L0088:  LD A,0C6H
0751   057E C3 C1 01            JP L0036

;[Routin]
0752   0581 3E 05               LD A,05H
0753   0583 D3 51               OUT (51H),A
0754   0585 3A 5E 61            LD A,(615EH)
0755   0588 F6 6A               OR 6AH
0756   058A D3 51               OUT (51H),A
0757   058C 21 9B 00            LD HL,009BH
	0758   058F 2B          L0089:  DEC HL
	0759   0590 7C                  LD A,H
	0760   0591 B5                  OR L
	0761   0592 20 FB               JR NZ,L0089
0762   0594 D3 52               OUT (52H),A
0763   0596 3E 05               LD A,05H
0764   0598 D3 53               OUT (53H),A
0765   059A 3E 6E               LD A,6EH
0766   059C D3 53               OUT (53H),A
	0767   059E 21 FA 06            LD HL,06FAH
	0768   05A1 01 52 05            LD BC,0552H
	0769   05A4 DB 53       L0090:  IN A,(53H)
	0770   05A6 CB 57               BIT 2,A
	0771   05A8 28 FA               JR Z,L0090
	0772   05AA ED A3               OUTI
	0773   05AC 20 F6               JR NZ,L0090

	0774   05AE DB 53       L0091:  IN A,(53H)
	0775   05B0 CB 57               BIT 2,A
	0776   05B2 28 FA               JR Z,L0091
0777   05B4 3E 85               LD A,85H
0778   05B6 D3 53               OUT (53H),A
0779   05B8 3E 66               LD A,66H
0780   05BA F6 6F               OR 6FH
0781   05BC D3 53               OUT (53H),A
0782   05BE 3A 5E 61            LD A,(615EH)
0783   05C1 17                  RLA
0784   05C2 3A 5D 61            LD A,(615DH)
0785   05C5 17                  RLA
0786   05C6 D3 52               OUT (52H),A
0787   05C8 3E D0               LD A,0D0H
0788   05CA D3 53               OUT (53H),A
	0789   05CC DB 53       L0092:  IN A,(53H)
	0790   05CE CB 77               BIT 6,A
	0791   05D0 3E 10               LD A,10H
	0792   05D2 D3 53               OUT (53H),A
	0793   05D4 28 F6               JR Z,L0092
0794   05D6 AF                  XOR A
0795   05D7 D3 52               OUT (52H),A
	0796   05D9 DB 53       L0093:  IN A,(53H)
	0797   05DB CB 57               BIT 2,A
	0798   05DD 28 FA               JR Z,L0093
0799   05DF AF                  XOR A
0800   05E0 D3 52               OUT (52H),A
0801   05E2 3E 05               LD A,05H
0802   05E4 D3 53               OUT (53H),A
0803   05E6 3E 66               LD A,66H
0804   05E8 D3 53               OUT (53H),A
0805   05EA 06 1C               LD B,1CH
	0806   05EC 10 FE       L0094:  DJNZ L0094
0807   05EE FD CB 09 6E L0063:  BIT 5,(IY+09H)
0808   05F2 C2 BC 03            JP NZ,L0095
0809   05F5 3E 05               LD A,05H
0810   05F7 D3 51               OUT (51H),A
0811   05F9 3A 5E 61            LD A,(615EH)
0812   05FC F6 6A               OR 6AH
0813   05FE D3 51               OUT (51H),A
0814   0600 21 4D 00            LD HL,004DH
	0815   0603 2B          L0096:  DEC HL
	0816   0604 7C                  LD A,H
	0817   0605 B5                  OR L
	0818   0606 20 FB               JR NZ,L0096
0819   0608 D3 52               OUT (52H),A
0820   060A 3E 15               LD A,15H
0821   060C D3 53               OUT (53H),A
0822   060E 3E 6E               LD A,6EH
0823   0610 D3 53               OUT (53H),A
	0824   0612 21 FA 06            LD HL,06FAH
	0825   0615 01 52 05            LD BC,0552H
	0826   0618 DB 53       L0097:  IN A,(53H)
	0827   061A CB 57               BIT 2,A
	0828   061C 28 FA               JR Z,L0097
	0829   061E ED A3               OUTI
	0830   0620 20 F6               JR NZ,L0097
0831   0622 2A 75 61            LD HL,(6175H)
0832   0625 01 0E 00            LD BC,000EH
0833   0628 3E 07               LD A,07H
0834   062A D3 94               OUT (94H),A
0835   062C 7D                  LD A,L
0836   062D D3 98               OUT (98H),A
0837   062F 7C                  LD A,H
0838   0630 D3 9C               OUT (9CH),A
0839   0632 3A 77 61            LD A,(6177H)
0840   0635 A7                  AND A
0841   0636 3E 6F               LD A,6FH
0842   0638 F5                  PUSH AF
	0843   0639 DB 53       L0098:  IN A,(53H)
	0844   063B CB 57               BIT 2,A
	0845   063D 28 FA               JR Z,L0098
0846   063F 3E 85               LD A,85H
0847   0641 D3 53               OUT (53H),A
0848   0643 F1                  POP AF
0849   0644 D3 53               OUT (53H),A
0850   0646 28 3D               JR Z,L0099
	0851   0648 DB 53       L0100:  IN A,(53H)
	0852   064A E6 04               AND 04H
	0853   064C 28 FA               JR Z,L0100
0854   064E DB 41               IN A,(41H)
0855   0650 D3 52               OUT (52H),A
0856   0652 23                  INC HL
0857   0653 7D                  LD A,L
0858   0654 D3 98               OUT (98H),A
0859   0656 7C                  LD A,H
0860   0657 D3 9C               OUT (9CH),A
0861   0659 10 03               DJNZ L0101
0862   065B 0D                  DEC C
0863   065C 28 36               JR Z,L0102
0864   065E DB 53       L0101:  IN A,(53H)
0865   0660 E6 04               AND 04H
0866   0662 28 FA               JR Z,L0101
0867   0664 DB 41               IN A,(41H)
0868   0666 D3 52               OUT (52H),A
0869   0668 10 03               DJNZ L0103
0870   066A 0D                  DEC C
0871   066B 28 27               JR Z,L0102
0872   066D DB 53       L0103:  IN A,(53H)
0873   066F E6 04               AND 04H
0874   0671 28 FA               JR Z,L0103
0875   0673 DB 40               IN A,(40H)
0876   0675 D3 52               OUT (52H),A
0877   0677 23                  INC HL
0878   0678 7D                  LD A,L
0879   0679 D3 98               OUT (98H),A
0880   067B 7C                  LD A,H
0881   067C D3 9C               OUT (9CH),A
0882   067E 10 C8               DJNZ L0100
0883   0680 0D                  DEC C
0884   0681 20 C5               JR NZ,L0100
0885   0683 18 0F               JR L0102

;[Routin]
	0886   0685 DB 53       L0099:  IN A,(53H)
	0887   0687 E6 04               AND 04H
	0888   0689 28 FA               JR Z,L0099
	0889   068B 7E                  LD A,(HL)
	0890   068C D3 52               OUT (52H),A
	0891   068E 23                  INC HL
	0892   068F 10 F4               DJNZ L0099
	0893   0691 0D                  DEC C
	0894   0692 20 F1               JR NZ,L0099
0895   0694 3E D0       L0102:  LD A,0D0H
0896   0696 D3 53               OUT (53H),A
	0897   0698 DB 53       L0104:  IN A,(53H)
	0898   069A CB 77               BIT 6,A
	0899   069C 3E 10               LD A,10H
	0900   069E D3 53               OUT (53H),A
	0901   06A0 28 F6               JR Z,L0104
0902   06A2 AF                  XOR A
0903   06A3 D3 52               OUT (52H),A
	0904   06A5 DB 53       L0105:  IN A,(53H)
	0905   06A7 CB 57               BIT 2,A
	0906   06A9 28 FA               JR Z,L0105
0907   06AB AF                  XOR A
0908   06AC D3 52               OUT (52H),A
	0909   06AE DB 53       L0106:  IN A,(53H)
	0910   06B0 CB 57               BIT 2,A
	0911   06B2 28 FA               JR Z,L0106
0912   06B4 3E 05               LD A,05H
0913   06B6 D3 53               OUT (53H),A
0914   06B8 3E 66               LD A,66H
0915   06BA D3 53               OUT (53H),A
	0916   06BC 21 22 00            LD HL,0022H
	0917   06BF 2B          L0107:  DEC HL
	0918   06C0 7C                  LD A,H
	0919   06C1 B5                  OR L
	0920   06C2 20 FB               JR NZ,L0107
0921   06C4 FD CB 09 EE         SET 5,(IY+09H)
0922   06C8 3E 02               LD A,02H
0923   06CA 32 5C 61            LD (615CH),A
0924   06CD 3E 05               LD A,05H
0925   06CF D3 51               OUT (51H),A
0926   06D1 3A 5E 61            LD A,(615EH)
0927   06D4 F6 68               OR 68H
0928   06D6 D3 51               OUT (51H),A
0929   06D8 C3 73 05            JP L0108

;[SubRoutin]OUT (53H),(06F0H～06F7H)；OUT (51H),(06F8H～06F9H)　SIO設定
0930   06DB 21 F0 06    L0041:  LD HL,06F0H
0931   06DE 01 53 08            LD BC,0853H
0932   06E1 ED B3               OTIR          ;OUT (53H),(06F0H～06F7H) Bチャネル レシーバDisable/シンクキャラ(96FAH)
0933   06E3 01 51 02            LD BC,0251H
0934   06E6 3A 5E 61            LD A,(615EH)
0935   06E9 F6 68               OR 68H
0936   06EB ED B3               OTIR          ;OUT (51H),(06F8H～06F9H) AチャネルWR5選択
0937   06ED D3 51               OUT (51H),A   ;OUT (51H),(615EH)||68H AチャネルWR5:トランスミッタEnable
0938   06EF C9                  RET

;addr:06E1H OUT (53H),(06F0H～06F7H)
;0939   06F0 04 10  ;Z80 SIO/2 Bチャネルレジスタ WR0:外部/ステータス割り込みリセット
;0940   06F2 06 FA  ;Z80 SIO/2 Bチャネルレジスタ WR6:シンクキャラビット( 7-0)→FA
;0941   06F4 07 96  ;Z80 SIO/2 Bチャネルレジスタ WR7:シンクキャラビット(15-8)→96
;0942   06F6 03 C0  ;Z80 SIO/2 Bチャネルレジスタ WR3:受信キャラ長8ビット/レシーバDisable

;addr:06EBH OUT (51H),(06F8H～06F9H)
;0944   06F8 10   ;Z80 SIO/2 Aチャネルレジスタ WR0:外部/ステータス割り込みリセット
;0944   06F9 05   ;Z80 SIO/2 Aチャネルレジスタ WR0:WR5選択             


0945   06FA 00                  NOP
0946   06FB 00                  NOP
0947   06FC 00                  NOP
0948   06FD FA 96 

;[Routin]CASSETTE/MIDIDISK OPARATION開始
0948   06FF CD B3 0E    L0011:  CALL L0133
0950   0702 CD D7 0E            CALL L0130
0952   0705 21 76 07            LD HL,0776H
0955   0708 01 51 07            LD BC,0751H
0956   070B ED B3               OTIR          ;OUT (51H),(0776H～077CH)
0957   070D 3E 7F       L0119:  LD A,7FH
0958   070F D3 88               OUT (88H),A
0959   0711 11 16 08            LD DE,0816H
0960   0714 CD D5 0F            CALL L0007   ;LCDデータ出力   0817-0822h「1 = Cassette」0824-082Fh「2 = MidiDisk」
0961   0717 DB 58       L0113:  IN A,(58H)
0962   0719 CB 77               BIT 6,A
0963   071B 28 2F               JR Z,L0112
0964   071D CB 6F               BIT 5,A
0965   071F 20 F6               JR NZ,L0113
0966   0721 11 31 08    L0121:  LD DE,0831H
0967   0724 CD D5 0F            CALL L0007    ;LCDデータ出力  0831-0841h「MidiDisk: 1=Seqs」0843-0852h「2=Snds 3=MakeDsk」
0968   0727 3E 03               LD A,03H
0969   0729 32 D1 68            LD (68D1H),A
0970   072C CD 06 08            CALL L0114
0971   072F DB 58       L0117:  IN A,(58H)
0972   0731 CB 77               BIT 6,A
0973   0733 28 0D               JR Z,L0115
0974   0735 CB 6F               BIT 5,A
0975   0737 28 0E               JR Z,L0116
0976   0739 CB 67               BIT 4,A
0977   073B 20 F2               JR NZ,L0117
0978   073D CD 98 07            CALL L0118
0979   0740 18 CB               JR L0119

;[Routin]
0980   0742 CD 8B 07    L0115:  CALL L0120
0981   0745 18 DA               JR L0121

;[Routin]
0982   0747 CD 7D 07    L0116:  CALL L0122
0983   074A 18 D5               JR L0121

;[Routin]
0984   074C 11 54 08    L0112:  LD DE,0854H
0985   074F CD D5 0F            CALL L0007    ;LCDデータ出力  0854-0864h「Cassette: 1=Seqs」 0866-0875h「2=Snds 3=MakeDsk」
0986   0752 AF                  XOR A
0987   0753 32 D1 68            LD (68D1H),A
0988   0756 CD 06 08            CALL L0114
0989   0759 DB 58       L0125:  IN A,(58H)
0990   075B CB 77               BIT 6,A
0991   075D 28 0D               JR Z,L0123
0992   075F CB 6F               BIT 5,A
0993   0761 28 0E               JR Z,L0124
0994   0763 CB 67               BIT 4,A
0995   0765 20 F2               JR NZ,L0125
0996   0767 CD 98 07            CALL L0118
0997   076A 18 A1               JR L0119
;[Routin]
0998   076C CD 8B 07    L0123:  CALL L0120
0999   076F 18 DB               JR L0112
;[Routin]
1000   0771 CD 7D 07    L0124:  CALL L0122
1001   0774 18 D6               JR L0112

;070BH ;OUT (51H),(0776H～077CH)
;1002   0776 18 04       
;1003   0778 CC 05 68    
;1004   077B 03          
;1005   077C C1          

1006   077D CD D5 07    L0122:  CALL L0128
1007   0780 CD 6D 09            CALL L0129
1008   0783 F5                  PUSH AF
1009   0784 DC D7 0E            CALL C,L0130
1010   0787 F1                  POP AF
1011   0788 C3 A6 07            JP L0131

;[Routin]
1012   078B CD D5 07    L0120:  CALL L0128
1013   078E CD 0F 0B            CALL L0132
1014   0791 F5                  PUSH AF
1015   0792 DC B3 0E            CALL C,L0133
1016   0795 F1                  POP AF
1017   0796 18 0E               JR L0131

;[SubRoutin]
1018   0798 11 B2 08    L0118:  LD DE,08B2H
1019   079B CD D5 0F            CALL L0007    ;LCDデータ出力 08B2-08BFh「Saving SP1200」08C1-08CFh「Seqs and Sounds」
1020   079E CD 58 0F            CALL L0134
1021   07A1 20 03               JR NZ,L0131
1022   07A3 CD 64 0F            CALL L0135
1023   07A6 F5          L0131:  PUSH AF
1024   07A7 CD 06 08            CALL L0114
1025   07AA F1                  POP AF
1026   07AB 21 C1 07            LD HL,07C1H
1027   07AE 87                  ADD A,A
1028   07AF 5F                  LD E,A
1029   07B0 16 00               LD D,00H
1030   07B2 19                  ADD HL,DE
1031   07B3 5E                  LD E,(HL)
1032   07B4 23                  INC HL
1033   07B5 56                  LD D,(HL)
1034   07B6 CD D5 0F            CALL L0007  ;LCDデータ出力 07C1H-07D4Hに格納されたアドレスがレジスタDEに格納されて表示される
1035   07B9 CD E8 07            CALL L0136
1036   07BC 3E 7F               LD A,7FH
1037   07BE D3 88               OUT (88H),A
1038   07C0 C9                  RET

;LCDデータ出力 07C1H-07D4Hに格納されたアドレスがレジスタDEに格納されて表示される
;1039   07C1 D1 08⇒08D1-08DBh「Complete」
;1041   07C3 DC 08⇒08DC-08E5h「Aborted」
;1042   07C5 E6 08⇒08E6-08F6h「Disk Read Error」
;1043   07C7 F7 08⇒08F7-0907h「Wrong File Type」
;1045   07C9 08 09⇒0908-0909h文字クリア？
;1047   07CB 08 09⇒0908-0909h文字クリア？
;1049   07CD 0A 09⇒090A-091Ah「Write Protected」
;1051   07CF 1B 09⇒091B-092Ch「Disk Rd/VerError」
;1053   07D1 2D 09⇒092D-093Eh「NoDisk Connected」
;1055   07D3 3F 09⇒093F-094Fh「Drive Not Ready」

;[SubRoutin]
1057   07D5 FD 21 D1 68 L0128:  LD IY,68D1H
1058   07D9 11 77 08            LD DE,0877H
1059   07DC FD CB 00 4E         BIT 1,(IY+00H)
1060   07E0 28 03               JR Z,L0138
1061   07E2 11 87 08            LD DE,0887H
1062   07E5 CD D5 0F    L0138:  CALL L0007     ;LCDデータ出力 0887-0896h「Insert MidiDisk」
1063   07E8 11 98 08    L0136:  LD DE,0898H
1064   07EB CD D5 0F            CALL L0007     ;LCDデータ出力 0898-08A3h「Press Enter」
1065   07EE 3E 7D               LD A,7DH
1066   07F0 D3 88               OUT (88H),A
1067   07F2 DB 58       L0139:  IN A,(58H)
1068   07F4 CB 7F               BIT 7,A
1069   07F6 20 FA               JR NZ,L0139
1070   07F8 11 A5 08            LD DE,08A5H
1071   07FB CD D5 0F            CALL L0007     ;LCDデータ出力 08A5-08A3h「NO = Abort」
1072   07FE 3E 7E               LD A,7EH
1073   0800 D3 88               OUT (88H),A
1074   0802 FD 7E 00            LD A,(IY+00H)
1075   0805 C9                  RET

;[SubRoutin]
1076   0806 DB 58       L0114:  IN A,(58H)
1077   0808 F6 07               OR 07H
1078   080A 3C                  INC A
1079   080B 20 F9               JR NZ,L0114
1080   080D 21 14 32            LD HL,3214H
1081   0810 2B          L0140:  DEC HL
1082   0811 7C                  LD A,H
1083   0812 B5                  OR L
1084   0813 20 FB               JR NZ,L0140
1085   0815 C9                  RET

;0817-0822h「1 = Cassette」
;0824-082Fh「2 = MidiDisk」
;1086   0816 10
;1086   0817 31         
;1087   0818 20 3D      
;1088   081A 20 43      
;1089   081C 61         
;1090   081D 73         
;1091   081E 73         
;1092   081F 65         
;1093   0820 74         
;1094   0821 74         
;1095   0822 65         
;1096   0823 90                
;1097   0824 32 20 3D          
;1098   0827 20 4D             
;1099   0829 69                
;1100   082A 64                
;1101   082B 69                
;1102   082C 44                
;1103   082D 69                
;1104   082E 73                
;1105   082F 6B                
;1106   0830 FE

;0831-0841h「MidiDisk: 1=Seqs」
;0843-0852h「2=Snds 3=MakeDsk」
;1106   0831 10
;1107   0832 4D                 
;1108   0833 69                 
;1109   0834 64                 
;1110   0835 69                 
;1111   0836 44                 
;1112   0837 69                 
;1113   0838 73                 
;1114   0839 6B                 
;1115   083A 3A 20 31           
;1116   083D 3D                 
;1117   083E 53                 
;1118   083F 65                 
;1119   0840 71                 
;1120   0841 73                 
;1121   0842 90        
;1122   0843 32 3D 53  
;1123   0846 6E        
;1124   0847 64        
;1125   0848 73        
;1126   0849 20 33     
;1127   084B 3D        
;1128   084C 4D        
;1129   084D 61        
;1130   084E 6B        
;1131   084F 65        
;1132   0850 44        
;1133   0851 73        
;1134   0852 6B        
;1135   0853 FE

;0854-0864h「Cassette: 1=Seqs」
;0866-0875h「2=Snds 3=MakeDsk」
;1135   0854 10         
;1136   0855 43         
;1137   0856 61         
;1138   0857 73         
;1139   0858 73         
;1140   0859 65         
;1141   085A 74         
;1142   085B 74         
;1143   085C 65         
;1144   085D 3A 20 31   
;1145   0860 3D         
;1146   0861 53         
;1147   0862 65         
;1148   0863 71         
;1149   0864 73         
;1150   0865 90         
;1151   0866 32 3D 53   
;1152   0869 6E         
;1153   086A 64         
;1154   086B 73         
;1155   086C 20 33      
;1156   086E 3D         
;1157   086F 4D         
;1158   0870 61         
;1159   0871 6B         
;1160   0872 65         
;1161   0873 44         
;1162   0874 73         
;1163   0875 6B         
;1164   0876 FE

;0878-0885h「Start Cassette」
;1164   0877 10
;1165   0878 53      
;1166   0879 74      
;1167   087A 61      
;1168   087B 72      
;1169   087C 74      
;1170   087D 20 43   
;1171   087F 61      
;1172   0880 73      
;1173   0881 73      
;1174   0882 65      
;1175   0883 74      
;1176   0884 74      
;1177   0885 65      
;1178   0886 FE

;0887-0896h「Insert MidiDisk」
;1178   0887 10      
;1179   0888 49      
;1180   0889 6E      
;1181   088A 73      
;1182   088B 65      
;1183   088C 72      
;1184   088D 74      
;1185   088E 20 4D   
;1186   0890 69      
;1187   0891 64      
;1188   0892 69      
;1189   0893 44      
;1190   0894 69      
;1191   0895 73      
;1192   0896 6B      
;1193   0897 FE

;0898-08A3h「Press Enter」
;1193   0898 90      
;1194   0899 50      
;1195   089A 72      
;1196   089B 65      
;1197   089C 73      
;1198   089D 73      
;1199   089E 20 45   
;1200   08A0 6E      
;1201   08A1 74      
;1202   08A2 65      
;1203   08A3 72      
;1204   08A4 FE

;08A5-08A3h「NO = Abort」
;1204   08A5 10        
;1205   08A6 90        
;1206   08A7 4E        
;1207   08A8 4F        
;1208   08A9 20 3D     
;1209   08AB 20 41     
;1210   08AD 62        
;1211   08AE 6F        
;1212   08AF 72        
;1213   08B0 74        
;1214   08B1 FE

;08B2-08BFh「Saving SP1200」
;08C1-08CFh「Seqs and Sounds」
;1214   08B2 10
;1215   08B3 53         
;1216   08B4 61         
;1217   08B5 76         
;1218   08B6 69         
;1219   08B7 6E         
;1220   08B8 67         
;1221   08B9 20 53      
;1222   08BB 50         
;1223   08BC 31 32 30   
;1224   08BF 30         
;1224   08C0  90         
;1225   08C1 53         
;1226   08C2 65         
;1227   08C3 71         
;1228   08C4 73         
;1229   08C5 20 61      
;1230   08C7 6E         
;1231   08C8 64         
;1232   08C9 20 53      
;1233   08CB 6F         
;1234   08CC 75         
;1235   08CD 6E         
;1236   08CE 64         
;1237   08CF 73         
;1238   08D0 FE

;08D1-08DBh「Complete」
;1238   08D1 10     
;1239   08D2 84     
;1240   08D3 43     
;1241   08D4 6F     
;1242   08D5 6D     
;1243   08D6 70     
;1244   08D7 6C     
;1245   08D8 65     
;1246   08D9 74     
;1247   08DA 65     
;1248   08DB FE

;08DC-08E5h「Aborted」
;1248   08DC 10    
;1249   08DD 84    
;1250   08DE 41    
;1251   08DF 62    
;1252   08E0 6F    
;1253   08E1 72    
;1254   08E2 74    
;1255   08E3 65    
;1256   08E4 64    
;1257   08E5 FE

;08E6-08F6h「Disk Read Error」
;1257   08E6 10     
;1258   08E7 44     
;1259   08E8 61     
;1260   08E9 74     
;1261   08EA 61     
;1262   08EB 20 52  
;1263   08ED 65     
;1264   08EE 61     
;1265   08EF 64     
;1266   08F0 20 45  
;1267   08F2 72     
;1268   08F3 72     
;1269   08F4 6F     
;1270   08F5 72     
;1271   08F6 FE

;08F7-0907h「Wrong File Type」
;1271   08F7 10      
;1272   08F8 57     
;1273   08F9 72     
;1274   08FA 6F     
;1275   08FB 6E     
;1276   08FC 67     
;1277   08FD 20 46  
;1278   08FF 69     
;1279   0900 6C     
;1280   0901 65     
;1281   0902 20 54  
;1282   0904 79     
;1283   0905 70     
;1284   0906 65     
;1285   0907 FE

;0908-0909h文字クリア？
;1285   0908 10
;1286   0909 FE

;090A-091Ah「Write Protected」
;1286   090A 10
;1287   090B 57      
;1288   090C 72      
;1289   090D 69      
;1290   090E 74      
;1291   090F 65      
;1292   0910 20 50   
;1293   0912 72      
;1294   0913 6F      
;1295   0914 74      
;1296   0915 65      
;1297   0916 63      
;1298   0917 74      
;1299   0918 65      
;1300   0919 64      
;1301   091A FE

;091B-092Ch「Disk Rd/VerError」
;1301   091B 10       
;1302   091C 44       
;1303   091D 69       
;1304   091E 73       
;1305   091F 6B       
;1306   0920 20 52    
;1307   0922 64       
;1308   0923 2F       
;1309   0924 56       
;1310   0925 65       
;1311   0926 72       
;1312   0927 45       
;1313   0928 72       
;1314   0929 72       
;1315   092A 6F       
;1316   092B 72       
;1317   092C FE

;092D-093Eh「NoDisk Connected」
;1317   092D 10
;1318   092E 4E       
;1319   092F 6F       
;1320   0930 44       
;1321   0931 69       
;1322   0932 73       
;1323   0933 6B       
;1324   0934 20 43    
;1325   0936 6F       
;1326   0937 6E       
;1327   0938 6E       
;1328   0939 65       
;1329   093A 63       
;1330   093B 74       
;1331   093C 65       
;1332   093D 64       
;1333   093E FE       

;093F-094Fh「Drive Not Ready」
;333   093F 10        
;1334   0940 44       
;1335   0941 72       
;1336   0942 69       
;1337   0943 76       
;1338   0944 65       
;1339   0945 20 4E    
;1340   0947 6F       
;1341   0948 74       
;1342   0949 20 52    
;1343   094B 65       
;1344   094C 61       
;1345   094D 64       
;1346   094E 79       
;1347   094F FE

;[Routin]
1347   0950 FD CB 00 4E L0171:  BIT 1,(IY+00H)
1350   0954 C2 38 0D            JP NZ,L0165
1351   0957 C3 E6 0B            JP L0166

;[Routin]
1352   095A FD CB 00 4E L0170:  BIT 1,(IY+00H)
1353   095E C2 2A 0D            JP NZ,L0167
1354   0961 C3 49 0C            JP L0168

;[SubRoutin]
1355   0964 FD CB 00 4E L0181:  BIT 1,(IY+00H)
1356   0968 C2 20 0D            JP NZ,L0169
1357   096B AF                  XOR A
1358   096C C9                  RET

;[SubRoutin]
1359   096D CD 5A 09    L0129:  CALL L0170
1360   0970 A7                  AND A
1361   0971 C0                  RET NZ
1362   0972 21 00 00            LD HL,0000H
1363   0975 11 01 00            LD DE,0001H
1364   0978 06 00               LD B,00H
1365   097A CD 50 09            CALL L0171
1366   097D A7                  AND A
1367   097E C0                  RET NZ
1368   097F 3A 20 69            LD A,(6920H)
1369   0982 FE 18               CP 18H
1370   0984 3E 03               LD A,03H
1371   0986 28 02               JR Z,L0172
1372   0988 BF                  CP A
1373   0989 C9                  RET


;[SubRoutin]
1374   098A 3E FF       L0172:  LD A,0FFH
1375   098C 32 7C 6C            LD (6C7CH),A
1376   098F 21 21 69            LD HL,6921H
1377   0992 11 F0 6B            LD DE,6BF0H
1378   0995 01 FF 00    L0163:  LD BC,00FFH
1379   0998 CD 5B 0A            CALL L0173     ;(6921H～6A20H)→(6BF0H～6CEFH)値をコピー
1380   099B 06 03               LD B,03H
1381   099D C5          L0164:  PUSH BC
1382   099E D5                  PUSH DE
1383   099F 21 00 00            LD HL,0000H
1384   09A2 11 01 00            LD DE,0001H
1385   09A5 06 00               LD B,00H
1386   09A7 CD 50 09            CALL L0171
1387   09AA D1                  POP DE
1388   09AB C1                  POP BC
1389   09AC D8                  RET C
1390   09AD C5                  PUSH BC
1391   09AE 05                  DEC B
1392   09AF 01 00 01            LD BC,0100H
1393   09B2 20 03               JR NZ,L0174
1394   09B4 01 0F 00            LD BC,000FH
1395   09B7 21 20 69    L0174:  LD HL,6920H
1396   09BA CD 5B 0A            CALL L0173     ;(6920H～692FH)→(????H～????H)値をコピー
1397   09BD C1                  POP BC
1398   09BE 10 DD               DJNZ L0164
1399   09C0 21 00 00            LD HL,0000H
1400   09C3 22 D7 68            LD (68D7H),HL
1401   09C6 2A 7A 6C            LD HL,(6C7AH)
1402   09C9 CD DD 0A            CALL L0175
1403   09CC 3E 07               LD A,07H
1404   09CE 32 D6 68            LD (68D6H),A
1405   09D1 7C                  LD A,H
1406   09D2 B5                  OR L
1407   09D3 20 05               JR NZ,L0176
1408   09D5 3E 06               LD A,06H
1409   09D7 32 D6 68            LD (68D6H),A
1410   09DA 22 D9 68    L0176:  LD (68D9H),HL
1411   09DD E5                  PUSH HL
1412   09DE 2A 78 6C            LD HL,(6C78H)
1413   09E1 CD DD 0A            CALL L0175
1414   09E4 D1                  POP DE
1415   09E5 19                  ADD HL,DE
1416   09E6 7C                  LD A,H
1417   09E7 B5                  OR L
1418   09E8 C8                  RET Z
1419   09E9 EB                  EX DE,HL
1420   09EA 21 00 00            LD HL,0000H
1421   09ED 06 00               LD B,00H
1422   09EF DD 21 7D 0A         LD IX,0A7DH
1423   09F3 CD 50 09            CALL L0171
1424   09F6 D8                  RET C
1425   09F7 CD 7D 0A            CALL L0177
1426   09FA F5                  PUSH AF
1427   09FB 21 00 00            LD HL,0000H
1428   09FE 22 74 6C            LD (6C74H),HL
1429   0A01 22 76 6C            LD (6C76H),HL
1430   0A04 DD 21 7E 6C         LD IX,6C7EH
1431   0A08 01 0A 00            LD BC,000AH
1432   0A0B 21 F0 6B            LD HL,6BF0H
1433   0A0E 11 04 00            LD DE,0004H
1434   0A11 3E 20               LD A,20H
1435   0A13 DD CB 01 56 L0180:  BIT 2,(IX+01H)
1436   0A17 20 35               JR NZ,L0178
1437   0A19 36 00               LD (HL),00H
1438   0A1B 23                  INC HL
1439   0A1C 36 00               LD (HL),00H
1440   0A1E 23                  INC HL
1441   0A1F 36 00               LD (HL),00H
1442   0A21 23                  INC HL
1443   0A22 36 00               LD (HL),00H
1444   0A24 DD 36 01 80         LD (IX+01H),80H
1445   0A28 DD 36 00 17         LD (IX+00H),17H
1446   0A2C DD 36 02 00         LD (IX+02H),00H
1447   0A30 DD 36 03 00         LD (IX+03H),00H
1448   0A34 DD 36 04 FD         LD (IX+04H),0FDH
1449   0A38 DD 36 05 FF         LD (IX+05H),0FFH
1450   0A3C DD 36 06 00         LD (IX+06H),00H
1451   0A40 DD 36 07 00         LD (IX+07H),00H
1452   0A44 DD 36 08 FD         LD (IX+08H),0FDH
1453   0A48 DD 36 09 FF         LD (IX+09H),0FFH
1454   0A4C 18 03               JR L0179

;[Routin]
1455   0A4E 23          L0178:  INC HL
1456   0A4F 23                  INC HL
1457   0A50 23                  INC HL
1458   0A51 23          L0179:  INC HL
1459   0A52 DD 09               ADD IX,BC
1460   0A54 3D                  DEC A
1461   0A55 20 BC               JR NZ,L0180
1462   0A57 F1                  POP AF
1463   0A58 C3 64 09            JP L0181

;[SubRoutin]LDIRを実行
1464   0A5B ED B0       L0173:  LDIR
1465   0A5D C9                  RET

;[Routin]
1466   0A5E CD F3 0A            CALL L0182   ;OUT(80H-88H)←(68D6H); OUT(94H)←04H,0CH,14H,1CH,24H,2CH,34H,3CH,44H; OUT(9CH)←00H; OUT(94H)←07H
1467   0A61 06 00               LD B,00H
1468   0A63 18 05               JR L0183

;[Routin]
1469   0A65 C5                  PUSH BC
1470   0A66 CD F3 0A            CALL L0182   ;OUT(80H-88H)←(68D6H); OUT(94H)←04H,0CH,14H,1CH,24H,2CH,34H,3CH,44H; OUT(9CH)←00H; OUT(94H)←07H
1471   0A69 C1                  POP BC
1472   0A6A 21 20 69    L0183:  LD HL,6920H
1473   0A6D 3A DD 68            LD A,(68DDH)
1474   0A70 A7                  AND A
1475   0A71 28 12               JR Z,L0184
1476   0A73 23          L0185:  INC HL
1477   0A74 05                  DEC B
1478   0A75 3D                  DEC A
1479   0A76 20 FB               JR NZ,L0185
1480   0A78 32 DD 68            LD (68DDH),A
1481   0A7B 18 08               JR L0184

;[Routin]
1482   0A7D CD F3 0A    L0177:  CALL L0182   ;OUT(80H-88H)←(68D6H); OUT(94H)←04H,0CH,14H,1CH,24H,2CH,34H,3CH,44H; OUT(9CH)←00H; OUT(94H)←07H
1483   0A80 06 00               LD B,00H
1484   0A82 21 20 69            LD HL,6920H
1485   0A85 ED 5B D7 68 L0184:  LD DE,(68D7H)
1486   0A89 0E 41               LD C,41H
1487   0A8B FD CB 00 6E         BIT 5,(IY+00H)
1488   0A8F 20 23               JR NZ,L0186
1489   0A91 CB 43               BIT 0,E
1490   0A93 20 0B               JR NZ,L0187
1491   0A95 7B          L0190:  LD A,E
1492   0A96 D3 98               OUT (98H),A
1493   0A98 7A                  LD A,D
1494   0A99 D3 9C               OUT (9CH),A
1495   0A9B ED A3               OUTI
1496   0A9D 13                  INC DE
1497   0A9E 28 22               JR Z,L0188
1498   0AA0 7B          L0187:  LD A,E
1499   0AA1 D3 98               OUT (98H),A
1500   0AA3 7A                  LD A,D
1501   0AA4 D3 9C               OUT (9CH),A
1502   0AA6 ED A3               OUTI
1503   0AA8 28 12               JR Z,L0189
1504   0AAA 13          L0191:  INC DE
1505   0AAB 0D                  DEC C
1506   0AAC ED A3               OUTI
1507   0AAE 28 12               JR Z,L0188
1508   0AB0 0C                  INC C
1509   0AB1 C3 95 0A            JP L0190

;[Routin]
1510   0AB4 7B          L0186:  LD A,E
1511   0AB5 D3 98               OUT (98H),A
1512   0AB7 7A                  LD A,D
1513   0AB8 D3 9C               OUT (9CH),A
1514   0ABA 18 EE               JR L0191

;[Routin]
1515   0ABC FD CB 00 EE L0189:  SET 5,(IY+00H)
1516   0AC0 18 04               JR L0192

;[SubRoutin]
1517   0AC2 FD CB 00 AE L0188:  RES 5,(IY+00H)
1518   0AC6 ED 53 D7 68 L0192:  LD (68D7H),DE
1519   0ACA 2A D9 68            LD HL,(68D9H)
1520   0ACD 2B                  DEC HL
1521   0ACE 22 D9 68            LD (68D9H),HL
1522   0AD1 7C                  LD A,H
1523   0AD2 B5                  OR L
1524   0AD3 C0                  RET NZ
1525   0AD4 3E 06               LD A,06H
1526   0AD6 32 D6 68            LD (68D6H),A
1527   0AD9 22 D7 68            LD (68D7H),HL
1528   0ADC C9                  RET


;[SubRoutin]
1529   0ADD 7C          L0175:  LD A,H
1530   0ADE B5                  OR L
1531   0ADF C8                  RET Z
1532   0AE0 2B                  DEC HL
1533   0AE1 6C                  LD L,H
1534   0AE2 26 00               LD H,00H
1535   0AE4 23                  INC HL
1536   0AE5 CB 45               BIT 0,L
1537   0AE7 28 01               JR Z,L0193
1538   0AE9 23                  INC HL
1539   0AEA 7C          L0193:  LD A,H
1540   0AEB 1F                  RRA
1541   0AEC 7D                  LD A,L
1542   0AED 1F                  RRA
1543   0AEE 85                  ADD A,L
1544   0AEF 6F                  LD L,A
1545   0AF0 D0                  RET NC
1546   0AF1 24                  INC H
1547   0AF2 C9                  RET


;[SubRoutin]OUT(80H-88H)←(68D6H); OUT(94H)←04H,0CH,14H,1CH,24H,2CH,34H,3CH,44H; OUT(9CH)←00H; OUT(94H)←07H
1548   0AF3 01 80 08    L0182:  LD BC,0880H
1549   0AF6 26 04               LD H,04H
1550   0AF8 3A D6 68            LD A,(68D6H)
1551   0AFB 6F                  LD L,A
	1552   0AFC ED 69       L0194:  OUT (C),L    ;OUT(80H-88H)←(68D6H)
	1553   0AFE 7C                  LD A,H
	1554   0AFF D3 94               OUT (94H),A  ;OUT(94H)←04H,0CH,14H,1CH,24H,2CH,34H,3CH,44H
	1555   0B01 C6 08               ADD A,08H
	1556   0B03 67                  LD H,A
	1557   0B04 AF                  XOR A
	1558   0B05 D3 9C               OUT (9CH),A  ;OUT(9CH)←00H
	1559   0B07 0C                  INC C
	1560   0B08 10 F2               DJNZ L0194
1561   0B0A 3E 07               LD A,07H
1562   0B0C D3 94               OUT (94H),A    ;OUT(94H)←07H
1563   0B0E C9                  RET

;[Routin]
1564   0B0F CD 5A 09    L0132:  CALL L0170
1565   0B12 A7                  AND A
1566   0B13 C0                  RET NZ
1567   0B14 21 00 00            LD HL,0000H
1568   0B17 11 01 00            LD DE,0001H
1569   0B1A 06 00               LD B,00H
1570   0B1C CD 50 09            CALL L0171
1571   0B1F A7                  AND A
1572   0B20 C0                  RET NZ
1573   0B21 3A 20 69            LD A,(6920H)
1574   0B24 FE 17               CP 17H
1575   0B26 3E 03               LD A,03H
1576   0B28 C2 A7 0B            JP NZ,L0195
1577   0B2B ED 5B 21 69         LD DE,(6921H)
1578   0B2F 2A FE 6E            LD HL,(6EFEH)
1579   0B32 A7                  AND A
1580   0B33 ED 52               SBC HL,DE
1581   0B35 7C                  LD A,H
1582   0B36 32 D6 68            LD (68D6H),A
1583   0B39 2A 21 69            LD HL,(6921H)
1584   0B3C ED 5B 25 69         LD DE,(6925H)
1585   0B40 A7                  AND A
1586   0B41 ED 52               SBC HL,DE
1587   0B43 44                  LD B,H
1588   0B44 4D                  LD C,L
1589   0B45 2A FE 6E            LD HL,(6EFEH)
1590   0B48 A7                  AND A
1591   0B49 ED 42               SBC HL,BC
1592   0B4B 22 02 6F            LD (6F02H),HL
1593   0B4E 23                  INC HL
1594   0B4F 22 DB 68            LD (68DBH),HL
1595   0B52 2A 23 69            LD HL,(6923H)
1596   0B55 22 00 6F            LD (6F00H),HL
1597   0B58 11 04 6F            LD DE,6F04H
1598   0B5B A7                  AND A
1599   0B5C ED 52               SBC HL,DE
1600   0B5E 44                  LD B,H
1601   0B5F 4D                  LD C,L
1602   0B60 21 27 69            LD HL,6927H
1603   0B63 3E F9               LD A,0F9H
1604   0B65 CD D1 0B            CALL L0196
1605   0B68 2A FE 6E            LD HL,(6EFEH)
1606   0B6B ED 5B DB 68         LD DE,(68DBH)
1607   0B6F 23                  INC HL
1608   0B70 A7                  AND A
1609   0B71 ED 52               SBC HL,DE
1610   0B73 09                  ADD HL,BC
1611   0B74 45                  LD B,L
1612   0B75 5C                  LD E,H
1613   0B76 78                  LD A,B
1614   0B77 A7                  AND A
1615   0B78 28 01               JR Z,L0197
1616   0B7A 1C                  INC E
1617   0B7B 16 00       L0197:  LD D,00H
1618   0B7D C5                  PUSH BC
1619   0B7E 21 00 00            LD HL,0000H
1620   0B81 DD 21 C3 0B         LD IX,0BC3H
1621   0B85 CD 50 09            CALL L0171
1622   0B88 C1                  POP BC
1623   0B89 D8                  RET C
1624   0B8A CD C5 0B            CALL L0198
1625   0B8D 3A D6 68            LD A,(68D6H)
1626   0B90 A7                  AND A
1627   0B91 28 11               JR Z,L0199
1628   0B93 4F                  LD C,A
1629   0B94 06 64               LD B,64H
1630   0B96 21 CC 6F            LD HL,6FCCH
1631   0B99 7E          L0201:  LD A,(HL)
1632   0B9A 23                  INC HL
1633   0B9B B6                  OR (HL)
1634   0B9C 28 03               JR Z,L0200
1635   0B9E 7E                  LD A,(HL)
1636   0B9F 81                  ADD A,C
1637   0BA0 77                  LD (HL),A
1638   0BA1 23          L0200:  INC HL
1639   0BA2 10 F5               DJNZ L0201
1640   0BA4 C3 64 09    L0199:  JP L0181

;[SubRoutin]
1641   0BA7 F5          L0195:  PUSH AF
1642   0BA8 CD 64 09            CALL L0181
1643   0BAB F1                  POP AF
1644   0BAC A7                  AND A
1645   0BAD C9                  RET

;[Routin]
1646   0BAE 06 00               LD B,00H
1647   0BB0 21 20 69            LD HL,6920H
1648   0BB3 3A DD 68            LD A,(68DDH)
1649   0BB6 A7                  AND A
1650   0BB7 28 0F               JR Z,L0202
1651   0BB9 23          L0203:  INC HL
1652   0BBA 05                  DEC B
1653   0BBB 3D                  DEC A
1654   0BBC 20 FB               JR NZ,L0203
1655   0BBE 32 DD 68            LD (68DDH),A
1656   0BC1 18 05               JR L0202


;[SubRoutin](6920H-????H)→(&(68D7H)-????)へコピー
1657   0BC3 06 00               LD B,00H
1658   0BC5 21 20 69    L0198:  LD HL,6920H
1659   0BC8 ED 5B D7 68 L0202:  LD DE,(68D7H)
1660   0BCC 78                  LD A,B
1661   0BCD ED 4B D9 68         LD BC,(68D9H)
1662   0BD1 ED A0       L0196:  LDI
1663   0BD3 EA DA 0B            JP PE,L0204
1664   0BD6 ED 5B DB 68         LD DE,(68DBH)
1665   0BDA 3D          L0204:  DEC A
1666   0BDB 20 F4               JR NZ,L0196
1667   0BDD ED 53 D7 68         LD (68D7H),DE
1668   0BE1 ED 43 D9 68         LD (68D9H),BC
1669   0BE5 C9                  RET

;[Routin]
1670   0BE6 C5          L0166:  PUSH BC
1671   0BE7 EB                  EX DE,HL
1672   0BE8 37                  SCF
1673   0BE9 ED 52               SBC HL,DE
1674   0BEB EB                  EX DE,HL
1675   0BEC D8                  RET C
1676   0BED 13                  INC DE
1677   0BEE 7C          L0208:  LD A,H
1678   0BEF B5                  OR L
1679   0BF0 28 0C               JR Z,L0205
1680   0BF2 2B                  DEC HL
1681   0BF3 06 00               LD B,00H
1682   0BF5 E5                  PUSH HL
1683   0BF6 CD 23 0C            CALL L0206
1684   0BF9 E1                  POP HL
1685   0BFA 38 10               JR C,L0207
1686   0BFC 18 F0               JR L0208

;[SubRoutin]
1687   0BFE 1B          L0205:  DEC DE
1688   0BFF 7A                  LD A,D
1689   0C00 E6 7F               AND 7FH
1690   0C02 B3                  OR E
1691   0C03 28 15               JR Z,L0209
1692   0C05 06 00               LD B,00H
1693   0C07 CD 23 0C            CALL L0206
1694   0C0A 30 02               JR NC,L0210
1695   0C0C C1          L0207:  POP BC
1696   0C0D C9                  RET

;[Routin]
1697   0C0E D5          L0210:  PUSH DE
1698   0C0F B7                  OR A
1699   0C10 CB 7A               BIT 7,D
1700   0C12 CC 21 0C            CALL Z,L0211
1701   0C15 D1                  POP DE
1702   0C16 38 F4               JR C,L0207
1703   0C18 18 E4               JR L0205

;[SubRoutin]
1704   0C1A C1          L0209:  POP BC
1705   0C1B CD 23 0C            CALL L0206
1706   0C1E D8                  RET C
1707   0C1F AF                  XOR A
1708   0C20 C9                  RET

;[SubRoutin]
1709   0C21 DD E9       L0211:  JP (IX)
1710   0C23 21 20 69    L0206:  LD HL,6920H
1711   0C26 CD 33 0C    L0213:  CALL L0212
1712   0C29 D8                  RET C
1713   0C2A 77                  LD (HL),A
1714   0C2B 23                  INC HL
1715   0C2C 10 F8               DJNZ L0213
1716   0C2E C9                  RET

;[SubRoutin]
1717   0C2F CD 93 0C    L0215:  CALL L0214
1718   0C32 D8                  RET C
1719   0C33 DB 53       L0212:  IN A,(53H)
1720   0C35 E6 01               AND 01H
1721   0C37 28 F6               JR Z,L0215
1722   0C39 3E 01               LD A,01H
1723   0C3B D3 53               OUT (53H),A
1724   0C3D DB 53               IN A,(53H)
1725   0C3F E6 10               AND 10H
1726   0C41 3E 02               LD A,02H
1727   0C43 37                  SCF
1728   0C44 C0                  RET NZ
1729   0C45 DB 52               IN A,(52H)
1730   0C47 A7                  AND A
1731   0C48 C9                  RET

;[SubRoutin]
1732   0C49 11 9C 0C    L0168:  LD DE,0C9CH
1733   0C4C CD D5 0F            CALL L0007     ;LCDデータ出力 0C9D-0CACh「Waiting for Sync」
1734   0C4F CD 68 0C            CALL L0216
1735   0C52 CD 93 0C    L0217:  CALL L0214
1736   0C55 D8                  RET C
1737   0C56 3E 10               LD A,10H
1738   0C58 D3 53               OUT (53H),A
1739   0C5A DB 53               IN A,(53H)
1740   0C5C E6 10               AND 10H
1741   0C5E 20 F2               JR NZ,L0217
1742   0C60 11 AE 0C            LD DE,0CAEH
1743   0C63 CD D5 0F            CALL L0007     ;LCDデータ出力 0CAE-0CDEh「Reading the Tape」
1744   0C66 AF                  XOR A
1745   0C67 C9                  RET

;[SubRoutin]
1746   0C68 3E 03       L0216:  LD A,03H
1747   0C6A D3 49               OUT (49H),A
1748   0C6C D3 4A               OUT (4AH),A
1749   0C6E 3E 07               LD A,07H
1750   0C70 D3 4A               OUT (4AH),A
1751   0C72 3E 2B               LD A,2BH
1752   0C74 D3 4A               OUT (4AH),A
1753   0C76 21 89 0C            LD HL,0C89H
1754   0C79 01 53 0A            LD BC,0A53H
1755   0C7C ED B3               OTIR          ;OUT (53H),(0C89H～0C92H)
1756   0C7E 06 04               LD B,04H
1757   0C80 DB 52       L0218:  IN A,(52H)
1758   0C82 10 FC               DJNZ L0218
1759   0C84 3E 30               LD A,30H
1760   0C86 D3 53               OUT (53H),A
1761   0C88 C9                  RET

;addr:0C7C OUT (53H),(0C89H～0C92H)
;1762   0C89 04                  
;1763   0C8A 11 06 9D            
;1764   0C8D 07                  
;1765   0C8E 65                  
;1766   0C8F 05                  
;1767   0C90 E0                  
;1768   0C91 03                  
;1769   0C92 D1                  

;[SubRoutin]
1770   0C93 DB 58       L0214:  IN A,(58H)
1771   0C95 E6 20               AND 20H
1772   0C97 C0                  RET NZ
1773   0C98 3E 01               LD A,01H
1774   0C9A 37                  SCF
1775   0C9B C9                  RET

;0C9D-0CACh「Waiting for Sync」
;1776   0C9C 80          
;1777   0C9D 57          
;1778   0C9E 61          
;1779   0C9F 69          
;1780   0CA0 74          
;1781   0CA1 69          
;1782   0CA2 6E          
;1783   0CA3 67          
;1784   0CA4 20 66       
;1785   0CA6 6F          
;1786   0CA7 72          
;1787   0CA8 20 53       
;1788   0CAA 79          
;1789   0CAB 6E          
;1790   0CAC 63          
;1791   0CAD FE 

;0CAE-0CDEh「Reading the Tape」
;1791   0CAE 80         
;1792   0CAF 52         
;1793   0CB0 65         
;1794   0CB1 61         
;1795   0CB2 64         
;1796   0CB3 69         
;1797   0CB4 6E         
;1798   0CB5 67         
;1799   0CB6 20 74      
;1800   0CB8 68         
;1801   0CB9 65         
;1802   0CBA 20 54      
;1803   0CBC 61         
;1804   0CBD 70         
;1805   0CBE 65         
;1806   0CBF FE

;[Routin]
1806   0CC0 CD CD 0C            CALL    0CCDH    
1807   0CC3 F5                  PUSH    AF
1808   0CC4 CD CD 0C            CALL L0224
1809   0CC7 FE F7               CP 0F7H
1810   0CC9 20 F9               JR NZ,L0225
1811   0CCB F1                  POP AF
1812   0CCC C9                  RET
1813   0CCD CD 48 0E    L0224:  CALL L0226
1814   0CD0 D8                  RET C
1815   0CD1 CD D6 0C            CALL L0227
1816   0CD4 18 F7               JR L0224

;[SubRoutin]
1817   0CD6 DB 58       L0227:  IN A,(58H)
1818   0CD8 E6 20               AND 20H
1819   0CDA C0                  RET NZ
1820   0CDB 3E 01               LD A,01H
1821   0CDD F5          L0232:  PUSH AF
1822   0CDE CD 20 0D            CALL L0169
1823   0CE1 F1                  POP AF
1824   0CE2 37                  SCF
1825   0CE3 DD F9               LD SP,IX
1826   0CE5 C9                  RET

;[SubRoutin]
1827   0CE6 3E 00       L0238:  LD A,00H
1828   0CE8 CD 22 0D            CALL L0228
1829   0CEB CD 01 0D            CALL L0229
1830   0CEE CD C3 0C            CALL L0230
1831   0CF1 4F                  LD C,A
1832   0CF2 E6 BC               AND 0BCH
1833   0CF4 20 1C               JR NZ,L0231
1834   0CF6 CB 71               BIT 6,C
1835   0CF8 28 18               JR Z,L0231
1836   0CFA CB 41               BIT 0,C
1837   0CFC 3E 09               LD A,09H
1838   0CFE 28 DD               JR Z,L0232
1839   0D00 C9                  RET


;[Routin]
1840   0D01 01 00 30    L0229:  LD BC,3000H
1841   0D04 C5          L0233:  PUSH BC
1842   0D05 CD 48 0E            CALL L0226
1843   0D08 C1                  POP BC
1844   0D09 D8                  RET C
1845   0D0A CD D6 0C            CALL L0227
1846   0D0D 0B                  DEC BC
1847   0D0E 78                  LD A,B
1848   0D0F B1                  OR C
1849   0D10 20 F2       L0222:  JR NZ,L0233
1850   0D12 3E 08       L0231:  LD A,08H
1851   0D14 18 C7               JR L0232

;[Routin]
1852   0D16 CD C0 0C    L0249:  CALL L0234
1853   0D19 FE 20               CP 20H
1854   0D1B C8                  RET Z
1855   0D1C 3E 02               LD A,02H
1856   0D1E 18 BD               JR L0232

;[SubRoutin]
1857   0D20 3E 01       L0169:  LD A,01H
1858   0D22 CD 26 0E    L0228:  CALL L0235
1859   0D25 CD 3B 0E            CALL L0236
1860   0D28 AF                  XOR A
1861   0D29 C9                  RET

;[SubRoutin]
1862   0D2A CD 09 0E    L0167:  CALL L0237
1863   0D2D CD E6 0C            CALL L0238
1864   0D30 11 B3 0D            LD DE,0DB3H
1865   0D33 CD D5 0F            CALL L0007     ;LCDデータ出力 0DB4-0DC3h「Reading the Disk」0DC5-0DCEh「NO = Abort」
1866   0D36 AF                  XOR A
1867   0D37 C9                  RET

;[SubRoutin]
1868   0D38 CD 0F 0E    L0165:  CALL L0239
1869   0D3B EB                  EX DE,HL
1870   0D3C 22 EF 68            LD (68EFH),HL
1871   0D3F CB BC               RES 7,H
1872   0D41 37                  SCF
1873   0D42 ED 52               SBC HL,DE
1874   0D44 23                  INC HL
1875   0D45 D8                  RET C
1876   0D46 EB                  EX DE,HL
1877   0D47 CD AA 0D            CALL L0240
1878   0D4A EB                  EX DE,HL
1879   0D4B CD 74 0D            CALL L0241
1880   0D4E E5                  PUSH HL
1881   0D4F 3E 04               LD A,04H
1882   0D51 CD 8D 0D            CALL L0242
1883   0D54 CD D0 0D            CALL L0243
1884   0D57 CD A7 0D            CALL L0244
1885   0D5A CD 1A 0E            CALL L0245
1886   0D5D 20 0D               JR NZ,L0246
1887   0D5F E1                  POP HL
1888   0D60 7C                  LD A,H
1889   0D61 B5                  OR L
1890   0D62 C8                  RET Z
1891   0D63 CD 74 0D            CALL L0241
1892   0D66 E5                  PUSH HL
1893   0D67 3E 04               LD A,04H
1894   0D69 CD 8D 0D            CALL L0242
1895   0D6C 21 54 0D    L0246:  LD HL,0D54H
1896   0D6F E5                  PUSH HL
1897   0D70 2A ED 68            LD HL,(68EDH)
1898   0D73 E9                  JP (HL)
1899   0D74 11 18 00    L0241:  LD DE,0018H
1900   0D77 B7                  OR A
1901   0D78 ED 52               SBC HL,DE
1902   0D7A 30 05               JR NC,L0247
1903   0D7C 19                  ADD HL,DE
1904   0D7D EB                  EX DE,HL
1905   0D7E 21 00 00            LD HL,0000H
1906   0D81 3A F0 68    L0247:  LD A,(68F0H)
1907   0D84 E6 80               AND 80H
1908   0D86 B2                  OR D
1909   0D87 57                  LD D,A
1910   0D88 ED 53 EF 68         LD (68EFH),DE
1911   0D8C C9                  RET

;[SubRoutin]
1912   0D8D CD 26 0E    L0242:  CALL L0235
1913   0D90 3A F2 68            LD A,(68F2H)
1914   0D93 CD 3D 0E            CALL L0248
1915   0D96 3A F1 68            LD A,(68F1H)
1916   0D99 CD 3D 0E            CALL L0248
1917   0D9C 7B                  LD A,E
1918   0D9D CD 3D 0E            CALL L0248
1919   0DA0 CD 3B 0E            CALL L0236
1920   0DA3 CD 16 0D            CALL L0249
1921   0DA6 C9                  RET

;[SubRoutin]
1922   0DA7 21 01 00    L0244:  LD HL,0001H
1923   0DAA ED 4B F1 68 L0240:  LD BC,(68F1H)
1924   0DAE 09                  ADD HL,BC
1925   0DAF 22 F1 68            LD (68F1H),HL
1926   0DB2 C9                  RET

;0DB4-0DC3h「Reading the Disk」
;0DC5-0DCEh「NO = Abort」
;1927   0DB3 10 
;1927   0DB4 52          
;1928   0DB5 65          
;1929   0DB6 61          
;1930   0DB7 64          
;1931   0DB8 69          
;1932   0DB9 6E          
;1933   0DBA 67          
;1934   0DBB 20 74       
;1935   0DBD 68          
;1936   0DBE 65          
;1937   0DBF 20 44       
;1938   0DC1 69          
;1939   0DC2 73          
;1940   0DC3 6B          
;1941   0DC4 93          
;1942   0DC5 4E          
;1943   0DC6 4F          
;1944   0DC7 20 3D       
;1945   0DC9 20 41       
;1946   0DCB 62          
;1947   0DCC 6F          
;1948   0DCD 72          
;1949   0DCE 74          
;1950   0DCF FE

;[SubRoutin]
1950   0DD0 21 20 69            LD      HL,6920H
1952   0DD3 E5                  PUSH HL
1953   0DD4 3E 05               LD A,05H
1954   0DD6 CD 22 0D            CALL L0228
1955   0DD9 CD FF 0D            CALL L0256
1956   0DDC E1                  POP HL
1957   0DDD 0E 00               LD C,00H
1958   0DDF 06 01       L0259:  LD B,01H
1959   0DE1 CD FF 0D            CALL L0256
1960   0DE4 EB          L0258:  EX DE,HL
1961   0DE5 67                  LD H,A
1962   0DE6 CD FF 0D            CALL L0256
1963   0DE9 6F                  LD L,A
1964   0DEA CB 15               RL L
1965   0DEC C5                  PUSH BC
1966   0DED 29          L0257:  ADD HL,HL
1967   0DEE 10 FD               DJNZ L0257
1968   0DF0 C1                  POP BC
1969   0DF1 EB                  EX DE,HL
1970   0DF2 72                  LD (HL),D
1971   0DF3 23                  INC HL
1972   0DF4 0D                  DEC C
1973   0DF5 CA C3 0C            JP Z,L0230
1974   0DF8 04                  INC B
1975   0DF9 CB 58               BIT 3,B
1976   0DFB 28 E7               JR Z,L0258
1977   0DFD 18 E0               JR L0259
1978   0DFF C5          L0256:  PUSH BC
1979   0E00 D5                  PUSH DE
1980   0E01 E5                  PUSH HL
1981   0E02 CD CD 0C            CALL L0224
1982   0E05 E1          L0252:  POP HL
1983   0E06 D1          L0253:  POP DE
1984   0E07 C1          L0250:  POP BC
1985   0E08 C9                  RET

;[SubRoutin]
1986   0E09 21 00 00    L0237:  LD HL,0000H
1987   0E0C 22 F1 68    L0254:  LD (68F1H),HL
1988   0E0F DD 22 ED 68 L0239:  LD (68EDH),IX
1989   0E13 DD 21 02 00         LD IX,0002H
1990   0E17 DD 39               ADD IX,SP
1991   0E19 C9                  RET

;[SubRoutin]
1992   0E1A 2A EF 68    L0245:  LD HL,(68EFH)
1993   0E1D 2B                  DEC HL
1994   0E1E 7C                  LD A,H
1995   0E1F E6 7F               AND 7FH
1996   0E21 B5                  OR L
1997   0E22 22 EF 68            LD (68EFH),HL
1998   0E25 C9                  RET

;[SubRoutin]
1999   0E26 F5          L0235:  PUSH AF
2000   0E27 3E F0               LD A,0F0H
2001   0E29 CD 3D 0E            CALL L0248
2002   0E2C 3E 18               LD A,18H
2003   0E2E CD 3D 0E            CALL L0248
2004   0E31 3E 01       L0251:  LD A,01H
2005   0E33 CD 3D 0E            CALL L0248
2006   0E36 F1                  POP AF
2007   0E37 CD 3D 0E            CALL L0248
2008   0E3A C9                  RET

;[SubRoutin]
2009   0E3B 3E F7       L0236:  LD A,0F7H
2010   0E3D 4F                  LD C,A
2011   0E3E DB 51               IN A,(51H)
2012   0E40 CB 57               BIT 2,A
2013   0E42 28 FA               JR Z,L0260
2014   0E44 79                  LD A,C
2015   0E45 D3 50               OUT (50H),A
2016   0E47 C9                  RET

;[SubRoutin]
2017   0E48 DB 51       L0226:  IN A,(51H)
2018   0E4A E6 01               AND 01H
2019   0E4C C8                  RET Z
2020   0E4D DB 50               IN A,(50H)
2021   0E4F B7                  OR A
2022   0E50 FA 5F 0E            JP M,L0261
2023   0E53 47          L0263:  LD B,A
2024   0E54 3A 0E 69            LD A,(690EH)
2025   0E57 FE 03               CP 03H
2026   0E59 78                  LD A,B
2027   0E5A 37                  SCF
2028   0E5B C8                  RET Z
2029   0E5C B7                  OR A
2030   0E5D 37                  SCF
2031   0E5E F8                  RET M
2032   0E5F F5          L0261:  PUSH AF
2033   0E60 DD E5               PUSH IX
2034   0E62 FD E5               PUSH IY
2035   0E64 CD 72 0E            CALL L0262
2036   0E67 FD E1               POP IY
2037   0E69 DD E1               POP IX
2038   0E6B F1                  POP AF
2039   0E6C FE F7               CP 0F7H
2040   0E6E 28 E3               JR Z,L0263
2041   0E70 B7                  OR A
2042   0E71 C9                  RET

;[SubRoutin]
2043   0E72 B7          L0262:  OR A
2044   0E73 F2 82 0E            JP P,L0264
2045   0E76 FE F8               CP 0F8H
2046   0E78 C8                  RET Z
2047   0E79 D0                  RET NC
2048   0E7A 32 A9 68            LD (68A9H),A
2049   0E7D AF                  XOR A
2050   0E7E 32 0E 69            LD (690EH),A
2051   0E81 C9                  RET

;[SubRoutin]
2052   0E82 47          L0264:  LD B,A
2053   0E83 3A A9 68            LD A,(68A9H)
2054   0E86 4F                  LD C,A
2055   0E87 FE F0               CP 0F0H
2056   0E89 C0                  RET NZ
2057   0E8A 3A 0E 69            LD A,(690EH)
2058   0E8D FE 02               CP 02H
2059   0E8F D0                  RET NC
2060   0E90 CD 9F 0E            CALL L0265
2061   0E93 EB                  EX DE,HL
2062   0E94 36 02               LD (HL),02H
2063   0E96 FE 01               CP 01H
2064   0E98 C0                  RET NZ
2065   0E99 78                  LD A,B
2066   0E9A FE 18               CP 18H
2067   0E9C C0                  RET NZ
2068   0E9D 34                  INC (HL)
2069   0E9E C9                  RET

;[SubRoutin]
2070   0E9F 21 0F 69    L0265:  LD HL,690FH
2071   0EA2 11 0E 69            LD DE,690EH
2072   0EA5 1A                  LD A,(DE)
2073   0EA6 B7                  OR A
2074   0EA7 20 05               JR NZ,L0266
2075   0EA9 3C                  INC A
2076   0EAA 12                  LD (DE),A
2077   0EAB 70                  LD (HL),B
2078   0EAC E1                  POP HL
2079   0EAD C9                  RET

;[SubRoutin]
2080   0EAE AF          L0266:  XOR A
2081   0EAF 12                  LD (DE),A
2082   0EB0 78                  LD A,B
2083   0EB1 46                  LD B,(HL)
2084   0EB2 C9                  RET

;[SubRoutin]
2085   0EB3 06 C8       L0133:  LD B,0C8H
2086   0EB5 21 04 6F            LD HL,6F04H
2087   0EB8 36 00       L0267:  LD (HL),00H
2088   0EBA 23                  INC HL
2089   0EBB 10 FB               DJNZ L0267
2090   0EBD 06 C8               LD B,0C8H
2091   0EBF 21 CC 6F            LD HL,6FCCH
2092   0EC2 36 00       L0268:  LD (HL),00H
2093   0EC4 23                  INC HL
2094   0EC5 10 FB               DJNZ L0268
2095   0EC7 21 94 71            LD HL,7194H
2096   0ECA 22 00 6F            LD (6F00H),HL
2097   0ECD 21 FF FF            LD HL,0FFFFH
2098   0ED0 22 02 6F            LD (6F02H),HL
2099   0ED3 22 FE 6E            LD (6EFEH),HL
2100   0ED6 C9                  RET

;[SubRoutin]
2101   0ED7 21 F0 6B    L0130:  LD HL,6BF0H
2102   0EDA 11 7F 6C            LD DE,6C7FH
2103   0EDD 01 8C 00            LD BC,008CH
2104   0EE0 36 00               LD (HL),00H  ;(6BF0H)←00H
2105   0EE2 ED B0               LDIR         ;(6BF0H～6C7CH)→(6C7FH～6D06H)値をコピー
2106   0EE4 3E FF               LD A,0FFH
2107   0EE6 32 7C 6C            LD (6C7CH),A ;(6C7CH)←FFH
2108   0EE9 3E 1F               LD A,1FH
2109   0EEB 32 7D 6C            LD (6C7DH),A ;(6C7DH)←1FH
2110   0EEE 21 4E 0F            LD HL,0F4EH
2111   0EF1 11 7E 6C            LD DE,6C7EH
2112   0EF4 01 0A 00            LD BC,000AH
2113   0EF7 ED B0               LDIR         ;(0F4EH～0F58H)→(6C7EH～6C88H)値をコピー
2114   0EF9 21 7E 6C            LD HL,6C7EH
2115   0EFC 01 36 01            LD BC,0136H
2116   0EFF ED B0               LDIR         ;(6C7EH～6DB4)→(6C89H～6DBFH)値をコピー
2117   0F01 06 04               LD B,04H
2118   0F03 21 0A 00    L0271:  LD HL,000AH
2119   0F06 78                  LD A,B
2120   0F07 3D                  DEC A
2121   0F08 CB 4F               BIT 1,A
2122   0F0A 28 02               JR Z,L0269
2123   0F0C CB D7               SET 2,A
2124   0F0E 32 D6 68    L0269:  LD (68D6H),A
2125   0F11 E5                  PUSH HL
2126   0F12 C5                  PUSH BC
2127   0F13 CD F3 0A            CALL L0182   ;OUT(80H-88H)←(68D6H); OUT(94H)←04H,0CH,14H,1CH,24H,2CH,34H,3CH,44H; OUT(9CH)←00H; OUT(94H)←07H
2128   0F16 C1                  POP BC
2129   0F17 E1                  POP HL
2130   0F18 7D          L0270:  LD A,L
2131   0F19 D3 98               OUT (98H),A
2132   0F1B 7C                  LD A,H
2133   0F1C D3 9C               OUT (9CH),A
2134   0F1E 3E 80               LD A,80H
2135   0F20 D3 41               OUT (41H),A
2136   0F22 AF                  XOR A
2137   0F23 D3 40               OUT (40H),A
2138   0F25 2B                  DEC HL
2139   0F26 7C                  LD A,H
2140   0F27 B5                  OR L
2141   0F28 20 EE               JR NZ,L0270
2142   0F2A 10 D7               DJNZ L0271
2143   0F2C 21 30 6B            LD HL,6B30H
2144   0F2F 3E 20               LD A,20H
2145   0F31 06 04               LD B,04H
2146   0F33 16 C4               LD D,0C4H
2147   0F35 0E 08       L0273:  LD C,08H
2148   0F37 1E B1               LD E,0B1H
2149   0F39 72          L0272:  LD (HL),D
2150   0F3A 23                  INC HL
2151   0F3B 73                  LD (HL),E
2152   0F3C 23                  INC HL
2153   0F3D 36 A0               LD (HL),0A0H
2154   0F3F 23                  INC HL
2155   0F40 77                  LD (HL),A
2156   0F41 23                  INC HL
2157   0F42 77                  LD (HL),A
2158   0F43 23                  INC HL
2159   0F44 77                  LD (HL),A
2160   0F45 23                  INC HL
2161   0F46 1C                  INC E
2162   0F47 0D                  DEC C
2163   0F48 20 EF               JR NZ,L0272
2164   0F4A 15                  DEC D
2165   0F4B 10 E8               DJNZ L0273
2166   0F4D C9                  RET


2167   0F4E 17                  RLA
2168   0F4F 80                  ADD A,B
2169   0F50 00                  NOP
2170   0F51 00                  NOP
2171   0F52 FD                  .DB 0FDH ;FD NOP
2172   0F53 FF                  RST 38H
2173   0F54 00                  NOP
2174   0F55 00                  NOP
2175   0F56 FD                  .DB 0FDH ;FD NOP
2176   0F57 FF                  RST 38H

;[SubRoutin]
2177   0F58 21 B4 0F    L0134:  LD HL,0FB4H
2178   0F5B CD A8 0F            CALL L0274    ;(0FB4H～0FBEH)→(617BH～6185H)値をコピー
2179   0F5E CD AE 01            CALL L0010
2180   0F61 C3 97 0F            JP L0275      ;Aレジスト,Cフラグを設定してRET

;[SubRoutin]
2181   0F64 21 BF 0F    L0135:  LD HL,0FBFH
2182   0F67 CD A8 0F            CALL L0274    ;(0FBFH～0FC9H)→(617BH～6185H)値をコピー
2183   0F6A CD AE 01            CALL L0010
2184   0F6D 20 28               JR NZ,L0275   ;Aレジスト,Cフラグを設定してRET
2185   0F6F 21 CA 0F            LD HL,0FCAH
2186   0F72 CD A8 0F            CALL L0274    ;(0FCAH～0FD4H)→(617BH～6185H)値をコピー
2187   0F75 06 04               LD B,04H
2188   0F77 C5          L0277:  PUSH BC
2189   0F78 CD AE 01            CALL L0010
2190   0F7B C1                  POP BC
2191   0F7C 20 19               JR NZ,L0275   ;Aレジスト,Cフラグを設定してRET
2192   0F7E FD 7E 03            LD A,(IY+03H)
2193   0F81 3C                  INC A
2194   0F82 FE 82               CP 82H
2195   0F84 20 02               JR NZ,L0276
2196   0F86 3E 86               LD A,86H
2197   0F88 FD 77 03    L0276:  LD (IY+03H),A
2198   0F8B FD 7E 0A            LD A,(IY+0AH)
2199   0F8E C6 1C               ADD A,1CH
2200   0F90 FD 77 0A            LD (IY+0AH),A
2201   0F93 10 E2               DJNZ L0277
2202   0F95 3E 80               LD A,80H
2203   0F97 D6 80       L0275:  SUB 80H
2204   0F99 C8                  RET Z
2205   0F9A C6 C3               ADD A,0C3H
2206   0F9C FE 06               CP 06H
2207   0F9E C8                  RET Z
2208   0F9F C6 04               ADD A,04H
2209   0FA1 FE 09               CP 09H
2210   0FA3 C8                  RET Z
2211   0FA4 3E 07               LD A,07H
2212   0FA6 37                  SCF
2213   0FA7 C9                  RET


;[SubRoutin]LCDデータ出力 [レジスタDE：出力開始アドレス値]
2246   0FD5 1A          L0007:  LD A,(DE)
2247   0FD6 13                  INC DE
2248   0FD7 FE FE               CP 0FEH    ;(取得アドレス)＝FEH→出力終了
2249   0FD9 C8                  RET Z
2250   0FDA 47                  LD B,A
2251   0FDB E6 60               AND 60H
2252   0FDD 78                  LD A,B
2253   0FDE 20 05               JR NZ,L0279  ;Aレジスタ&&60H=20H,40H,60H LCDデータ書き込み
2254   0FE0 CD EA 0F            CALL L0280   ;Aレジスタ&&60H=00H LCDレジスタorデータ書き込み
2255   0FE3 18 F0               JR L0007

2256   0FE5 CD 71 10    L0279:  CALL L0281   ;LCDデータ書き込み
2257   0FE8 18 EB               JR L0007

;[Routin]LCDレジスタorデータ書き込み条件分岐 [Aレジスタ：出力値]
2258   0FEA FE 10       L0280:  CP 10H
2259   0FEC 28 75               JR Z,L0282  ;Aレジスタ=10H LCDレジスタ書き込み
2260   0FEE FE 17               CP 17H
2261   0FF0 28 16       L0278:  JR Z,L0283  ;Aレジスタ=17H L0287→LCDデータ書き込み
2262   0FF2 FE 18               CP 18H
2263   0FF4 28 17               JR Z,L0284  ;Aレジスタ=18H L0287→LCDデータ書き込み＊２
2264   0FF6 FE 19               CP 19H
2265   0FF8 28 23               JR Z,L0285  ;Aレジスタ=19H L0287→LCDデータ書き込み＊３
2266   0FFA FE 15               CP 15H
2267   0FFC 28 4A               JR Z,L0286  ;Aレジスタ=15H L0286→LCDデータ書き込み
2268   0FFE FE 90               CP 90H
2269   1000 38 63               JR C,L0005  ;Aレジスタ<90H LCDレジスタ書き込み
2270   1002 E6 0F               AND 0FH
2271   1004 F6 C0               OR 0C0H
2272   1006 18 5D               JR L0005  ;Aレジスタ=>90H　LCDレジスタ書き込み

;[Routin]Aレジスタ=17H LCDデータ書き込み
2273   1008 CD 40 10    L0283:  CALL L0287
2274   100B 18 62               JR L0288  ;LCDデータ書き込み

;[Routin]
2275   100D CD 40 10    L0284:  CALL L0287
2276   1010 2E 0A               LD L,0AH
2277   1012 CD 38 10            CALL L0289 ;ウェイト処理
2278   1015 F5                  PUSH AF
2279   1016 78                  LD A,B
2280   1017 CD 6F 10            CALL L0288 ;LCDデータ書き込み
2281   101A F1                  POP AF
2282   101B 18 52               JR L0288   ;LCDデータ書き込み

;[Routin]
2283   101D CD 40 10    L0285:  CALL L0287
2284   1020 2E 64               LD L,64H
2285   1022 CD 38 10            CALL L0289   ;ウェイト処理
2286   1025 F5                  PUSH AF
2287   1026 78                  LD A,B
2288   1027 CD 6F 10            CALL L0288   ;LCDデータ書き込み
2289   102A F1                  POP AF
2290   102B 2E 0A               LD L,0AH
2291   102D CD 38 10            CALL L0289   ;ウェイト処理
2292   1030 F5                  PUSH AF
2293   1031 78                  LD A,B
2294   1032 CD 6F 10            CALL L0288   ;LCDデータ書き込み
2295   1035 F1                  POP AF
2296   1036 18 37               JR L0288     ;LCDデータ書き込み

;[wait]ウェイト処理 Lレジスタ→遅延サイクル
2297   1038 06 FF       L0289:  LD B,0FFH
2298   103A 04          L0290:  INC B
2299   103B 95                  SUB L
2300   103C 30 FC               JR NC,L0290
2301   103E 85                  ADD A,L
2302   103F C9                  RET

;[SubRoutin]
2303   1040 EB          L0287:  EX DE,HL
2304   1041 5E                  LD E,(HL)
2305   1042 23                  INC HL
2306   1043 56                  LD D,(HL)
2307   1044 23                  INC HL
2308   1045 EB                  EX DE,HL
2309   1046 7E                  LD A,(HL)
2310   1047 C9                  RET

;[Routin]
2311   1048 FD E5       L0286:  PUSH IY
2312   104A E1                  POP HL
2313   104B 7C                  LD A,H
2314   104C CD 50 10            CALL L0291
2315   104F 7D                  LD A,L
2316   1050 F5          L0291:  PUSH AF
2317   1051 0F                  RRCA
2318   1052 0F                  RRCA
2319   1053 0F                  RRCA
2320   1054 0F                  RRCA
2321   1055 CD 59 10            CALL L0292
2322   1058 F1                  POP AF
2323   1059 E6 0F       L0292:  AND 0FH
2324   105B FE 0A               CP 0AH
2325   105D 38 02               JR C,L0293
2326   105F C6 07               ADD A,07H
2327   1061 18 0C       L0293:  JR L0288   ;LCDデータ書き込み


;[SubRoutin]LCDレジスタ書き込み Aレジスタ→出力
2328   1063 3E 01       L0282:  LD A,01H
  ;LCD ReadBusyフラグチェック
	2329   1065 0E A2       L0005:  LD C,A2H
	2330   1067 ED 70       L0294:  IN F,(C)
	2331   1069 FA 67 10            JP M,L0294
2332   106C D3 A0               OUT (A0H),A
2333   106E C9                  RET

;[SubRoutin]LCDデータ書き込み Aレジスタ→出力
2334   106F C6 30       L0288:  ADD A,30H
  ;LCD ReadBusyフラグチェック
	2335   1071 0E A2       L0281:  LD C,0A2H
	2336   1073 ED 70       L0295:  IN F,(C)
	2337   1075 FA 73 10            JP M,L0295
2338   1078 D3 A1               OUT (0A1H),A
2339   107A C9                  RET


;------------------------------------------------------------------------------
;[Routin]DIAGNOSTICS開始
2340   107B CD A1 10    L0012:  CALL L0296
2341   107E CD 36 11            CALL L0297
2342   1081 CD 8E 11            CALL L0298
2343   1084 CD 06 13    L0308:  CALL L0299
2344   1087 CD 4A 15            CALL L0300
2345   108A CD 9C 15            CALL L0301
2346   108D CD E0 15            CALL L0302
2347   1090 CD 4B 16            CALL L0303
2348   1093 CD AB 16            CALL L0304
2349   1096 CD 47 17            CALL L0305
2350   1099 CD 93 18            CALL L0306
2351   109C CD 20 19    L0329:  CALL L0307
2352   109F 18 E3               JR L0308

;------------------------------------------------------------------------------
;[Routin]RAMテスト
2353   10A1 11 F1 10    L0296:  LD DE,10F1H
2354   10A4 CD D5 0F            CALL L0007 ;LCDデータ出力 10F2-10FCh「RAM test in」10FE-1105h「progress」
2355   10A7 DD E1               POP IX
2356   10A9 06 01               LD B,01H
2357   10AB 21 00 20    L0312:  LD HL,2000H
2358   10AE 48                  LD C,B
2359   10AF 71          L0309:  LD (HL),C
2360   10B0 23                  INC HL
2361   10B1 CB 11               RL C
2362   10B3 7C                  LD A,H
2363   10B4 B5                  OR L
2364   10B5 20 F8               JR NZ,L0309
2365   10B7 21 00 20            LD HL,2000H
2366   10BA 48                  LD C,B
2367   10BB 7E          L0311:  LD A,(HL)
2368   10BC A9                  XOR C
2369   10BD 20 14               JR NZ,L0310
2370   10BF 23                  INC HL
2371   10C0 CB 11               RL C
2372   10C2 7C                  LD A,H
2373   10C3 B5                  OR L
2374   10C4 20 F5               JR NZ,L0311
2375   10C6 3E 2E               LD A,2EH
2376   10C8 D3 A1               OUT (0A1H),A
2377   10CA CB 10               RL B
2378   10CC 30 DD               JR NC,L0312
2379   10CE 11 22 11            LD DE,1122H ;LCDデータ出力 1122-1128h「RAM OK」112A-1134h「Press ENTER」
2380   10D1 18 10               JR L0313
;[Routin]
2381   10D3 E6 0F       L0310:  AND 0FH
2382   10D5 3E 20               LD A,20H
2383   10D7 28 04               JR Z,L0314
2384   10D9 3C                  INC A
2385   10DA E5                  PUSH HL
2386   10DB FD E1               POP IY
;RAMテスト終了時
2387   10DD 32 61 68    L0314:  LD (6861H),A
2388   10E0 11 07 11            LD DE,1107H ;LCDデータ出力 1109-1112h「RAM error @」1115-1120h「 IC1.ah Bad?」
2389   10E3 CD D5 0F    L0313:  CALL L0007  ;LCDデータ出力
2390   10E6 3E 7D               LD A,7DH
2391   10E8 D3 88               OUT (88H),A
2392   10EA CD 56 15    L0316:  CALL L0315  ;ENTERキー入力検知
2393   10ED 28 FB               JR Z,L0316
2394   10EF DD E9               JP (IX)

;10F2-10FCh「RAM test in」
;10FE-1105h「progress」
;2395   10F1 10
;2395   10F2 52          
;2396   10F3 41          
;2397   10F4 4D          
;2398   10F5 20 74       
;2399   10F7 65          
;2400   10F8 73          
;2401   10F9 74          
;2402   10FA 20 69       
;2403   10FC 6E          
;2404   10FD 90          
;2405   10FE 70          
;2406   10FF 72          
;2407   1100 6F          
;2408   1101 67          
;2409   1102 72          
;2410   1103 65          
;2411   1104 73          
;2412   1105 73          
;2413   1106 FE

;1109-1112h「RAM error @」
;1115-1120h「 IC1.ah Bad?」
;2413   1107 10         
;2414   1108 52         
;2415   1109 41         
;2416   110A 4D         
;2417   110B 20 65      
;2418   110D 72         
;2419   110E 72         
;2420   110F 6F         
;2421   1110 72         
;2422   1111 20 40      
;2423   1113 90         
;2424   1114 15         
;2425   1115 20 49      
;2426   1117 43         
;2427   1118 31 18 61   
;2428   111B 68         
;2429   111C 20 42      
;2430   111E 61         
;2431   111F 64         
;2432   1120 3F         
;2433   1121 FE 

;1122-1128h「RAM OK」
;112A-1134h「Press ENTER」
;2433   1122 10    
;2434   1123 52          
;2435   1124 41          
;2436   1125 4D          
;2437   1126 20 4F       
;2438   1128 4B          
;2439   1129 90          
;2440   112A 50          
;2441   112B 72          
;2442   112C 65          
;2443   112D 73          
;2444   112E 73          
;2445   112F 20 45       
;2446   1131 4E          
;2447   1132 54          
;2448   1133 45          
;2449   1134 52          
;2450   1135 FE

;------------------------------------------------------------------------------
;[Routin]ROMチェック
2450   1136 FD 21 00 00   L0297: LD IY,0000H
2452   113A 21 00 00             LD HL,0000H
2453   113D 16 00                LD D,00H
	;[Loop]ループ処理
	2454   113F 5E          L0325:  LD E,(HL)
	2455   1140 23                  INC HL
	2456   1141 FD 19               ADD IY,DE
	2457   1143 7C                  LD A,H
	2458   1144 FE 20               CP 20H
	2459   1146 20 F7               JR NZ,L0325
2460   1148 11 6E 11            LD DE,116EH
2461   114B 3E 7F               LD A,7FH
2462   114D D3 88               OUT (88H),A
2463   114F 32 79 61            LD (6179H),A
2464   1152 CD D5 0F            CALL L0007     ;LCDデータ出力 116F-117Ah「ROM Cksub = 」 117D-118Ch「1=Snd RAM 2=Disk」
2465   1155 DB 58       L0326:  IN A,(58H)
2466   1157 CB 77               BIT 6,A
2467   1159 C8                  RET Z
2468   115A CB 6F               BIT 5,A
2469   115C 20 F7               JR NZ,L0326
2470   115E CD 70 15            CALL L0327     ;ウェイト処理
2471   1161 DB 58       L0328:  IN A,(58H)
2472   1163 CB 6F               BIT 5,A
2473   1165 28 FA       L0319:  JR Z,L0328
2474   1167 CD 70 15            CALL L0327     ;ウェイト処理
2475   116A F1                  POP AF
2476   116B C3 9C 10    L0318:  JP L0329

;116F-117Ah「ROM Cksub = 」
;117D-118Ch「1=Snd RAM 2=Disk」
;2477   116E 10
;2477   116F 52
;2478   1170 4F        
;2479   1171 4D        
;2480   1172 20 43     
;2481   1174 6B        
;2482   1175 73        
;2483   1176 75        
;2484   1177 6D        
;2485   1178 20 3D     
;2486   117A 20
;2486   117B 15         
;2487   117C 90        
;2488   117D 31 3D 53  
;2489   1180 6E        
;2490   1181 64        
;2491   1182 20 52     
;2492   1184 41        
;2493   1185 4D        
;2494   1186 20 32     
;2495   1188 3D        
;2496   1189 44        
;2497   118A 69        
;2498   118B 73        
;2499   118C 6B        
;2500   118D FE

;------------------------------------------------------------------------------
;[SubRoutin]サウンドRAMチェック
2500   118E 11 AC 12    L0298:  LD   DE,12ACH
2503   1191 CD D5 0F    L0332:  CALL L0007  ;LCDデータ出力 12AD-12BBh「Snd RAM Test in」 12BD-12C4h「Progress」
2504   1194 AF                  XOR A
2505   1195 CD BF 11            CALL L0335    ;OUT (80H～88H)←00H
2506   1198 38 18               JR C,L0336
2507   119A 3E 01               LD A,01H
2508   119C CD BF 11            CALL L0335    ;OUT (80H～88H)←01H
2509   119F 38 11               JR C,L0336
2510   11A1 3E 06               LD A,06H
2511   11A3 CD BF 11            CALL L0335    ;OUT (80H～88H)←06H
2512   11A6 38 0A               JR C,L0336
2513   11A8 3E 07               LD A,07H
2514   11AA CD BF 11            CALL L0335    ;OUT (80H～88H)←07H
2515   11AD 38 03               JR C,L0336
2516   11AF 11 C6 12            LD DE,12C6H
2517   11B2 CD D5 0F    L0336:  CALL L0007  ;LCDデータ出力 12C7-12D6h「Sound Mem:OK  」 12D8-12E2h「Press ENTER」
2518   11B5 3E 7D               LD A,7DH
2519   11B7 D3 88       L0331:  OUT (88H),A
2520   11B9 CD 56 15    L0337:  CALL L0315  ;ENTERキー入力検知
2521   11BC 28 FB               JR Z,L0337
2522   11BE C9                  RET

;[SubRoutin]
2523   11BF 32 62 68    L0335:  LD (6862H),A
2524   11C2 CD 64 01    L0330:  CALL L0004    ;OUT (80H～88H)←Aレジスタ, OUT(94H)/OUT(98H)/OUT(9CH) 固定値シーケンス設定
2525   11C5 21 00 00            LD HL,0000H
2526   11C8 2B          L0338:  DEC HL
2527   11C9 3E 07               LD A,07H
2528   11CB D3 94               OUT (94H),A
2529   11CD 7D                  LD A,L
2530   11CE D3 98               OUT (98H),A
2531   11D0 7C                  LD A,H
2532   11D1 D3 9C               OUT (9CH),A
2533   11D3 7D                  LD A,L
2534   11D4 0F                  RRCA
2535   11D5 9F                  SBC A,A
2536   11D6 D3 41       L0333:  OUT (41H),A
2537   11D8 7D                  LD A,L
2538   11D9 0F                  RRCA
2539   11DA 0F                  RRCA
2540   11DB 9F                  SBC A,A
2541   11DC D3 40               OUT (40H),A
2542   11DE 7C                  LD A,H
2543   11DF B5                  OR L
2544   11E0 C2 C8 11            JP NZ,L0338
	;LCDレジスタ出力
	2545   11E3 3E 2E               LD A,2EH
	2546   11E5 D3 A1               OUT (A1H),A   
2547   11E7 11 00 01            LD DE,0100H
2548   11EA 21 00 00    L0345:  LD HL,0000H
2549   11ED 2B          L0344:  DEC HL
2550   11EE 3E 07               LD A,07H
2551   11F0 D3 94               OUT (94H),A
2552   11F2 7D                  LD A,L
2553   11F3 D3 98               OUT (98H),A
2554   11F5 7C                  LD A,H
2555   11F6 D3 9C               OUT (9CH),A
2556   11F8 CB 45               BIT 0,L
2557   11FA DB 41               IN A,(41H)
2558   11FC 28 01               JR Z,L0339
2559   11FE 2F                  CPL
2560   11FF AB          L0339:  XOR E
2561   1200 20 72               JR NZ,L0340
2562   1202 7D                  LD A,L
2563   1203 0F                  RRCA
2564   1204 9F                  SBC A,A
2565   1205 AA                  XOR D
2566   1206 D3 41               OUT (41H),A
2567   1208 CB 45               BIT 0,L
2568   120A 28 11               JR Z,L0341
2569   120C DB 40               IN A,(40H)
2570   120E CB 4D               BIT 1,L
2571   1210 28 01               JR Z,L0342
2572   1212 2F                  CPL
2573   1213 AB          L0342:  XOR E
2574   1214 20 63               JR NZ,L0343
2575   1216 7D                  LD A,L
2576   1217 0F                  RRCA
2577   1218 0F                  RRCA
2578   1219 9F                  SBC A,A
2579   121A AA                  XOR D
2580   121B D3 40               OUT (40H),A
2581   121D 7C          L0341:  LD A,H
2582   121E B5                  OR L
2583   121F C2 ED 11            JP NZ,L0344
2584   1222 5A                  LD E,D
2585   1223 CB 22               SLA D
2586   1225 7A                  LD A,D
2587   1226 B7                  OR A
2588   1227 20 C1               JR NZ,L0345
2589   1229 21 00 00            LD HL,0000H
2590   122C 01 00 00            LD BC,0000H
2591   122F 3E 07       L0346:  LD A,07H
2592   1231 D3 94               OUT (94H),A
2593   1233 7D                  LD A,L
2594   1234 D3 98               OUT (98H),A
2595   1236 7C                  LD A,H
2596   1237 D3 9C               OUT (9CH),A
2597   1239 AF                  XOR A
2598   123A D3 41               OUT (41H),A
2599   123C D3 40               OUT (40H),A
2600   123E ED A1               CPI
2601   1240 EA 2F 12            JP PE,L0346
	;LCDレジスタ出力
	2602   1243 3E 2E               LD A,2EH
	2603   1245 D3 A1               OUT (A1H),A
2604   1247 21 00 00            LD HL,0000H
2605   124A 01 00 00            LD BC,0000H
2606   124D 11 00 FF            LD DE,0FF00H
2607   1250 3E 07       L0348:  LD A,07H
2608   1252 D3 94               OUT (94H),A
2609   1254 7D                  LD A,L
2610   1255 D3 98               OUT (98H),A
2611   1257 0F                  RRCA
2612   1258 7C                  LD A,H
2613   1259 D3 9C               OUT (9CH),A
2614   125B 38 08               JR C,L0347
2615   125D DB 40               IN A,(40H)
2616   125F AB                  XOR E
2617   1260 20 17               JR NZ,L0343
2618   1262 7A                  LD A,D
2619   1263 D3 40               OUT (40H),A
2620   1265 DB 41       L0347:  IN A,(41H)
2621   1267 AB                  XOR E
2622   1268 20 0A       L0357:  JR NZ,L0340
2623   126A 7A                  LD A,D
2624   126B D3 41               OUT (41H),A
2625   126D ED A1               CPI
2626   126F EA 50 12            JP PE,L0348
2627   1272 AF                  XOR A
2628   1273 C9                  RET

;[Routin]
2629   1274 01 A4 12    L0340:  LD BC,12A4H
2630   1277 18 03               JR L0349

;[SubRoutin]
2631   1279 01 9C 12    L0343:  LD BC,129CH
2632   127C E6 0F       L0349:  AND 0FH
2633   127E 20 01               JR NZ,L0350
2634   1280 03                  INC BC
2635   1281 E5          L0350:  PUSH HL
2636   1282 FD E1               POP IY
2637   1284 7D                  LD A,L
2638   1285 E6 01               AND 01H
2639   1287 07                  RLCA
2640   1288 6F                  LD L,A
2641   1289 3A 62 68            LD A,(6862H)
2642   128C E6 04               AND 04H
2643   128E B5                  OR L
2644   128F 6F                  LD L,A
2645   1290 26 00               LD H,00H
2646   1292 09                  ADD HL,BC
2647   1293 7E                  LD A,(HL)
2648   1294 32 63 68            LD (6863H),A
2649   1297 11 E4 12            LD DE,12E4H
2650   129A 37                  SCF
2651   129B C9                  RET

2652   129C 26 24               LD H,24H
2653   129E 26 24               LD H,24H
2654   12A0 27                  DAA
2655   12A1 25                  DEC H
2656   12A2 27                  DAA
2657   12A3 25                  DEC H
2658   12A4 2E 2F               LD L,2FH
2659   12A6 2C                  INC L
2660   12A7 2D                  DEC L
2661   12A8 2A 2B 28            LD HL,(282BH)
2662   12AB 29                  ADD HL,HL

;12AD-12BBh「Snd RAM Test in」
;12BD-12C4h「Progress」
;2663   12AC 10
;2663   12AD 53
;2664   12AE 6E          
;2665   12AF 64          
;2666   12B0 20 52       
;2667   12B2 41          
;2668   12B3 4D          
;2669   12B4 20 54       
;2670   12B6 65          
;2671   12B7 73          
;2672   12B8 74          
;2673   12B9 20 69       
;2674   12BB 6E          
;2675   12BC 90          
;2676   12BD 50          
;2677   12BE 72          
;2678   12BF 6F          
;2679   12C0 67          
;2680   12C1 72          
;2681   12C2 65          
;2682   12C3 73          
;2683   12C4 73          
;2684   12C5 FE 

;12C7-12D6h「Sound Mem:OK  」
;12D8-12E2h「Press ENTER」
;2684   12C6 10           
;2685   12C7 53           
;2686   12C8 6F           
;2687   12C9 75           
;2688   12CA 6E           
;2689   12CB 64           
;2690   12CC 20 4D        
;2691   12CE 65           
;2692   12CF 6D           
;2693   12D0 3A 20 4F     
;2694   12D3 4B           
;2695   12D4 20 20        
;2696   12D6 20
;2696   12D7 90
;2697   12D8 50           
;2698   12D9 72           
;2699   12DA 65           
;2700   12DB 73           
;2701   12DC 73           
;2702   12DD 20 45        
;2703   12DF 4E           
;2704   12E0 54           
;2705   12E1 45           
;2706   12E2 52           
;2707   12E3 FE

;12E5-12F3h「Snd Mem Error @」
;12F9-1304h「 IC1.ah Bad?」
;2707   12E4 10        
;2708   12E5 53        
;2709   12E6 6E        
;2710   12E7 64        
;2711   12E8 20 4D     
;2712   12EA 65        
;2713   12EB 6D        
;2714   12EC 20 45     
;2715   12EE 72        
;2716   12EF 72        
;2717   12F0 6F        
;2718   12F1 72        
;2719   12F2 20 40     
;2720   12F4 90        
;2721   12F5 17        
;2722   12F6 62        
;2723   12F7 68        
;2724   12F8 15        
;2725   12F9 20 49     
;2726   12FB 43        
;2727   12FC 31 18 63  
;2728   12FF 68        
;2729   1300 20 42     
;2730   1302 61        
;2731   1303 64        
;2732   1304 3F        
;2733   1305 FE

;------------------------------------------------------------------------------
;[Routin]ボタンチェック
2733   1306 11 74 13    L0299:  LD DE,1374H
2736   1309 CD D5 0F            CALL L0007 ;LCDデータ出力  1374-1384h「Buttons Released」 1386-1395h「ENTER exits test」
2737   130C 0E 08       L0365:  LD C,08H
2738   130E 3E 78       L0364:  LD A,78H
2739   1310 0D                  DEC C
2740   1311 B1                  OR C
2741   1312 D3 88               OUT (88H),A
2742   1314 06 05               LD B,05H
2743   1316 DB 58               IN A,(58H)
2744   1318 17          L0363:  RLA
2745   1319 30 13               JR NC,L0362
2746   131B 10 FB       L0355:  DJNZ L0363
2747   131D 79                  LD A,C
2748   131E A7                  AND A
2749   131F 20 ED               JR NZ,L0364
2750   1321 DB 58               IN A,(58H)
2751   1323 1F                  RRA
2752   1324 30 08       L0354:  JR NC,L0362
2753   1326 05                  DEC B
2754   1327 1F                  RRA
2755   1328 30 04               JR NC,L0362
2756   132A 05                  DEC B
2757   132B 1F                  RRA
2758   132C 38 DE               JR C,L0365
2759   132E 78          L0362:  LD A,B
2760   132F A7                  AND A
2761   1330 21 E9 13            LD HL,13E9H
2762   1333 28 0C       L0359:  JR Z,L0366
2763   1335 CB 78               BIT 7,B
2764   1337 28 0C       L0358:  JR Z,L0367
2765   1339 CB 40               BIT 0,B
2766   133B 23                  INC HL
2767   133C 23                  INC HL
2768   133D 20 02               JR NZ,L0366
2769   133F 23                  INC HL
2770   1340 23                  INC HL
2771   1341 AF          L0366:  XOR A
2772   1342 F5                  PUSH AF
2773   1343 18 0E               JR L0368

;[Routin]
2774   1345 3D          L0367:  DEC A
2775   1346 07                  RLCA
2776   1347 07                  RLCA
2777   1348 07                  RLCA
2778   1349 B1                  OR C
2779   134A F5                  PUSH AF
2780   134B 87                  ADD A,A
2781   134C 21 99 13            LD HL,1399H
2782   134F 4F                  LD C,A
2783   1350 06 00               LD B,00H
2784   1352 09                  ADD HL,BC
2785   1353 5E          L0368:  LD E,(HL)
2786   1354 23                  INC HL
2787   1355 56                  LD D,(HL)
2788   1356 D5                  PUSH DE
2789   1357 11 97 13            LD DE,1397H
2790   135A CD D5 0F            CALL L0007   ;LCDデータ出力 1397H-1398H 空白行を表示？
2791   135D D1                  POP DE
2792   135E CD D5 0F            CALL L0007   ;LCDデータ出力 ???
	;[wait]ウェイト処理?
	2793   1361 21 00 32    L0370:  LD HL,3200H
	2794   1364 2B          L0369:  DEC HL
	2795   1365 7C                  LD A,H
	2796   1366 B5                  OR L
	2797   1367 20 FB               JR NZ,L0369
2798   1369 DB 58               IN A,(58H)
2799   136B 3C                  INC A
2800   136C 20 F3               JR NZ,L0370
2801   136E F1                  POP AF
2802   136F FE 25               CP 25H
2803   1371 20 93               JR NZ,L0299
2804   1373 C9                  RET

;1374-1384h「Buttons Released」
;1386-1398h「ENTER exits test」
;2805   1374 10
;2805   1375 42
;2806   1376 75           
;2807   1377 74           
;2808   1378 74           
;2809   1379 6F           
;2810   137A 6E           
;2811   137B 73           
;2812   137C 20 52        
;2813   137E 65           
;2814   137F 6C           
;2815   1380 65           
;2816   1381 61           
;2817   1382 73           
;2818   1383 65           
;2819   1384 64           
;2820   1385 90           
;2821   1386 45           
;2822   1387 4E           
;2823   1388 54           
;2824   1389 45           
;2825   138A 52           
;2826   138B 20 65        
;2827   138D 78           
;2828   138E 69           
;2829   138F 74           
;2830   1390 73           
;2831   1391 20 74        
;2832   1393 65           
;2833   1394 73           
;2834   1395 74           
;2835   1396 FE
;2835   1397 10
;2836   1398 FE

2836   1399 3F                  CCF
2837   139A 14                  INC D
2838   139B 16 14               LD D,14H
2839   139D 62                  LD H,D
2840   139E 14                  INC D
2841   139F A0                  AND B
2842   13A0 14                  INC D
2843   13A1 D8                  RET C
2844   13A2 14                  INC D
2845   13A3 FC 14 45            CALL M,L0375
2846   13A6 15                  DEC D
2847   13A7 2B                  DEC HL
2848   13A8 15                  DEC D
2849   13A9 46                  LD B,(HL)
2850   13AA 14                  INC D
2851   13AB 1F                  RRA
2852   13AC 14                  INC D
2853   13AD 6E                  LD L,(HL)
2854   13AE 14                  INC D
2855   13AF A9                  XOR C
2856   13B0 14                  INC D
2857   13B1 F3                  DI
2858   13B2 14                  INC D
2859   13B3 08                  EX AF,AF'
2860   13B4 15                  DEC D
2861   13B5 3F                  CCF
2862   13B6 15                  DEC D
2863   13B7 25                  DEC H
2864   13B8 15          L0371:  DEC D
2865   13B9 4D                  LD C,L
2866   13BA 14                  INC D
2867   13BB 2A 14 77            LD HL,(7714H)
2868   13BE 14                  INC D
2869   13BF B6                  OR (HL)
2870   13C0 14                  INC D
2871   13C1 EC 14 10            CALL PE,L0376
2872   13C4 15                  DEC D
2873   13C5 39                  ADD HL,SP
2874   13C6 15                  DEC D
2875   13C7 21 15 54            LD HL,5415H
2876   13CA 14                  INC D
2877   13CB 31 14 88            LD SP,8814H
2878   13CE 14                  INC D
2879   13CF C3 14 E7            JP L0377

;[Routin]
2880   13D2 14                  INC D
2881   13D3 0E 15               LD C,15H
2882   13D5 35                  DEC (HL)
2883   13D6 15                  DEC D
2884   13D7 1D                  DEC E
2885   13D8 15                  DEC D
2886   13D9 5B                  LD E,E
2887   13DA 14                  INC D
2888   13DB 38 14               JR C,L0378
2889   13DD 92                  SUB D
2890   13DE 14                  INC D
2891   13DF CC 14 03            CALL Z,L0052
2892   13E2 15                  DEC D
2893   13E3 12                  LD (DE),A
2894   13E4 15                  DEC D
2895   13E5 30 15               JR NC,L0379
2896   13E7 18 15               JR L0380

2897   13E9 EF                  RST 28H
2898   13EA 13                  INC DE
2899   13EB FC 13 09            CALL M,L0381
2900   13EE 14                  INC D

;「footswitch 1」
;2901   13EF 66     
;2902   13F0 6F     
;2903   13F1 6F     
;2904   13F2 74     
;2905   13F3 73     
;2906   13F4 77     
;2907   13F5 69     
;2908   13F6 74     
;2909   13F7 63     
;2910   13F8 68     
;2911   13F9 20 31  
;2912   13FB FE

;「footswitch 2」
;2912   13FC 66      
;2913   13FD 6F      
;2914   13FE 6F      
;2915   13FF 74      
;2916   1400 73      
;2917   1401 77      
;2918   1402 69      
;2919   1403 74      
;2920   1404 63      
;2921   1405 68      
;2922   1406 20 32   
;2923   1408 FE 

;「footswitch 3」
;2923   1409 66        
;2924   140A 6F        
;2925   140B 6F        
;2926   140C 74        
;2927   140D 73        
;2928   140E 77        
;2929   140F 69        
;2930   1410 74        
;2931   1411 63        
;2932   1412 68        
;2933   1413 20 33     
;2934   1415 FE

;「run/stop」
;2934   1416 72   
;2935   1417 75   
;2936   1418 6E   
;2937   1419 2F   
;2938   141A 73   
;2939   141B 74   
;2940   141C 6F   
;2941   141D 70   
;2942   141E FE   

;「tap/repeat」
;2942   141F 74    
;2943   1420 61    
;2944   1421 70    
;2945   1422 2F    
;2946   1423 72    
;2947   1424 65    
;2948   1425 70    
;2949   1426 65    
;2950   1427 61    
;2951   1428 74    
;2952   1429 FE

;「play 1」
;2952   142A 70      
;2953   142B 6C      
;2954   142C 61      
;2955   142D 79      
;2956   142E 20 31   
;2957   1430 FE      

;「play 2」
;2957   1431 70        
;2958   1432 6C        
;2959   1433 61        
;2960   1434 79        
;2961   1435 20 32     
;2962   1437 FE        

;「play 3」
;2962   1438 70       
;2963   1439 6C       
;2964   143A 61       
;2965   143B 79       
;2966   143C 20 33    
;2967   143E FE       

;「play 4」
;2967   143F 70      
;2968   1440 6C      
;2969   1441 61      
;2970   1442 79      
;2971   1443 20 34   
;2972   1445 FE      

;「play 5」
;2972   1446 70     
;2973   1447 6C     
;2974   1448 61     
;2975   1449 79     
;2976   144A 20 35  
;2977   144C FE     

;「play 6」
;2977   144C 70      
;2978   144E 6C      
;2979   144F 61      
;2980   1450 79      
;2981   1451 20 36   
;2982   1453 FE      

;「play 7」
;2982   1453 70      
;2983   1455 6C      
;2984   1456 61      
;2985   1457 79      
;2986   1458 20 37   
;2987   145A FE      

;「play 8」
;2987   145B 70      
;2988   145C 6C      
;2989   145D 61      
;2990   145E 79      
;2991   145F 20 38   
;2992   1461 FE      

;「record/edit」
;2992   1462 72      
;2993   1463 65      
;2994   1464 63      
;2995   1465 6F      
;2996   1466 72      
;2997   1467 64      
;2998   1468 2F      
;2999   1469 65      
;3000   146A 64      
;3001   146B 69      
;3002   146C 74      
;3003   146D FE      

;「mix/step」
;3003   146E 6D       
;3004   146F 69       
;3005   1470 78       
;3006   1471 2F       
;3007   1472 73       
;3008   1473 74       
;3009   1474 65       
;3010   1475 70       
;3011   1476 FE       

;「tempoCh/autoCorr」
;3011   1477 74     
;3012   1478 65     
;3013   1479 6D     
;3014   147A 70     
;3015   147B 6F     
;3016   147C 43     
;3017   147D 68     
;3018   147E 2F     
;3019   147F 61     
;3020   1480 75     
;3021   1481 74     
;3022   1482 6F     
;3023   1483 43     
;3024   1484 6F     
;3025   1485 72     
;3026   1486 72     
;3027   1487 FE     

;「del/erase」
;3027   1488 64     
;3028   1489 65     
;3029   148A 6C     
;3030   148B 2F     
;3031   148C 65     
;3032   148D 72     
;3033   148E 61     
;3034   148F 73     
;3035   1490 65     
;3036   1491 FE     

;「ins/seglength」
;3036   1492 69     
;3037   1493 6E     
;3038   1494 73     
;3039   1495 2F     
;3040   1496 73     
;3041   1497 65     
;3042   1498 67     
;3043   1499 6C     
;3044   149A 65     
;3045   149B 6E     
;3046   149C 67     
;3047   149D 74     
;3048   149E 68     
;3049   149F FE     

;「end/tsig」
;3049   14A0 65     
;3050   14A1 6E     
;3051   14A2 64     
;3052   14A3 2F     
;3053   14A4 74     
;3054   14A5 73     
;3055   14A6 69     
;3056   14A7 67     
;3057   14A8 FE     

;「subsong/copy」
;3057   14A9 73      
;3058   14AA 75      
;3059   14AB 62      
;3060   14AC 73      
;3061   14AD 6F      
;3062   14AE 6E      
;3063   14AF 67      
;3064   14B0 2F      
;3065   14B1 63      
;3066   14B2 6F      
;3067   14B3 70      
;3068   14B4 79      
;3069   14B5 FE      

;「repeat/swing」
;3069   14B6 72      
;3070   14B7 65      
;3071   14B8 70      
;3072   14B9 65      
;3073   14BA 61      
;3074   14BB 74      
;3075   14BC 2F      
;3076   14BD 73      
;3077   14BE 77      
;3078   14BF 69      
;3079   14C0 6E      
;3080   14C1 67      
;3081   14C2 FE      

;「trig/met」
;3081   14C3 74    
;3082   14C4 72    
;3083   14C5 69    
;3084   14C6 67    
;3085   14C7 2F    
;3086   14C8 6D    
;3087   14C9 65    
;3088   14CA 74    
;3089   14CB FE    

;「bank select」
;3089   14CC 62    
;3090   14CD 61    
;3091   14CE 6E    
;3092   14CF 6B    
;3093   14D0 20 73 
;3094   14D2 65    
;3095   14D3 6C    
;3096   14D4 65    
;3097   14D5 63    
;3098   14D6 74    
;3099   14D7 FE    

;「tune/mix/multi」
;3099   14D8 74    
;3100   14D9 75    
;3101   14DA 6E    
;3102   14DB 65    
;3103   14DC 2F    
;3104   14DD 6D    
;3105   14DE 69    
;3106   14DF 78    
;3107   14E0 2F    
;3108   14E1 6D    
;3109   14E2 75    
;3110   14E3 6C    
;3111   14E4 74    
;3112   14E5 69    
;3113   14E6 FE    

;「Disk」
;3113   14E7 44    
;3114   14E8 69    
;3115   14E9 73    
;3116   14EA 6B    
;3117   14EB FE    

;「Set-up」
;3117   14EC 53      
;3118   14ED 65      
;3119   14EE 74      
;3120   14EF 2D      
;3121   14F0 75      
;3122   14F1 70      
;3123   14F2 FE      

;「song/seg」
;3123   14F3 73    
;3124   14F4 6F    
;3125   14F5 6E    
;3126   14F6 67    
;3127   14F7 2F    
;3128   14F8 73    
;3129   14F9 65    
;3130   14FA 67    
;3131   14FB FE    

;「Sample」
;3131   14FC 53   
;3132   14FD 61   
;3133   14FE 6D   
;3134   14FF 70   
;3135   1500 6C   
;3136   1501 65   
;3137   1502 FE   

;「Sync」
;3137   1503 53 
;3138   1504 79 
;3139   1505 6E 
;3140   1506 63 
;3141   1507 FE 

;「tempo」
;3141   1508 74    
;3142   1509 65    
;3143   150A 6D    
;3144   150B 70    
;3145   150C 6F    
;3146   150D FE    

;3146   150E 7E    
;3147   150F FE    

;3147   1510 7F    
;3148   1511 FE

;「enter」
;3148   1512 65
;3149   1513 6E    
;3150   1514 74    
;3151   1515 65    
;3152   1516 72    
;3153   1517 FE 7A 

;「zero」
;3153   1518 7A 
;3154   1519 65 
;3155   151A 72 
;3156   151B 6F 
;3157   151C FE 

;「one」
;3157   151D 6F 
;3158   151E 6E 
;3159   151F 65 
;3160   1520 FE 

;「two」
;3160   1521 74 
;3161   1522 77 
;3162   1523 6F 
;3163   1524 FE 

;「three」
;3163   1523 74 
;3164   1526 68 
;3165   1527 72 
;3166   1528 65 
;3167   1529 65 
;3168   152A FE 

;「four」
;3168   152B 66       
;3169   152C 6F       
;3170   152D 75       
;3171   152E 72       
;3172   152F FE     

;「five」
;3172   1530 66 
;3173   1531 69 
;3174   1532 76 
;3175   1533 65 
;3176   1534 FE 

;「six」
;3176   1535 73 
;3177   1536 69 
;3178   1537 78 
;3179   1538 FE 

;「seven」
;3179   1539 73 
;3180   153A 65 
;3181   153B 76 
;3182   153C 65 
;3183   153D 6E 
;3184   153E FE 

;「eight」
;3184   153F 65 
;3185   1540 69 
;3186   1541 67 
;3187   1542 68 
;3188   1543 74 
;3189   1544 FE 

;「nine」
;3189   1545 6E   
;3190   1546 69   
;3191   1547 6E   
;3192   1548 65   
;3193   1549 FE

;------------------------------------------------------------------------------
;[Routin]LCDテスト(黒四角で埋め尽くす）
3193   154A 11 79 15    L0300:  LD   DE,1579H
3196   154D CD D5 0F            CALL L0007   ;LCDデータ出力 1579H-159BH LCDデータ出力用データ?
3197   1550 CD 56 15    L0394:  CALL L0315   ;ENTERキー入力検知
3198   1553 C0                  RET NZ
3199   1554 18 FA               JR L0394

;[SubRoutin]キー入力待ち＋ウェイト処理
3200   1556 DB 58       L0315:  IN A,(58H)
3201   1558 3C                  INC A
3202   1559 C8                  RET Z
3203   155A 3D                  DEC A
3204   155B F5                  PUSH AF
	3205   155C DB 58       L0395:  IN A,(58H)
	3206   155E 3C                  INC A
	3207   155F 20 FB               JR NZ,L0395
3208   1561 CD 70 15            CALL L0327    ;ウェイト処理
3209   1564 DB 58               IN A,(58H)
3210   1566 3C                  INC A
3211   1567 20 F3               JR NZ,L0395
3212   1569 F1                  POP AF
3213   156A C9                  RET

;[SubRoutin]ウェイト処理 L0404:,L0327:
3214   156B 21 80 00    L0404:  LD HL,0080H
3215   156E 18 03               JR L0396
	;[wait]ウェイト処理？
	3216   1570 21 00 64    L0327:  LD HL,6400H
	3217   1573 2B          L0396:  DEC HL
	3218   1574 7C                  LD A,H
	3219   1575 B5                  OR L
	3220   1576 20 FB               JR NZ,L0396
3221   1578 C9                  RET

;1579H-159BH LCDデータ出力用データ　黒四角で埋め尽くす 読み込み元はaddr:154AH
;3222   1579 80 
;3223   157A FF 
;3224   157B FF 
;3225   157C FF 
;3226   157D FF 
;3227   157E FF 
;3228   157F FF 
;3229   1580 FF 
;3230   1581 FF 
;3231   1582 FF 
;3232   1583 FF 
;3233   1584 FF 
;3234   1585 FF 
;3235   1586 FF 
;3236   1587 FF 
;3237   1588 FF 
;3238   1589 FF 
;3239   158A 90 
;3240   158B FF 
;3241   158C FF 
;3242   158D FF 
;3243   158E FF 
;3244   158F FF 
;3245   1590 FF 
;3246   1591 FF 
;3247   1592 FF 
;3248   1593 FF 
;3249   1594 FF 
;3250   1595 FF 
;3251   1596 FF 
;3252   1597 FF 
;3253   1598 FF 
;3254   1599 FF 
;3255   159A FF 
;3256   159B FE 

;------------------------------------------------------------------------------
;[Routin]LED点灯チェック
3256   159C 11 C0 15    L0301:  LD DE,15C0H
3259   159F CD D5 0F            CALL L0007     ;LCDデータ出力 15C1-15D0h「Lamp test: Press」15D2-15DEh「ENTER to exit」
3260   15A2 11 01 00            LD DE,0001H
3261   15A5 EB          L0399:  EX DE,HL
3262   15A6 29          L0397:  ADD HL,HL
3263   15A7 CB 5D               BIT 3,L
3264   15A9 20 FB               JR NZ,L0397
3265   15AB 30 01               JR NC,L0398
3266   15AD 2C                  INC L
3267   15AE 7D          L0398:  LD A,L
3268   15AF 2F                  CPL
3269   15B0 D3 8C               OUT (8CH),A
3270   15B2 7C                  LD A,H
3271   15B3 2F                  CPL
3272   15B4 D3 90               OUT (90H),A
3273   15B6 EB                  EX DE,HL
3274   15B7 CD 70 15            CALL L0327
3275   15BA CD 56 15            CALL L0315  ;ENTERキー入力検知
3276   15BD C0                  RET NZ
3277   15BE 18 E5               JR L0399

;15C1-15D0h「Lamp test: Press」
;15D2-15DEh「ENTER to exit」
;3278   15C0 10
;3278   15C1 4C        
;3279   15C2 61        
;3280   15C3 6D        
;3281   15C4 70        
;3282   15C5 20 54     
;3283   15C7 65        
;3284   15C8 73        
;3285   15C9 74        
;3286   15CA 3A 20 50  
;3287   15CD 72        
;3288   15CE 65        
;3289   15CF 73        
;3290   15D0 73        
;3291   15D1 90        
;3292   15D2 45        
;3293   15D3 4E        
;3294   15D4 54        
;3295   15D5 45        
;3296   15D6 52        
;3297   15D7 20 74     
;3298   15D9 6F        
;3299   15DA 20 65     
;3300   15DC 78        
;3301   15DD 69        
;3302   15DE 74        
;3303   15DF FE

;------------------------------------------------------------------------------
;[Routin]スライダーテスト
3303   15E0 3E FF       L0302:  LD A,0FFH
3305   15E2 D3 8C               OUT (8CH),A  ;LED消灯
3306   15E4 D3 90               OUT (90H),A  ;LED消灯
3307   15E6 21 1A 68            LD HL,681AH
3308   15E9 11 1B 68            LD DE,681BH
3309   15EC 01 0F 00            LD BC,000FH
3310   15EF 36 00               LD (HL),00H
3311   15F1 ED B0               LDIR         ;(681AH～6829H)→(681BH～682AH)値をコピー→(681BH～682AH)を00H埋め
3312   15F3 11 28 16    L0407:  LD DE,1628H
3313   15F6 CD D5 0F            CALL L0007  ;LCDデータ出力 1628H-164AH スライダーテスト用画面
3314   15F9 CD 56 15            CALL L0315  ;ENTERキー入力検知
3315   15FC C0                  RET NZ
3316   15FD 06 08               LD B,08H
3317   15FF 78          L0406:  LD A,B
3318   1600 3D                  DEC A
3319   1601 D3 C0               OUT (0C0H),A ;OUT(C0H)ADCスライダー選択(07H-00H)
3320   1603 CD 6B 15            CALL L0404   ;ウェイト処理
3321   1606 DB C0               IN A,(0C0H)  ;A←IN(C0H)ADC値読み込み
3322   1608 58                  LD E,B
3323   1609 1D                  DEC E
3324   160A 37                  SCF           ;Cフラグ←1
3325   160B CB 13               RL E          ;左シフト
3326   160D 16 00               LD D,00H
3327   160F 21 1A 68            LD HL,681AH
3328   1612 19                  ADD HL,DE
3329   1613 5F                  LD E,A
3330   1614 96                  SUB (HL)
3331   1615 28 0D               JR Z,L0405
3332   1617 3D                  DEC A
3333   1618 28 0A               JR Z,L0405
3334   161A 3C                  INC A
3335   161B 3C          L0401:  INC A
3336   161C 28 06               JR Z,L0405
3337   161E 73                  LD (HL),E
3338   161F 2B                  DEC HL
3339   1620 A7                  AND A
3340   1621 CB 1B               RR E
3341   1623 73                  LD (HL),E
3342   1624 10 D9       L0405:  DJNZ L0406
3343   1626 18 CB               JR L0407

;LCDデータ出力 1628H-164AH スライダーテスト用画面
;3344   1628 80       

;3345   1629 19       
;3346   162A 1A       
;3347   162B 68       
;3348   162C 20     

;3348   162D 19    
;3349   162E 1E     
;3349   162F 68    
;3350   1630 20     

;3350   1631 19    
;3351   1632 22 
;3351   1633 68  
;3351   1634 20 

;3352   1635 19       
;3353   1636 26     
;3353   1637 68    
;3354   1638 20     

;3354   1639 90    
;3355   163A 20     

;3355   163B 19    
;3356   163C 1C       
;3357   163D 68       
;3358   163E 20     

;3358   163F 19    
;3359   1640 20     
;3359   1641 68    
;3360   1642 20     

;3360   1643 19    
;3361   1644 24       
;3362   1645 68       
;3363   1646 20    

;3363   1647 19    
;3364   1648 28    
;3364   1648 68    
;3365   164A FE 

;
;------------------------------------------------------------------------------
;[Routin]サンプルトリムテスト
3365   164B 11          L0303:  CP 11H
3366   164C 88                  ADC A,B
3367   164D 16 CD       L0402:  LD D,0CDH
3368   164F D5                  PUSH DE
3369   1650 0F                  RRCA
3370   1651 11 A1 16    L0418:  LD DE,16A1H
3371   1654 CD D5 0F            CALL L0007   ;LCDデータ出力 16A1H-16A3H ？
3372   1657 3E 1D               LD A,1DH
3373   1659 D3 88       L0411:  OUT (88H),A

	3374   165B 06 10               LD B,10H
	3375   165D 11 00 00    L0413:  LD DE,0000H
	3376   1660 DB 41       L0416:  IN A,(41H)
	3377   1662 6F                  LD L,A
	3378   1663 DB 40               IN A,(40H)
	3379   1665 26 00               LD H,00H
	3380   1667 29                  ADD HL,HL
	3381   1668 29                  ADD HL,HL
	3382   1669 29                  ADD HL,HL
	3383   166A 29                  ADD HL,HL
	3384   166B E6 0F               AND 0FH
	3385   166D B5                  OR L
	3386   166E 6F                  LD L,A
	3387   166F 19                  ADD HL,DE
	3388   1670 EB                  EX DE,HL
	3389   1671 10 ED               DJNZ L0416

	3390   1673 06 04               LD B,04H
	3391   1675 CB 3A       L0417:  SRL D
	3392   1677 CB 1B               RR E
	3393   1679 10 FA               DJNZ L0417

3394   167B D5                  PUSH DE
3395   167C FD E1               POP IY
3396   167E CD 56 15            CALL L0315  ;ENTERキー入力検知
3397   1681 28 CE               JR Z,L0418
3398   1683 3E 7D               LD A,7DH
3399   1685 D3 88               OUT (88H),A
3400   1687 C9                  RET

;1689-1698h「Trim RT1 To 0800」
;169A-169Fh「RT1 = 」
;3401   1688 10
;3401   1689 54         
;3402   168A 72         
;3403   168B 69         
;3404   168C 6D         
;3405   168D 20 52      
;3406   168F 54         
;3407   1690 31 20 54   
;3408   1693 6F         
;3409   1694 20 30      
;3410   1696 38 30      
;3411   1698 30

;3411   1699 90   
;3412   169A 52         
;3413   169B 54         
;3414   169C 31 20 3D   
;3415   169F 20 FE      

;LCDデータ出力 16A1H-16A3H ？
;3416   16A1 96                  SUB (HL)
;3417   16A2 15                  DEC D
;3418   16A3 FE 

;addr:16BCH OUT (51H),(16A4H～16AAH)
;3418   16A4 18               
;3419   16A5 04           
;3420   16A6 CC 05 68    
;3421   16A9 03          
;3422   16AA C1          

;[Routin]MIDIチェック
3423   16AB 11 EC 16    L0304:  LD DE,16ECH
3424   16AE CD D5 0F            CALL L0007   ;LCDデータ出力 16ED-16FCh「Connect MIDI IN&」16FE-170Dh「OUT; Press ENTER」
3425   16B1 CD 56 15    L0425:  CALL L0315  ;ENTERキー入力検知
3426   16B4 28 FB               JR Z,L0425
3427   16B6 21 A4 16            LD HL,16A4H
3428   16B9 01 51 07            LD BC,0751H
3429   16BC ED B3               OTIR          ;OUT (51H),(16A4H～16AAH)
3430   16BE 06 00               LD B,00H
3431   16C0 78          L0428:  LD A,B
3432   16C1 D3 50               OUT (50H),A
3433   16C3 0E 00               LD C,00H
3434   16C5 0D          L0427:  DEC C
3435   16C6 28 14       L0421:  JR Z,L0426
3436   16C8 DB 51       L0422:  IN A,(51H)
3437   16CA 0F                  RRCA
3438   16CB 30 F8               JR NC,L0427
3439   16CD DB 50               IN A,(50H)
3440   16CF B8                  CP B
3441   16D0 20 0A               JR NZ,L0426
3442   16D2 10 EC               DJNZ L0428
3443   16D4 11 0F 17            LD DE,170FH
3444   16D7 CD D5 0F            CALL L0007    ;LCDデータ出力 1710-1717h「MIDI: OK」1719-1723h「Press ENTER」
3445   16DA 18 06               JR L0429

3446   16DC 11 25 17    L0426:  LD DE,1725H
3447   16DF CD D5 0F            CALL L0007    ;LCDデータ出力 1726-1734h「MIDI FAIL. In &」1736-1745h「Out Unconnected?」
3448   16E2 CD 56 15            CALL L0315  ;ENTERキー入力検知
3449   16E5 28 FB               JR Z,L0429
3450   16E7 CB 7F               BIT 7,A
3451   16E9 C8                  RET Z
3452   16EA 18 BF               JR L0304

;16ED-16FCh「Connect MIDI IN&」
;16FE-170Dh「OUT; Press ENTER」
;3453   16EC 10
;3453   16ED 43
;3454   16EE 6F     
;3455   16EF 6E     
;3456   16F0 6E     
;3457   16F1 65     
;3458   16F2 63     
;3459   16F3 74     
;3460   16F4 20 4D  
;3461   16F6 49     
;3462   16F7 44     
;3463   16F8 49     
;3464   16F9 20 49  
;3465   16FB 4E     
;3466   16FC 26 90  
;3467   16FE 4F     
;3468   16FF 55     
;3469   1700 54     
;3470   1701 3B     
;3471   1702 20 50  
;3472   1704 72     
;3473   1705 65     
;3474   1706 73     
;3475   1707 73     
;3476   1708 20 45  
;3477   170A 4E     
;3478   170B 54     
;3479   170C 45     
;3480   170D 52     
;3481   170E FE     

;1710-1717h「MIDI: OK」
;1719-1723h「Press ENTER」
;3481   170F 10         
;3482   1710 4D         
;3483   1711 49         
;3484   1712 44         
;3485   1713 49         
;3486   1714 3A 20 4F   
;3487   1717 4B         
;3488   1718 90         
;3489   1719 50         
;3490   171A 72         
;3491   171B 65         
;3492   171C 73         
;3493   171D 73         
;3494   171E 20 45      
;3495   1720 4E         
;3496   1721 54         
;3497   1722 45         
;3498   1723 52         
;3499   1724 FE       

;1726-1734h「MIDI FAIL. In &」
;1736-1745h「Out Unconnected?」
;3499   1725 10      
;3500   1726 4D                  LD C,L
;3501   1727 49                  LD C,C
;3502   1728 44                  LD B,H
;3503   1729 49                  LD C,C
;3504   172A 20 46               JR NZ,L0436
;3505   172C 41                  LD B,C
;3506   172D 49                  LD C,C
;3507   172E 4C                  LD C,H
;3508   172F 2E 20               LD L,20H
;3509   1731 49          L0430:  LD C,C
;3510   1732 6E                  LD L,(HL)
;3511   1733 20 26               JR NZ,L0437
;3512   1735 90                  SUB B
;3513   1736 4F                  LD C,A
;3514   1737 75                  LD (HL),L
;3515   1738 74                  LD (HL),H
;3516   1739 20 55               JR NZ,L0438
;3517   173B 6E                  LD L,(HL)
;3518   173C 63                  LD H,E
;3519   173D 6F                  LD L,A
;3520   173E 6E                  LD L,(HL)
;3521   173F 6E                  LD L,(HL)
;3522   1740 65                  LD H,L
;3523   1741 63                  LD H,E
;3524   1742 74                  LD (HL),H
;3525   1743 65          L0431:  LD H,L
;3526   1744 64          L0432:  LD H,H
;3527   1745 3F                  CCF
;3528   1746 FE

;[Routin]SMPTEチェック
3528   1747 11 1D 18            LD      DE,181DH
3530   174A CD D5 0F            CALL    L0007   ;LCDデータ出力 181E-182Dh「Connect SMPTE IN」182F-183Eh「& OUT;hit ENTER」
3533   174D CD 56 15    L0440:  CALL L0315  ;ENTERキー入力検知
3534   1750 28 FB               JR Z,L0440
3535   1752 11 40 18            LD DE,1840H
3536   1755 CD D5 0F            CALL L0007      ;LCDデータ出力 1841-1850h「Testing SMPTE...」
3537   1758 06 2B               LD B,2BH
3538   175A CD 94 17            CALL L0441
3539   175D 21 0A 18            LD HL,180AH
3540   1760 01 53 0F            LD BC,0F53H
3541   1763 ED B3               OTIR          ;OUT (53H),(180AH～1819H)
3542   1765 CD A0 17    L0435:  CALL L0442
3543   1768 38 1A               JR C,L0443
3544   176A 06 36               LD B,36H
3545   176C CD 94 17            CALL L0441
3546   176F 21 19 18            LD HL,1819H
3547   1772 01 53 04    L0436:  LD BC,0453H
3548   1775 ED B3               OTIR          ;OUT (53H),(1819H～181CH)
3549   1777 CD A0 17            CALL L0442
3550   177A 38 08               JR C,L0443
3551   177C 11 52 18            LD DE,1852H
3552   177F CD D5 0F            CALL L0007    ;LCDデータ出力 1853-1862h「SMPTE OK @ 24&30」1864-186Eh「Press ENTER」
3553   1782 18 06               JR L0444
3554   1784 11 70 18    L0443:  LD DE,1870H
3555   1787 CD D5 0F            CALL L0007    ;LCDデータ出力 1871-1880h「SMPTE FAIL. In &」1882-1891h「Out Unconnected?」

;[SubRoutin]
3556   178A CD 56 15    L0444:  CALL L0315  ;ENTERキー入力検知
3557   178D 28 FB               JR Z,L0444
3558   178F CB 7F               BIT 7,A
3559   1791 C8                  RET Z
3560   1792 18 B3               JR L0305
3561   1794 3E 03       L0441:  LD A,03H
3562   1796 D3 4A               OUT (4AH),A
3563   1798 3E 07               LD A,07H
3564   179A D3 4A               OUT (4AH),A
3565   179C 78                  LD A,B
3566   179D D3 4A               OUT (4AH),A
3567   179F C9                  RET

;[SubRoutin]SMPTEチェックロジック
3568   17A0 06 10       L0442:  LD B,10H
3569   17A2 DB 52       L0445:  IN A,(52H)
3570   17A4 10 FC               DJNZ L0445
3571   17A6 11 14 00            LD DE,0014H
3572   17A9 CD F7 17    L0448:  CALL L0446
3573   17AC FE 5A               CP 5AH
3574   17AE 28 08               JR Z,L0447
3575   17B0 1B                  DEC DE
3576   17B1 7A                  LD A,D
3577   17B2 B3                  OR E
3578   17B3 20 F4               JR NZ,L0448
3579   17B5 37                  SCF
3580   17B6 18 1B               JR L0449

;[SubRoutin]
3581   17B8 11 00 00    L0447:  LD DE,0000H
3582   17BB 62                  LD H,D
3583   17BC CD E2 17            CALL L0450
3584   17BF 38 12               JR C,L0449
3585   17C1 62          L0452:  LD H,D
3586   17C2 25                  DEC H
3587   17C3 CD E2 17            CALL L0450
3588   17C6 38 0B               JR C,L0449
3589   17C8 CD F7 17    L0454:  CALL L0446
3590   17CB 38 06               JR C,L0449
3591   17CD BA                  CP D
3592   17CE 20 08               JR NZ,L0451
3593   17D0 15                  DEC D
3594   17D1 20 EE               JR NZ,L0452
;[Routin]
3595   17D3 3E 03       L0449:  LD A,03H
3596   17D5 D3 4A               OUT (4AH),A
3597   17D7 C9                  RET

;[SubRoutin]
3598   17D8 FE 5A       L0451:  CP 5AH
3599   17DA 20 03               JR NZ,L0453
3600   17DC 1D                  DEC E
3601   17DD 20 E9               JR NZ,L0454
3602   17DF 37          L0453:  SCF
3603   17E0 18 F1               JR L0449
3604   17E2 01 40 00    L0450:  LD BC,0040H
3605   17E5 DB 53       L0456:  IN A,(53H)
3606   17E7 CB 57               BIT 2,A
3607   17E9 20 07               JR NZ,L0455
3608   17EB 10 F8               DJNZ L0456
3609   17ED 0D                  DEC C
3610   17EE 20 F5               JR NZ,L0456
3611   17F0 37                  SCF
3612   17F1 C9                  RET

;[Routin]
3613   17F2 7C          L0455:  LD A,H
3614   17F3 D3 52               OUT (52H),A
3615   17F5 B7                  OR A
3616   17F6 C9                  RET

;[SubRoutin]
3617   17F7 01 40 00    L0446:  LD BC,0040H
3618   17FA DB 53       L0458:  IN A,(53H)
3619   17FC 0F                  RRCA
3620   17FD 38 07               JR C,L0457
3621   17FF 10 F9               DJNZ L0458
3622   1801 0D                  DEC C
3623   1802 20 F6               JR NZ,L0458
3624   1804 37                  SCF
3625   1805 C9                  RET
;[SubRoutin]
3626   1806 DB 52       L0457:  IN A,(52H)
3627   1808 B7                  OR A
3628   1809 C9                  RET

;addr:1763H OUT (53H),(180AH～1819H)
;3629   180A 18 18    
;3630   180C 18 01    
;3631   180E 04       
;3632   180F 04       
;3633   1810 00       
;3634   1811 06 5A    
;3635   1813 07       
;3636   1814 5A       
;3637   1815 05       
;3638   1816 E8       
;3639   1817 03       
;3640   1818 D1       
;addr:1775H OUT (53H),(1819H～181CH)
;3641   1819 05       
;3642   181A 68       
;3643   181B 03       
;3644   181C D1       

;181D-182Dh「Connect SMPTE IN」
;182F-183Eh「& OUT;hit ENTER」
;3645   181D 10
;3645   181E 43
;3646   181F 6F     
;3647   1820 6E     
;3648   1821 6E     
;3649   1822 65     
;3650   1823 63     
;3651   1824 74     
;3652   1825 20 53  
;3653   1827 4D     
;3654   1828 50     
;3655   1829 54     
;3656   182A 45     
;3657   182B 20 49  
;3658   182D 4E     
;3659   182E 90     
;3660   182F 26 20  
;3661   1831 4F     
;3662   1832 55     
;3663   1833 54     
;3664   1834 3B     
;3665   1835 20 68  
;3666   1837 69     
;3667   1838 74     
;3668   1839 20 45  
;3669   183B 4E     
;3670   183C 54     
;3671   183D 45     
;3672   183E 52     
;3673   183F FE     

;1841-1850h「Testing SMPTE...」
;3673   1840 10    
;3674   1841 54    
;3675   1842 65    
;3676   1843 73    
;3677   1844 74    
;3678   1845 69    
;3679   1846 6E    
;3680   1847 67    
;3681   1848 20 53 
;3682   184A 4D    
;3683   184B 50    
;3684   184C 54    
;3685   184D 45    
;3686   184E 2E 2E 
;3687   1850 2E FE 

;1853-1862h「SMPTE OK @ 24&30」
;1864-186Eh「Press ENTER」
;3688   1852 10 53  
;3689   1854 4D     
;3690   1855 50     
;3691   1856 54     
;3692   1857 45     
;3693   1858 20 4F  
;3694   185A 4B     
;3695   185B 20 40  
;3696   185D 20 32  
;3697   185F 34     
;3698   1860 26 33  
;3699   1862 30 90  
;3700   1864 50     
;3701   1865 72     
;3702   1866 65     
;3703   1867 73     
;3704   1868 73     
;3705   1869 20 45  
;3706   186B 4E     
;3707   186C 54     
;3708   186D 45     
;3709   186E 52     
;3710   186F FE     

;1871-1880h「SMPTE FAIL. In &」
;1882-1891h「Out Unconnected?」
;3710   1870 10       
;3711   1871 53       
;3712   1872 4D       
;3713   1873 50       
;3714   1874 54       
;3715   1875 45       
;3716   1876 20 46    
;3717   1878 41       
;3718   1879 49       
;3719   187A 4C       
;3720   187B 2E 20    
;3721   187D 49       
;3722   187E 6E       
;3723   187F 20 26    
;3724   1881 90       
;3725   1882 4F       
;3726   1883 75       
;3727   1884 74       
;3728   1885 20 55    
;3729   1887 6E       
;3730   1888 63       
;3731   1889 6F       
;3732   188A 6E       
;3733   188B 6E       
;3734   188C 65       
;3735   188D 63       
;3736   188E 74       
;3737   188F 65       
;3738   1890 64       
;3739   1891 3F       
;3740   1892 FE

;[SubRoutin]Dynamic Buttonチェック？
3740   1893 11 02 19            LD      DE,1902H
3743   1896 CD D5 0F            CALL L0007   ;LCDデータ出力 1903-1911h「Dynamic Button」1913-1919h「Value: 」
3744   1899 3E 78       L0476:  LD A,78H
3745   189B CD B2 18            CALL L0474   ;キー入力検知＋ウェイト処理
3746   189E 20 1B               JR NZ,L0475
3747   18A0 EB                  EX DE,HL
3748   18A1 3E 79               LD A,79H
3749   18A3 CD B2 18            CALL L0474   ;キー入力検知＋ウェイト処理
3750   18A6 20 13               JR NZ,L0475
3751   18A8 3E 7D               LD A,7DH
3752   18AA CD B2 18            CALL L0474   ;キー入力検知＋ウェイト処理
3753   18AD C2 56 15            JP NZ,L0315  ;ENTERキー入力検知
3754   18B0 18 E7       L0471:  JR L0476

;[SubRoutin]
3755   18B2 D3 88       L0474:  OUT (88H),A
3756   18B4 CD F9 18            CALL L0477   ;ウェイト処理
3757   18B7 DB 58               IN A,(58H)
3758   18B9 3C                  INC A
3759   18BA C9                  RET

;[Routin]
3760   18BB 06 08       L0475:  LD B,08H
3761   18BD 3E F7               LD A,0F7H
3762   18BF D3 8C               OUT (8CH),A
3763   18C1 11 81 68            LD DE,6881H
3764   18C4 3E 07       L0478:  LD A,07H
3765   18C6 D3 C0               OUT (C0H),A
3766   18C8 CD F9 18            CALL L0477   ;ウェイト処理
3767   18CB DB C0               IN A,(C0H)
3768   18CD 12                  LD (DE),A
3769   18CE 13                  INC DE
3770   18CF 10 F3               DJNZ L0478
3771   18D1 01 00 08            LD BC,0800H
3772   18D4 59                  LD E,C
3773   18D5 21 81 68    L0480:  LD HL,6881H
3774   18D8 7E                  LD A,(HL)
3775   18D9 B9                  CP C
3776   18DA 38 01               JR C,L0479
3777   18DC 4F          L0473:  LD C,A
3778   18DD 23          L0479:  INC HL
3779   18DE 10 F5               DJNZ L0480
3780   18E0 79                  LD A,C
3781   18E1 32 61 68            LD (6861H),A
3782   18E4 11 1B 19            LD DE,191BH
3783   18E7 CD D5 0F            CALL L0007     ;LCDデータ出力 191BH-191FH ？
3784   18EA DB 58       L0481:  IN A,(58H)
3785   18EC 3C                  INC A
3786   18ED 20 FB               JR NZ,L0481
3787   18EF CD F9 18            CALL L0477   ;ウェイト処理
3788   18F2 DB 58               IN A,(58H)
3789   18F4 3C                  INC A
3790   18F5 28 A2               JR Z,L0476
3791   18F7 18 F1               JR L0481

;[wait]ウェイト処理
3792   18F9 21 39 01    L0477:  LD HL,0139H
3793   18FC 2B          L0482:  DEC HL
3794   18FD 7C                  LD A,H
3795   18FE B5                  OR L
3796   18FF 20 FB               JR NZ,L0482
3797   1901 C9                  RET

;1903-1911h「Dynamic Button」
;1913-1919h「Value: 」
;3798   1902 10
;3798   1903 44
;3799   1904 79          
;3800   1905 6E          
;3801   1906 61          
;3802   1907 6D          
;3803   1908 69          
;3804   1909 63          
;3805   190A 20 42       
;3806   190C 75          
;3807   190D 74          
;3808   190E 74          
;3809   190F 6F          
;3810   1910 6E          
;3811   1911 73          
;3812   1912 90          
;3813   1913 56          
;3814   1914 61          
;3815   1915 6C          
;3816   1916 75          
;3817   1917 65          
;3818   1918 3A 20 FE    

;LCDデータ出力 191BH-191FH ？
;3819   191B 97    

;3820   191C 19    
;3821   191D 61    
;3822   191E 68    

;3823   191F FE 


;[Routin]ディスクチェック
3823   1920 3E 7F       L0307:  LD A,7FH
3825   1922 D3 88               OUT (88H),A
3826   1924 32 79 61            LD (6179H),A
3827   1927 11 55 1A            LD DE,1A55H
;[Routin]メニュー表示
3828   192A CD D5 0F    L0493:  CALL L0007     ;LCDデータ出力  1A55-1A65h「Disk Test: 1=VER」1A67-1A67h「2=WR/VER  3=EXI」
3829   192D 21 00 00            LD HL,0000H
3830   1930 22 61 68            LD (6861H),HL
3831   1933 22 63 68            LD (6863H),HL
3832   1936 22 6D 61            LD (616DH),HL
3833   1939 22 6F 61            LD (616FH),HL
3834   193C 22 71 61            LD (6171H),HL
3835   193F 22 73 61            LD (6173H),HL
3836   1942 21 0A 1B            LD HL,1B0AH
3837   1945 CD CD 19            CALL L0485
	;入力待ち
	3838   1948 DB 58       L0483:  IN A,(58H)
	3839   194A 3C                  INC A
	3840   194B 20 FB               JR NZ,L0483

	3841   194D CD 70 15            CALL L0327     ;ウェイト処理実行

	;入力値分岐処理
	3842   1950 DB 58       L0487:  IN A,(58H)
	3843   1952 CB 67               BIT 4,A
	3844   1954 C8                  RET Z
	3845   1955 CB 77               BIT 6,A
	3846   1957 28 31               JR Z,L0486
	3847   1959 CB 6F               BIT 5,A
	3848   195B 20 F3               JR NZ,L0487

;[Loop]ループ開始
3849   195D CD E2 19    L0495:  CALL L0488
3850   1960 C0                  RET NZ
3851   1961 CD 2C 1A            CALL L0489
3852   1964 21 20 1B            LD HL,1B20H
3853   1967 CD D6 19            CALL L0490      ;(1B20H～1B2AH)→(617BH～6185H)値をコピー
3854   196A CD D0 19    L0494:  CALL L0491
3855   196D C4 9B 19            CALL NZ,L0492
3856   1970 38 B8               JR C,L0493
3857   1972 FD 7E 0A            LD A,(IY+0AH)
3858   1975 3C                  INC A
3859   1976 FD 77 0A            LD (IY+0AH),A
3860   1979 FE 88               CP 88H
3861   197B 20 ED               JR NZ,L0494
3862   197D 21 15 1B            LD HL,1B15H
3863   1980 CD CD 19            CALL L0485
3864   1983 C4 9B 19            CALL NZ,L0492
3865   1986 38 A2               JR C,L0493
3866   1988 18 D3               JR L0495    ;ループ戻り


;[Routin]
3867   198A CD E2 19    L0486:  CALL L0488
3868   198D C0                  RET NZ
3869   198E 21 15 1B            LD HL,1B15H
3870   1991 CD CD 19            CALL L0485
3871   1994 C4 9B 19            CALL NZ,L0492
3872   1997 38 91               JR C,L0493
3873   1999 18 EF               JR L0486

;[Routin]
3874   199B 4F          L0492:  LD C,A
3875   199C 2A 61 68            LD HL,(6861H)
3876   199F 25                  DEC H
3877   19A0 7C                  LD A,H
3878   19A1 B5                  OR L
3879   19A2 20 1C               JR NZ,L0496
3880   19A4 79                  LD A,C
3881   19A5 FE C3               CP 0C3H
3882   19A7 20 05               JR NZ,L0497
3883   19A9 11 9B 1A            LD DE,1A9BH
3884   19AC 18 10               JR L0498

;[SubRoutin]ディスクチェック エラー時処理？
3885   19AE FE C2       L0497:  CP 0C2H
3886   19B0 20 05               JR NZ,L0499
3887   19B2 11 78 1A            LD DE,1A78H
3888   19B5 18 07               JR L0498
3889   19B7 FE C4       L0499:  CP 0C4H
3890   19B9 20 05               JR NZ,L0496
3891   19BB 11 BE 1A            LD DE,1ABEH
;[SubRoutin]
3892   19BE 37          L0498:  SCF
3893   19BF C9                  RET

;[SubRoutin]
3894   19C0 3A 63 68    L0496:  LD A,(6863H)
3895   19C3 FE 63               CP 63H
3896   19C5 28 04               JR Z,L0500
3897   19C7 3C                  INC A
3898   19C8 32 63 68            LD (6863H),A
3899   19CB A7          L0500:  AND A
3900   19CC C9                  RET

;[SubRoutin]
3901   19CD CD D6 19    L0485:  CALL L0490      ;addr:(可変)→(617BH～6185H)値をコピー
3902   19D0 CD AE 01    L0491:  CALL L0010
3903   19D3 FE 80               CP 80H
3904   19D5 C9                  RET

;[SubRoutin]
3911   19E2 3A 62 68    L0488:  LD A,(6862H)
3912   19E5 3C                  INC A
3913   19E6 FE 64               CP 64H
3914   19E8 20 08               JR NZ,L0501
3915   19EA 3A 61 68            LD A,(6861H)
3916   19ED 3C                  INC A
3917   19EE 32 61 68            LD (6861H),A
3918   19F1 AF                  XOR A
3919   19F2 32 62 68    L0501:  LD (6862H),A
3920   19F5 2A 6D 61            LD HL,(616DH)
3921   19F8 CD 21 1A            CALL L0502
3922   19FB 32 64 68            LD (6864H),A
3923   19FE 2A 71 61            LD HL,(6171H)
3924   1A01 CD 21 1A            CALL L0502
3925   1A04 32 65 68            LD (6865H),A
3926   1A07 2A 73 61            LD HL,(6173H)
3927   1A0A ED 5B 6F 61         LD DE,(616FH)
3928   1A0E 19                  ADD HL,DE
3929   1A0F CD 21 1A            CALL L0502
3930   1A12 32 66 68            LD (6866H),A
3931   1A15 11 E1 1A            LD DE,1AE1H
3932   1A18 CD D5 0F            CALL L0007     ;LCDデータ出力 1AE2-1AF1h「Pass HE DE SE P1」
3933   1A1B DB 58               IN A,(58H)
3934   1A1D 2F                  CPL
3935   1A1E E6 17               AND 17H
3936   1A20 C9                  RET

;[SubRoutin]
3937   1A21 11 64 00    L0502:  LD DE,0064H
3938   1A24 7D                  LD A,L
3939   1A25 A7                  AND A
3940   1A26 ED 52               SBC HL,DE
3941   1A28 D8                  RET C
3942   1A29 3E 63               LD A,63H
3943   1A2B C9                  RET

;[SubRoutin]
3944   1A2C ED 5F       L0489:  LD A,R
3945   1A2E 67                  LD H,A
3946   1A2F 6F                  LD L,A
3947   1A30 37                  SCF
3948   1A31 11 94 71            LD DE,7194H
3949   1A34 0E AB               LD C,0ABH
3950   1A36 3E 05               LD A,05H
3951   1A38 08          L0506:  EX AF,AF'
3952   1A39 06 18       L0505:  LD B,18H
3953   1A3B ED 6A       L0504:  ADC HL,HL
3954   1A3D 8F                  ADC A,A
3955   1A3E CB 6F               BIT 5,A
3956   1A40 28 01               JR Z,L0503
3957   1A42 3F                  CCF
3958   1A43 10 F6       L0503:  DJNZ L0504
3959   1A45 EB                  EX DE,HL
3960   1A46 73                  LD (HL),E
3961   1A47 23                  INC HL
3962   1A48 72                  LD (HL),D
3963   1A49 23                  INC HL
3964   1A4A 77                  LD (HL),A
3965   1A4B 23                  INC HL
3966   1A4C EB                  EX DE,HL
3967   1A4D 0D                  DEC C
3968   1A4E 20 E9               JR NZ,L0505
3969   1A50 08                  EX AF,AF'
3970   1A51 3D                  DEC A
3971   1A52 20 E4               JR NZ,L0506
3972   1A54 C9                  RET

;1A55-1A65h「Disk Test: 1=VER」
;1A67-1A67h「2=WR/VER  3=EXI」
;3973   1A55 10
;3973   1A56 44
;3974   1A57 69        
;3975   1A58 73        
;3976   1A59 6B        
;3977   1A5A 20 54     
;3978   1A5C 65        
;3979   1A5D 73        
;3980   1A5E 74        
;3981   1A5F 3A 20 31  )
;3982   1A62 3D        
;3983   1A63 56        
;3984   1A64 45        
;3985   1A65 52        
;3986   1A66 90        
;3987   1A67 32 3D 57  A
;3988   1A6A 52        
;3989   1A6B 2F        
;3990   1A6C 56        
;3991   1A6D 45        
;3992   1A6E 52        
;3993   1A6F 20 20     
;3994   1A71 33        
;3995   1A72 3D        
;3996   1A73 45        
;3997   1A74 58        
;3998   1A75 49        
;3999   1A76 54        
;4000   1A77 FE        

;1A78-1A88h「Not Ready: 1=VER」
;1A8A-1A99h「2=WR/VER  3=EXIT」
;4000   1A78 10     
;4001   1A79 4E        
;4002   1A7A 6F        
;4003   1A7B 74        
;4004   1A7C 20 52     
;4005   1A7E 65        
;4006   1A7F 61        
;4007   1A80 64        
;4008   1A81 79        
;4009   1A82 3A 20 31  
;4010   1A85 3D        
;4011   1A86 56        
;4012   1A87 45        
;4013   1A88 52        
;4014   1A89 90        
;4015   1A8A 32 3D 57  
;4016   1A8D 52        
;4017   1A8E 2F        
;4018   1A8F 56        
;4019   1A90 45        
;4020   1A91 52        
;4021   1A92 20 20     
;4022   1A94 33        
;4023   1A95 3D        
;4024   1A96 45        
;4025   1A97 58        
;4026   1A98 49        
;4027   1A99 54        
;4028   1A9A FE        

;1A9B-1AABh「WriteProt: 1=VER」
;1AAD-1ABCh「2=WR/VER  3=EXIT」
;4028   1A9B 10        
;4029   1A9C 57        
;4030   1A9D 72        
;4031   1A9E 69        
;4032   1A9F 74        
;4033   1AA0 65        
;4034   1AA1 50        
;4035   1AA2 72        
;4036   1AA3 6F        
;4037   1AA4 74        
;4038   1AA5 3A 20 31  
;4039   1AA8 3D        
;4040   1AA9 56        
;4041   1AAA 45        
;4042   1AAB 52        
;4043   1AAC 90        
;4044   1AAD 32 3D 57  
;4045   1AB0 52        
;4046   1AB1 2F        
;4047   1AB2 56        
;4048   1AB3 45        
;4049   1AB4 52        
;4050   1AB5 20 20     
;4051   1AB7 33        
;4052   1AB8 3D        
;4053   1AB9 45        
;4054   1ABA 58        
;4055   1ABB 49        
;4056   1ABC 54        
;4057   1ABD FE        

;1ABF-1ACEh「NotFmtted: 1=VER」
;1AD0-1ADFh「2=WR/VER  3=EXIT」
;4057   1ABE 10        
;4058   1ABF 4E        
;4059   1AC0 6F        
;4060   1AC1 74        
;4061   1AC2 46        
;4062   1AC3 6D        
;4063   1AC4 74        
;4064   1AC5 74        
;4065   1AC6 65        
;4066   1AC7 64        
;4067   1AC8 3A 20 31  
;4068   1ACB 3D        
;4069   1ACC 56        
;4070   1ACD 45        
;4071   1ACE 52        
;4072   1ACF 90        
;4073   1AD0 32 3D 57  
;4074   1AD3 52        
;4075   1AD4 2F        
;4076   1AD5 56        
;4077   1AD6 45        
;4078   1AD7 52        
;4079   1AD8 20 20     
;4080   1ADA 33        
;4081   1ADB 3D        
;4082   1ADC 45        
;4083   1ADD 58        
;4084   1ADE 49        
;4085   1ADF 54        
;4086   1AE0 FE        

;1AE1-1AF1h「Pass HE DE SE P1」
;4086   1AE1 10  
;4087   1AE2 50     
;4088   1AE3 61     
;4089   1AE4 73     
;4090   1AE5 73     
;4091   1AE6 20 48  
;4092   1AE8 45     
;4093   1AE9 20 44  
;4094   1AEB 45     
;4095   1AEC 20 53  
;4096   1AEE 45     
;4097   1AEF 20 50  
;4098   1AF1 31
;4098   1AF2 90
;4098   1AF3 18
;4099   1AF4 61     
;4100   1AF5 68     
;4101   1AF6 18 62  
;4102   1AF8 68     
;4103   1AF9 20 18  
;4104   1AFB 63     
;4105   1AFC 68     
;4106   1AFD 20 18  
;4107   1AFF 64     
;4108   1B00 68     
;4109   1B01 20 18  
;4110   1B03 65     
;4111   1B04 68     
;4112   1B05 20 18  
;4113   1B07 66     
;4114   1B08 68     
;4115   1B09 FE     

4115   1B0A 00                  NOP
4116   1B0B 00                  NOP
4117   1B0C 00                  NOP
4118   1B0D 00                  NOP
4119   1B0E 00                  NOP
4120   1B0F 00                  NOP
4121   1B10 00                  NOP
4122   1B11 00                  NOP
4123   1B12 00                  NOP
4124   1B13 00          L0518:  NOP
4125   1B14 00                  NOP

4126   1B15 0A                  LD A,(BC)
4127   1B16 00                  NOP
4128   1B17 00          L0519:  NOP
4129   1B18 80                  ADD A,B
4130   1B19 00                  NOP
4131   1B1A EA 04 00            JP PE,L0522
4132   1B1D 00                  NOP
4133   1B1E 00                  NOP
4134   1B1F 00          L0521:  NOP


;------------------------------------------------------------------------
;[SubRoutin](指定アドレス～+0BH)→(617BH～6185H)値をコピー
;L0009:
0274   019F 11 7B 61    L0009:  LD DE,617BH
0275   01A2 D5                  PUSH DE
0276   01A3 FD E1               POP IY       ;IYレジスタ←617BH
0277   01A5 01 0B 00            LD BC,000BH
0278   01A8 ED B0               LDIR
0279   01AA C9                  RET

;addr:00BCH (00FCH～0106H)→(617BH～6185H)値をコピー
;0159   00FC 00                  NOP
;addr:00CBH (00FDH～0107H)→(617BH～6185H)値をコピー
;0160   00FD 0A                  LD A,(BC)
;0161   00FE 00                  NOP
;0162   00FF 00                  NOP
;0163   0100 00                  NOP
;0164   0101 40                  LD B,B
;0165   0102 61                  LD H,C
;0166   0103 00                  NOP
;0167   0104 00                  NOP
;0168   0105 00                  NOP
;0169   0106 00                  NOP
;0170   0107 00                  NOP

;addr:00ECH (0108H～0112H)→(617BH～6185H)値をコピー
;0171   0108 0A             
;0172   0109 00             
;0173   010A A0             
;0174   010B 00             
;0175   010C 00             
;0176   010D 46             
;0177   010E 00             
;0178   010F 00             
;0179   0110 00             
;0180   0111 00             
;0181   0112 07             


;L0274:
2214   0FA8 11 7B 61    L0274:  LD DE,617BH
2215   0FAB D5                  PUSH DE
2216   0FAC FD E1               POP IY       ;IYレジスタ←617BH
2217   0FAE 01 0B 00            LD BC,000BH
2218   0FB1 ED B0               LDIR
2219   0FB3 C9                  RET

;addr:0F5BH (0FB4H～0FBEH)→(617BH～6185H)値をコピー
;2220   0FB4 0E 00  H
;2221   0FB6 6F     
;2222   0FB7 00     
;2223   0FB8 00     
;2224   0FB9 9A     
;2225   0FBA 00     
;2226   0FBB 00     
;2227   0FBC 00     
;2228   0FBD 00     
;2229   0FBE 0C     

;addr:0F67H (0FBFH～0FC9H)→(617BH～6185H)値をコピー
;2230   0FBF 0E 30   
;2231   0FC1 6B      
;2232   0FC2 00      
;2233   0FC3 00      
;2234   0FC4 0E 00   
;2235   0FC6 00      
;2236   0FC7 00      
;2237   0FC8 00      
;2238   0FC9 17      

;addr:0F72H (0FCAH～0FD4H)→(617BH～6185H)値をコピー
;2239   0FCA 0E 00      
;2240   0FCC 00         
;2241   0FCD 80         
;2242   0FCE 00         
;2243   0FCF 00         
;2244   0FD0 01 00 00   
;2245   0FD3 00         
;2246   0FD4 18 

;L0490:
3905   19D6 11 7B 61    L0490:  LD DE,617BH
3906   19D9 D5                  PUSH DE
3907   19DA FD E1               POP IY       ;IYレジスタ←617BH
3908   19DC 01 0B 00            LD BC,000BH
3909   19DF ED B0               LDIR
3910   19E1 C9                  RET


;addr:1967H (1B20H～1B2AH)→(617BH～6185H)値をコピー
;4135   1B20 0E 94      
;4136   1B22 71         
;4137   1B23 00         
;4138   1B24 00         
;4139   1B25 0E 00      
;1B27H-1B2AH⇒全部00H

;------------------------------------------------------------------------

---------------------------------------------
LIST OF LABELS
Sorted by address:      Sorted by name:
---------------------------------------------

L0032:  0000            L0001:  0069
L0016:  0002            L0002:  001B
L0522:  0004            L0003:  01AB
L0002:  001B            L0004:  0164
L0001:  0069            L0005:  1065
L0006:  0078            L0006:  0078
L0008:  0091            L0007:  0FD5
L0015:  00B0            L0008:  0091
L0017:  00DA            L0009:  019F
L0014:  00E4            L0010:  01AE
L0013:  00E9            L0011:  06FF
L0018:  013B            L0012:  107B
L0021:  0143            L0013:  00E9
L0024:  0145            L0014:  00E4
L0027:  0157            L0015:  00B0
L0020:  0163            L0016:  0002
L0004:  0164            L0017:  00DA
L0030:  0167            L0018:  013B
L0028:  0168            L0019:  016F
L0019:  016F            L0020:  0163
L0022:  0180            L0021:  0143
L0023:  0182            L0022:  0180
L0031:  0195            L0023:  0182
L0026:  0198            L0024:  0145
L0009:  019F            L0025:  01A0
L0025:  01A0            L0026:  0198
L0003:  01AB            L0027:  0157
L0010:  01AE            L0028:  0168
L0036:  01C1            L0029:  C103
L0035:  01D0            L0030:  0167
L0033:  01DE            L0031:  0195
L0034:  01E6            L0032:  0000
L0037:  01FA            L0033:  01DE
L0038:  0210            L0034:  01E6
L0040:  0253            L0035:  01D0
L0039:  0263            L0036:  01C1
L0050:  0284            L0037:  01FA
L0042:  0299            L0038:  0210
L0044:  02AB            L0039:  0263
L0048:  02BA            L0040:  0253
L0045:  02CA            L0041:  06DB
L0046:  02CD            L0042:  0299
L0047:  02ED            L0043:  0307
L0049:  02F9            L0044:  02AB
L0051:  0302            L0045:  02CA
L0043:  0307            L0046:  02CD
L0053:  030A            L0047:  02ED
L0052:  0314            L0048:  02BA
L0054:  0330            L0049:  02F9
L0055:  033D            L0050:  0284
L0057:  0347            L0051:  0302
L0056:  0354            L0052:  0314
L0059:  0372            L0053:  030A
L0058:  0382            L0054:  0330
L0060:  038A            L0055:  033D
L0061:  0394            L0056:  0354
L0095:  03BC            L0057:  0347
L0064:  03EA            L0058:  0382
L0065:  03F6            L0059:  0372
L0067:  03FA            L0060:  038A
L0066:  040A            L0061:  0394
L0071:  0414            L0062:  0490
L0070:  042A            L0063:  05EE
L0068:  0437            L0064:  03EA
L0069:  043A            L0065:  03F6
L0073:  044B            L0066:  040A
L0074:  044D            L0067:  03FA
L0075:  0463            L0068:  0437
L0076:  0472            L0069:  043A
L0077:  048A            L0070:  042A
L0062:  0490            L0071:  0414
L0078:  04A2            L0072:  04C0
L0079:  04BA            L0073:  044B
L0072:  04C0            L0074:  044D
L0080:  04C2            L0075:  0463
L0081:  04CD            L0076:  0472
L0083:  04F1            L0077:  048A
L0084:  04F4            L0078:  04A2
L0085:  051C            L0079:  04BA
L0082:  0556            L0080:  04C2
L0086:  0566            L0081:  04CD
L0087:  056D            L0082:  0556
L0108:  0573            L0083:  04F1
L0088:  057C            L0084:  04F4
L0089:  058F            L0085:  051C
L0090:  05A4            L0086:  0566
L0091:  05AE            L0087:  056D
L0092:  05CC            L0088:  057C
L0093:  05D9            L0089:  058F
L0094:  05EC            L0090:  05A4
L0063:  05EE            L0091:  05AE
L0096:  0603            L0092:  05CC
L0097:  0618            L0093:  05D9
L0098:  0639            L0094:  05EC
L0100:  0648            L0095:  03BC
L0101:  065E            L0096:  0603
L0103:  066D            L0097:  0618
L0099:  0685            L0098:  0639
L0102:  0694            L0099:  0685
L0104:  0698            L0100:  0648
L0105:  06A5            L0101:  065E
L0106:  06AE            L0102:  0694
L0107:  06BF            L0103:  066D
L0041:  06DB            L0104:  0698
L0109:  06F9            L0105:  06A5
L0011:  06FF            L0106:  06AE
L0119:  070D            L0107:  06BF
L0113:  0717            L0108:  0573
L0121:  0721            L0109:  06F9
L0117:  072F            L0110:  9607
L0115:  0742            L0111:  CD96
L0116:  0747            L0112:  074C
L0112:  074C            L0113:  0717
L0125:  0759            L0114:  0806
L0123:  076C            L0115:  0742
L0124:  0771            L0116:  0747
L0126:  077C            L0117:  072F
L0122:  077D            L0118:  0798
L0120:  078B            L0119:  070D
L0118:  0798            L0120:  078B
L0131:  07A6            L0121:  0721
L0128:  07D5            L0122:  077D
L0138:  07E5            L0123:  076C
L0136:  07E8            L0124:  0771
L0139:  07F2            L0125:  0759
L0114:  0806            L0126:  077C
L0140:  0810            L0127:  6805
L0141:  0849            L0128:  07D5
L0153:  0851            L0129:  096D
L0142:  0857            L0130:  0ED7
L0143:  085F            L0131:  07A6
L0144:  0876            L0132:  0B0F
L0145:  087E            L0133:  0EB3
L0146:  08A1            L0134:  0F58
L0147:  08C2            L0135:  0F64
L0148:  08DD            L0136:  07E8
L0149:  08E5            L0137:  E608
L0150:  08E8            L0138:  07E5
L0151:  08EE            L0139:  07F2
L0152:  090E            L0140:  0810
L0381:  0913            L0141:  0849
L0155:  091E            L0142:  0857
L0154:  0928            L0143:  085F
L0157:  0937            L0144:  0876
L0156:  093F            L0145:  087E
L0158:  0945            L0146:  08A1
L0171:  0950            L0147:  08C2
L0159:  0958            L0148:  08DD
L0170:  095A            L0149:  08E5
L0160:  0962            L0150:  08E8
L0181:  0964            L0151:  08EE
L0129:  096D            L0152:  090E
L0161:  0974            L0153:  0851
L0162:  0979            L0154:  0928
L0172:  098A            L0155:  091E
L0163:  0995            L0156:  093F
L0164:  099D            L0157:  0937
L0174:  09B7            L0158:  0945
L0176:  09DA            L0159:  0958
L0180:  0A13            L0160:  0962
L0178:  0A4E            L0161:  0974
L0179:  0A51            L0162:  0979
L0173:  0A5B            L0163:  0995
L0183:  0A6A            L0164:  099D
L0185:  0A73            L0165:  0D38
L0177:  0A7D            L0166:  0BE6
L0184:  0A85            L0167:  0D2A
L0190:  0A95            L0168:  0C49
L0187:  0AA0            L0169:  0D20
L0191:  0AAA            L0170:  095A
L0186:  0AB4            L0171:  0950
L0189:  0ABC            L0172:  098A
L0188:  0AC2            L0173:  0A5B
L0192:  0AC6            L0174:  09B7
L0175:  0ADD            L0175:  0ADD
L0193:  0AEA            L0176:  09DA
L0182:  0AF3            L0177:  0A7D
L0194:  0AFC            L0178:  0A4E
L0132:  0B0F            L0179:  0A51
L0197:  0B7B            L0180:  0A13
L0201:  0B99            L0181:  0964
L0200:  0BA1            L0182:  0AF3
L0199:  0BA4            L0183:  0A6A
L0195:  0BA7            L0184:  0A85
L0203:  0BB9            L0185:  0A73
L0198:  0BC5            L0186:  0AB4
L0202:  0BC8            L0187:  0AA0
L0196:  0BD1            L0188:  0AC2
L0204:  0BDA            L0189:  0ABC
L0166:  0BE6            L0190:  0A95
L0208:  0BEE            L0191:  0AAA
L0205:  0BFE            L0192:  0AC6
L0207:  0C0C            L0193:  0AEA
L0210:  0C0E            L0194:  0AFC
L0209:  0C1A            L0195:  0BA7
L0211:  0C21            L0196:  0BD1
L0206:  0C23            L0197:  0B7B
L0213:  0C26            L0198:  0BC5
L0215:  0C2F            L0199:  0BA4
L0212:  0C33            L0200:  0BA1
L0168:  0C49            L0201:  0B99
L0217:  0C52            L0202:  0BC8
L0216:  0C68            L0203:  0BB9
L0218:  0C80            L0204:  0BDA
L0214:  0C93            L0205:  0BFE
L0234:  0CC0            L0206:  0C23
L0230:  0CC3            L0207:  0C0C
L0225:  0CC4            L0208:  0BEE
L0224:  0CCD            L0209:  0C1A
L0227:  0CD6            L0210:  0C0E
L0232:  0CDD            L0211:  0C21
L0238:  0CE6            L0212:  0C33
L0220:  0CFD            L0213:  0C26
L0229:  0D01            L0214:  0C93
L0233:  0D04            L0215:  0C2F
L0219:  0D0C            L0216:  0C68
L0222:  0D10            L0217:  0C52
L0231:  0D12            L0218:  0C80
L0249:  0D16            L0219:  0D0C
L0169:  0D20            L0220:  0CFD
L0228:  0D22            L0221:  0D2C
L0167:  0D2A            L0222:  0D10
L0221:  0D2C            L0223:  F50C
L0165:  0D38            L0224:  0CCD
L0246:  0D6C            L0225:  0CC4
L0241:  0D74            L0226:  0E48
L0247:  0D81            L0227:  0CD6
L0242:  0D8D            L0228:  0D22
L0244:  0DA7            L0229:  0D01
L0240:  0DAA            L0230:  0CC3
L0243:  0DD0            L0231:  0D12
L0259:  0DDF            L0232:  0CDD
L0258:  0DE4            L0233:  0D04
L0257:  0DED            L0234:  0CC0
L0256:  0DFF            L0235:  0E26
L0252:  0E05            L0236:  0E3B
L0253:  0E06            L0237:  0E09
L0250:  0E07            L0238:  0CE6
L0237:  0E09            L0239:  0E0F
L0254:  0E0C            L0240:  0DAA
L0239:  0E0F            L0241:  0D74
L0245:  0E1A            L0242:  0D8D
L0235:  0E26            L0243:  0DD0
L0251:  0E31            L0244:  0DA7
L0236:  0E3B            L0245:  0E1A
L0255:  0E3C            L0246:  0D6C
L0248:  0E3D            L0247:  0D81
L0260:  0E3E            L0248:  0E3D
L0226:  0E48            L0249:  0D16
L0263:  0E53            L0250:  0E07
L0261:  0E5F            L0251:  0E31
L0262:  0E72            L0252:  0E05
L0264:  0E82            L0253:  0E06
L0265:  0E9F            L0254:  0E0C
L0266:  0EAE            L0255:  0E3C
L0133:  0EB3            L0256:  0DFF
L0267:  0EB8            L0257:  0DED
L0268:  0EC2            L0258:  0DE4
L0130:  0ED7            L0259:  0DDF
L0271:  0F03            L0260:  0E3E
L0269:  0F0E            L0261:  0E5F
L0270:  0F18            L0262:  0E72
L0273:  0F35            L0263:  0E53
L0272:  0F39            L0264:  0E82
L0134:  0F58            L0265:  0E9F
L0135:  0F64            L0266:  0EAE
L0277:  0F77            L0267:  0EB8
L0276:  0F88            L0268:  0EC2
L0275:  0F97            L0269:  0F0E
L0274:  0FA8            L0270:  0F18
L0007:  0FD5            L0271:  0F03
L0279:  0FE5            L0272:  0F39
L0280:  0FEA            L0273:  0F35
L0278:  0FF0            L0274:  0FA8
L0283:  1008            L0275:  0F97
L0284:  100D            L0276:  0F88
L0376:  1014            L0277:  0F77
L0285:  101D            L0278:  0FF0
L0289:  1038            L0279:  0FE5
L0290:  103A            L0280:  0FEA
L0287:  1040            L0281:  1071
L0286:  1048            L0282:  1063
L0291:  1050            L0283:  1008
L0292:  1059            L0284:  100D
L0293:  1061            L0285:  101D
L0282:  1063            L0286:  1048
L0005:  1065            L0287:  1040
L0294:  1067            L0288:  106F
L0288:  106F            L0289:  1038
L0281:  1071            L0290:  103A
L0295:  1073            L0291:  1050
L0012:  107B            L0292:  1059
L0308:  1084            L0293:  1061
L0329:  109C            L0294:  1067
L0296:  10A1            L0295:  1073
L0312:  10AB            L0296:  10A1
L0309:  10AF            L0297:  1136
L0311:  10BB            L0298:  118E
L0310:  10D3            L0299:  1306
L0314:  10DD            L0300:  154A
L0313:  10E3            L0301:  159C
L0316:  10EA            L0302:  15E0
L0297:  1136            L0303:  164B
L0325:  113F            L0304:  16AB
L0317:  1145            L0305:  1747
L0321:  1153            L0306:  1893
L0326:  1155            L0307:  1920
L0322:  1160            L0308:  1084
L0328:  1161            L0309:  10AF
L0319:  1165            L0310:  10D3
L0318:  116B            L0311:  10BB
L0320:  1172            L0312:  10AB
L0324:  1176            L0313:  10E3
L0323:  1177            L0314:  10DD
L0298:  118E            L0315:  1556
L0332:  1191            L0316:  10EA
L0336:  11B2            L0317:  1145
L0331:  11B7            L0318:  116B
L0337:  11B9            L0319:  1165
L0334:  11BA            L0320:  1172
L0335:  11BF            L0321:  1153
L0330:  11C2            L0322:  1160
L0338:  11C8            L0323:  1177
L0333:  11D6            L0324:  1176
L0345:  11EA            L0325:  113F
L0344:  11ED            L0326:  1155
L0339:  11FF            L0327:  1570
L0342:  1213            L0328:  1161
L0341:  121D            L0329:  109C
L0346:  122F            L0330:  11C2
L0348:  1250            L0331:  11B7
L0347:  1265            L0332:  1191
L0357:  1268            L0333:  11D6
L0340:  1274            L0334:  11BA
L0343:  1279            L0335:  11BF
L0349:  127C            L0336:  11B2
L0350:  1281            L0337:  11B9
L0356:  12F6            L0338:  11C8
L0351:  1301            L0339:  11FF
L0352:  1304            L0340:  1274
L0299:  1306            L0341:  121D
L0353:  130A            L0342:  1213
L0365:  130C            L0343:  1279
L0364:  130E            L0344:  11ED
L0363:  1318            L0345:  11EA
L0355:  131B            L0346:  122F
L0354:  1324            L0347:  1265
L0362:  132E            L0348:  1250
L0359:  1333            L0349:  127C
L0360:  1334            L0350:  1281
L0358:  1337            L0351:  1301
L0366:  1341            L0352:  1304
L0361:  1344            L0353:  130A
L0367:  1345            L0354:  1324
L0368:  1353            L0355:  131B
L0370:  1361            L0356:  12F6
L0369:  1364            L0357:  1268
L0371:  13B8            L0358:  1337
L0372:  13D0            L0359:  1333
L0378:  13F1            L0360:  1334
L0373:  13F2            L0361:  1344
L0379:  13FC            L0362:  132E
L0380:  13FE            L0363:  1318
L0374:  1407            L0364:  130E
L0382:  142C            L0365:  130C
L0383:  143A            L0366:  1341
L0384:  1448            L0367:  1345
L0385:  1461            L0368:  1353
L0386:  1469            L0369:  1364
L0387:  1471            L0370:  1361
L0388:  1479            L0371:  13B8
L0389:  1481            L0372:  13D0
L0390:  1489            L0373:  13F2
L0391:  1491            L0374:  1407
L0392:  1499            L0375:  4514
L0393:  1545            L0376:  1014
L0300:  154A            L0377:  E714
L0394:  1550            L0378:  13F1
L0315:  1556            L0379:  13FC
L0395:  155C            L0380:  13FE
L0404:  156B            L0381:  0913
L0327:  1570            L0382:  142C
L0396:  1573            L0383:  143A
L0301:  159C            L0384:  1448
L0399:  15A5            L0385:  1461
L0397:  15A6            L0386:  1469
L0398:  15AE            L0387:  1471
L0409:  15CA            L0388:  1479
L0302:  15E0            L0389:  1481
L0407:  15F3            L0390:  1489
L0406:  15FF            L0391:  1491
L0400:  160E            L0392:  1499
L0401:  161B            L0393:  1545
L0405:  1624            L0394:  1550
L0423:  162A            L0395:  155C
L0403:  1641            L0396:  1573
L0408:  1647            L0397:  15A6
L0303:  164B            L0398:  15AE
L0402:  164D            L0399:  15A5
L0418:  1651            L0400:  160E
L0410:  1655            L0401:  161B
L0411:  1659            L0402:  164D
L0413:  165D            L0403:  1641
L0416:  1660            L0404:  156B
L0414:  1661            L0405:  1624
L0417:  1675            L0406:  15FF
L0424:  169F            L0407:  15F3
L0412:  16AA            L0408:  1647
L0304:  16AB            L0409:  15CA
L0425:  16B1            L0410:  1655
L0415:  16B2            L0411:  1659
L0428:  16C0            L0412:  16AA
L0427:  16C5            L0413:  165D
L0421:  16C6            L0414:  1661
L0422:  16C8            L0415:  16B2
L0426:  16DC            L0416:  1660
L0419:  16DE            L0417:  1675
L0420:  16E1            L0418:  1651
L0429:  16E2            L0419:  16DE
L0439:  1718            L0420:  16E1
L0430:  1731            L0421:  16C6
L0431:  1743            L0422:  16C8
L0432:  1744            L0423:  162A
L0305:  1747            L0424:  169F
L0440:  174D            L0425:  16B1
L0434:  174F            L0426:  16DC
L0433:  1754            L0427:  16C5
L0437:  175B            L0428:  16C0
L0435:  1765            L0429:  16E2
L0436:  1772            L0430:  1731
L0443:  1784            L0431:  1743
L0444:  178A            L0432:  1744
L0438:  1790            L0433:  1754
L0441:  1794            L0434:  174F
L0442:  17A0            L0435:  1765
L0445:  17A2            L0436:  1772
L0448:  17A9            L0437:  175B
L0447:  17B8            L0438:  1790
L0452:  17C1            L0439:  1718
L0454:  17C8            L0440:  174D
L0449:  17D3            L0441:  1794
L0451:  17D8            L0442:  17A0
L0453:  17DF            L0443:  1784
L0450:  17E2            L0444:  178A
L0456:  17E5            L0445:  17A2
L0455:  17F2            L0446:  17F7
L0470:  17F4            L0447:  17B8
L0446:  17F7            L0448:  17A9
L0458:  17FA            L0449:  17D3
L0457:  1806            L0450:  17E2
L0460:  180F            L0451:  17D8
L0459:  1824            L0452:  17C1
L0461:  1862            L0453:  17DF
L0463:  1876            L0454:  17C8
L0462:  187A            L0455:  17F2
L0465:  1880            L0456:  17E5
L0469:  1891            L0457:  1806
L0306:  1893            L0458:  17FA
L0476:  1899            L0459:  1824
L0466:  189D            L0460:  180F
L0464:  189F            L0461:  1862
L0467:  18A7            L0462:  187A
L0468:  18A9            L0463:  1876
L0471:  18B0            L0464:  189F
L0474:  18B2            L0465:  1880
L0475:  18BB            L0466:  189D
L0472:  18BE            L0467:  18A7
L0478:  18C4            L0468:  18A9
L0480:  18D5            L0469:  1891
L0473:  18DC            L0470:  17F4
L0479:  18DD            L0471:  18B0
L0481:  18EA            L0472:  18BE
L0477:  18F9            L0473:  18DC
L0482:  18FC            L0474:  18B2
L0307:  1920            L0475:  18BB
L0493:  192A            L0476:  1899
L0483:  1948            L0477:  18F9
L0484:  194E            L0478:  18C4
L0487:  1950            L0479:  18DD
L0495:  195D            L0480:  18D5
L0494:  196A            L0481:  18EA
L0486:  198A            L0482:  18FC
L0492:  199B            L0483:  1948
L0497:  19AE            L0484:  194E
L0499:  19B7            L0485:  19CD
L0498:  19BE            L0486:  198A
L0496:  19C0            L0487:  1950
L0500:  19CB            L0488:  19E2
L0485:  19CD            L0489:  1A2C
L0491:  19D0            L0490:  19D6
L0490:  19D6            L0491:  19D0
L0488:  19E2            L0492:  199B
L0501:  19F2            L0493:  192A
L0502:  1A21            L0494:  196A
L0489:  1A2C            L0495:  195D
L0506:  1A38            L0496:  19C0
L0505:  1A39            L0497:  19AE
L0504:  1A3B            L0498:  19BE
L0503:  1A43            L0499:  19B7
L0509:  1A91            L0500:  19CB
L0507:  1A9B            L0501:  19F2
L0508:  1AB0            L0502:  1A21
L0511:  1AB4            L0503:  1A43
L0510:  1AD0            L0504:  1A3B
L0512:  1AD7            L0505:  1A39
L0513:  1AFA            L0506:  1A38
L0518:  1B13            L0507:  1A9B
L0519:  1B17            L0508:  1AB0
L0520:  1B1B            L0509:  1A91
L0521:  1B1F            L0510:  1AD0
L0515:  1B2F            L0511:  1AB4
L0514:  1B30            L0512:  1AD7
L0516:  1B41            L0513:  1AFA
L0517:  1B5A            L0514:  1B30
L0375:  4514            L0515:  1B2F
L0127:  6805            L0516:  1B41
L0110:  9607            L0517:  1B5A
L0029:  C103            L0518:  1B13
L0111:  CD96            L0519:  1B17
L0137:  E608            L0520:  1B1B
L0377:  E714            L0521:  1B1F
L0223:  F50C            L0522:  0004
