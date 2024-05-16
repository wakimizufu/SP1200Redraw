; Disassembly of the file "C:\workspace\dZ80\E-mu SP1200 OS Firmware ROM\ip362b-emu-2588 (Emu SP1200 firmware ROM).bin"
; 
; CPU Type: Z80
; 
; Created with dZ80 2.0
; 
; on Monday, 18 of October 2021 at 11:09 AM
; 
0000 1867      jr      0069h
0002 d358      out     (58h),a
0004 00        nop     
0005 00        nop     
0006 00        nop     
0007 00        nop     
0008 08        ex      af,af'
0009 d9        exx     
000a ed40      in      b,(c)
000c 7d        ld      a,l
000d d398      out     (98h),a
000f 7c        ld      a,h
0010 d39c      out     (9ch),a
0012 23        inc     hl
0013 1b        dec     de
0014 7a        ld      a,d
0015 b3        or      e
0016 d9        exx     
0017 2802      jr      z,001bh
0019 08        ex      af,af'
001a c9        ret     

001b e1        pop     hl
001c c9        ret     

001d 00        nop     
001e 00        nop     
001f 00        nop     
0020 00        nop     
0021 00        nop     
0022 00        nop     
0023 00        nop     
0024 00        nop     
0025 00        nop     
0026 00        nop     
0027 00        nop     
0028 00        nop     
0029 00        nop     
002a 00        nop     
002b 00        nop     
002c 00        nop     
002d 00        nop     
002e 00        nop     
002f 00        nop     
0030 00        nop     
0031 00        nop     
0032 00        nop     
0033 00        nop     
0034 00        nop     
0035 00        nop     
0036 00        nop     
0037 00        nop     
0038 c3ab01    jp      01abh
003b 00        nop     
003c 00        nop     
003d 00        nop     
003e 00        nop     
003f 00        nop     
0040 00        nop     
0041 00        nop     
0042 00        nop     
0043 00        nop     
0044 00        nop     
0045 00        nop     
0046 00        nop     
0047 00        nop     
0048 00        nop     
0049 00        nop     
004a 00        nop     
004b 00        nop     
004c 00        nop     
004d 00        nop     
004e 00        nop     
004f 00        nop     
0050 00        nop     
0051 00        nop     
0052 00        nop     
0053 00        nop     
0054 00        nop     
0055 00        nop     
0056 00        nop     
0057 00        nop     
0058 00        nop     
0059 00        nop     
005a 00        nop     
005b 00        nop     
005c 00        nop     
005d 00        nop     
005e 00        nop     
005f 00        nop     
0060 00        nop     
0061 00        nop     
0062 00        nop     
0063 00        nop     
0064 00        nop     
0065 00        nop     
0066 c3ab01    jp      01abh
0069 310062    ld      sp,6200h
006c af        xor     a
006d cd6401    call    0164h
0070 3e7c      ld      a,7ch
0072 d388      out     (88h),a
0074 215901    ld      hl,0159h
0077 46        ld      b,(hl)
0078 23        inc     hl
0079 7e        ld      a,(hl)
007a cd6510    call    1065h
007d 10f9      djnz    0078h
007f 111301    ld      de,0113h
0082 cdd50f    call    0fd5h
0085 af        xor     a
0086 d38c      out     (8ch),a
0088 d390      out     (90h),a
008a 3d        dec     a
008b 210000    ld      hl,0000h
008e 010000    ld      bc,0000h
0091 77        ld      (hl),a
0092 23        inc     hl
0093 10fc      djnz    0091h
0095 0d        dec     c
0096 20f9      jr      nz,0091h
0098 d38c      out     (8ch),a
009a d390      out     (90h),a
009c 215d01    ld      hl,015dh
009f 015107    ld      bc,0751h
00a2 edb3      otir    
00a4 3e7c      ld      a,7ch
00a6 327961    ld      (6179h),a
00a9 ed5e      im      2
00ab 3e60      ld      a,60h
00ad 327a61    ld      (617ah),a
00b0 21fc00    ld      hl,00fch
00b3 cd9f01    call    019fh
00b6 cdae01    call    01aeh
00b9 db58      in      a,(58h)
00bb e660      and     60h
00bd caab01    jp      z,01abh
00c0 cb77      bit     6,a
00c2 caff06    jp      z,06ffh
00c5 cb6f      bit     5,a
00c7 ca7b10    jp      z,107bh
00ca 21fd00    ld      hl,00fdh
00cd cd9f01    call    019fh
00d0 cdae01    call    01aeh
00d3 fd7e09    ld      a,(iy+09h)
00d6 fe80      cp      80h
00d8 280f      jr      z,00e9h
00da fec2      cp      0c2h
00dc 114701    ld      de,0147h
00df 2003      jr      nz,00e4h
00e1 113501    ld      de,0135h
00e4 cdd50f    call    0fd5h
00e7 18c7      jr      00b0h
00e9 210801    ld      hl,0108h
00ec cd9f01    call    019fh
00ef cdae01    call    01aeh
00f2 fd7e09    ld      a,(iy+09h)
00f5 fe80      cp      80h
00f7 ca0200    jp      z,0002h
00fa 18de      jr      00dah
00fc 00        nop     
00fd 0a        ld      a,(bc)
00fe 00        nop     
00ff 00        nop     
0100 00        nop     
0101 40        ld      b,b
0102 61        ld      h,c
0103 00        nop     
0104 00        nop     
0105 00        nop     
0106 00        nop     
0107 00        nop     
0108 0a        ld      a,(bc)
0109 00        nop     
010a a0        and     b
010b 00        nop     
010c 00        nop     
010d 46        ld      b,(hl)
010e 00        nop     
010f 00        nop     
0110 00        nop     
0111 00        nop     
0112 07        rlca    
0113 53        ld      d,e
0114 50        ld      d,b
0115 2d        dec     l
0116 313230    ld      sp,3032h
0119 3020      jr      nc,013bh
011b 2052      jr      nz,016fh
011d 45        ld      b,l
011e 56        ld      d,(hl)
011f 2042      jr      nz,0163h
0121 2020      jr      nz,0143h
0123 90        sub     b
0124 4c        ld      c,h
0125 6f        ld      l,a
0126 61        ld      h,c
0127 64        ld      h,h
0128 69        ld      l,c
0129 6e        ld      l,(hl)
012a 67        ld      h,a
012b 2053      jr      nz,0180h
012d 6f        ld      l,a
012e 66        ld      h,(hl)
012f 74        ld      (hl),h
0130 77        ld      (hl),a
0131 61        ld      h,c
0132 72        ld      (hl),d
0133 65        ld      h,l
0134 fe90      cp      90h
0136 49        ld      c,c
0137 6e        ld      l,(hl)
0138 73        ld      (hl),e
0139 65        ld      h,l
013a 72        ld      (hl),d
013b 74        ld      (hl),h
013c 2044      jr      nz,0182h
013e 69        ld      l,c
013f 73        ld      (hl),e
0140 6b        ld      l,e
0141 65        ld      h,l
0142 74        ld      (hl),h
0143 74        ld      (hl),h
0144 65        ld      h,l
0145 20fe      jr      nz,0145h
0147 90        sub     b
0148 44        ld      b,h
0149 69        ld      l,c
014a 73        ld      (hl),e
014b 6b        ld      l,e
014c 2052      jr      nz,01a0h
014e 65        ld      h,l
014f 61        ld      h,c
0150 64        ld      h,h
0151 2045      jr      nz,0198h
0153 72        ld      (hl),d
0154 72        ld      (hl),d
0155 6f        ld      l,a
0156 72        ld      (hl),d
0157 20fe      jr      nz,0157h
0159 03        inc     bc
015a 380c      jr      c,0168h
015c 011804    ld      bc,0418h
015f cc03c1    call    z,0c103h
0162 05        dec     b
0163 68        ld      l,b
0164 018008    ld      bc,0880h
0167 ed79      out     (c),a
0169 0c        inc     c
016a 10fb      djnz    0167h
016c 010008    ld      bc,0800h
016f 21fdff    ld      hl,0fffdh
0172 3e02      ld      a,02h
0174 cd9501    call    0195h
0177 3e00      ld      a,00h
0179 cd9501    call    0195h
017c 210000    ld      hl,0000h
017f 3e03      ld      a,03h
0181 cd9501    call    0195h
0184 3e04      ld      a,04h
0186 cd9501    call    0195h
0189 79        ld      a,c
018a c608      add     a,08h
018c 4f        ld      c,a
018d 10e0      djnz    016fh
018f 210000    ld      hl,0000h
0192 0e07      ld      c,07h
0194 af        xor     a
0195 81        add     a,c
0196 d394      out     (94h),a
0198 7d        ld      a,l
0199 d398      out     (98h),a
019b 7c        ld      a,h
019c d39c      out     (9ch),a
019e c9        ret     

019f 117b61    ld      de,617bh
01a2 d5        push    de
01a3 fde1      pop     iy
01a5 010b00    ld      bc,000bh
01a8 edb0      ldir    
01aa c9        ret     

01ab c30000    jp      0000h
01ae fd7e00    ld      a,(iy+00h)
01b1 e6fe      and     0feh
01b3 2829      jr      z,01deh
01b5 21db01    ld      hl,01dbh
01b8 010300    ld      bc,0003h
01bb edb1      cpir    
01bd 2827      jr      z,01e6h
01bf 3ec1      ld      a,0c1h
01c1 fd7709    ld      (iy+09h),a
01c4 3e05      ld      a,05h
01c6 d353      out     (53h),a
01c8 3a7a61    ld      a,(617ah)
01cb d353      out     (53h),a
01cd 118001    ld      de,0180h
01d0 1b        dec     de
01d1 7a        ld      a,d
01d2 b3        or      e
01d3 20fb      jr      nz,01d0h
01d5 fd7e09    ld      a,(iy+09h)
01d8 fe80      cp      80h
01da c9        ret     

01db 0a        ld      a,(bc)
01dc 0e1e      ld      c,1eh
01de 3d        dec     a
01df 325a61    ld      (615ah),a
01e2 3e80      ld      a,80h
01e4 18db      jr      01c1h
01e6 3e04      ld      a,04h
01e8 325b61    ld      (615bh),a
01eb 3e0a      ld      a,0ah
01ed 325c61    ld      (615ch),a
01f0 3e05      ld      a,05h
01f2 d353      out     (53h),a
01f4 3e66      ld      a,66h
01f6 d353      out     (53h),a
01f8 0603      ld      b,03h
01fa 10fe      djnz    01fah
01fc 3e10      ld      a,10h
01fe d351      out     (51h),a
0200 db51      in      a,(51h)
0202 cb67      bit     4,a
0204 280a      jr      z,0210h
0206 fdcb0056  bit     2,(iy+00h)
020a 2804      jr      z,0210h
020c 3ec3      ld      a,0c3h
020e 18b1      jr      01c1h
0210 fd360900  ld      (iy+09h),00h
0214 fd5e04    ld      e,(iy+04h)
0217 fd5605    ld      d,(iy+05h)
021a fd7e06    ld      a,(iy+06h)
021d ed536661  ld      (6166h),de
0221 326861    ld      (6168h),a
0224 fd4e07    ld      c,(iy+07h)
0227 fd4608    ld      b,(iy+08h)
022a ed436961  ld      (6169h),bc
022e fd6e01    ld      l,(iy+01h)
0231 fd6602    ld      h,(iy+02h)
0234 fd7e03    ld      a,(iy+03h)
0237 327761    ld      (6177h),a
023a a7        and     a
023b 2826      jr      z,0263h
023d cb85      res     0,l
023f cb83      res     0,e
0241 cb81      res     0,c
0243 ed536661  ld      (6166h),de
0247 ed436961  ld      (6169h),bc
024b e607      and     07h
024d 5f        ld      e,a
024e 16fc      ld      d,0fch
0250 018008    ld      bc,0880h
0253 ed59      out     (c),e
0255 7a        ld      a,d
0256 c608      add     a,08h
0258 57        ld      d,a
0259 d394      out     (94h),a
025b af        xor     a
025c d398      out     (98h),a
025e d39c      out     (9ch),a
0260 0c        inc     c
0261 10f0      djnz    0253h
0263 227561    ld      (6175h),hl
0266 fd7e0a    ld      a,(iy+0ah)
0269 a7        and     a
026a 1f        rra     
026b 325d61    ld      (615dh),a
026e 5f        ld      e,a
026f 1f        rra     
0270 e680      and     80h
0272 325e61    ld      (615eh),a
0275 cddb06    call    06dbh
0278 eb        ex      de,hl
0279 3a5a61    ld      a,(615ah)
027c cb7f      bit     7,a
027e 2019      jr      nz,0299h
0280 95        sub     l
0281 ca0703    jp      z,0307h
0284 67        ld      h,a
0285 7d        ld      a,l
0286 a7        and     a
0287 2810      jr      z,0299h
0289 325a61    ld      (615ah),a
028c 7c        ld      a,h
028d 2608      ld      h,08h
028f cb7f      bit     7,a
0291 2818      jr      z,02abh
0293 2600      ld      h,00h
0295 ed44      neg     
0297 1812      jr      02abh
0299 af        xor     a
029a 325a61    ld      (615ah),a
029d 2608      ld      h,08h
029f 3e10      ld      a,10h
02a1 d353      out     (53h),a
02a3 db53      in      a,(53h)
02a5 cb6f      bit     5,a
02a7 2021      jr      nz,02cah
02a9 3e5a      ld      a,5ah
02ab 3d        dec     a
02ac 326061    ld      (6160h),a
02af 3a7961    ld      a,(6179h)
02b2 e6f7      and     0f7h
02b4 b4        or      h
02b5 d388      out     (88h),a
02b7 327961    ld      (6179h),a
02ba 3e05      ld      a,05h
02bc d353      out     (53h),a
02be 3ee6      ld      a,0e6h
02c0 d353      out     (53h),a
02c2 3e05      ld      a,05h
02c4 d353      out     (53h),a
02c6 3e66      ld      a,66h
02c8 d353      out     (53h),a
02ca 118001    ld      de,0180h
02cd 1b        dec     de
02ce 7a        ld      a,d
02cf b3        or      e
02d0 20fb      jr      nz,02cdh
02d2 3a6061    ld      a,(6160h)
02d5 3d        dec     a
02d6 faed02    jp      m,02edh
02d9 326061    ld      (6160h),a
02dc 3a7961    ld      a,(6179h)
02df cb5f      bit     3,a
02e1 28d7      jr      z,02bah
02e3 3e10      ld      a,10h
02e5 d353      out     (53h),a
02e7 db53      in      a,(53h)
02e9 cb6f      bit     5,a
02eb 28cd      jr      z,02bah
02ed 3a5d61    ld      a,(615dh)
02f0 6f        ld      l,a
02f1 3a5a61    ld      a,(615ah)
02f4 95        sub     l
02f5 2802      jr      z,02f9h
02f7 188b      jr      0284h
02f9 fdcb0056  bit     2,(iy+00h)
02fd 2808      jr      z,0307h
02ff 118307    ld      de,0783h
0302 1b        dec     de
0303 7a        ld      a,d
0304 b3        or      e
0305 20fb      jr      nz,0302h
0307 119cad    ld      de,0ad9ch
030a 1b        dec     de
030b 7a        ld      a,d
030c b3        or      e
030d 2005      jr      nz,0314h
030f 3ec2      ld      a,0c2h
0311 c3c101    jp      01c1h
0314 3e10      ld      a,10h
0316 d351      out     (51h),a
0318 db51      in      a,(51h)
031a cb5f      bit     3,a
031c 28ec      jr      z,030ah
031e 215f03    ld      hl,035fh
0321 fdcb0066  bit     4,(iy+00h)
0325 2809      jr      z,0330h
0327 fdcb096e  bit     5,(iy+09h)
032b 2003      jr      nz,0330h
032d 218105    ld      hl,0581h
0330 117145    ld      de,4571h
0333 1b        dec     de
0334 7a        ld      a,d
0335 b3        or      e
0336 2005      jr      nz,033dh
0338 3ec2      ld      a,0c2h
033a c3c101    jp      01c1h
033d 3e10      ld      a,10h
033f d351      out     (51h),a
0341 db51      in      a,(51h)
0343 cb6f      bit     5,a
0345 20e9      jr      nz,0330h
0347 117145    ld      de,4571h
034a 1b        dec     de
034b 7a        ld      a,d
034c b3        or      e
034d 2005      jr      nz,0354h
034f 3ec2      ld      a,0c2h
0351 c3c101    jp      01c1h
0354 3e10      ld      a,10h
0356 d351      out     (51h),a
0358 db51      in      a,(51h)
035a cb6f      bit     5,a
035c 28e9      jr      z,0347h
035e e9        jp      (hl)
035f db52      in      a,(52h)
0361 db52      in      a,(52h)
0363 db52      in      a,(52h)
0365 db52      in      a,(52h)
0367 3e43      ld      a,43h
0369 d353      out     (53h),a
036b 3ed9      ld      a,0d9h
036d d353      out     (53h),a
036f 111405    ld      de,0514h
0372 db53      in      a,(53h)
0374 e601      and     01h
0376 200a      jr      nz,0382h
0378 1b        dec     de
0379 7a        ld      a,d
037a b3        or      e
037b 20f5      jr      nz,0372h
037d 3ec4      ld      a,0c4h
037f c3c101    jp      01c1h
0382 216261    ld      hl,6162h
0385 015204    ld      bc,0452h
0388 eda2      ini     
038a db53      in      a,(53h)
038c e601      and     01h
038e 28fa      jr      z,038ah
0390 eda2      ini     
0392 20f6      jr      nz,038ah
0394 db53      in      a,(53h)
0396 cb47      bit     0,a
0398 28fa      jr      z,0394h
039a 3e01      ld      a,01h
039c d353      out     (53h),a
039e db53      in      a,(53h)
03a0 cb77      bit     6,a
03a2 c29004    jp      nz,0490h
03a5 3a6261    ld      a,(6162h)
03a8 67        ld      h,a
03a9 3a5e61    ld      a,(615eh)
03ac 17        rla     
03ad 3a5d61    ld      a,(615dh)
03b0 17        rla     
03b1 bc        cp      h
03b2 c29004    jp      nz,0490h
03b5 fdcb0056  bit     2,(iy+00h)
03b9 c2ee05    jp      nz,05eeh
03bc 3e03      ld      a,03h
03be d353      out     (53h),a
03c0 3ed9      ld      a,0d9h
03c2 d353      out     (53h),a
03c4 db52      in      a,(52h)
03c6 db52      in      a,(52h)
03c8 db52      in      a,(52h)
03ca db52      in      a,(52h)
03cc 2a6961    ld      hl,(6169h)
03cf ed5b7561  ld      de,(6175h)
03d3 3a7761    ld      a,(6177h)
03d6 a7        and     a
03d7 2811      jr      z,03eah
03d9 3e07      ld      a,07h
03db d394      out     (94h),a
03dd 7b        ld      a,e
03de d398      out     (98h),a
03e0 7a        ld      a,d
03e1 d39c      out     (9ch),a
03e3 44        ld      b,h
03e4 4d        ld      c,l
03e5 cb38      srl     b
03e7 cb19      rr      c
03e9 09        add     hl,bc
03ea 010e00    ld      bc,000eh
03ed fdcb096e  bit     5,(iy+09h)
03f1 2803      jr      z,03f6h
03f3 21ffff    ld      hl,0ffffh
03f6 7c        ld      a,h
03f7 b5        or      l
03f8 2810      jr      z,040ah
03fa db53      in      a,(53h)
03fc e601      and     01h
03fe 28fa      jr      z,03fah
0400 db52      in      a,(52h)
0402 2b        dec     hl
0403 10f1      djnz    03f6h
0405 0d        dec     c
0406 20ee      jr      nz,03f6h
0408 182d      jr      0437h
040a 3a7761    ld      a,(6177h)
040d a7        and     a
040e c23a04    jp      nz,043ah
0411 2a6661    ld      hl,(6166h)
0414 7c        ld      a,h
0415 b5        or      l
0416 2812      jr      z,042ah
0418 db53      in      a,(53h)
041a e601      and     01h
041c 28f6      jr      z,0414h
041e db52      in      a,(52h)
0420 12        ld      (de),a
0421 13        inc     de
0422 2b        dec     hl
0423 10ef      djnz    0414h
0425 0d        dec     c
0426 20ec      jr      nz,0414h
0428 180d      jr      0437h
042a db53      in      a,(53h)
042c e601      and     01h
042e 28fa      jr      z,042ah
0430 db52      in      a,(52h)
0432 10f6      djnz    042ah
0434 0d        dec     c
0435 20f3      jr      nz,042ah
0437 c3c004    jp      04c0h
043a 2a6661    ld      hl,(6166h)
043d 2b        dec     hl
043e d5        push    de
043f eb        ex      de,hl
0440 213f09    ld      hl,093fh
0443 ed52      sbc     hl,de
0445 eb        ex      de,hl
0446 3003      jr      nc,044bh
0448 213f09    ld      hl,093fh
044b 23        inc     hl
044c d1        pop     de
044d db53      in      a,(53h)
044f e601      and     01h
0451 28fa      jr      z,044dh
0453 db52      in      a,(52h)
0455 d341      out     (41h),a
0457 13        inc     de
0458 7b        ld      a,e
0459 d398      out     (98h),a
045b 7a        ld      a,d
045c d39c      out     (9ch),a
045e 1003      djnz    0463h
0460 0d        dec     c
0461 28d4      jr      z,0437h
0463 db53      in      a,(53h)
0465 e601      and     01h
0467 28fa      jr      z,0463h
0469 db52      in      a,(52h)
046b d341      out     (41h),a
046d 1003      djnz    0472h
046f 0d        dec     c
0470 28c5      jr      z,0437h
0472 db53      in      a,(53h)
0474 e601      and     01h
0476 28fa      jr      z,0472h
0478 db52      in      a,(52h)
047a d340      out     (40h),a
047c 13        inc     de
047d 7b        ld      a,e
047e d398      out     (98h),a
0480 7a        ld      a,d
0481 d39c      out     (9ch),a
0483 2b        dec     hl
0484 2b        dec     hl
0485 1003      djnz    048ah
0487 0d        dec     c
0488 28ad      jr      z,0437h
048a 7c        ld      a,h
048b b5        or      l
048c 289c      jr      z,042ah
048e 18bd      jr      044dh
0490 2a7161    ld      hl,(6171h)
0493 23        inc     hl
0494 227161    ld      (6171h),hl
0497 3a5b61    ld      a,(615bh)
049a 3d        dec     a
049b 2005      jr      nz,04a2h
049d 3ec5      ld      a,0c5h
049f c3c101    jp      01c1h
04a2 325b61    ld      (615bh),a
04a5 fe03      cp      03h
04a7 2011      jr      nz,04bah
04a9 2b        dec     hl
04aa 227161    ld      (6171h),hl
04ad 2a7361    ld      hl,(6173h)
04b0 23        inc     hl
04b1 227361    ld      (6173h),hl
04b4 cddb06    call    06dbh
04b7 c30703    jp      0307h
04ba cddb06    call    06dbh
04bd c39902    jp      0299h
04c0 2604      ld      h,04h
04c2 db53      in      a,(53h)
04c4 cb47      bit     0,a
04c6 28fa      jr      z,04c2h
04c8 db52      in      a,(52h)
04ca 25        dec     h
04cb 20f5      jr      nz,04c2h
04cd db53      in      a,(53h)
04cf cb47      bit     0,a
04d1 28fa      jr      z,04cdh
04d3 3e01      ld      a,01h
04d5 d353      out     (53h),a
04d7 db53      in      a,(53h)
04d9 cb77      bit     6,a
04db c25605    jp      nz,0556h
04de 3e03      ld      a,03h
04e0 d353      out     (53h),a
04e2 3ec0      ld      a,0c0h
04e4 d353      out     (53h),a
04e6 3a7761    ld      a,(6177h)
04e9 a7        and     a
04ea 2805      jr      z,04f1h
04ec 214009    ld      hl,0940h
04ef 1803      jr      04f4h
04f1 21000e    ld      hl,0e00h
04f4 ed4b6961  ld      bc,(6169h)
04f8 a7        and     a
04f9 ed42      sbc     hl,bc
04fb 44        ld      b,h
04fc 4d        ld      c,l
04fd 2a7561    ld      hl,(6175h)
0500 09        add     hl,bc
0501 227561    ld      (6175h),hl
0504 2a6661    ld      hl,(6166h)
0507 3a6861    ld      a,(6168h)
050a a7        and     a
050b ed42      sbc     hl,bc
050d 226661    ld      (6166h),hl
0510 de00      sbc     a,00h
0512 326861    ld      (6168h),a
0515 3805      jr      c,051ch
0517 b4        or      h
0518 b5        or      l
0519 2001      jr      nz,051ch
051b 37        scf     
051c 3e80      ld      a,80h
051e dac101    jp      c,01c1h
0521 3e04      ld      a,04h
0523 325b61    ld      (615bh),a
0526 3e0a      ld      a,0ah
0528 325c61    ld      (615ch),a
052b fdcb09ae  res     5,(iy+09h)
052f 3a5e61    ld      a,(615eh)
0532 ee80      xor     80h
0534 325e61    ld      (615eh),a
0537 210000    ld      hl,0000h
053a 226961    ld      (6169h),hl
053d cddb06    call    06dbh
0540 cb7f      bit     7,a
0542 c20703    jp      nz,0307h
0545 3a5d61    ld      a,(615dh)
0548 3c        inc     a
0549 325d61    ld      (615dh),a
054c 325a61    ld      (615ah),a
054f 3e01      ld      a,01h
0551 2600      ld      h,00h
0553 c3ab02    jp      02abh
0556 3a5c61    ld      a,(615ch)
0559 fe0a      cp      0ah
055b 2809      jr      z,0566h
055d 2a6d61    ld      hl,(616dh)
0560 23        inc     hl
0561 226d61    ld      (616dh),hl
0564 1807      jr      056dh
0566 2a6f61    ld      hl,(616fh)
0569 23        inc     hl
056a 226f61    ld      (616fh),hl
056d 3d        dec     a
056e 280c      jr      z,057ch
0570 325c61    ld      (615ch),a
0573 cddb06    call    06dbh
0576 215f03    ld      hl,035fh
0579 c33003    jp      0330h
057c 3ec6      ld      a,0c6h
057e c3c101    jp      01c1h
0581 3e05      ld      a,05h
0583 d351      out     (51h),a
0585 3a5e61    ld      a,(615eh)
0588 f66a      or      6ah
058a d351      out     (51h),a
058c 219b00    ld      hl,009bh
058f 2b        dec     hl
0590 7c        ld      a,h
0591 b5        or      l
0592 20fb      jr      nz,058fh
0594 d352      out     (52h),a
0596 3e05      ld      a,05h
0598 d353      out     (53h),a
059a 3e6e      ld      a,6eh
059c d353      out     (53h),a
059e 21fa06    ld      hl,06fah
05a1 015205    ld      bc,0552h
05a4 db53      in      a,(53h)
05a6 cb57      bit     2,a
05a8 28fa      jr      z,05a4h
05aa eda3      outi    
05ac 20f6      jr      nz,05a4h
05ae db53      in      a,(53h)
05b0 cb57      bit     2,a
05b2 28fa      jr      z,05aeh
05b4 3e85      ld      a,85h
05b6 d353      out     (53h),a
05b8 3e66      ld      a,66h
05ba f66f      or      6fh
05bc d353      out     (53h),a
05be 3a5e61    ld      a,(615eh)
05c1 17        rla     
05c2 3a5d61    ld      a,(615dh)
05c5 17        rla     
05c6 d352      out     (52h),a
05c8 3ed0      ld      a,0d0h
05ca d353      out     (53h),a
05cc db53      in      a,(53h)
05ce cb77      bit     6,a
05d0 3e10      ld      a,10h
05d2 d353      out     (53h),a
05d4 28f6      jr      z,05cch
05d6 af        xor     a
05d7 d352      out     (52h),a
05d9 db53      in      a,(53h)
05db cb57      bit     2,a
05dd 28fa      jr      z,05d9h
05df af        xor     a
05e0 d352      out     (52h),a
05e2 3e05      ld      a,05h
05e4 d353      out     (53h),a
05e6 3e66      ld      a,66h
05e8 d353      out     (53h),a
05ea 061c      ld      b,1ch
05ec 10fe      djnz    05ech
05ee fdcb096e  bit     5,(iy+09h)
05f2 c2bc03    jp      nz,03bch
05f5 3e05      ld      a,05h
05f7 d351      out     (51h),a
05f9 3a5e61    ld      a,(615eh)
05fc f66a      or      6ah
05fe d351      out     (51h),a
0600 214d00    ld      hl,004dh
0603 2b        dec     hl
0604 7c        ld      a,h
0605 b5        or      l
0606 20fb      jr      nz,0603h
0608 d352      out     (52h),a
060a 3e15      ld      a,15h
060c d353      out     (53h),a
060e 3e6e      ld      a,6eh
0610 d353      out     (53h),a
0612 21fa06    ld      hl,06fah
0615 015205    ld      bc,0552h
0618 db53      in      a,(53h)
061a cb57      bit     2,a
061c 28fa      jr      z,0618h
061e eda3      outi    
0620 20f6      jr      nz,0618h
0622 2a7561    ld      hl,(6175h)
0625 010e00    ld      bc,000eh
0628 3e07      ld      a,07h
062a d394      out     (94h),a
062c 7d        ld      a,l
062d d398      out     (98h),a
062f 7c        ld      a,h
0630 d39c      out     (9ch),a
0632 3a7761    ld      a,(6177h)
0635 a7        and     a
0636 3e6f      ld      a,6fh
0638 f5        push    af
0639 db53      in      a,(53h)
063b cb57      bit     2,a
063d 28fa      jr      z,0639h
063f 3e85      ld      a,85h
0641 d353      out     (53h),a
0643 f1        pop     af
0644 d353      out     (53h),a
0646 283d      jr      z,0685h
0648 db53      in      a,(53h)
064a e604      and     04h
064c 28fa      jr      z,0648h
064e db41      in      a,(41h)
0650 d352      out     (52h),a
0652 23        inc     hl
0653 7d        ld      a,l
0654 d398      out     (98h),a
0656 7c        ld      a,h
0657 d39c      out     (9ch),a
0659 1003      djnz    065eh
065b 0d        dec     c
065c 2836      jr      z,0694h
065e db53      in      a,(53h)
0660 e604      and     04h
0662 28fa      jr      z,065eh
0664 db41      in      a,(41h)
0666 d352      out     (52h),a
0668 1003      djnz    066dh
066a 0d        dec     c
066b 2827      jr      z,0694h
066d db53      in      a,(53h)
066f e604      and     04h
0671 28fa      jr      z,066dh
0673 db40      in      a,(40h)
0675 d352      out     (52h),a
0677 23        inc     hl
0678 7d        ld      a,l
0679 d398      out     (98h),a
067b 7c        ld      a,h
067c d39c      out     (9ch),a
067e 10c8      djnz    0648h
0680 0d        dec     c
0681 20c5      jr      nz,0648h
0683 180f      jr      0694h
0685 db53      in      a,(53h)
0687 e604      and     04h
0689 28fa      jr      z,0685h
068b 7e        ld      a,(hl)
068c d352      out     (52h),a
068e 23        inc     hl
068f 10f4      djnz    0685h
0691 0d        dec     c
0692 20f1      jr      nz,0685h
0694 3ed0      ld      a,0d0h
0696 d353      out     (53h),a
0698 db53      in      a,(53h)
069a cb77      bit     6,a
069c 3e10      ld      a,10h
069e d353      out     (53h),a
06a0 28f6      jr      z,0698h
06a2 af        xor     a
06a3 d352      out     (52h),a
06a5 db53      in      a,(53h)
06a7 cb57      bit     2,a
06a9 28fa      jr      z,06a5h
06ab af        xor     a
06ac d352      out     (52h),a
06ae db53      in      a,(53h)
06b0 cb57      bit     2,a
06b2 28fa      jr      z,06aeh
06b4 3e05      ld      a,05h
06b6 d353      out     (53h),a
06b8 3e66      ld      a,66h
06ba d353      out     (53h),a
06bc 212200    ld      hl,0022h
06bf 2b        dec     hl
06c0 7c        ld      a,h
06c1 b5        or      l
06c2 20fb      jr      nz,06bfh
06c4 fdcb09ee  set     5,(iy+09h)
06c8 3e02      ld      a,02h
06ca 325c61    ld      (615ch),a
06cd 3e05      ld      a,05h
06cf d351      out     (51h),a
06d1 3a5e61    ld      a,(615eh)
06d4 f668      or      68h
06d6 d351      out     (51h),a
06d8 c37305    jp      0573h
06db 21f006    ld      hl,06f0h
06de 015308    ld      bc,0853h
06e1 edb3      otir    
06e3 015102    ld      bc,0251h
06e6 3a5e61    ld      a,(615eh)
06e9 f668      or      68h
06eb edb3      otir    
06ed d351      out     (51h),a
06ef c9        ret     

06f0 04        inc     b
06f1 1006      djnz    06f9h
06f3 fa0796    jp      m,9607h
06f6 03        inc     bc
06f7 c0        ret     nz

06f8 1005      djnz    06ffh
06fa 00        nop     
06fb 00        nop     
06fc 00        nop     
06fd fa96cd    jp      m,0cd96h
0700 b3        or      e
0701 0ecd      ld      c,0cdh
0703 d7        rst     10h
0704 0e21      ld      c,21h
0706 76        halt    
0707 07        rlca    
0708 015107    ld      bc,0751h
070b edb3      otir    
070d 3e7f      ld      a,7fh
070f d388      out     (88h),a
0711 111608    ld      de,0816h
0714 cdd50f    call    0fd5h
0717 db58      in      a,(58h)
0719 cb77      bit     6,a
071b 282f      jr      z,074ch
071d cb6f      bit     5,a
071f 20f6      jr      nz,0717h
0721 113108    ld      de,0831h
0724 cdd50f    call    0fd5h
0727 3e03      ld      a,03h
0729 32d168    ld      (68d1h),a
072c cd0608    call    0806h
072f db58      in      a,(58h)
0731 cb77      bit     6,a
0733 280d      jr      z,0742h
0735 cb6f      bit     5,a
0737 280e      jr      z,0747h
0739 cb67      bit     4,a
073b 20f2      jr      nz,072fh
073d cd9807    call    0798h
0740 18cb      jr      070dh
0742 cd8b07    call    078bh
0745 18da      jr      0721h
0747 cd7d07    call    077dh
074a 18d5      jr      0721h
074c 115408    ld      de,0854h
074f cdd50f    call    0fd5h
0752 af        xor     a
0753 32d168    ld      (68d1h),a
0756 cd0608    call    0806h
0759 db58      in      a,(58h)
075b cb77      bit     6,a
075d 280d      jr      z,076ch
075f cb6f      bit     5,a
0761 280e      jr      z,0771h
0763 cb67      bit     4,a
0765 20f2      jr      nz,0759h
0767 cd9807    call    0798h
076a 18a1      jr      070dh
076c cd8b07    call    078bh
076f 18db      jr      074ch
0771 cd7d07    call    077dh
0774 18d6      jr      074ch
0776 1804      jr      077ch
0778 cc0568    call    z,6805h
077b 03        inc     bc
077c c1        pop     bc
077d cdd507    call    07d5h
0780 cd6d09    call    096dh
0783 f5        push    af
0784 dcd70e    call    c,0ed7h
0787 f1        pop     af
0788 c3a607    jp      07a6h
078b cdd507    call    07d5h
078e cd0f0b    call    0b0fh
0791 f5        push    af
0792 dcb30e    call    c,0eb3h
0795 f1        pop     af
0796 180e      jr      07a6h
0798 11b208    ld      de,08b2h
079b cdd50f    call    0fd5h
079e cd580f    call    0f58h
07a1 2003      jr      nz,07a6h
07a3 cd640f    call    0f64h
07a6 f5        push    af
07a7 cd0608    call    0806h
07aa f1        pop     af
07ab 21c107    ld      hl,07c1h
07ae 87        add     a,a
07af 5f        ld      e,a
07b0 1600      ld      d,00h
07b2 19        add     hl,de
07b3 5e        ld      e,(hl)
07b4 23        inc     hl
07b5 56        ld      d,(hl)
07b6 cdd50f    call    0fd5h
07b9 cde807    call    07e8h
07bc 3e7f      ld      a,7fh
07be d388      out     (88h),a
07c0 c9        ret     

07c1 d1        pop     de
07c2 08        ex      af,af'
07c3 dc08e6    call    c,0e608h
07c6 08        ex      af,af'
07c7 f7        rst     30h
07c8 08        ex      af,af'
07c9 08        ex      af,af'
07ca 09        add     hl,bc
07cb 08        ex      af,af'
07cc 09        add     hl,bc
07cd 0a        ld      a,(bc)
07ce 09        add     hl,bc
07cf 1b        dec     de
07d0 09        add     hl,bc
07d1 2d        dec     l
07d2 09        add     hl,bc
07d3 3f        ccf     
07d4 09        add     hl,bc
07d5 fd21d168  ld      iy,68d1h
07d9 117708    ld      de,0877h
07dc fdcb004e  bit     1,(iy+00h)
07e0 2803      jr      z,07e5h
07e2 118708    ld      de,0887h
07e5 cdd50f    call    0fd5h
07e8 119808    ld      de,0898h
07eb cdd50f    call    0fd5h
07ee 3e7d      ld      a,7dh
07f0 d388      out     (88h),a
07f2 db58      in      a,(58h)
07f4 cb7f      bit     7,a
07f6 20fa      jr      nz,07f2h
07f8 11a508    ld      de,08a5h
07fb cdd50f    call    0fd5h
07fe 3e7e      ld      a,7eh
0800 d388      out     (88h),a
0802 fd7e00    ld      a,(iy+00h)
0805 c9        ret     

0806 db58      in      a,(58h)
0808 f607      or      07h
080a 3c        inc     a
080b 20f9      jr      nz,0806h
080d 211432    ld      hl,3214h
0810 2b        dec     hl
0811 7c        ld      a,h
0812 b5        or      l
0813 20fb      jr      nz,0810h
0815 c9        ret     

0816 1031      djnz    0849h
0818 203d      jr      nz,0857h
081a 2043      jr      nz,085fh
081c 61        ld      h,c
081d 73        ld      (hl),e
081e 73        ld      (hl),e
081f 65        ld      h,l
0820 74        ld      (hl),h
0821 74        ld      (hl),h
0822 65        ld      h,l
0823 90        sub     b
0824 32203d    ld      (3d20h),a
0827 204d      jr      nz,0876h
0829 69        ld      l,c
082a 64        ld      h,h
082b 69        ld      l,c
082c 44        ld      b,h
082d 69        ld      l,c
082e 73        ld      (hl),e
082f 6b        ld      l,e
0830 fe10      cp      10h
0832 4d        ld      c,l
0833 69        ld      l,c
0834 64        ld      h,h
0835 69        ld      l,c
0836 44        ld      b,h
0837 69        ld      l,c
0838 73        ld      (hl),e
0839 6b        ld      l,e
083a 3a2031    ld      a,(3120h)
083d 3d        dec     a
083e 53        ld      d,e
083f 65        ld      h,l
0840 71        ld      (hl),c
0841 73        ld      (hl),e
0842 90        sub     b
0843 323d53    ld      (533dh),a
0846 6e        ld      l,(hl)
0847 64        ld      h,h
0848 73        ld      (hl),e
0849 2033      jr      nz,087eh
084b 3d        dec     a
084c 4d        ld      c,l
084d 61        ld      h,c
084e 6b        ld      l,e
084f 65        ld      h,l
0850 44        ld      b,h
0851 73        ld      (hl),e
0852 6b        ld      l,e
0853 fe10      cp      10h
0855 43        ld      b,e
0856 61        ld      h,c
0857 73        ld      (hl),e
0858 73        ld      (hl),e
0859 65        ld      h,l
085a 74        ld      (hl),h
085b 74        ld      (hl),h
085c 65        ld      h,l
085d 3a2031    ld      a,(3120h)
0860 3d        dec     a
0861 53        ld      d,e
0862 65        ld      h,l
0863 71        ld      (hl),c
0864 73        ld      (hl),e
0865 90        sub     b
0866 323d53    ld      (533dh),a
0869 6e        ld      l,(hl)
086a 64        ld      h,h
086b 73        ld      (hl),e
086c 2033      jr      nz,08a1h
086e 3d        dec     a
086f 4d        ld      c,l
0870 61        ld      h,c
0871 6b        ld      l,e
0872 65        ld      h,l
0873 44        ld      b,h
0874 73        ld      (hl),e
0875 6b        ld      l,e
0876 fe10      cp      10h
0878 53        ld      d,e
0879 74        ld      (hl),h
087a 61        ld      h,c
087b 72        ld      (hl),d
087c 74        ld      (hl),h
087d 2043      jr      nz,08c2h
087f 61        ld      h,c
0880 73        ld      (hl),e
0881 73        ld      (hl),e
0882 65        ld      h,l
0883 74        ld      (hl),h
0884 74        ld      (hl),h
0885 65        ld      h,l
0886 fe10      cp      10h
0888 49        ld      c,c
0889 6e        ld      l,(hl)
088a 73        ld      (hl),e
088b 65        ld      h,l
088c 72        ld      (hl),d
088d 74        ld      (hl),h
088e 204d      jr      nz,08ddh
0890 69        ld      l,c
0891 64        ld      h,h
0892 69        ld      l,c
0893 44        ld      b,h
0894 69        ld      l,c
0895 73        ld      (hl),e
0896 6b        ld      l,e
0897 fe90      cp      90h
0899 50        ld      d,b
089a 72        ld      (hl),d
089b 65        ld      h,l
089c 73        ld      (hl),e
089d 73        ld      (hl),e
089e 2045      jr      nz,08e5h
08a0 6e        ld      l,(hl)
08a1 74        ld      (hl),h
08a2 65        ld      h,l
08a3 72        ld      (hl),d
08a4 fe10      cp      10h
08a6 90        sub     b
08a7 4e        ld      c,(hl)
08a8 4f        ld      c,a
08a9 203d      jr      nz,08e8h
08ab 2041      jr      nz,08eeh
08ad 62        ld      h,d
08ae 6f        ld      l,a
08af 72        ld      (hl),d
08b0 74        ld      (hl),h
08b1 fe10      cp      10h
08b3 53        ld      d,e
08b4 61        ld      h,c
08b5 76        halt    
08b6 69        ld      l,c
08b7 6e        ld      l,(hl)
08b8 67        ld      h,a
08b9 2053      jr      nz,090eh
08bb 50        ld      d,b
08bc 313230    ld      sp,3032h
08bf 3090      jr      nc,0851h
08c1 53        ld      d,e
08c2 65        ld      h,l
08c3 71        ld      (hl),c
08c4 73        ld      (hl),e
08c5 2061      jr      nz,0928h
08c7 6e        ld      l,(hl)
08c8 64        ld      h,h
08c9 2053      jr      nz,091eh
08cb 6f        ld      l,a
08cc 75        ld      (hl),l
08cd 6e        ld      l,(hl)
08ce 64        ld      h,h
08cf 73        ld      (hl),e
08d0 fe10      cp      10h
08d2 84        add     a,h
08d3 43        ld      b,e
08d4 6f        ld      l,a
08d5 6d        ld      l,l
08d6 70        ld      (hl),b
08d7 6c        ld      l,h
08d8 65        ld      h,l
08d9 74        ld      (hl),h
08da 65        ld      h,l
08db fe10      cp      10h
08dd 84        add     a,h
08de 41        ld      b,c
08df 62        ld      h,d
08e0 6f        ld      l,a
08e1 72        ld      (hl),d
08e2 74        ld      (hl),h
08e3 65        ld      h,l
08e4 64        ld      h,h
08e5 fe10      cp      10h
08e7 44        ld      b,h
08e8 61        ld      h,c
08e9 74        ld      (hl),h
08ea 61        ld      h,c
08eb 2052      jr      nz,093fh
08ed 65        ld      h,l
08ee 61        ld      h,c
08ef 64        ld      h,h
08f0 2045      jr      nz,0937h
08f2 72        ld      (hl),d
08f3 72        ld      (hl),d
08f4 6f        ld      l,a
08f5 72        ld      (hl),d
08f6 fe10      cp      10h
08f8 57        ld      d,a
08f9 72        ld      (hl),d
08fa 6f        ld      l,a
08fb 6e        ld      l,(hl)
08fc 67        ld      h,a
08fd 2046      jr      nz,0945h
08ff 69        ld      l,c
0900 6c        ld      l,h
0901 65        ld      h,l
0902 2054      jr      nz,0958h
0904 79        ld      a,c
0905 70        ld      (hl),b
0906 65        ld      h,l
0907 fe10      cp      10h
0909 fe10      cp      10h
090b 57        ld      d,a
090c 72        ld      (hl),d
090d 69        ld      l,c
090e 74        ld      (hl),h
090f 65        ld      h,l
0910 2050      jr      nz,0962h
0912 72        ld      (hl),d
0913 6f        ld      l,a
0914 74        ld      (hl),h
0915 65        ld      h,l
0916 63        ld      h,e
0917 74        ld      (hl),h
0918 65        ld      h,l
0919 64        ld      h,h
091a fe10      cp      10h
091c 44        ld      b,h
091d 69        ld      l,c
091e 73        ld      (hl),e
091f 6b        ld      l,e
0920 2052      jr      nz,0974h
0922 64        ld      h,h
0923 2f        cpl     
0924 56        ld      d,(hl)
0925 65        ld      h,l
0926 72        ld      (hl),d
0927 45        ld      b,l
0928 72        ld      (hl),d
0929 72        ld      (hl),d
092a 6f        ld      l,a
092b 72        ld      (hl),d
092c fe10      cp      10h
092e 4e        ld      c,(hl)
092f 6f        ld      l,a
0930 44        ld      b,h
0931 69        ld      l,c
0932 73        ld      (hl),e
0933 6b        ld      l,e
0934 2043      jr      nz,0979h
0936 6f        ld      l,a
0937 6e        ld      l,(hl)
0938 6e        ld      l,(hl)
0939 65        ld      h,l
093a 63        ld      h,e
093b 74        ld      (hl),h
093c 65        ld      h,l
093d 64        ld      h,h
093e fe10      cp      10h
0940 44        ld      b,h
0941 72        ld      (hl),d
0942 69        ld      l,c
0943 76        halt    
0944 65        ld      h,l
0945 204e      jr      nz,0995h
0947 6f        ld      l,a
0948 74        ld      (hl),h
0949 2052      jr      nz,099dh
094b 65        ld      h,l
094c 61        ld      h,c
094d 64        ld      h,h
094e 79        ld      a,c
094f fefd      cp      0fdh
0951 cb00      rlc     b
0953 4e        ld      c,(hl)
0954 c2380d    jp      nz,0d38h
0957 c3e60b    jp      0be6h
095a fdcb004e  bit     1,(iy+00h)
095e c22a0d    jp      nz,0d2ah
0961 c3490c    jp      0c49h
0964 fdcb004e  bit     1,(iy+00h)
0968 c2200d    jp      nz,0d20h
096b af        xor     a
096c c9        ret     

096d cd5a09    call    095ah
0970 a7        and     a
0971 c0        ret     nz

0972 210000    ld      hl,0000h
0975 110100    ld      de,0001h
0978 0600      ld      b,00h
097a cd5009    call    0950h
097d a7        and     a
097e c0        ret     nz

097f 3a2069    ld      a,(6920h)
0982 fe18      cp      18h
0984 3e03      ld      a,03h
0986 2802      jr      z,098ah
0988 bf        cp      a
0989 c9        ret     

098a 3eff      ld      a,0ffh
098c 327c6c    ld      (6c7ch),a
098f 212169    ld      hl,6921h
0992 11f06b    ld      de,6bf0h
0995 01ff00    ld      bc,00ffh
0998 cd5b0a    call    0a5bh
099b 0603      ld      b,03h
099d c5        push    bc
099e d5        push    de
099f 210000    ld      hl,0000h
09a2 110100    ld      de,0001h
09a5 0600      ld      b,00h
09a7 cd5009    call    0950h
09aa d1        pop     de
09ab c1        pop     bc
09ac d8        ret     c

09ad c5        push    bc
09ae 05        dec     b
09af 010001    ld      bc,0100h
09b2 2003      jr      nz,09b7h
09b4 010f00    ld      bc,000fh
09b7 212069    ld      hl,6920h
09ba cd5b0a    call    0a5bh
09bd c1        pop     bc
09be 10dd      djnz    099dh
09c0 210000    ld      hl,0000h
09c3 22d768    ld      (68d7h),hl
09c6 2a7a6c    ld      hl,(6c7ah)
09c9 cddd0a    call    0addh
09cc 3e07      ld      a,07h
09ce 32d668    ld      (68d6h),a
09d1 7c        ld      a,h
09d2 b5        or      l
09d3 2005      jr      nz,09dah
09d5 3e06      ld      a,06h
09d7 32d668    ld      (68d6h),a
09da 22d968    ld      (68d9h),hl
09dd e5        push    hl
09de 2a786c    ld      hl,(6c78h)
09e1 cddd0a    call    0addh
09e4 d1        pop     de
09e5 19        add     hl,de
09e6 7c        ld      a,h
09e7 b5        or      l
09e8 c8        ret     z

09e9 eb        ex      de,hl
09ea 210000    ld      hl,0000h
09ed 0600      ld      b,00h
09ef dd217d0a  ld      ix,0a7dh
09f3 cd5009    call    0950h
09f6 d8        ret     c

09f7 cd7d0a    call    0a7dh
09fa f5        push    af
09fb 210000    ld      hl,0000h
09fe 22746c    ld      (6c74h),hl
0a01 22766c    ld      (6c76h),hl
0a04 dd217e6c  ld      ix,6c7eh
0a08 010a00    ld      bc,000ah
0a0b 21f06b    ld      hl,6bf0h
0a0e 110400    ld      de,0004h
0a11 3e20      ld      a,20h
0a13 ddcb0156  bit     2,(ix+01h)
0a17 2035      jr      nz,0a4eh
0a19 3600      ld      (hl),00h
0a1b 23        inc     hl
0a1c 3600      ld      (hl),00h
0a1e 23        inc     hl
0a1f 3600      ld      (hl),00h
0a21 23        inc     hl
0a22 3600      ld      (hl),00h
0a24 dd360180  ld      (ix+01h),80h
0a28 dd360017  ld      (ix+00h),17h
0a2c dd360200  ld      (ix+02h),00h
0a30 dd360300  ld      (ix+03h),00h
0a34 dd3604fd  ld      (ix+04h),0fdh
0a38 dd3605ff  ld      (ix+05h),0ffh
0a3c dd360600  ld      (ix+06h),00h
0a40 dd360700  ld      (ix+07h),00h
0a44 dd3608fd  ld      (ix+08h),0fdh
0a48 dd3609ff  ld      (ix+09h),0ffh
0a4c 1803      jr      0a51h
0a4e 23        inc     hl
0a4f 23        inc     hl
0a50 23        inc     hl
0a51 23        inc     hl
0a52 dd09      add     ix,bc
0a54 3d        dec     a
0a55 20bc      jr      nz,0a13h
0a57 f1        pop     af
0a58 c36409    jp      0964h
0a5b edb0      ldir    
0a5d c9        ret     

0a5e cdf30a    call    0af3h
0a61 0600      ld      b,00h
0a63 1805      jr      0a6ah
0a65 c5        push    bc
0a66 cdf30a    call    0af3h
0a69 c1        pop     bc
0a6a 212069    ld      hl,6920h
0a6d 3add68    ld      a,(68ddh)
0a70 a7        and     a
0a71 2812      jr      z,0a85h
0a73 23        inc     hl
0a74 05        dec     b
0a75 3d        dec     a
0a76 20fb      jr      nz,0a73h
0a78 32dd68    ld      (68ddh),a
0a7b 1808      jr      0a85h
0a7d cdf30a    call    0af3h
0a80 0600      ld      b,00h
0a82 212069    ld      hl,6920h
0a85 ed5bd768  ld      de,(68d7h)
0a89 0e41      ld      c,41h
0a8b fdcb006e  bit     5,(iy+00h)
0a8f 2023      jr      nz,0ab4h
0a91 cb43      bit     0,e
0a93 200b      jr      nz,0aa0h
0a95 7b        ld      a,e
0a96 d398      out     (98h),a
0a98 7a        ld      a,d
0a99 d39c      out     (9ch),a
0a9b eda3      outi    
0a9d 13        inc     de
0a9e 2822      jr      z,0ac2h
0aa0 7b        ld      a,e
0aa1 d398      out     (98h),a
0aa3 7a        ld      a,d
0aa4 d39c      out     (9ch),a
0aa6 eda3      outi    
0aa8 2812      jr      z,0abch
0aaa 13        inc     de
0aab 0d        dec     c
0aac eda3      outi    
0aae 2812      jr      z,0ac2h
0ab0 0c        inc     c
0ab1 c3950a    jp      0a95h
0ab4 7b        ld      a,e
0ab5 d398      out     (98h),a
0ab7 7a        ld      a,d
0ab8 d39c      out     (9ch),a
0aba 18ee      jr      0aaah
0abc fdcb00ee  set     5,(iy+00h)
0ac0 1804      jr      0ac6h
0ac2 fdcb00ae  res     5,(iy+00h)
0ac6 ed53d768  ld      (68d7h),de
0aca 2ad968    ld      hl,(68d9h)
0acd 2b        dec     hl
0ace 22d968    ld      (68d9h),hl
0ad1 7c        ld      a,h
0ad2 b5        or      l
0ad3 c0        ret     nz

0ad4 3e06      ld      a,06h
0ad6 32d668    ld      (68d6h),a
0ad9 22d768    ld      (68d7h),hl
0adc c9        ret     

0add 7c        ld      a,h
0ade b5        or      l
0adf c8        ret     z

0ae0 2b        dec     hl
0ae1 6c        ld      l,h
0ae2 2600      ld      h,00h
0ae4 23        inc     hl
0ae5 cb45      bit     0,l
0ae7 2801      jr      z,0aeah
0ae9 23        inc     hl
0aea 7c        ld      a,h
0aeb 1f        rra     
0aec 7d        ld      a,l
0aed 1f        rra     
0aee 85        add     a,l
0aef 6f        ld      l,a
0af0 d0        ret     nc

0af1 24        inc     h
0af2 c9        ret     

0af3 018008    ld      bc,0880h
0af6 2604      ld      h,04h
0af8 3ad668    ld      a,(68d6h)
0afb 6f        ld      l,a
0afc ed69      out     (c),l
0afe 7c        ld      a,h
0aff d394      out     (94h),a
0b01 c608      add     a,08h
0b03 67        ld      h,a
0b04 af        xor     a
0b05 d39c      out     (9ch),a
0b07 0c        inc     c
0b08 10f2      djnz    0afch
0b0a 3e07      ld      a,07h
0b0c d394      out     (94h),a
0b0e c9        ret     

0b0f cd5a09    call    095ah
0b12 a7        and     a
0b13 c0        ret     nz

0b14 210000    ld      hl,0000h
0b17 110100    ld      de,0001h
0b1a 0600      ld      b,00h
0b1c cd5009    call    0950h
0b1f a7        and     a
0b20 c0        ret     nz

0b21 3a2069    ld      a,(6920h)
0b24 fe17      cp      17h
0b26 3e03      ld      a,03h
0b28 c2a70b    jp      nz,0ba7h
0b2b ed5b2169  ld      de,(6921h)
0b2f 2afe6e    ld      hl,(6efeh)
0b32 a7        and     a
0b33 ed52      sbc     hl,de
0b35 7c        ld      a,h
0b36 32d668    ld      (68d6h),a
0b39 2a2169    ld      hl,(6921h)
0b3c ed5b2569  ld      de,(6925h)
0b40 a7        and     a
0b41 ed52      sbc     hl,de
0b43 44        ld      b,h
0b44 4d        ld      c,l
0b45 2afe6e    ld      hl,(6efeh)
0b48 a7        and     a
0b49 ed42      sbc     hl,bc
0b4b 22026f    ld      (6f02h),hl
0b4e 23        inc     hl
0b4f 22db68    ld      (68dbh),hl
0b52 2a2369    ld      hl,(6923h)
0b55 22006f    ld      (6f00h),hl
0b58 11046f    ld      de,6f04h
0b5b a7        and     a
0b5c ed52      sbc     hl,de
0b5e 44        ld      b,h
0b5f 4d        ld      c,l
0b60 212769    ld      hl,6927h
0b63 3ef9      ld      a,0f9h
0b65 cdd10b    call    0bd1h
0b68 2afe6e    ld      hl,(6efeh)
0b6b ed5bdb68  ld      de,(68dbh)
0b6f 23        inc     hl
0b70 a7        and     a
0b71 ed52      sbc     hl,de
0b73 09        add     hl,bc
0b74 45        ld      b,l
0b75 5c        ld      e,h
0b76 78        ld      a,b
0b77 a7        and     a
0b78 2801      jr      z,0b7bh
0b7a 1c        inc     e
0b7b 1600      ld      d,00h
0b7d c5        push    bc
0b7e 210000    ld      hl,0000h
0b81 dd21c30b  ld      ix,0bc3h
0b85 cd5009    call    0950h
0b88 c1        pop     bc
0b89 d8        ret     c

0b8a cdc50b    call    0bc5h
0b8d 3ad668    ld      a,(68d6h)
0b90 a7        and     a
0b91 2811      jr      z,0ba4h
0b93 4f        ld      c,a
0b94 0664      ld      b,64h
0b96 21cc6f    ld      hl,6fcch
0b99 7e        ld      a,(hl)
0b9a 23        inc     hl
0b9b b6        or      (hl)
0b9c 2803      jr      z,0ba1h
0b9e 7e        ld      a,(hl)
0b9f 81        add     a,c
0ba0 77        ld      (hl),a
0ba1 23        inc     hl
0ba2 10f5      djnz    0b99h
0ba4 c36409    jp      0964h
0ba7 f5        push    af
0ba8 cd6409    call    0964h
0bab f1        pop     af
0bac a7        and     a
0bad c9        ret     

0bae 0600      ld      b,00h
0bb0 212069    ld      hl,6920h
0bb3 3add68    ld      a,(68ddh)
0bb6 a7        and     a
0bb7 280f      jr      z,0bc8h
0bb9 23        inc     hl
0bba 05        dec     b
0bbb 3d        dec     a
0bbc 20fb      jr      nz,0bb9h
0bbe 32dd68    ld      (68ddh),a
0bc1 1805      jr      0bc8h
0bc3 0600      ld      b,00h
0bc5 212069    ld      hl,6920h
0bc8 ed5bd768  ld      de,(68d7h)
0bcc 78        ld      a,b
0bcd ed4bd968  ld      bc,(68d9h)
0bd1 eda0      ldi     
0bd3 eada0b    jp      pe,0bdah
0bd6 ed5bdb68  ld      de,(68dbh)
0bda 3d        dec     a
0bdb 20f4      jr      nz,0bd1h
0bdd ed53d768  ld      (68d7h),de
0be1 ed43d968  ld      (68d9h),bc
0be5 c9        ret     

0be6 c5        push    bc
0be7 eb        ex      de,hl
0be8 37        scf     
0be9 ed52      sbc     hl,de
0beb eb        ex      de,hl
0bec d8        ret     c

0bed 13        inc     de
0bee 7c        ld      a,h
0bef b5        or      l
0bf0 280c      jr      z,0bfeh
0bf2 2b        dec     hl
0bf3 0600      ld      b,00h
0bf5 e5        push    hl
0bf6 cd230c    call    0c23h
0bf9 e1        pop     hl
0bfa 3810      jr      c,0c0ch
0bfc 18f0      jr      0beeh
0bfe 1b        dec     de
0bff 7a        ld      a,d
0c00 e67f      and     7fh
0c02 b3        or      e
0c03 2815      jr      z,0c1ah
0c05 0600      ld      b,00h
0c07 cd230c    call    0c23h
0c0a 3002      jr      nc,0c0eh
0c0c c1        pop     bc
0c0d c9        ret     

0c0e d5        push    de
0c0f b7        or      a
0c10 cb7a      bit     7,d
0c12 cc210c    call    z,0c21h
0c15 d1        pop     de
0c16 38f4      jr      c,0c0ch
0c18 18e4      jr      0bfeh
0c1a c1        pop     bc
0c1b cd230c    call    0c23h
0c1e d8        ret     c

0c1f af        xor     a
0c20 c9        ret     

0c21 dde9      jp      (ix)
0c23 212069    ld      hl,6920h
0c26 cd330c    call    0c33h
0c29 d8        ret     c

0c2a 77        ld      (hl),a
0c2b 23        inc     hl
0c2c 10f8      djnz    0c26h
0c2e c9        ret     

0c2f cd930c    call    0c93h
0c32 d8        ret     c

0c33 db53      in      a,(53h)
0c35 e601      and     01h
0c37 28f6      jr      z,0c2fh
0c39 3e01      ld      a,01h
0c3b d353      out     (53h),a
0c3d db53      in      a,(53h)
0c3f e610      and     10h
0c41 3e02      ld      a,02h
0c43 37        scf     
0c44 c0        ret     nz

0c45 db52      in      a,(52h)
0c47 a7        and     a
0c48 c9        ret     

0c49 119c0c    ld      de,0c9ch
0c4c cdd50f    call    0fd5h
0c4f cd680c    call    0c68h
0c52 cd930c    call    0c93h
0c55 d8        ret     c

0c56 3e10      ld      a,10h
0c58 d353      out     (53h),a
0c5a db53      in      a,(53h)
0c5c e610      and     10h
0c5e 20f2      jr      nz,0c52h
0c60 11ae0c    ld      de,0caeh
0c63 cdd50f    call    0fd5h
0c66 af        xor     a
0c67 c9        ret     

0c68 3e03      ld      a,03h
0c6a d349      out     (49h),a
0c6c d34a      out     (4ah),a
0c6e 3e07      ld      a,07h
0c70 d34a      out     (4ah),a
0c72 3e2b      ld      a,2bh
0c74 d34a      out     (4ah),a
0c76 21890c    ld      hl,0c89h
0c79 01530a    ld      bc,0a53h
0c7c edb3      otir    
0c7e 0604      ld      b,04h
0c80 db52      in      a,(52h)
0c82 10fc      djnz    0c80h
0c84 3e30      ld      a,30h
0c86 d353      out     (53h),a
0c88 c9        ret     

0c89 04        inc     b
0c8a 11069d    ld      de,9d06h
0c8d 07        rlca    
0c8e 65        ld      h,l
0c8f 05        dec     b
0c90 e0        ret     po

0c91 03        inc     bc
0c92 d1        pop     de
0c93 db58      in      a,(58h)
0c95 e620      and     20h
0c97 c0        ret     nz

0c98 3e01      ld      a,01h
0c9a 37        scf     
0c9b c9        ret     

0c9c 80        add     a,b
0c9d 57        ld      d,a
0c9e 61        ld      h,c
0c9f 69        ld      l,c
0ca0 74        ld      (hl),h
0ca1 69        ld      l,c
0ca2 6e        ld      l,(hl)
0ca3 67        ld      h,a
0ca4 2066      jr      nz,0d0ch
0ca6 6f        ld      l,a
0ca7 72        ld      (hl),d
0ca8 2053      jr      nz,0cfdh
0caa 79        ld      a,c
0cab 6e        ld      l,(hl)
0cac 63        ld      h,e
0cad fe80      cp      80h
0caf 52        ld      d,d
0cb0 65        ld      h,l
0cb1 61        ld      h,c
0cb2 64        ld      h,h
0cb3 69        ld      l,c
0cb4 6e        ld      l,(hl)
0cb5 67        ld      h,a
0cb6 2074      jr      nz,0d2ch
0cb8 68        ld      l,b
0cb9 65        ld      h,l
0cba 2054      jr      nz,0d10h
0cbc 61        ld      h,c
0cbd 70        ld      (hl),b
0cbe 65        ld      h,l
0cbf fecd      cp      0cdh
0cc1 cd0cf5    call    0f50ch
0cc4 cdcd0c    call    0ccdh
0cc7 fef7      cp      0f7h
0cc9 20f9      jr      nz,0cc4h
0ccb f1        pop     af
0ccc c9        ret     

0ccd cd480e    call    0e48h
0cd0 d8        ret     c

0cd1 cdd60c    call    0cd6h
0cd4 18f7      jr      0ccdh
0cd6 db58      in      a,(58h)
0cd8 e620      and     20h
0cda c0        ret     nz

0cdb 3e01      ld      a,01h
0cdd f5        push    af
0cde cd200d    call    0d20h
0ce1 f1        pop     af
0ce2 37        scf     
0ce3 ddf9      ld      sp,ix
0ce5 c9        ret     

0ce6 3e00      ld      a,00h
0ce8 cd220d    call    0d22h
0ceb cd010d    call    0d01h
0cee cdc30c    call    0cc3h
0cf1 4f        ld      c,a
0cf2 e6bc      and     0bch
0cf4 201c      jr      nz,0d12h
0cf6 cb71      bit     6,c
0cf8 2818      jr      z,0d12h
0cfa cb41      bit     0,c
0cfc 3e09      ld      a,09h
0cfe 28dd      jr      z,0cddh
0d00 c9        ret     

0d01 010030    ld      bc,3000h
0d04 c5        push    bc
0d05 cd480e    call    0e48h
0d08 c1        pop     bc
0d09 d8        ret     c

0d0a cdd60c    call    0cd6h
0d0d 0b        dec     bc
0d0e 78        ld      a,b
0d0f b1        or      c
0d10 20f2      jr      nz,0d04h
0d12 3e08      ld      a,08h
0d14 18c7      jr      0cddh
0d16 cdc00c    call    0cc0h
0d19 fe20      cp      20h
0d1b c8        ret     z

0d1c 3e02      ld      a,02h
0d1e 18bd      jr      0cddh
0d20 3e01      ld      a,01h
0d22 cd260e    call    0e26h
0d25 cd3b0e    call    0e3bh
0d28 af        xor     a
0d29 c9        ret     

0d2a cd090e    call    0e09h
0d2d cde60c    call    0ce6h
0d30 11b30d    ld      de,0db3h
0d33 cdd50f    call    0fd5h
0d36 af        xor     a
0d37 c9        ret     

0d38 cd0f0e    call    0e0fh
0d3b eb        ex      de,hl
0d3c 22ef68    ld      (68efh),hl
0d3f cbbc      res     7,h
0d41 37        scf     
0d42 ed52      sbc     hl,de
0d44 23        inc     hl
0d45 d8        ret     c

0d46 eb        ex      de,hl
0d47 cdaa0d    call    0daah
0d4a eb        ex      de,hl
0d4b cd740d    call    0d74h
0d4e e5        push    hl
0d4f 3e04      ld      a,04h
0d51 cd8d0d    call    0d8dh
0d54 cdd00d    call    0dd0h
0d57 cda70d    call    0da7h
0d5a cd1a0e    call    0e1ah
0d5d 200d      jr      nz,0d6ch
0d5f e1        pop     hl
0d60 7c        ld      a,h
0d61 b5        or      l
0d62 c8        ret     z

0d63 cd740d    call    0d74h
0d66 e5        push    hl
0d67 3e04      ld      a,04h
0d69 cd8d0d    call    0d8dh
0d6c 21540d    ld      hl,0d54h
0d6f e5        push    hl
0d70 2aed68    ld      hl,(68edh)
0d73 e9        jp      (hl)
0d74 111800    ld      de,0018h
0d77 b7        or      a
0d78 ed52      sbc     hl,de
0d7a 3005      jr      nc,0d81h
0d7c 19        add     hl,de
0d7d eb        ex      de,hl
0d7e 210000    ld      hl,0000h
0d81 3af068    ld      a,(68f0h)
0d84 e680      and     80h
0d86 b2        or      d
0d87 57        ld      d,a
0d88 ed53ef68  ld      (68efh),de
0d8c c9        ret     

0d8d cd260e    call    0e26h
0d90 3af268    ld      a,(68f2h)
0d93 cd3d0e    call    0e3dh
0d96 3af168    ld      a,(68f1h)
0d99 cd3d0e    call    0e3dh
0d9c 7b        ld      a,e
0d9d cd3d0e    call    0e3dh
0da0 cd3b0e    call    0e3bh
0da3 cd160d    call    0d16h
0da6 c9        ret     

0da7 210100    ld      hl,0001h
0daa ed4bf168  ld      bc,(68f1h)
0dae 09        add     hl,bc
0daf 22f168    ld      (68f1h),hl
0db2 c9        ret     

0db3 1052      djnz    0e07h
0db5 65        ld      h,l
0db6 61        ld      h,c
0db7 64        ld      h,h
0db8 69        ld      l,c
0db9 6e        ld      l,(hl)
0dba 67        ld      h,a
0dbb 2074      jr      nz,0e31h
0dbd 68        ld      l,b
0dbe 65        ld      h,l
0dbf 2044      jr      nz,0e05h
0dc1 69        ld      l,c
0dc2 73        ld      (hl),e
0dc3 6b        ld      l,e
0dc4 93        sub     e
0dc5 4e        ld      c,(hl)
0dc6 4f        ld      c,a
0dc7 203d      jr      nz,0e06h
0dc9 2041      jr      nz,0e0ch
0dcb 62        ld      h,d
0dcc 6f        ld      l,a
0dcd 72        ld      (hl),d
0dce 74        ld      (hl),h
0dcf fe21      cp      21h
0dd1 2069      jr      nz,0e3ch
0dd3 e5        push    hl
0dd4 3e05      ld      a,05h
0dd6 cd220d    call    0d22h
0dd9 cdff0d    call    0dffh
0ddc e1        pop     hl
0ddd 0e00      ld      c,00h
0ddf 0601      ld      b,01h
0de1 cdff0d    call    0dffh
0de4 eb        ex      de,hl
0de5 67        ld      h,a
0de6 cdff0d    call    0dffh
0de9 6f        ld      l,a
0dea cb15      rl      l
0dec c5        push    bc
0ded 29        add     hl,hl
0dee 10fd      djnz    0dedh
0df0 c1        pop     bc
0df1 eb        ex      de,hl
0df2 72        ld      (hl),d
0df3 23        inc     hl
0df4 0d        dec     c
0df5 cac30c    jp      z,0cc3h
0df8 04        inc     b
0df9 cb58      bit     3,b
0dfb 28e7      jr      z,0de4h
0dfd 18e0      jr      0ddfh
0dff c5        push    bc
0e00 d5        push    de
0e01 e5        push    hl
0e02 cdcd0c    call    0ccdh
0e05 e1        pop     hl
0e06 d1        pop     de
0e07 c1        pop     bc
0e08 c9        ret     

0e09 210000    ld      hl,0000h
0e0c 22f168    ld      (68f1h),hl
0e0f dd22ed68  ld      (68edh),ix
0e13 dd210200  ld      ix,0002h
0e17 dd39      add     ix,sp
0e19 c9        ret     

0e1a 2aef68    ld      hl,(68efh)
0e1d 2b        dec     hl
0e1e 7c        ld      a,h
0e1f e67f      and     7fh
0e21 b5        or      l
0e22 22ef68    ld      (68efh),hl
0e25 c9        ret     

0e26 f5        push    af
0e27 3ef0      ld      a,0f0h
0e29 cd3d0e    call    0e3dh
0e2c 3e18      ld      a,18h
0e2e cd3d0e    call    0e3dh
0e31 3e01      ld      a,01h
0e33 cd3d0e    call    0e3dh
0e36 f1        pop     af
0e37 cd3d0e    call    0e3dh
0e3a c9        ret     

0e3b 3ef7      ld      a,0f7h
0e3d 4f        ld      c,a
0e3e db51      in      a,(51h)
0e40 cb57      bit     2,a
0e42 28fa      jr      z,0e3eh
0e44 79        ld      a,c
0e45 d350      out     (50h),a
0e47 c9        ret     

0e48 db51      in      a,(51h)
0e4a e601      and     01h
0e4c c8        ret     z

0e4d db50      in      a,(50h)
0e4f b7        or      a
0e50 fa5f0e    jp      m,0e5fh
0e53 47        ld      b,a
0e54 3a0e69    ld      a,(690eh)
0e57 fe03      cp      03h
0e59 78        ld      a,b
0e5a 37        scf     
0e5b c8        ret     z

0e5c b7        or      a
0e5d 37        scf     
0e5e f8        ret     m

0e5f f5        push    af
0e60 dde5      push    ix
0e62 fde5      push    iy
0e64 cd720e    call    0e72h
0e67 fde1      pop     iy
0e69 dde1      pop     ix
0e6b f1        pop     af
0e6c fef7      cp      0f7h
0e6e 28e3      jr      z,0e53h
0e70 b7        or      a
0e71 c9        ret     

0e72 b7        or      a
0e73 f2820e    jp      p,0e82h
0e76 fef8      cp      0f8h
0e78 c8        ret     z

0e79 d0        ret     nc

0e7a 32a968    ld      (68a9h),a
0e7d af        xor     a
0e7e 320e69    ld      (690eh),a
0e81 c9        ret     

0e82 47        ld      b,a
0e83 3aa968    ld      a,(68a9h)
0e86 4f        ld      c,a
0e87 fef0      cp      0f0h
0e89 c0        ret     nz

0e8a 3a0e69    ld      a,(690eh)
0e8d fe02      cp      02h
0e8f d0        ret     nc

0e90 cd9f0e    call    0e9fh
0e93 eb        ex      de,hl
0e94 3602      ld      (hl),02h
0e96 fe01      cp      01h
0e98 c0        ret     nz

0e99 78        ld      a,b
0e9a fe18      cp      18h
0e9c c0        ret     nz

0e9d 34        inc     (hl)
0e9e c9        ret     

0e9f 210f69    ld      hl,690fh
0ea2 110e69    ld      de,690eh
0ea5 1a        ld      a,(de)
0ea6 b7        or      a
0ea7 2005      jr      nz,0eaeh
0ea9 3c        inc     a
0eaa 12        ld      (de),a
0eab 70        ld      (hl),b
0eac e1        pop     hl
0ead c9        ret     

0eae af        xor     a
0eaf 12        ld      (de),a
0eb0 78        ld      a,b
0eb1 46        ld      b,(hl)
0eb2 c9        ret     

0eb3 06c8      ld      b,0c8h
0eb5 21046f    ld      hl,6f04h
0eb8 3600      ld      (hl),00h
0eba 23        inc     hl
0ebb 10fb      djnz    0eb8h
0ebd 06c8      ld      b,0c8h
0ebf 21cc6f    ld      hl,6fcch
0ec2 3600      ld      (hl),00h
0ec4 23        inc     hl
0ec5 10fb      djnz    0ec2h
0ec7 219471    ld      hl,7194h
0eca 22006f    ld      (6f00h),hl
0ecd 21ffff    ld      hl,0ffffh
0ed0 22026f    ld      (6f02h),hl
0ed3 22fe6e    ld      (6efeh),hl
0ed6 c9        ret     

0ed7 21f06b    ld      hl,6bf0h
0eda 117f6c    ld      de,6c7fh
0edd 018c00    ld      bc,008ch
0ee0 3600      ld      (hl),00h
0ee2 edb0      ldir    
0ee4 3eff      ld      a,0ffh
0ee6 327c6c    ld      (6c7ch),a
0ee9 3e1f      ld      a,1fh
0eeb 327d6c    ld      (6c7dh),a
0eee 214e0f    ld      hl,0f4eh
0ef1 117e6c    ld      de,6c7eh
0ef4 010a00    ld      bc,000ah
0ef7 edb0      ldir    
0ef9 217e6c    ld      hl,6c7eh
0efc 013601    ld      bc,0136h
0eff edb0      ldir    
0f01 0604      ld      b,04h
0f03 210a00    ld      hl,000ah
0f06 78        ld      a,b
0f07 3d        dec     a
0f08 cb4f      bit     1,a
0f0a 2802      jr      z,0f0eh
0f0c cbd7      set     2,a
0f0e 32d668    ld      (68d6h),a
0f11 e5        push    hl
0f12 c5        push    bc
0f13 cdf30a    call    0af3h
0f16 c1        pop     bc
0f17 e1        pop     hl
0f18 7d        ld      a,l
0f19 d398      out     (98h),a
0f1b 7c        ld      a,h
0f1c d39c      out     (9ch),a
0f1e 3e80      ld      a,80h
0f20 d341      out     (41h),a
0f22 af        xor     a
0f23 d340      out     (40h),a
0f25 2b        dec     hl
0f26 7c        ld      a,h
0f27 b5        or      l
0f28 20ee      jr      nz,0f18h
0f2a 10d7      djnz    0f03h
0f2c 21306b    ld      hl,6b30h
0f2f 3e20      ld      a,20h
0f31 0604      ld      b,04h
0f33 16c4      ld      d,0c4h
0f35 0e08      ld      c,08h
0f37 1eb1      ld      e,0b1h
0f39 72        ld      (hl),d
0f3a 23        inc     hl
0f3b 73        ld      (hl),e
0f3c 23        inc     hl
0f3d 36a0      ld      (hl),0a0h
0f3f 23        inc     hl
0f40 77        ld      (hl),a
0f41 23        inc     hl
0f42 77        ld      (hl),a
0f43 23        inc     hl
0f44 77        ld      (hl),a
0f45 23        inc     hl
0f46 1c        inc     e
0f47 0d        dec     c
0f48 20ef      jr      nz,0f39h
0f4a 15        dec     d
0f4b 10e8      djnz    0f35h
0f4d c9        ret     

0f4e 17        rla     
0f4f 80        add     a,b
0f50 00        nop     
0f51 00        nop     
0f52 fdff      rst     38h
0f54 00        nop     
0f55 00        nop     
0f56 fdff      rst     38h
0f58 21b40f    ld      hl,0fb4h
0f5b cda80f    call    0fa8h
0f5e cdae01    call    01aeh
0f61 c3970f    jp      0f97h
0f64 21bf0f    ld      hl,0fbfh
0f67 cda80f    call    0fa8h
0f6a cdae01    call    01aeh
0f6d 2028      jr      nz,0f97h
0f6f 21ca0f    ld      hl,0fcah
0f72 cda80f    call    0fa8h
0f75 0604      ld      b,04h
0f77 c5        push    bc
0f78 cdae01    call    01aeh
0f7b c1        pop     bc
0f7c 2019      jr      nz,0f97h
0f7e fd7e03    ld      a,(iy+03h)
0f81 3c        inc     a
0f82 fe82      cp      82h
0f84 2002      jr      nz,0f88h
0f86 3e86      ld      a,86h
0f88 fd7703    ld      (iy+03h),a
0f8b fd7e0a    ld      a,(iy+0ah)
0f8e c61c      add     a,1ch
0f90 fd770a    ld      (iy+0ah),a
0f93 10e2      djnz    0f77h
0f95 3e80      ld      a,80h
0f97 d680      sub     80h
0f99 c8        ret     z

0f9a c6c3      add     a,0c3h
0f9c fe06      cp      06h
0f9e c8        ret     z

0f9f c604      add     a,04h
0fa1 fe09      cp      09h
0fa3 c8        ret     z

0fa4 3e07      ld      a,07h
0fa6 37        scf     
0fa7 c9        ret     

0fa8 117b61    ld      de,617bh
0fab d5        push    de
0fac fde1      pop     iy
0fae 010b00    ld      bc,000bh
0fb1 edb0      ldir    
0fb3 c9        ret     

0fb4 0e00      ld      c,00h
0fb6 6f        ld      l,a
0fb7 00        nop     
0fb8 00        nop     
0fb9 9a        sbc     a,d
0fba 00        nop     
0fbb 00        nop     
0fbc 00        nop     
0fbd 00        nop     
0fbe 0c        inc     c
0fbf 0e30      ld      c,30h
0fc1 6b        ld      l,e
0fc2 00        nop     
0fc3 00        nop     
0fc4 0e00      ld      c,00h
0fc6 00        nop     
0fc7 00        nop     
0fc8 00        nop     
0fc9 17        rla     
0fca 0e00      ld      c,00h
0fcc 00        nop     
0fcd 80        add     a,b
0fce 00        nop     
0fcf 00        nop     
0fd0 010000    ld      bc,0000h
0fd3 00        nop     
0fd4 181a      jr      0ff0h
0fd6 13        inc     de
0fd7 fefe      cp      0feh
0fd9 c8        ret     z

0fda 47        ld      b,a
0fdb e660      and     60h
0fdd 78        ld      a,b
0fde 2005      jr      nz,0fe5h
0fe0 cdea0f    call    0feah
0fe3 18f0      jr      0fd5h
0fe5 cd7110    call    1071h
0fe8 18eb      jr      0fd5h
0fea fe10      cp      10h
0fec 2875      jr      z,1063h
0fee fe17      cp      17h
0ff0 2816      jr      z,1008h
0ff2 fe18      cp      18h
0ff4 2817      jr      z,100dh
0ff6 fe19      cp      19h
0ff8 2823      jr      z,101dh
0ffa fe15      cp      15h
0ffc 284a      jr      z,1048h
0ffe fe90      cp      90h
1000 3863      jr      c,1065h
1002 e60f      and     0fh
1004 f6c0      or      0c0h
1006 185d      jr      1065h
1008 cd4010    call    1040h
100b 1862      jr      106fh
100d cd4010    call    1040h
1010 2e0a      ld      l,0ah
1012 cd3810    call    1038h
1015 f5        push    af
1016 78        ld      a,b
1017 cd6f10    call    106fh
101a f1        pop     af
101b 1852      jr      106fh
101d cd4010    call    1040h
1020 2e64      ld      l,64h
1022 cd3810    call    1038h
1025 f5        push    af
1026 78        ld      a,b
1027 cd6f10    call    106fh
102a f1        pop     af
102b 2e0a      ld      l,0ah
102d cd3810    call    1038h
1030 f5        push    af
1031 78        ld      a,b
1032 cd6f10    call    106fh
1035 f1        pop     af
1036 1837      jr      106fh
1038 06ff      ld      b,0ffh
103a 04        inc     b
103b 95        sub     l
103c 30fc      jr      nc,103ah
103e 85        add     a,l
103f c9        ret     

1040 eb        ex      de,hl
1041 5e        ld      e,(hl)
1042 23        inc     hl
1043 56        ld      d,(hl)
1044 23        inc     hl
1045 eb        ex      de,hl
1046 7e        ld      a,(hl)
1047 c9        ret     

1048 fde5      push    iy
104a e1        pop     hl
104b 7c        ld      a,h
104c cd5010    call    1050h
104f 7d        ld      a,l
1050 f5        push    af
1051 0f        rrca    
1052 0f        rrca    
1053 0f        rrca    
1054 0f        rrca    
1055 cd5910    call    1059h
1058 f1        pop     af
1059 e60f      and     0fh
105b fe0a      cp      0ah
105d 3802      jr      c,1061h
105f c607      add     a,07h
1061 180c      jr      106fh
1063 3e01      ld      a,01h
1065 0ea2      ld      c,0a2h
1067 ed70      in      f,(c)
1069 fa6710    jp      m,1067h
106c d3a0      out     (0a0h),a
106e c9        ret     

106f c630      add     a,30h
1071 0ea2      ld      c,0a2h
1073 ed70      in      f,(c)
1075 fa7310    jp      m,1073h
1078 d3a1      out     (0a1h),a
107a c9        ret     

107b cda110    call    10a1h
107e cd3611    call    1136h
1081 cd8e11    call    118eh
1084 cd0613    call    1306h
1087 cd4a15    call    154ah
108a cd9c15    call    159ch
108d cde015    call    15e0h
1090 cd4b16    call    164bh
1093 cdab16    call    16abh
1096 cd4717    call    1747h
1099 cd9318    call    1893h
109c cd2019    call    1920h
109f 18e3      jr      1084h
10a1 11f110    ld      de,10f1h
10a4 cdd50f    call    0fd5h
10a7 dde1      pop     ix
10a9 0601      ld      b,01h
10ab 210020    ld      hl,2000h
10ae 48        ld      c,b
10af 71        ld      (hl),c
10b0 23        inc     hl
10b1 cb11      rl      c
10b3 7c        ld      a,h
10b4 b5        or      l
10b5 20f8      jr      nz,10afh
10b7 210020    ld      hl,2000h
10ba 48        ld      c,b
10bb 7e        ld      a,(hl)
10bc a9        xor     c
10bd 2014      jr      nz,10d3h
10bf 23        inc     hl
10c0 cb11      rl      c
10c2 7c        ld      a,h
10c3 b5        or      l
10c4 20f5      jr      nz,10bbh
10c6 3e2e      ld      a,2eh
10c8 d3a1      out     (0a1h),a
10ca cb10      rl      b
10cc 30dd      jr      nc,10abh
10ce 112211    ld      de,1122h
10d1 1810      jr      10e3h
10d3 e60f      and     0fh
10d5 3e20      ld      a,20h
10d7 2804      jr      z,10ddh
10d9 3c        inc     a
10da e5        push    hl
10db fde1      pop     iy
10dd 326168    ld      (6861h),a
10e0 110711    ld      de,1107h
10e3 cdd50f    call    0fd5h
10e6 3e7d      ld      a,7dh
10e8 d388      out     (88h),a
10ea cd5615    call    1556h
10ed 28fb      jr      z,10eah
10ef dde9      jp      (ix)
10f1 1052      djnz    1145h
10f3 41        ld      b,c
10f4 4d        ld      c,l
10f5 2074      jr      nz,116bh
10f7 65        ld      h,l
10f8 73        ld      (hl),e
10f9 74        ld      (hl),h
10fa 2069      jr      nz,1165h
10fc 6e        ld      l,(hl)
10fd 90        sub     b
10fe 70        ld      (hl),b
10ff 72        ld      (hl),d
1100 6f        ld      l,a
1101 67        ld      h,a
1102 72        ld      (hl),d
1103 65        ld      h,l
1104 73        ld      (hl),e
1105 73        ld      (hl),e
1106 fe10      cp      10h
1108 52        ld      d,d
1109 41        ld      b,c
110a 4d        ld      c,l
110b 2065      jr      nz,1172h
110d 72        ld      (hl),d
110e 72        ld      (hl),d
110f 6f        ld      l,a
1110 72        ld      (hl),d
1111 2040      jr      nz,1153h
1113 90        sub     b
1114 15        dec     d
1115 2049      jr      nz,1160h
1117 43        ld      b,e
1118 311861    ld      sp,6118h
111b 68        ld      l,b
111c 2042      jr      nz,1160h
111e 61        ld      h,c
111f 64        ld      h,h
1120 3f        ccf     
1121 fe10      cp      10h
1123 52        ld      d,d
1124 41        ld      b,c
1125 4d        ld      c,l
1126 204f      jr      nz,1177h
1128 4b        ld      c,e
1129 90        sub     b
112a 50        ld      d,b
112b 72        ld      (hl),d
112c 65        ld      h,l
112d 73        ld      (hl),e
112e 73        ld      (hl),e
112f 2045      jr      nz,1176h
1131 4e        ld      c,(hl)
1132 54        ld      d,h
1133 45        ld      b,l
1134 52        ld      d,d
1135 fefd      cp      0fdh
1137 210000    ld      hl,0000h
113a 210000    ld      hl,0000h
113d 1600      ld      d,00h
113f 5e        ld      e,(hl)
1140 23        inc     hl
1141 fd19      add     iy,de
1143 7c        ld      a,h
1144 fe20      cp      20h
1146 20f7      jr      nz,113fh
1148 116e11    ld      de,116eh
114b 3e7f      ld      a,7fh
114d d388      out     (88h),a
114f 327961    ld      (6179h),a
1152 cdd50f    call    0fd5h
1155 db58      in      a,(58h)
1157 cb77      bit     6,a
1159 c8        ret     z

115a cb6f      bit     5,a
115c 20f7      jr      nz,1155h
115e cd7015    call    1570h
1161 db58      in      a,(58h)
1163 cb6f      bit     5,a
1165 28fa      jr      z,1161h
1167 cd7015    call    1570h
116a f1        pop     af
116b c39c10    jp      109ch
116e 1052      djnz    11c2h
1170 4f        ld      c,a
1171 4d        ld      c,l
1172 2043      jr      nz,11b7h
1174 6b        ld      l,e
1175 73        ld      (hl),e
1176 75        ld      (hl),l
1177 6d        ld      l,l
1178 203d      jr      nz,11b7h
117a 2015      jr      nz,1191h
117c 90        sub     b
117d 313d53    ld      sp,533dh
1180 6e        ld      l,(hl)
1181 64        ld      h,h
1182 2052      jr      nz,11d6h
1184 41        ld      b,c
1185 4d        ld      c,l
1186 2032      jr      nz,11bah
1188 3d        dec     a
1189 44        ld      b,h
118a 69        ld      l,c
118b 73        ld      (hl),e
118c 6b        ld      l,e
118d fe11      cp      11h
118f ac        xor     h
1190 12        ld      (de),a
1191 cdd50f    call    0fd5h
1194 af        xor     a
1195 cdbf11    call    11bfh
1198 3818      jr      c,11b2h
119a 3e01      ld      a,01h
119c cdbf11    call    11bfh
119f 3811      jr      c,11b2h
11a1 3e06      ld      a,06h
11a3 cdbf11    call    11bfh
11a6 380a      jr      c,11b2h
11a8 3e07      ld      a,07h
11aa cdbf11    call    11bfh
11ad 3803      jr      c,11b2h
11af 11c612    ld      de,12c6h
11b2 cdd50f    call    0fd5h
11b5 3e7d      ld      a,7dh
11b7 d388      out     (88h),a
11b9 cd5615    call    1556h
11bc 28fb      jr      z,11b9h
11be c9        ret     

11bf 326268    ld      (6862h),a
11c2 cd6401    call    0164h
11c5 210000    ld      hl,0000h
11c8 2b        dec     hl
11c9 3e07      ld      a,07h
11cb d394      out     (94h),a
11cd 7d        ld      a,l
11ce d398      out     (98h),a
11d0 7c        ld      a,h
11d1 d39c      out     (9ch),a
11d3 7d        ld      a,l
11d4 0f        rrca    
11d5 9f        sbc     a,a
11d6 d341      out     (41h),a
11d8 7d        ld      a,l
11d9 0f        rrca    
11da 0f        rrca    
11db 9f        sbc     a,a
11dc d340      out     (40h),a
11de 7c        ld      a,h
11df b5        or      l
11e0 c2c811    jp      nz,11c8h
11e3 3e2e      ld      a,2eh
11e5 d3a1      out     (0a1h),a
11e7 110001    ld      de,0100h
11ea 210000    ld      hl,0000h
11ed 2b        dec     hl
11ee 3e07      ld      a,07h
11f0 d394      out     (94h),a
11f2 7d        ld      a,l
11f3 d398      out     (98h),a
11f5 7c        ld      a,h
11f6 d39c      out     (9ch),a
11f8 cb45      bit     0,l
11fa db41      in      a,(41h)
11fc 2801      jr      z,11ffh
11fe 2f        cpl     
11ff ab        xor     e
1200 2072      jr      nz,1274h
1202 7d        ld      a,l
1203 0f        rrca    
1204 9f        sbc     a,a
1205 aa        xor     d
1206 d341      out     (41h),a
1208 cb45      bit     0,l
120a 2811      jr      z,121dh
120c db40      in      a,(40h)
120e cb4d      bit     1,l
1210 2801      jr      z,1213h
1212 2f        cpl     
1213 ab        xor     e
1214 2063      jr      nz,1279h
1216 7d        ld      a,l
1217 0f        rrca    
1218 0f        rrca    
1219 9f        sbc     a,a
121a aa        xor     d
121b d340      out     (40h),a
121d 7c        ld      a,h
121e b5        or      l
121f c2ed11    jp      nz,11edh
1222 5a        ld      e,d
1223 cb22      sla     d
1225 7a        ld      a,d
1226 b7        or      a
1227 20c1      jr      nz,11eah
1229 210000    ld      hl,0000h
122c 010000    ld      bc,0000h
122f 3e07      ld      a,07h
1231 d394      out     (94h),a
1233 7d        ld      a,l
1234 d398      out     (98h),a
1236 7c        ld      a,h
1237 d39c      out     (9ch),a
1239 af        xor     a
123a d341      out     (41h),a
123c d340      out     (40h),a
123e eda1      cpi     
1240 ea2f12    jp      pe,122fh
1243 3e2e      ld      a,2eh
1245 d3a1      out     (0a1h),a
1247 210000    ld      hl,0000h
124a 010000    ld      bc,0000h
124d 1100ff    ld      de,0ff00h
1250 3e07      ld      a,07h
1252 d394      out     (94h),a
1254 7d        ld      a,l
1255 d398      out     (98h),a
1257 0f        rrca    
1258 7c        ld      a,h
1259 d39c      out     (9ch),a
125b 3808      jr      c,1265h
125d db40      in      a,(40h)
125f ab        xor     e
1260 2017      jr      nz,1279h
1262 7a        ld      a,d
1263 d340      out     (40h),a
1265 db41      in      a,(41h)
1267 ab        xor     e
1268 200a      jr      nz,1274h
126a 7a        ld      a,d
126b d341      out     (41h),a
126d eda1      cpi     
126f ea5012    jp      pe,1250h
1272 af        xor     a
1273 c9        ret     

1274 01a412    ld      bc,12a4h
1277 1803      jr      127ch
1279 019c12    ld      bc,129ch
127c e60f      and     0fh
127e 2001      jr      nz,1281h
1280 03        inc     bc
1281 e5        push    hl
1282 fde1      pop     iy
1284 7d        ld      a,l
1285 e601      and     01h
1287 07        rlca    
1288 6f        ld      l,a
1289 3a6268    ld      a,(6862h)
128c e604      and     04h
128e b5        or      l
128f 6f        ld      l,a
1290 2600      ld      h,00h
1292 09        add     hl,bc
1293 7e        ld      a,(hl)
1294 326368    ld      (6863h),a
1297 11e412    ld      de,12e4h
129a 37        scf     
129b c9        ret     

129c 2624      ld      h,24h
129e 2624      ld      h,24h
12a0 27        daa     
12a1 25        dec     h
12a2 27        daa     
12a3 25        dec     h
12a4 2e2f      ld      l,2fh
12a6 2c        inc     l
12a7 2d        dec     l
12a8 2a2b28    ld      hl,(282bh)
12ab 29        add     hl,hl
12ac 1053      djnz    1301h
12ae 6e        ld      l,(hl)
12af 64        ld      h,h
12b0 2052      jr      nz,1304h
12b2 41        ld      b,c
12b3 4d        ld      c,l
12b4 2054      jr      nz,130ah
12b6 65        ld      h,l
12b7 73        ld      (hl),e
12b8 74        ld      (hl),h
12b9 2069      jr      nz,1324h
12bb 6e        ld      l,(hl)
12bc 90        sub     b
12bd 50        ld      d,b
12be 72        ld      (hl),d
12bf 6f        ld      l,a
12c0 67        ld      h,a
12c1 72        ld      (hl),d
12c2 65        ld      h,l
12c3 73        ld      (hl),e
12c4 73        ld      (hl),e
12c5 fe10      cp      10h
12c7 53        ld      d,e
12c8 6f        ld      l,a
12c9 75        ld      (hl),l
12ca 6e        ld      l,(hl)
12cb 64        ld      h,h
12cc 204d      jr      nz,131bh
12ce 65        ld      h,l
12cf 6d        ld      l,l
12d0 3a204f    ld      a,(4f20h)
12d3 4b        ld      c,e
12d4 2020      jr      nz,12f6h
12d6 2090      jr      nz,1268h
12d8 50        ld      d,b
12d9 72        ld      (hl),d
12da 65        ld      h,l
12db 73        ld      (hl),e
12dc 73        ld      (hl),e
12dd 2045      jr      nz,1324h
12df 4e        ld      c,(hl)
12e0 54        ld      d,h
12e1 45        ld      b,l
12e2 52        ld      d,d
12e3 fe10      cp      10h
12e5 53        ld      d,e
12e6 6e        ld      l,(hl)
12e7 64        ld      h,h
12e8 204d      jr      nz,1337h
12ea 65        ld      h,l
12eb 6d        ld      l,l
12ec 2045      jr      nz,1333h
12ee 72        ld      (hl),d
12ef 72        ld      (hl),d
12f0 6f        ld      l,a
12f1 72        ld      (hl),d
12f2 2040      jr      nz,1334h
12f4 90        sub     b
12f5 17        rla     
12f6 62        ld      h,d
12f7 68        ld      l,b
12f8 15        dec     d
12f9 2049      jr      nz,1344h
12fb 43        ld      b,e
12fc 311863    ld      sp,6318h
12ff 68        ld      l,b
1300 2042      jr      nz,1344h
1302 61        ld      h,c
1303 64        ld      h,h
1304 3f        ccf     
1305 fe11      cp      11h
1307 74        ld      (hl),h
1308 13        inc     de
1309 cdd50f    call    0fd5h
130c 0e08      ld      c,08h
130e 3e78      ld      a,78h
1310 0d        dec     c
1311 b1        or      c
1312 d388      out     (88h),a
1314 0605      ld      b,05h
1316 db58      in      a,(58h)
1318 17        rla     
1319 3013      jr      nc,132eh
131b 10fb      djnz    1318h
131d 79        ld      a,c
131e a7        and     a
131f 20ed      jr      nz,130eh
1321 db58      in      a,(58h)
1323 1f        rra     
1324 3008      jr      nc,132eh
1326 05        dec     b
1327 1f        rra     
1328 3004      jr      nc,132eh
132a 05        dec     b
132b 1f        rra     
132c 38de      jr      c,130ch
132e 78        ld      a,b
132f a7        and     a
1330 21e913    ld      hl,13e9h
1333 280c      jr      z,1341h
1335 cb78      bit     7,b
1337 280c      jr      z,1345h
1339 cb40      bit     0,b
133b 23        inc     hl
133c 23        inc     hl
133d 2002      jr      nz,1341h
133f 23        inc     hl
1340 23        inc     hl
1341 af        xor     a
1342 f5        push    af
1343 180e      jr      1353h
1345 3d        dec     a
1346 07        rlca    
1347 07        rlca    
1348 07        rlca    
1349 b1        or      c
134a f5        push    af
134b 87        add     a,a
134c 219913    ld      hl,1399h
134f 4f        ld      c,a
1350 0600      ld      b,00h
1352 09        add     hl,bc
1353 5e        ld      e,(hl)
1354 23        inc     hl
1355 56        ld      d,(hl)
1356 d5        push    de
1357 119713    ld      de,1397h
135a cdd50f    call    0fd5h
135d d1        pop     de
135e cdd50f    call    0fd5h
1361 210032    ld      hl,3200h
1364 2b        dec     hl
1365 7c        ld      a,h
1366 b5        or      l
1367 20fb      jr      nz,1364h
1369 db58      in      a,(58h)
136b 3c        inc     a
136c 20f3      jr      nz,1361h
136e f1        pop     af
136f fe25      cp      25h
1371 2093      jr      nz,1306h
1373 c9        ret     

1374 1042      djnz    13b8h
1376 75        ld      (hl),l
1377 74        ld      (hl),h
1378 74        ld      (hl),h
1379 6f        ld      l,a
137a 6e        ld      l,(hl)
137b 73        ld      (hl),e
137c 2052      jr      nz,13d0h
137e 65        ld      h,l
137f 6c        ld      l,h
1380 65        ld      h,l
1381 61        ld      h,c
1382 73        ld      (hl),e
1383 65        ld      h,l
1384 64        ld      h,h
1385 90        sub     b
1386 45        ld      b,l
1387 4e        ld      c,(hl)
1388 54        ld      d,h
1389 45        ld      b,l
138a 52        ld      d,d
138b 2065      jr      nz,13f2h
138d 78        ld      a,b
138e 69        ld      l,c
138f 74        ld      (hl),h
1390 73        ld      (hl),e
1391 2074      jr      nz,1407h
1393 65        ld      h,l
1394 73        ld      (hl),e
1395 74        ld      (hl),h
1396 fe10      cp      10h
1398 fe3f      cp      3fh
139a 14        inc     d
139b 1614      ld      d,14h
139d 62        ld      h,d
139e 14        inc     d
139f a0        and     b
13a0 14        inc     d
13a1 d8        ret     c

13a2 14        inc     d
13a3 fc1445    call    m,4514h
13a6 15        dec     d
13a7 2b        dec     hl
13a8 15        dec     d
13a9 46        ld      b,(hl)
13aa 14        inc     d
13ab 1f        rra     
13ac 14        inc     d
13ad 6e        ld      l,(hl)
13ae 14        inc     d
13af a9        xor     c
13b0 14        inc     d
13b1 f3        di      
13b2 14        inc     d
13b3 08        ex      af,af'
13b4 15        dec     d
13b5 3f        ccf     
13b6 15        dec     d
13b7 25        dec     h
13b8 15        dec     d
13b9 4d        ld      c,l
13ba 14        inc     d
13bb 2a1477    ld      hl,(7714h)
13be 14        inc     d
13bf b6        or      (hl)
13c0 14        inc     d
13c1 ec1410    call    pe,1014h
13c4 15        dec     d
13c5 39        add     hl,sp
13c6 15        dec     d
13c7 211554    ld      hl,5415h
13ca 14        inc     d
13cb 311488    ld      sp,8814h
13ce 14        inc     d
13cf c314e7    jp      0e714h
13d2 14        inc     d
13d3 0e15      ld      c,15h
13d5 35        dec     (hl)
13d6 15        dec     d
13d7 1d        dec     e
13d8 15        dec     d
13d9 5b        ld      e,e
13da 14        inc     d
13db 3814      jr      c,13f1h
13dd 92        sub     d
13de 14        inc     d
13df cc1403    call    z,0314h
13e2 15        dec     d
13e3 12        ld      (de),a
13e4 15        dec     d
13e5 3015      jr      nc,13fch
13e7 1815      jr      13feh
13e9 ef        rst     28h
13ea 13        inc     de
13eb fc1309    call    m,0913h
13ee 14        inc     d
13ef 66        ld      h,(hl)
13f0 6f        ld      l,a
13f1 6f        ld      l,a
13f2 74        ld      (hl),h
13f3 73        ld      (hl),e
13f4 77        ld      (hl),a
13f5 69        ld      l,c
13f6 74        ld      (hl),h
13f7 63        ld      h,e
13f8 68        ld      l,b
13f9 2031      jr      nz,142ch
13fb fe66      cp      66h
13fd 6f        ld      l,a
13fe 6f        ld      l,a
13ff 74        ld      (hl),h
1400 73        ld      (hl),e
1401 77        ld      (hl),a
1402 69        ld      l,c
1403 74        ld      (hl),h
1404 63        ld      h,e
1405 68        ld      l,b
1406 2032      jr      nz,143ah
1408 fe66      cp      66h
140a 6f        ld      l,a
140b 6f        ld      l,a
140c 74        ld      (hl),h
140d 73        ld      (hl),e
140e 77        ld      (hl),a
140f 69        ld      l,c
1410 74        ld      (hl),h
1411 63        ld      h,e
1412 68        ld      l,b
1413 2033      jr      nz,1448h
1415 fe72      cp      72h
1417 75        ld      (hl),l
1418 6e        ld      l,(hl)
1419 2f        cpl     
141a 73        ld      (hl),e
141b 74        ld      (hl),h
141c 6f        ld      l,a
141d 70        ld      (hl),b
141e fe74      cp      74h
1420 61        ld      h,c
1421 70        ld      (hl),b
1422 2f        cpl     
1423 72        ld      (hl),d
1424 65        ld      h,l
1425 70        ld      (hl),b
1426 65        ld      h,l
1427 61        ld      h,c
1428 74        ld      (hl),h
1429 fe70      cp      70h
142b 6c        ld      l,h
142c 61        ld      h,c
142d 79        ld      a,c
142e 2031      jr      nz,1461h
1430 fe70      cp      70h
1432 6c        ld      l,h
1433 61        ld      h,c
1434 79        ld      a,c
1435 2032      jr      nz,1469h
1437 fe70      cp      70h
1439 6c        ld      l,h
143a 61        ld      h,c
143b 79        ld      a,c
143c 2033      jr      nz,1471h
143e fe70      cp      70h
1440 6c        ld      l,h
1441 61        ld      h,c
1442 79        ld      a,c
1443 2034      jr      nz,1479h
1445 fe70      cp      70h
1447 6c        ld      l,h
1448 61        ld      h,c
1449 79        ld      a,c
144a 2035      jr      nz,1481h
144c fe70      cp      70h
144e 6c        ld      l,h
144f 61        ld      h,c
1450 79        ld      a,c
1451 2036      jr      nz,1489h
1453 fe70      cp      70h
1455 6c        ld      l,h
1456 61        ld      h,c
1457 79        ld      a,c
1458 2037      jr      nz,1491h
145a fe70      cp      70h
145c 6c        ld      l,h
145d 61        ld      h,c
145e 79        ld      a,c
145f 2038      jr      nz,1499h
1461 fe72      cp      72h
1463 65        ld      h,l
1464 63        ld      h,e
1465 6f        ld      l,a
1466 72        ld      (hl),d
1467 64        ld      h,h
1468 2f        cpl     
1469 65        ld      h,l
146a 64        ld      h,h
146b 69        ld      l,c
146c 74        ld      (hl),h
146d fe6d      cp      6dh
146f 69        ld      l,c
1470 78        ld      a,b
1471 2f        cpl     
1472 73        ld      (hl),e
1473 74        ld      (hl),h
1474 65        ld      h,l
1475 70        ld      (hl),b
1476 fe74      cp      74h
1478 65        ld      h,l
1479 6d        ld      l,l
147a 70        ld      (hl),b
147b 6f        ld      l,a
147c 43        ld      b,e
147d 68        ld      l,b
147e 2f        cpl     
147f 61        ld      h,c
1480 75        ld      (hl),l
1481 74        ld      (hl),h
1482 6f        ld      l,a
1483 43        ld      b,e
1484 6f        ld      l,a
1485 72        ld      (hl),d
1486 72        ld      (hl),d
1487 fe64      cp      64h
1489 65        ld      h,l
148a 6c        ld      l,h
148b 2f        cpl     
148c 65        ld      h,l
148d 72        ld      (hl),d
148e 61        ld      h,c
148f 73        ld      (hl),e
1490 65        ld      h,l
1491 fe69      cp      69h
1493 6e        ld      l,(hl)
1494 73        ld      (hl),e
1495 2f        cpl     
1496 73        ld      (hl),e
1497 65        ld      h,l
1498 67        ld      h,a
1499 6c        ld      l,h
149a 65        ld      h,l
149b 6e        ld      l,(hl)
149c 67        ld      h,a
149d 74        ld      (hl),h
149e 68        ld      l,b
149f fe65      cp      65h
14a1 6e        ld      l,(hl)
14a2 64        ld      h,h
14a3 2f        cpl     
14a4 74        ld      (hl),h
14a5 73        ld      (hl),e
14a6 69        ld      l,c
14a7 67        ld      h,a
14a8 fe73      cp      73h
14aa 75        ld      (hl),l
14ab 62        ld      h,d
14ac 73        ld      (hl),e
14ad 6f        ld      l,a
14ae 6e        ld      l,(hl)
14af 67        ld      h,a
14b0 2f        cpl     
14b1 63        ld      h,e
14b2 6f        ld      l,a
14b3 70        ld      (hl),b
14b4 79        ld      a,c
14b5 fe72      cp      72h
14b7 65        ld      h,l
14b8 70        ld      (hl),b
14b9 65        ld      h,l
14ba 61        ld      h,c
14bb 74        ld      (hl),h
14bc 2f        cpl     
14bd 73        ld      (hl),e
14be 77        ld      (hl),a
14bf 69        ld      l,c
14c0 6e        ld      l,(hl)
14c1 67        ld      h,a
14c2 fe74      cp      74h
14c4 72        ld      (hl),d
14c5 69        ld      l,c
14c6 67        ld      h,a
14c7 2f        cpl     
14c8 6d        ld      l,l
14c9 65        ld      h,l
14ca 74        ld      (hl),h
14cb fe62      cp      62h
14cd 61        ld      h,c
14ce 6e        ld      l,(hl)
14cf 6b        ld      l,e
14d0 2073      jr      nz,1545h
14d2 65        ld      h,l
14d3 6c        ld      l,h
14d4 65        ld      h,l
14d5 63        ld      h,e
14d6 74        ld      (hl),h
14d7 fe74      cp      74h
14d9 75        ld      (hl),l
14da 6e        ld      l,(hl)
14db 65        ld      h,l
14dc 2f        cpl     
14dd 6d        ld      l,l
14de 69        ld      l,c
14df 78        ld      a,b
14e0 2f        cpl     
14e1 6d        ld      l,l
14e2 75        ld      (hl),l
14e3 6c        ld      l,h
14e4 74        ld      (hl),h
14e5 69        ld      l,c
14e6 fe44      cp      44h
14e8 69        ld      l,c
14e9 73        ld      (hl),e
14ea 6b        ld      l,e
14eb fe53      cp      53h
14ed 65        ld      h,l
14ee 74        ld      (hl),h
14ef 2d        dec     l
14f0 75        ld      (hl),l
14f1 70        ld      (hl),b
14f2 fe73      cp      73h
14f4 6f        ld      l,a
14f5 6e        ld      l,(hl)
14f6 67        ld      h,a
14f7 2f        cpl     
14f8 73        ld      (hl),e
14f9 65        ld      h,l
14fa 67        ld      h,a
14fb fe53      cp      53h
14fd 61        ld      h,c
14fe 6d        ld      l,l
14ff 70        ld      (hl),b
1500 6c        ld      l,h
1501 65        ld      h,l
1502 fe53      cp      53h
1504 79        ld      a,c
1505 6e        ld      l,(hl)
1506 63        ld      h,e
1507 fe74      cp      74h
1509 65        ld      h,l
150a 6d        ld      l,l
150b 70        ld      (hl),b
150c 6f        ld      l,a
150d fe7e      cp      7eh
150f fe7f      cp      7fh
1511 fe65      cp      65h
1513 6e        ld      l,(hl)
1514 74        ld      (hl),h
1515 65        ld      h,l
1516 72        ld      (hl),d
1517 fe7a      cp      7ah
1519 65        ld      h,l
151a 72        ld      (hl),d
151b 6f        ld      l,a
151c fe6f      cp      6fh
151e 6e        ld      l,(hl)
151f 65        ld      h,l
1520 fe74      cp      74h
1522 77        ld      (hl),a
1523 6f        ld      l,a
1524 fe74      cp      74h
1526 68        ld      l,b
1527 72        ld      (hl),d
1528 65        ld      h,l
1529 65        ld      h,l
152a fe66      cp      66h
152c 6f        ld      l,a
152d 75        ld      (hl),l
152e 72        ld      (hl),d
152f fe66      cp      66h
1531 69        ld      l,c
1532 76        halt    
1533 65        ld      h,l
1534 fe73      cp      73h
1536 69        ld      l,c
1537 78        ld      a,b
1538 fe73      cp      73h
153a 65        ld      h,l
153b 76        halt    
153c 65        ld      h,l
153d 6e        ld      l,(hl)
153e fe65      cp      65h
1540 69        ld      l,c
1541 67        ld      h,a
1542 68        ld      l,b
1543 74        ld      (hl),h
1544 fe6e      cp      6eh
1546 69        ld      l,c
1547 6e        ld      l,(hl)
1548 65        ld      h,l
1549 fe11      cp      11h
154b 79        ld      a,c
154c 15        dec     d
154d cdd50f    call    0fd5h
1550 cd5615    call    1556h
1553 c0        ret     nz

1554 18fa      jr      1550h
1556 db58      in      a,(58h)
1558 3c        inc     a
1559 c8        ret     z

155a 3d        dec     a
155b f5        push    af
155c db58      in      a,(58h)
155e 3c        inc     a
155f 20fb      jr      nz,155ch
1561 cd7015    call    1570h
1564 db58      in      a,(58h)
1566 3c        inc     a
1567 20f3      jr      nz,155ch
1569 f1        pop     af
156a c9        ret     

156b 218000    ld      hl,0080h
156e 1803      jr      1573h
1570 210064    ld      hl,6400h
1573 2b        dec     hl
1574 7c        ld      a,h
1575 b5        or      l
1576 20fb      jr      nz,1573h
1578 c9        ret     

1579 80        add     a,b
157a ff        rst     38h
157b ff        rst     38h
157c ff        rst     38h
157d ff        rst     38h
157e ff        rst     38h
157f ff        rst     38h
1580 ff        rst     38h
1581 ff        rst     38h
1582 ff        rst     38h
1583 ff        rst     38h
1584 ff        rst     38h
1585 ff        rst     38h
1586 ff        rst     38h
1587 ff        rst     38h
1588 ff        rst     38h
1589 ff        rst     38h
158a 90        sub     b
158b ff        rst     38h
158c ff        rst     38h
158d ff        rst     38h
158e ff        rst     38h
158f ff        rst     38h
1590 ff        rst     38h
1591 ff        rst     38h
1592 ff        rst     38h
1593 ff        rst     38h
1594 ff        rst     38h
1595 ff        rst     38h
1596 ff        rst     38h
1597 ff        rst     38h
1598 ff        rst     38h
1599 ff        rst     38h
159a ff        rst     38h
159b fe11      cp      11h
159d c0        ret     nz

159e 15        dec     d
159f cdd50f    call    0fd5h
15a2 110100    ld      de,0001h
15a5 eb        ex      de,hl
15a6 29        add     hl,hl
15a7 cb5d      bit     3,l
15a9 20fb      jr      nz,15a6h
15ab 3001      jr      nc,15aeh
15ad 2c        inc     l
15ae 7d        ld      a,l
15af 2f        cpl     
15b0 d38c      out     (8ch),a
15b2 7c        ld      a,h
15b3 2f        cpl     
15b4 d390      out     (90h),a
15b6 eb        ex      de,hl
15b7 cd7015    call    1570h
15ba cd5615    call    1556h
15bd c0        ret     nz

15be 18e5      jr      15a5h
15c0 104c      djnz    160eh
15c2 61        ld      h,c
15c3 6d        ld      l,l
15c4 70        ld      (hl),b
15c5 2054      jr      nz,161bh
15c7 65        ld      h,l
15c8 73        ld      (hl),e
15c9 74        ld      (hl),h
15ca 3a2050    ld      a,(5020h)
15cd 72        ld      (hl),d
15ce 65        ld      h,l
15cf 73        ld      (hl),e
15d0 73        ld      (hl),e
15d1 90        sub     b
15d2 45        ld      b,l
15d3 4e        ld      c,(hl)
15d4 54        ld      d,h
15d5 45        ld      b,l
15d6 52        ld      d,d
15d7 2074      jr      nz,164dh
15d9 6f        ld      l,a
15da 2065      jr      nz,1641h
15dc 78        ld      a,b
15dd 69        ld      l,c
15de 74        ld      (hl),h
15df fe3e      cp      3eh
15e1 ff        rst     38h
15e2 d38c      out     (8ch),a
15e4 d390      out     (90h),a
15e6 211a68    ld      hl,681ah
15e9 111b68    ld      de,681bh
15ec 010f00    ld      bc,000fh
15ef 3600      ld      (hl),00h
15f1 edb0      ldir    
15f3 112816    ld      de,1628h
15f6 cdd50f    call    0fd5h
15f9 cd5615    call    1556h
15fc c0        ret     nz

15fd 0608      ld      b,08h
15ff 78        ld      a,b
1600 3d        dec     a
1601 d3c0      out     (0c0h),a
1603 cd6b15    call    156bh
1606 dbc0      in      a,(0c0h)
1608 58        ld      e,b
1609 1d        dec     e
160a 37        scf     
160b cb13      rl      e
160d 1600      ld      d,00h
160f 211a68    ld      hl,681ah
1612 19        add     hl,de
1613 5f        ld      e,a
1614 96        sub     (hl)
1615 280d      jr      z,1624h
1617 3d        dec     a
1618 280a      jr      z,1624h
161a 3c        inc     a
161b 3c        inc     a
161c 2806      jr      z,1624h
161e 73        ld      (hl),e
161f 2b        dec     hl
1620 a7        and     a
1621 cb1b      rr      e
1623 73        ld      (hl),e
1624 10d9      djnz    15ffh
1626 18cb      jr      15f3h
1628 80        add     a,b
1629 19        add     hl,de
162a 1a        ld      a,(de)
162b 68        ld      l,b
162c 2019      jr      nz,1647h
162e 1e68      ld      e,68h
1630 2019      jr      nz,164bh
1632 226820    ld      (2068h),hl
1635 19        add     hl,de
1636 2668      ld      h,68h
1638 2090      jr      nz,15cah
163a 2019      jr      nz,1655h
163c 1c        inc     e
163d 68        ld      l,b
163e 2019      jr      nz,1659h
1640 2068      jr      nz,16aah
1642 2019      jr      nz,165dh
1644 24        inc     h
1645 68        ld      l,b
1646 2019      jr      nz,1661h
1648 2868      jr      z,16b2h
164a fe11      cp      11h
164c 88        adc     a,b
164d 16cd      ld      d,0cdh
164f d5        push    de
1650 0f        rrca    
1651 11a116    ld      de,16a1h
1654 cdd50f    call    0fd5h
1657 3e1d      ld      a,1dh
1659 d388      out     (88h),a
165b 0610      ld      b,10h
165d 110000    ld      de,0000h
1660 db41      in      a,(41h)
1662 6f        ld      l,a
1663 db40      in      a,(40h)
1665 2600      ld      h,00h
1667 29        add     hl,hl
1668 29        add     hl,hl
1669 29        add     hl,hl
166a 29        add     hl,hl
166b e60f      and     0fh
166d b5        or      l
166e 6f        ld      l,a
166f 19        add     hl,de
1670 eb        ex      de,hl
1671 10ed      djnz    1660h
1673 0604      ld      b,04h
1675 cb3a      srl     d
1677 cb1b      rr      e
1679 10fa      djnz    1675h
167b d5        push    de
167c fde1      pop     iy
167e cd5615    call    1556h
1681 28ce      jr      z,1651h
1683 3e7d      ld      a,7dh
1685 d388      out     (88h),a
1687 c9        ret     

1688 1054      djnz    16deh
168a 72        ld      (hl),d
168b 69        ld      l,c
168c 6d        ld      l,l
168d 2052      jr      nz,16e1h
168f 54        ld      d,h
1690 312054    ld      sp,5420h
1693 6f        ld      l,a
1694 2030      jr      nz,16c6h
1696 3830      jr      c,16c8h
1698 3090      jr      nc,162ah
169a 52        ld      d,d
169b 54        ld      d,h
169c 31203d    ld      sp,3d20h
169f 20fe      jr      nz,169fh
16a1 96        sub     (hl)
16a2 15        dec     d
16a3 fe18      cp      18h
16a5 04        inc     b
16a6 cc0568    call    z,6805h
16a9 03        inc     bc
16aa c1        pop     bc
16ab 11ec16    ld      de,16ech
16ae cdd50f    call    0fd5h
16b1 cd5615    call    1556h
16b4 28fb      jr      z,16b1h
16b6 21a416    ld      hl,16a4h
16b9 015107    ld      bc,0751h
16bc edb3      otir    
16be 0600      ld      b,00h
16c0 78        ld      a,b
16c1 d350      out     (50h),a
16c3 0e00      ld      c,00h
16c5 0d        dec     c
16c6 2814      jr      z,16dch
16c8 db51      in      a,(51h)
16ca 0f        rrca    
16cb 30f8      jr      nc,16c5h
16cd db50      in      a,(50h)
16cf b8        cp      b
16d0 200a      jr      nz,16dch
16d2 10ec      djnz    16c0h
16d4 110f17    ld      de,170fh
16d7 cdd50f    call    0fd5h
16da 1806      jr      16e2h
16dc 112517    ld      de,1725h
16df cdd50f    call    0fd5h
16e2 cd5615    call    1556h
16e5 28fb      jr      z,16e2h
16e7 cb7f      bit     7,a
16e9 c8        ret     z

16ea 18bf      jr      16abh
16ec 1043      djnz    1731h
16ee 6f        ld      l,a
16ef 6e        ld      l,(hl)
16f0 6e        ld      l,(hl)
16f1 65        ld      h,l
16f2 63        ld      h,e
16f3 74        ld      (hl),h
16f4 204d      jr      nz,1743h
16f6 49        ld      c,c
16f7 44        ld      b,h
16f8 49        ld      c,c
16f9 2049      jr      nz,1744h
16fb 4e        ld      c,(hl)
16fc 2690      ld      h,90h
16fe 4f        ld      c,a
16ff 55        ld      d,l
1700 54        ld      d,h
1701 3b        dec     sp
1702 2050      jr      nz,1754h
1704 72        ld      (hl),d
1705 65        ld      h,l
1706 73        ld      (hl),e
1707 73        ld      (hl),e
1708 2045      jr      nz,174fh
170a 4e        ld      c,(hl)
170b 54        ld      d,h
170c 45        ld      b,l
170d 52        ld      d,d
170e fe10      cp      10h
1710 4d        ld      c,l
1711 49        ld      c,c
1712 44        ld      b,h
1713 49        ld      c,c
1714 3a204f    ld      a,(4f20h)
1717 4b        ld      c,e
1718 90        sub     b
1719 50        ld      d,b
171a 72        ld      (hl),d
171b 65        ld      h,l
171c 73        ld      (hl),e
171d 73        ld      (hl),e
171e 2045      jr      nz,1765h
1720 4e        ld      c,(hl)
1721 54        ld      d,h
1722 45        ld      b,l
1723 52        ld      d,d
1724 fe10      cp      10h
1726 4d        ld      c,l
1727 49        ld      c,c
1728 44        ld      b,h
1729 49        ld      c,c
172a 2046      jr      nz,1772h
172c 41        ld      b,c
172d 49        ld      c,c
172e 4c        ld      c,h
172f 2e20      ld      l,20h
1731 49        ld      c,c
1732 6e        ld      l,(hl)
1733 2026      jr      nz,175bh
1735 90        sub     b
1736 4f        ld      c,a
1737 75        ld      (hl),l
1738 74        ld      (hl),h
1739 2055      jr      nz,1790h
173b 6e        ld      l,(hl)
173c 63        ld      h,e
173d 6f        ld      l,a
173e 6e        ld      l,(hl)
173f 6e        ld      l,(hl)
1740 65        ld      h,l
1741 63        ld      h,e
1742 74        ld      (hl),h
1743 65        ld      h,l
1744 64        ld      h,h
1745 3f        ccf     
1746 fe11      cp      11h
1748 1d        dec     e
1749 18cd      jr      1718h
174b d5        push    de
174c 0f        rrca    
174d cd5615    call    1556h
1750 28fb      jr      z,174dh
1752 114018    ld      de,1840h
1755 cdd50f    call    0fd5h
1758 062b      ld      b,2bh
175a cd9417    call    1794h
175d 210a18    ld      hl,180ah
1760 01530f    ld      bc,0f53h
1763 edb3      otir    
1765 cda017    call    17a0h
1768 381a      jr      c,1784h
176a 0636      ld      b,36h
176c cd9417    call    1794h
176f 211918    ld      hl,1819h
1772 015304    ld      bc,0453h
1775 edb3      otir    
1777 cda017    call    17a0h
177a 3808      jr      c,1784h
177c 115218    ld      de,1852h
177f cdd50f    call    0fd5h
1782 1806      jr      178ah
1784 117018    ld      de,1870h
1787 cdd50f    call    0fd5h
178a cd5615    call    1556h
178d 28fb      jr      z,178ah
178f cb7f      bit     7,a
1791 c8        ret     z

1792 18b3      jr      1747h
1794 3e03      ld      a,03h
1796 d34a      out     (4ah),a
1798 3e07      ld      a,07h
179a d34a      out     (4ah),a
179c 78        ld      a,b
179d d34a      out     (4ah),a
179f c9        ret     

17a0 0610      ld      b,10h
17a2 db52      in      a,(52h)
17a4 10fc      djnz    17a2h
17a6 111400    ld      de,0014h
17a9 cdf717    call    17f7h
17ac fe5a      cp      5ah
17ae 2808      jr      z,17b8h
17b0 1b        dec     de
17b1 7a        ld      a,d
17b2 b3        or      e
17b3 20f4      jr      nz,17a9h
17b5 37        scf     
17b6 181b      jr      17d3h
17b8 110000    ld      de,0000h
17bb 62        ld      h,d
17bc cde217    call    17e2h
17bf 3812      jr      c,17d3h
17c1 62        ld      h,d
17c2 25        dec     h
17c3 cde217    call    17e2h
17c6 380b      jr      c,17d3h
17c8 cdf717    call    17f7h
17cb 3806      jr      c,17d3h
17cd ba        cp      d
17ce 2008      jr      nz,17d8h
17d0 15        dec     d
17d1 20ee      jr      nz,17c1h
17d3 3e03      ld      a,03h
17d5 d34a      out     (4ah),a
17d7 c9        ret     

17d8 fe5a      cp      5ah
17da 2003      jr      nz,17dfh
17dc 1d        dec     e
17dd 20e9      jr      nz,17c8h
17df 37        scf     
17e0 18f1      jr      17d3h
17e2 014000    ld      bc,0040h
17e5 db53      in      a,(53h)
17e7 cb57      bit     2,a
17e9 2007      jr      nz,17f2h
17eb 10f8      djnz    17e5h
17ed 0d        dec     c
17ee 20f5      jr      nz,17e5h
17f0 37        scf     
17f1 c9        ret     

17f2 7c        ld      a,h
17f3 d352      out     (52h),a
17f5 b7        or      a
17f6 c9        ret     

17f7 014000    ld      bc,0040h
17fa db53      in      a,(53h)
17fc 0f        rrca    
17fd 3807      jr      c,1806h
17ff 10f9      djnz    17fah
1801 0d        dec     c
1802 20f6      jr      nz,17fah
1804 37        scf     
1805 c9        ret     

1806 db52      in      a,(52h)
1808 b7        or      a
1809 c9        ret     

180a 1818      jr      1824h
180c 1801      jr      180fh
180e 04        inc     b
180f 04        inc     b
1810 00        nop     
1811 065a      ld      b,5ah
1813 07        rlca    
1814 5a        ld      e,d
1815 05        dec     b
1816 e8        ret     pe

1817 03        inc     bc
1818 d1        pop     de
1819 05        dec     b
181a 68        ld      l,b
181b 03        inc     bc
181c d1        pop     de
181d 1043      djnz    1862h
181f 6f        ld      l,a
1820 6e        ld      l,(hl)
1821 6e        ld      l,(hl)
1822 65        ld      h,l
1823 63        ld      h,e
1824 74        ld      (hl),h
1825 2053      jr      nz,187ah
1827 4d        ld      c,l
1828 50        ld      d,b
1829 54        ld      d,h
182a 45        ld      b,l
182b 2049      jr      nz,1876h
182d 4e        ld      c,(hl)
182e 90        sub     b
182f 2620      ld      h,20h
1831 4f        ld      c,a
1832 55        ld      d,l
1833 54        ld      d,h
1834 3b        dec     sp
1835 2068      jr      nz,189fh
1837 69        ld      l,c
1838 74        ld      (hl),h
1839 2045      jr      nz,1880h
183b 4e        ld      c,(hl)
183c 54        ld      d,h
183d 45        ld      b,l
183e 52        ld      d,d
183f fe10      cp      10h
1841 54        ld      d,h
1842 65        ld      h,l
1843 73        ld      (hl),e
1844 74        ld      (hl),h
1845 69        ld      l,c
1846 6e        ld      l,(hl)
1847 67        ld      h,a
1848 2053      jr      nz,189dh
184a 4d        ld      c,l
184b 50        ld      d,b
184c 54        ld      d,h
184d 45        ld      b,l
184e 2e2e      ld      l,2eh
1850 2efe      ld      l,0feh
1852 1053      djnz    18a7h
1854 4d        ld      c,l
1855 50        ld      d,b
1856 54        ld      d,h
1857 45        ld      b,l
1858 204f      jr      nz,18a9h
185a 4b        ld      c,e
185b 2040      jr      nz,189dh
185d 2032      jr      nz,1891h
185f 34        inc     (hl)
1860 2633      ld      h,33h
1862 3090      jr      nc,17f4h
1864 50        ld      d,b
1865 72        ld      (hl),d
1866 65        ld      h,l
1867 73        ld      (hl),e
1868 73        ld      (hl),e
1869 2045      jr      nz,18b0h
186b 4e        ld      c,(hl)
186c 54        ld      d,h
186d 45        ld      b,l
186e 52        ld      d,d
186f fe10      cp      10h
1871 53        ld      d,e
1872 4d        ld      c,l
1873 50        ld      d,b
1874 54        ld      d,h
1875 45        ld      b,l
1876 2046      jr      nz,18beh
1878 41        ld      b,c
1879 49        ld      c,c
187a 4c        ld      c,h
187b 2e20      ld      l,20h
187d 49        ld      c,c
187e 6e        ld      l,(hl)
187f 2026      jr      nz,18a7h
1881 90        sub     b
1882 4f        ld      c,a
1883 75        ld      (hl),l
1884 74        ld      (hl),h
1885 2055      jr      nz,18dch
1887 6e        ld      l,(hl)
1888 63        ld      h,e
1889 6f        ld      l,a
188a 6e        ld      l,(hl)
188b 6e        ld      l,(hl)
188c 65        ld      h,l
188d 63        ld      h,e
188e 74        ld      (hl),h
188f 65        ld      h,l
1890 64        ld      h,h
1891 3f        ccf     
1892 fe11      cp      11h
1894 02        ld      (bc),a
1895 19        add     hl,de
1896 cdd50f    call    0fd5h
1899 3e78      ld      a,78h
189b cdb218    call    18b2h
189e 201b      jr      nz,18bbh
18a0 eb        ex      de,hl
18a1 3e79      ld      a,79h
18a3 cdb218    call    18b2h
18a6 2013      jr      nz,18bbh
18a8 3e7d      ld      a,7dh
18aa cdb218    call    18b2h
18ad c25615    jp      nz,1556h
18b0 18e7      jr      1899h
18b2 d388      out     (88h),a
18b4 cdf918    call    18f9h
18b7 db58      in      a,(58h)
18b9 3c        inc     a
18ba c9        ret     

18bb 0608      ld      b,08h
18bd 3ef7      ld      a,0f7h
18bf d38c      out     (8ch),a
18c1 118168    ld      de,6881h
18c4 3e07      ld      a,07h
18c6 d3c0      out     (0c0h),a
18c8 cdf918    call    18f9h
18cb dbc0      in      a,(0c0h)
18cd 12        ld      (de),a
18ce 13        inc     de
18cf 10f3      djnz    18c4h
18d1 010008    ld      bc,0800h
18d4 59        ld      e,c
18d5 218168    ld      hl,6881h
18d8 7e        ld      a,(hl)
18d9 b9        cp      c
18da 3801      jr      c,18ddh
18dc 4f        ld      c,a
18dd 23        inc     hl
18de 10f5      djnz    18d5h
18e0 79        ld      a,c
18e1 326168    ld      (6861h),a
18e4 111b19    ld      de,191bh
18e7 cdd50f    call    0fd5h
18ea db58      in      a,(58h)
18ec 3c        inc     a
18ed 20fb      jr      nz,18eah
18ef cdf918    call    18f9h
18f2 db58      in      a,(58h)
18f4 3c        inc     a
18f5 28a2      jr      z,1899h
18f7 18f1      jr      18eah
18f9 213901    ld      hl,0139h
18fc 2b        dec     hl
18fd 7c        ld      a,h
18fe b5        or      l
18ff 20fb      jr      nz,18fch
1901 c9        ret     

1902 1044      djnz    1948h
1904 79        ld      a,c
1905 6e        ld      l,(hl)
1906 61        ld      h,c
1907 6d        ld      l,l
1908 69        ld      l,c
1909 63        ld      h,e
190a 2042      jr      nz,194eh
190c 75        ld      (hl),l
190d 74        ld      (hl),h
190e 74        ld      (hl),h
190f 6f        ld      l,a
1910 6e        ld      l,(hl)
1911 73        ld      (hl),e
1912 90        sub     b
1913 56        ld      d,(hl)
1914 61        ld      h,c
1915 6c        ld      l,h
1916 75        ld      (hl),l
1917 65        ld      h,l
1918 3a20fe    ld      a,(0fe20h)
191b 97        sub     a
191c 19        add     hl,de
191d 61        ld      h,c
191e 68        ld      l,b
191f fe3e      cp      3eh
1921 7f        ld      a,a
1922 d388      out     (88h),a
1924 327961    ld      (6179h),a
1927 11551a    ld      de,1a55h
192a cdd50f    call    0fd5h
192d 210000    ld      hl,0000h
1930 226168    ld      (6861h),hl
1933 226368    ld      (6863h),hl
1936 226d61    ld      (616dh),hl
1939 226f61    ld      (616fh),hl
193c 227161    ld      (6171h),hl
193f 227361    ld      (6173h),hl
1942 210a1b    ld      hl,1b0ah
1945 cdcd19    call    19cdh
1948 db58      in      a,(58h)
194a 3c        inc     a
194b 20fb      jr      nz,1948h
194d cd7015    call    1570h
1950 db58      in      a,(58h)
1952 cb67      bit     4,a
1954 c8        ret     z

1955 cb77      bit     6,a
1957 2831      jr      z,198ah
1959 cb6f      bit     5,a
195b 20f3      jr      nz,1950h
195d cde219    call    19e2h
1960 c0        ret     nz

1961 cd2c1a    call    1a2ch
1964 21201b    ld      hl,1b20h
1967 cdd619    call    19d6h
196a cdd019    call    19d0h
196d c49b19    call    nz,199bh
1970 38b8      jr      c,192ah
1972 fd7e0a    ld      a,(iy+0ah)
1975 3c        inc     a
1976 fd770a    ld      (iy+0ah),a
1979 fe88      cp      88h
197b 20ed      jr      nz,196ah
197d 21151b    ld      hl,1b15h
1980 cdcd19    call    19cdh
1983 c49b19    call    nz,199bh
1986 38a2      jr      c,192ah
1988 18d3      jr      195dh
198a cde219    call    19e2h
198d c0        ret     nz

198e 21151b    ld      hl,1b15h
1991 cdcd19    call    19cdh
1994 c49b19    call    nz,199bh
1997 3891      jr      c,192ah
1999 18ef      jr      198ah
199b 4f        ld      c,a
199c 2a6168    ld      hl,(6861h)
199f 25        dec     h
19a0 7c        ld      a,h
19a1 b5        or      l
19a2 201c      jr      nz,19c0h
19a4 79        ld      a,c
19a5 fec3      cp      0c3h
19a7 2005      jr      nz,19aeh
19a9 119b1a    ld      de,1a9bh
19ac 1810      jr      19beh
19ae fec2      cp      0c2h
19b0 2005      jr      nz,19b7h
19b2 11781a    ld      de,1a78h
19b5 1807      jr      19beh
19b7 fec4      cp      0c4h
19b9 2005      jr      nz,19c0h
19bb 11be1a    ld      de,1abeh
19be 37        scf     
19bf c9        ret     

19c0 3a6368    ld      a,(6863h)
19c3 fe63      cp      63h
19c5 2804      jr      z,19cbh
19c7 3c        inc     a
19c8 326368    ld      (6863h),a
19cb a7        and     a
19cc c9        ret     

19cd cdd619    call    19d6h
19d0 cdae01    call    01aeh
19d3 fe80      cp      80h
19d5 c9        ret     

19d6 117b61    ld      de,617bh
19d9 d5        push    de
19da fde1      pop     iy
19dc 010b00    ld      bc,000bh
19df edb0      ldir    
19e1 c9        ret     

19e2 3a6268    ld      a,(6862h)
19e5 3c        inc     a
19e6 fe64      cp      64h
19e8 2008      jr      nz,19f2h
19ea 3a6168    ld      a,(6861h)
19ed 3c        inc     a
19ee 326168    ld      (6861h),a
19f1 af        xor     a
19f2 326268    ld      (6862h),a
19f5 2a6d61    ld      hl,(616dh)
19f8 cd211a    call    1a21h
19fb 326468    ld      (6864h),a
19fe 2a7161    ld      hl,(6171h)
1a01 cd211a    call    1a21h
1a04 326568    ld      (6865h),a
1a07 2a7361    ld      hl,(6173h)
1a0a ed5b6f61  ld      de,(616fh)
1a0e 19        add     hl,de
1a0f cd211a    call    1a21h
1a12 326668    ld      (6866h),a
1a15 11e11a    ld      de,1ae1h
1a18 cdd50f    call    0fd5h
1a1b db58      in      a,(58h)
1a1d 2f        cpl     
1a1e e617      and     17h
1a20 c9        ret     

1a21 116400    ld      de,0064h
1a24 7d        ld      a,l
1a25 a7        and     a
1a26 ed52      sbc     hl,de
1a28 d8        ret     c

1a29 3e63      ld      a,63h
1a2b c9        ret     

1a2c ed5f      ld      a,r
1a2e 67        ld      h,a
1a2f 6f        ld      l,a
1a30 37        scf     
1a31 119471    ld      de,7194h
1a34 0eab      ld      c,0abh
1a36 3e05      ld      a,05h
1a38 08        ex      af,af'
1a39 0618      ld      b,18h
1a3b ed6a      adc     hl,hl
1a3d 8f        adc     a,a
1a3e cb6f      bit     5,a
1a40 2801      jr      z,1a43h
1a42 3f        ccf     
1a43 10f6      djnz    1a3bh
1a45 eb        ex      de,hl
1a46 73        ld      (hl),e
1a47 23        inc     hl
1a48 72        ld      (hl),d
1a49 23        inc     hl
1a4a 77        ld      (hl),a
1a4b 23        inc     hl
1a4c eb        ex      de,hl
1a4d 0d        dec     c
1a4e 20e9      jr      nz,1a39h
1a50 08        ex      af,af'
1a51 3d        dec     a
1a52 20e4      jr      nz,1a38h
1a54 c9        ret     

1a55 1044      djnz    1a9bh
1a57 69        ld      l,c
1a58 73        ld      (hl),e
1a59 6b        ld      l,e
1a5a 2054      jr      nz,1ab0h
1a5c 65        ld      h,l
1a5d 73        ld      (hl),e
1a5e 74        ld      (hl),h
1a5f 3a2031    ld      a,(3120h)
1a62 3d        dec     a
1a63 56        ld      d,(hl)
1a64 45        ld      b,l
1a65 52        ld      d,d
1a66 90        sub     b
1a67 323d57    ld      (573dh),a
1a6a 52        ld      d,d
1a6b 2f        cpl     
1a6c 56        ld      d,(hl)
1a6d 45        ld      b,l
1a6e 52        ld      d,d
1a6f 2020      jr      nz,1a91h
1a71 33        inc     sp
1a72 3d        dec     a
1a73 45        ld      b,l
1a74 58        ld      e,b
1a75 49        ld      c,c
1a76 54        ld      d,h
1a77 fe10      cp      10h
1a79 4e        ld      c,(hl)
1a7a 6f        ld      l,a
1a7b 74        ld      (hl),h
1a7c 2052      jr      nz,1ad0h
1a7e 65        ld      h,l
1a7f 61        ld      h,c
1a80 64        ld      h,h
1a81 79        ld      a,c
1a82 3a2031    ld      a,(3120h)
1a85 3d        dec     a
1a86 56        ld      d,(hl)
1a87 45        ld      b,l
1a88 52        ld      d,d
1a89 90        sub     b
1a8a 323d57    ld      (573dh),a
1a8d 52        ld      d,d
1a8e 2f        cpl     
1a8f 56        ld      d,(hl)
1a90 45        ld      b,l
1a91 52        ld      d,d
1a92 2020      jr      nz,1ab4h
1a94 33        inc     sp
1a95 3d        dec     a
1a96 45        ld      b,l
1a97 58        ld      e,b
1a98 49        ld      c,c
1a99 54        ld      d,h
1a9a fe10      cp      10h
1a9c 57        ld      d,a
1a9d 72        ld      (hl),d
1a9e 69        ld      l,c
1a9f 74        ld      (hl),h
1aa0 65        ld      h,l
1aa1 50        ld      d,b
1aa2 72        ld      (hl),d
1aa3 6f        ld      l,a
1aa4 74        ld      (hl),h
1aa5 3a2031    ld      a,(3120h)
1aa8 3d        dec     a
1aa9 56        ld      d,(hl)
1aaa 45        ld      b,l
1aab 52        ld      d,d
1aac 90        sub     b
1aad 323d57    ld      (573dh),a
1ab0 52        ld      d,d
1ab1 2f        cpl     
1ab2 56        ld      d,(hl)
1ab3 45        ld      b,l
1ab4 52        ld      d,d
1ab5 2020      jr      nz,1ad7h
1ab7 33        inc     sp
1ab8 3d        dec     a
1ab9 45        ld      b,l
1aba 58        ld      e,b
1abb 49        ld      c,c
1abc 54        ld      d,h
1abd fe10      cp      10h
1abf 4e        ld      c,(hl)
1ac0 6f        ld      l,a
1ac1 74        ld      (hl),h
1ac2 46        ld      b,(hl)
1ac3 6d        ld      l,l
1ac4 74        ld      (hl),h
1ac5 74        ld      (hl),h
1ac6 65        ld      h,l
1ac7 64        ld      h,h
1ac8 3a2031    ld      a,(3120h)
1acb 3d        dec     a
1acc 56        ld      d,(hl)
1acd 45        ld      b,l
1ace 52        ld      d,d
1acf 90        sub     b
1ad0 323d57    ld      (573dh),a
1ad3 52        ld      d,d
1ad4 2f        cpl     
1ad5 56        ld      d,(hl)
1ad6 45        ld      b,l
1ad7 52        ld      d,d
1ad8 2020      jr      nz,1afah
1ada 33        inc     sp
1adb 3d        dec     a
1adc 45        ld      b,l
1add 58        ld      e,b
1ade 49        ld      c,c
1adf 54        ld      d,h
1ae0 fe10      cp      10h
1ae2 50        ld      d,b
1ae3 61        ld      h,c
1ae4 73        ld      (hl),e
1ae5 73        ld      (hl),e
1ae6 2048      jr      nz,1b30h
1ae8 45        ld      b,l
1ae9 2044      jr      nz,1b2fh
1aeb 45        ld      b,l
1aec 2053      jr      nz,1b41h
1aee 45        ld      b,l
1aef 2050      jr      nz,1b41h
1af1 319018    ld      sp,1890h
1af4 61        ld      h,c
1af5 68        ld      l,b
1af6 1862      jr      1b5ah
1af8 68        ld      l,b
1af9 2018      jr      nz,1b13h
1afb 63        ld      h,e
1afc 68        ld      l,b
1afd 2018      jr      nz,1b17h
1aff 64        ld      h,h
1b00 68        ld      l,b
1b01 2018      jr      nz,1b1bh
1b03 65        ld      h,l
1b04 68        ld      l,b
1b05 2018      jr      nz,1b1fh
1b07 66        ld      h,(hl)
1b08 68        ld      l,b
1b09 fe00      cp      00h
1b0b 00        nop     
1b0c 00        nop     
1b0d 00        nop     
1b0e 00        nop     
1b0f 00        nop     
1b10 00        nop     
1b11 00        nop     
1b12 00        nop     
1b13 00        nop     
1b14 00        nop     
1b15 0a        ld      a,(bc)
1b16 00        nop     
1b17 00        nop     
1b18 80        add     a,b
1b19 00        nop     
1b1a ea0400    jp      pe,0004h
1b1d 00        nop     
1b1e 00        nop     
1b1f 00        nop     
1b20 0e94      ld      c,94h
1b22 71        ld      (hl),c
1b23 00        nop     
1b24 00        nop     
1b25 0e00      ld      c,00h
1b27 00        nop     
1b28 00        nop     
1b29 00        nop     
1b2a 00        nop     
1b2b 00        nop     
1b2c 00        nop     
1b2d 00        nop     
1b2e 00        nop     
1b2f 00        nop     
1b30 00        nop     
1b31 00        nop     
1b32 00        nop     
1b33 00        nop     
1b34 00        nop     
1b35 00        nop     
1b36 00        nop     
1b37 00        nop     
1b38 00        nop     
1b39 00        nop     
1b3a 00        nop     
1b3b 00        nop     
1b3c 00        nop     
1b3d 00        nop     
1b3e 00        nop     
1b3f 00        nop     
1b40 00        nop     
1b41 00        nop     
1b42 00        nop     
1b43 00        nop     
1b44 00        nop     
1b45 00        nop     
1b46 00        nop     
1b47 00        nop     
1b48 00        nop     
1b49 00        nop     
1b4a 00        nop     
1b4b 00        nop     
1b4c 00        nop     
1b4d 00        nop     
1b4e 00        nop     
1b4f 00        nop     
1b50 00        nop     
1b51 00        nop     
1b52 00        nop     
1b53 00        nop     
1b54 00        nop     
1b55 00        nop     
1b56 00        nop     
1b57 00        nop     
1b58 00        nop     
1b59 00        nop     
1b5a 00        nop     
1b5b 00        nop     
1b5c 00        nop     
1b5d 00        nop     
1b5e 00        nop     
1b5f 00        nop     
1b60 00        nop     
1b61 00        nop     
1b62 00        nop     
1b63 00        nop     
1b64 00        nop     
1b65 00        nop     
1b66 00        nop     
1b67 00        nop     
1b68 00        nop     
1b69 00        nop     
1b6a 00        nop     
1b6b 00        nop     
1b6c 00        nop     
1b6d 00        nop     
1b6e 00        nop     
1b6f 00        nop     
1b70 00        nop     
1b71 00        nop     
1b72 00        nop     
1b73 00        nop     
1b74 00        nop     
1b75 00        nop     
1b76 00        nop     
1b77 00        nop     
1b78 00        nop     
1b79 00        nop     
1b7a 00        nop     
1b7b 00        nop     
1b7c 00        nop     
1b7d 00        nop     
1b7e 00        nop     
1b7f 00        nop     
1b80 00        nop     
1b81 00        nop     
1b82 00        nop     
1b83 00        nop     
1b84 00        nop     
1b85 00        nop     
1b86 00        nop     
1b87 00        nop     
1b88 00        nop     
1b89 00        nop     
1b8a 00        nop     
1b8b 00        nop     
1b8c 00        nop     
1b8d 00        nop     
1b8e 00        nop     
1b8f 00        nop     
1b90 00        nop     
1b91 00        nop     
1b92 00        nop     
1b93 00        nop     
1b94 00        nop     
1b95 00        nop     
1b96 00        nop     
1b97 00        nop     
1b98 00        nop     
1b99 00        nop     
1b9a 00        nop     
1b9b 00        nop     
1b9c 00        nop     
1b9d 00        nop     
1b9e 00        nop     
1b9f 00        nop     
1ba0 00        nop     
1ba1 00        nop     
1ba2 00        nop     
1ba3 00        nop     
1ba4 00        nop     
1ba5 00        nop     
1ba6 00        nop     
1ba7 00        nop     
1ba8 00        nop     
1ba9 00        nop     
1baa 00        nop     
1bab 00        nop     
1bac 00        nop     
1bad 00        nop     
1bae 00        nop     
1baf 00        nop     
1bb0 00        nop     
1bb1 00        nop     
1bb2 00        nop     
1bb3 00        nop     
1bb4 00        nop     
1bb5 00        nop     
1bb6 00        nop     
1bb7 00        nop     
1bb8 00        nop     
1bb9 00        nop     
1bba 00        nop     
1bbb 00        nop     
1bbc 00        nop     
1bbd 00        nop     
1bbe 00        nop     
1bbf 00        nop     
1bc0 00        nop     
1bc1 00        nop     
1bc2 00        nop     
1bc3 00        nop     
1bc4 00        nop     
1bc5 00        nop     
1bc6 00        nop     
1bc7 00        nop     
1bc8 00        nop     
1bc9 00        nop     
1bca 00        nop     
1bcb 00        nop     
1bcc 00        nop     
1bcd 00        nop     
1bce 00        nop     
1bcf 00        nop     
1bd0 00        nop     
1bd1 00        nop     
1bd2 00        nop     
1bd3 00        nop     
1bd4 00        nop     
1bd5 00        nop     
1bd6 00        nop     
1bd7 00        nop     
1bd8 00        nop     
1bd9 00        nop     
1bda 00        nop     
1bdb 00        nop     
1bdc 00        nop     
1bdd 00        nop     
1bde 00        nop     
1bdf 00        nop     
1be0 00        nop     
1be1 00        nop     
1be2 00        nop     
1be3 00        nop     
1be4 00        nop     
1be5 00        nop     
1be6 00        nop     
1be7 00        nop     
1be8 00        nop     
1be9 00        nop     
1bea 00        nop     
1beb 00        nop     
1bec 00        nop     
1bed 00        nop     
1bee 00        nop     
1bef 00        nop     
1bf0 00        nop     
1bf1 00        nop     
1bf2 00        nop     
1bf3 00        nop     
1bf4 00        nop     
1bf5 00        nop     
1bf6 00        nop     
1bf7 00        nop     
1bf8 00        nop     
1bf9 00        nop     
1bfa 00        nop     
1bfb 00        nop     
1bfc 00        nop     
1bfd 00        nop     
1bfe 00        nop     
1bff 00        nop     
1c00 00        nop     
1c01 00        nop     
1c02 00        nop     
1c03 00        nop     
1c04 00        nop     
1c05 00        nop     
1c06 00        nop     
1c07 00        nop     
1c08 00        nop     
1c09 00        nop     
1c0a 00        nop     
1c0b 00        nop     
1c0c 00        nop     
1c0d 00        nop     
1c0e 00        nop     
1c0f 00        nop     
1c10 00        nop     
1c11 00        nop     
1c12 00        nop     
1c13 00        nop     
1c14 00        nop     
1c15 00        nop     
1c16 00        nop     
1c17 00        nop     
1c18 00        nop     
1c19 00        nop     
1c1a 00        nop     
1c1b 00        nop     
1c1c 00        nop     
1c1d 00        nop     
1c1e 00        nop     
1c1f 00        nop     
1c20 00        nop     
1c21 00        nop     
1c22 00        nop     
1c23 00        nop     
1c24 00        nop     
1c25 00        nop     
1c26 00        nop     
1c27 00        nop     
1c28 00        nop     
1c29 00        nop     
1c2a 00        nop     
1c2b 00        nop     
1c2c 00        nop     
1c2d 00        nop     
1c2e 00        nop     
1c2f 00        nop     
1c30 00        nop     
1c31 00        nop     
1c32 00        nop     
1c33 00        nop     
1c34 00        nop     
1c35 00        nop     
1c36 00        nop     
1c37 00        nop     
1c38 00        nop     
1c39 00        nop     
1c3a 00        nop     
1c3b 00        nop     
1c3c 00        nop     
1c3d 00        nop     
1c3e 00        nop     
1c3f 00        nop     
1c40 00        nop     
1c41 00        nop     
1c42 00        nop     
1c43 00        nop     
1c44 00        nop     
1c45 00        nop     
1c46 00        nop     
1c47 00        nop     
1c48 00        nop     
1c49 00        nop     
1c4a 00        nop     
1c4b 00        nop     
1c4c 00        nop     
1c4d 00        nop     
1c4e 00        nop     
1c4f 00        nop     
1c50 00        nop     
1c51 00        nop     
1c52 00        nop     
1c53 00        nop     
1c54 00        nop     
1c55 00        nop     
1c56 00        nop     
1c57 00        nop     
1c58 00        nop     
1c59 00        nop     
1c5a 00        nop     
1c5b 00        nop     
1c5c 00        nop     
1c5d 00        nop     
1c5e 00        nop     
1c5f 00        nop     
1c60 00        nop     
1c61 00        nop     
1c62 00        nop     
1c63 00        nop     
1c64 00        nop     
1c65 00        nop     
1c66 00        nop     
1c67 00        nop     
1c68 00        nop     
1c69 00        nop     
1c6a 00        nop     
1c6b 00        nop     
1c6c 00        nop     
1c6d 00        nop     
1c6e 00        nop     
1c6f 00        nop     
1c70 00        nop     
1c71 00        nop     
1c72 00        nop     
1c73 00        nop     
1c74 00        nop     
1c75 00        nop     
1c76 00        nop     
1c77 00        nop     
1c78 00        nop     
1c79 00        nop     
1c7a 00        nop     
1c7b 00        nop     
1c7c 00        nop     
1c7d 00        nop     
1c7e 00        nop     
1c7f 00        nop     
1c80 00        nop     
1c81 00        nop     
1c82 00        nop     
1c83 00        nop     
1c84 00        nop     
1c85 00        nop     
1c86 00        nop     
1c87 00        nop     
1c88 00        nop     
1c89 00        nop     
1c8a 00        nop     
1c8b 00        nop     
1c8c 00        nop     
1c8d 00        nop     
1c8e 00        nop     
1c8f 00        nop     
1c90 00        nop     
1c91 00        nop     
1c92 00        nop     
1c93 00        nop     
1c94 00        nop     
1c95 00        nop     
1c96 00        nop     
1c97 00        nop     
1c98 00        nop     
1c99 00        nop     
1c9a 00        nop     
1c9b 00        nop     
1c9c 00        nop     
1c9d 00        nop     
1c9e 00        nop     
1c9f 00        nop     
1ca0 00        nop     
1ca1 00        nop     
1ca2 00        nop     
1ca3 00        nop     
1ca4 00        nop     
1ca5 00        nop     
1ca6 00        nop     
1ca7 00        nop     
1ca8 00        nop     
1ca9 00        nop     
1caa 00        nop     
1cab 00        nop     
1cac 00        nop     
1cad 00        nop     
1cae 00        nop     
1caf 00        nop     
1cb0 00        nop     
1cb1 00        nop     
1cb2 00        nop     
1cb3 00        nop     
1cb4 00        nop     
1cb5 00        nop     
1cb6 00        nop     
1cb7 00        nop     
1cb8 00        nop     
1cb9 00        nop     
1cba 00        nop     
1cbb 00        nop     
1cbc 00        nop     
1cbd 00        nop     
1cbe 00        nop     
1cbf 00        nop     
1cc0 00        nop     
1cc1 00        nop     
1cc2 00        nop     
1cc3 00        nop     
1cc4 00        nop     
1cc5 00        nop     
1cc6 00        nop     
1cc7 00        nop     
1cc8 00        nop     
1cc9 00        nop     
1cca 00        nop     
1ccb 00        nop     
1ccc 00        nop     
1ccd 00        nop     
1cce 00        nop     
1ccf 00        nop     
1cd0 00        nop     
1cd1 00        nop     
1cd2 00        nop     
1cd3 00        nop     
1cd4 00        nop     
1cd5 00        nop     
1cd6 00        nop     
1cd7 00        nop     
1cd8 00        nop     
1cd9 00        nop     
1cda 00        nop     
1cdb 00        nop     
1cdc 00        nop     
1cdd 00        nop     
1cde 00        nop     
1cdf 00        nop     
1ce0 00        nop     
1ce1 00        nop     
1ce2 00        nop     
1ce3 00        nop     
1ce4 00        nop     
1ce5 00        nop     
1ce6 00        nop     
1ce7 00        nop     
1ce8 00        nop     
1ce9 00        nop     
1cea 00        nop     
1ceb 00        nop     
1cec 00        nop     
1ced 00        nop     
1cee 00        nop     
1cef 00        nop     
1cf0 00        nop     
1cf1 00        nop     
1cf2 00        nop     
1cf3 00        nop     
1cf4 00        nop     
1cf5 00        nop     
1cf6 00        nop     
1cf7 00        nop     
1cf8 00        nop     
1cf9 00        nop     
1cfa 00        nop     
1cfb 00        nop     
1cfc 00        nop     
1cfd 00        nop     
1cfe 00        nop     
1cff 00        nop     
1d00 00        nop     
1d01 00        nop     
1d02 00        nop     
1d03 00        nop     
1d04 00        nop     
1d05 00        nop     
1d06 00        nop     
1d07 00        nop     
1d08 00        nop     
1d09 00        nop     
1d0a 00        nop     
1d0b 00        nop     
1d0c 00        nop     
1d0d 00        nop     
1d0e 00        nop     
1d0f 00        nop     
1d10 00        nop     
1d11 00        nop     
1d12 00        nop     
1d13 00        nop     
1d14 00        nop     
1d15 00        nop     
1d16 00        nop     
1d17 00        nop     
1d18 00        nop     
1d19 00        nop     
1d1a 00        nop     
1d1b 00        nop     
1d1c 00        nop     
1d1d 00        nop     
1d1e 00        nop     
1d1f 00        nop     
1d20 00        nop     
1d21 00        nop     
1d22 00        nop     
1d23 00        nop     
1d24 00        nop     
1d25 00        nop     
1d26 00        nop     
1d27 00        nop     
1d28 00        nop     
1d29 00        nop     
1d2a 00        nop     
1d2b 00        nop     
1d2c 00        nop     
1d2d 00        nop     
1d2e 00        nop     
1d2f 00        nop     
1d30 00        nop     
1d31 00        nop     
1d32 00        nop     
1d33 00        nop     
1d34 00        nop     
1d35 00        nop     
1d36 00        nop     
1d37 00        nop     
1d38 00        nop     
1d39 00        nop     
1d3a 00        nop     
1d3b 00        nop     
1d3c 00        nop     
1d3d 00        nop     
1d3e 00        nop     
1d3f 00        nop     
1d40 00        nop     
1d41 00        nop     
1d42 00        nop     
1d43 00        nop     
1d44 00        nop     
1d45 00        nop     
1d46 00        nop     
1d47 00        nop     
1d48 00        nop     
1d49 00        nop     
1d4a 00        nop     
1d4b 00        nop     
1d4c 00        nop     
1d4d 00        nop     
1d4e 00        nop     
1d4f 00        nop     
1d50 00        nop     
1d51 00        nop     
1d52 00        nop     
1d53 00        nop     
1d54 00        nop     
1d55 00        nop     
1d56 00        nop     
1d57 00        nop     
1d58 00        nop     
1d59 00        nop     
1d5a 00        nop     
1d5b 00        nop     
1d5c 00        nop     
1d5d 00        nop     
1d5e 00        nop     
1d5f 00        nop     
1d60 00        nop     
1d61 00        nop     
1d62 00        nop     
1d63 00        nop     
1d64 00        nop     
1d65 00        nop     
1d66 00        nop     
1d67 00        nop     
1d68 00        nop     
1d69 00        nop     
1d6a 00        nop     
1d6b 00        nop     
1d6c 00        nop     
1d6d 00        nop     
1d6e 00        nop     
1d6f 00        nop     
1d70 00        nop     
1d71 00        nop     
1d72 00        nop     
1d73 00        nop     
1d74 00        nop     
1d75 00        nop     
1d76 00        nop     
1d77 00        nop     
1d78 00        nop     
1d79 00        nop     
1d7a 00        nop     
1d7b 00        nop     
1d7c 00        nop     
1d7d 00        nop     
1d7e 00        nop     
1d7f 00        nop     
1d80 00        nop     
1d81 00        nop     
1d82 00        nop     
1d83 00        nop     
1d84 00        nop     
1d85 00        nop     
1d86 00        nop     
1d87 00        nop     
1d88 00        nop     
1d89 00        nop     
1d8a 00        nop     
1d8b 00        nop     
1d8c 00        nop     
1d8d 00        nop     
1d8e 00        nop     
1d8f 00        nop     
1d90 00        nop     
1d91 00        nop     
1d92 00        nop     
1d93 00        nop     
1d94 00        nop     
1d95 00        nop     
1d96 00        nop     
1d97 00        nop     
1d98 00        nop     
1d99 00        nop     
1d9a 00        nop     
1d9b 00        nop     
1d9c 00        nop     
1d9d 00        nop     
1d9e 00        nop     
1d9f 00        nop     
1da0 00        nop     
1da1 00        nop     
1da2 00        nop     
1da3 00        nop     
1da4 00        nop     
1da5 00        nop     
1da6 00        nop     
1da7 00        nop     
1da8 00        nop     
1da9 00        nop     
1daa 00        nop     
1dab 00        nop     
1dac 00        nop     
1dad 00        nop     
1dae 00        nop     
1daf 00        nop     
1db0 00        nop     
1db1 00        nop     
1db2 00        nop     
1db3 00        nop     
1db4 00        nop     
1db5 00        nop     
1db6 00        nop     
1db7 00        nop     
1db8 00        nop     
1db9 00        nop     
1dba 00        nop     
1dbb 00        nop     
1dbc 00        nop     
1dbd 00        nop     
1dbe 00        nop     
1dbf 00        nop     
1dc0 00        nop     
1dc1 00        nop     
1dc2 00        nop     
1dc3 00        nop     
1dc4 00        nop     
1dc5 00        nop     
1dc6 00        nop     
1dc7 00        nop     
1dc8 00        nop     
1dc9 00        nop     
1dca 00        nop     
1dcb 00        nop     
1dcc 00        nop     
1dcd 00        nop     
1dce 00        nop     
1dcf 00        nop     
1dd0 00        nop     
1dd1 00        nop     
1dd2 00        nop     
1dd3 00        nop     
1dd4 00        nop     
1dd5 00        nop     
1dd6 00        nop     
1dd7 00        nop     
1dd8 00        nop     
1dd9 00        nop     
1dda 00        nop     
1ddb 00        nop     
1ddc 00        nop     
1ddd 00        nop     
1dde 00        nop     
1ddf 00        nop     
1de0 00        nop     
1de1 00        nop     
1de2 00        nop     
1de3 00        nop     
1de4 00        nop     
1de5 00        nop     
1de6 00        nop     
1de7 00        nop     
1de8 00        nop     
1de9 00        nop     
1dea 00        nop     
1deb 00        nop     
1dec 00        nop     
1ded 00        nop     
1dee 00        nop     
1def 00        nop     
1df0 00        nop     
1df1 00        nop     
1df2 00        nop     
1df3 00        nop     
1df4 00        nop     
1df5 00        nop     
1df6 00        nop     
1df7 00        nop     
1df8 00        nop     
1df9 00        nop     
1dfa 00        nop     
1dfb 00        nop     
1dfc 00        nop     
1dfd 00        nop     
1dfe 00        nop     
1dff 00        nop     
1e00 00        nop     
1e01 00        nop     
1e02 00        nop     
1e03 00        nop     
1e04 00        nop     
1e05 00        nop     
1e06 00        nop     
1e07 00        nop     
1e08 00        nop     
1e09 00        nop     
1e0a 00        nop     
1e0b 00        nop     
1e0c 00        nop     
1e0d 00        nop     
1e0e 00        nop     
1e0f 00        nop     
1e10 00        nop     
1e11 00        nop     
1e12 00        nop     
1e13 00        nop     
1e14 00        nop     
1e15 00        nop     
1e16 00        nop     
1e17 00        nop     
1e18 00        nop     
1e19 00        nop     
1e1a 00        nop     
1e1b 00        nop     
1e1c 00        nop     
1e1d 00        nop     
1e1e 00        nop     
1e1f 00        nop     
1e20 00        nop     
1e21 00        nop     
1e22 00        nop     
1e23 00        nop     
1e24 00        nop     
1e25 00        nop     
1e26 00        nop     
1e27 00        nop     
1e28 00        nop     
1e29 00        nop     
1e2a 00        nop     
1e2b 00        nop     
1e2c 00        nop     
1e2d 00        nop     
1e2e 00        nop     
1e2f 00        nop     
1e30 00        nop     
1e31 00        nop     
1e32 00        nop     
1e33 00        nop     
1e34 00        nop     
1e35 00        nop     
1e36 00        nop     
1e37 00        nop     
1e38 00        nop     
1e39 00        nop     
1e3a 00        nop     
1e3b 00        nop     
1e3c 00        nop     
1e3d 00        nop     
1e3e 00        nop     
1e3f 00        nop     
1e40 00        nop     
1e41 00        nop     
1e42 00        nop     
1e43 00        nop     
1e44 00        nop     
1e45 00        nop     
1e46 00        nop     
1e47 00        nop     
1e48 00        nop     
1e49 00        nop     
1e4a 00        nop     
1e4b 00        nop     
1e4c 00        nop     
1e4d 00        nop     
1e4e 00        nop     
1e4f 00        nop     
1e50 00        nop     
1e51 00        nop     
1e52 00        nop     
1e53 00        nop     
1e54 00        nop     
1e55 00        nop     
1e56 00        nop     
1e57 00        nop     
1e58 00        nop     
1e59 00        nop     
1e5a 00        nop     
1e5b 00        nop     
1e5c 00        nop     
1e5d 00        nop     
1e5e 00        nop     
1e5f 00        nop     
1e60 00        nop     
1e61 00        nop     
1e62 00        nop     
1e63 00        nop     
1e64 00        nop     
1e65 00        nop     
1e66 00        nop     
1e67 00        nop     
1e68 00        nop     
1e69 00        nop     
1e6a 00        nop     
1e6b 00        nop     
1e6c 00        nop     
1e6d 00        nop     
1e6e 00        nop     
1e6f 00        nop     
1e70 00        nop     
1e71 00        nop     
1e72 00        nop     
1e73 00        nop     
1e74 00        nop     
1e75 00        nop     
1e76 00        nop     
1e77 00        nop     
1e78 00        nop     
1e79 00        nop     
1e7a 00        nop     
1e7b 00        nop     
1e7c 00        nop     
1e7d 00        nop     
1e7e 00        nop     
1e7f 00        nop     
1e80 00        nop     
1e81 00        nop     
1e82 00        nop     
1e83 00        nop     
1e84 00        nop     
1e85 00        nop     
1e86 00        nop     
1e87 00        nop     
1e88 00        nop     
1e89 00        nop     
1e8a 00        nop     
1e8b 00        nop     
1e8c 00        nop     
1e8d 00        nop     
1e8e 00        nop     
1e8f 00        nop     
1e90 00        nop     
1e91 00        nop     
1e92 00        nop     
1e93 00        nop     
1e94 00        nop     
1e95 00        nop     
1e96 00        nop     
1e97 00        nop     
1e98 00        nop     
1e99 00        nop     
1e9a 00        nop     
1e9b 00        nop     
1e9c 00        nop     
1e9d 00        nop     
1e9e 00        nop     
1e9f 00        nop     
1ea0 00        nop     
1ea1 00        nop     
1ea2 00        nop     
1ea3 00        nop     
1ea4 00        nop     
1ea5 00        nop     
1ea6 00        nop     
1ea7 00        nop     
1ea8 00        nop     
1ea9 00        nop     
1eaa 00        nop     
1eab 00        nop     
1eac 00        nop     
1ead 00        nop     
1eae 00        nop     
1eaf 00        nop     
1eb0 00        nop     
1eb1 00        nop     
1eb2 00        nop     
1eb3 00        nop     
1eb4 00        nop     
1eb5 00        nop     
1eb6 00        nop     
1eb7 00        nop     
1eb8 00        nop     
1eb9 00        nop     
1eba 00        nop     
1ebb 00        nop     
1ebc 00        nop     
1ebd 00        nop     
1ebe 00        nop     
1ebf 00        nop     
1ec0 00        nop     
1ec1 00        nop     
1ec2 00        nop     
1ec3 00        nop     
1ec4 00        nop     
1ec5 00        nop     
1ec6 00        nop     
1ec7 00        nop     
1ec8 00        nop     
1ec9 00        nop     
1eca 00        nop     
1ecb 00        nop     
1ecc 00        nop     
1ecd 00        nop     
1ece 00        nop     
1ecf 00        nop     
1ed0 00        nop     
1ed1 00        nop     
1ed2 00        nop     
1ed3 00        nop     
1ed4 00        nop     
1ed5 00        nop     
1ed6 00        nop     
1ed7 00        nop     
1ed8 00        nop     
1ed9 00        nop     
1eda 00        nop     
1edb 00        nop     
1edc 00        nop     
1edd 00        nop     
1ede 00        nop     
1edf 00        nop     
1ee0 00        nop     
1ee1 00        nop     
1ee2 00        nop     
1ee3 00        nop     
1ee4 00        nop     
1ee5 00        nop     
1ee6 00        nop     
1ee7 00        nop     
1ee8 00        nop     
1ee9 00        nop     
1eea 00        nop     
1eeb 00        nop     
1eec 00        nop     
1eed 00        nop     
1eee 00        nop     
1eef 00        nop     
1ef0 00        nop     
1ef1 00        nop     
1ef2 00        nop     
1ef3 00        nop     
1ef4 00        nop     
1ef5 00        nop     
1ef6 00        nop     
1ef7 00        nop     
1ef8 00        nop     
1ef9 00        nop     
1efa 00        nop     
1efb 00        nop     
1efc 00        nop     
1efd 00        nop     
1efe 00        nop     
1eff 00        nop     
1f00 00        nop     
1f01 00        nop     
1f02 00        nop     
1f03 00        nop     
1f04 00        nop     
1f05 00        nop     
1f06 00        nop     
1f07 00        nop     
1f08 00        nop     
1f09 00        nop     
1f0a 00        nop     
1f0b 00        nop     
1f0c 00        nop     
1f0d 00        nop     
1f0e 00        nop     
1f0f 00        nop     
1f10 00        nop     
1f11 00        nop     
1f12 00        nop     
1f13 00        nop     
1f14 00        nop     
1f15 00        nop     
1f16 00        nop     
1f17 00        nop     
1f18 00        nop     
1f19 00        nop     
1f1a 00        nop     
1f1b 00        nop     
1f1c 00        nop     
1f1d 00        nop     
1f1e 00        nop     
1f1f 00        nop     
1f20 00        nop     
1f21 00        nop     
1f22 00        nop     
1f23 00        nop     
1f24 00        nop     
1f25 00        nop     
1f26 00        nop     
1f27 00        nop     
1f28 00        nop     
1f29 00        nop     
1f2a 00        nop     
1f2b 00        nop     
1f2c 00        nop     
1f2d 00        nop     
1f2e 00        nop     
1f2f 00        nop     
1f30 00        nop     
1f31 00        nop     
1f32 00        nop     
1f33 00        nop     
1f34 00        nop     
1f35 00        nop     
1f36 00        nop     
1f37 00        nop     
1f38 00        nop     
1f39 00        nop     
1f3a 00        nop     
1f3b 00        nop     
1f3c 00        nop     
1f3d 00        nop     
1f3e 00        nop     
1f3f 00        nop     
1f40 00        nop     
1f41 00        nop     
1f42 00        nop     
1f43 00        nop     
1f44 00        nop     
1f45 00        nop     
1f46 00        nop     
1f47 00        nop     
1f48 00        nop     
1f49 00        nop     
1f4a 00        nop     
1f4b 00        nop     
1f4c 00        nop     
1f4d 00        nop     
1f4e 00        nop     
1f4f 00        nop     
1f50 00        nop     
1f51 00        nop     
1f52 00        nop     
1f53 00        nop     
1f54 00        nop     
1f55 00        nop     
1f56 00        nop     
1f57 00        nop     
1f58 00        nop     
1f59 00        nop     
1f5a 00        nop     
1f5b 00        nop     
1f5c 00        nop     
1f5d 00        nop     
1f5e 00        nop     
1f5f 00        nop     
1f60 00        nop     
1f61 00        nop     
1f62 00        nop     
1f63 00        nop     
1f64 00        nop     
1f65 00        nop     
1f66 00        nop     
1f67 00        nop     
1f68 00        nop     
1f69 00        nop     
1f6a 00        nop     
1f6b 00        nop     
1f6c 00        nop     
1f6d 00        nop     
1f6e 00        nop     
1f6f 00        nop     
1f70 00        nop     
1f71 00        nop     
1f72 00        nop     
1f73 00        nop     
1f74 00        nop     
1f75 00        nop     
1f76 00        nop     
1f77 00        nop     
1f78 00        nop     
1f79 00        nop     
1f7a 00        nop     
1f7b 00        nop     
1f7c 00        nop     
1f7d 00        nop     
1f7e 00        nop     
1f7f 00        nop     
1f80 00        nop     
1f81 00        nop     
1f82 00        nop     
1f83 00        nop     
1f84 00        nop     
1f85 00        nop     
1f86 00        nop     
1f87 00        nop     
1f88 00        nop     
1f89 00        nop     
1f8a 00        nop     
1f8b 00        nop     
1f8c 00        nop     
1f8d 00        nop     
1f8e 00        nop     
1f8f 00        nop     
1f90 00        nop     
1f91 00        nop     
1f92 00        nop     
1f93 00        nop     
1f94 00        nop     
1f95 00        nop     
1f96 00        nop     
1f97 00        nop     
1f98 00        nop     
1f99 00        nop     
1f9a 00        nop     
1f9b 00        nop     
1f9c 00        nop     
1f9d 00        nop     
1f9e 00        nop     
1f9f 00        nop     
1fa0 00        nop     
1fa1 00        nop     
1fa2 00        nop     
1fa3 00        nop     
1fa4 00        nop     
1fa5 00        nop     
1fa6 00        nop     
1fa7 00        nop     
1fa8 00        nop     
1fa9 00        nop     
1faa 00        nop     
1fab 00        nop     
1fac 00        nop     
1fad 00        nop     
1fae 00        nop     
1faf 00        nop     
1fb0 00        nop     
1fb1 00        nop     
1fb2 00        nop     
1fb3 00        nop     
1fb4 00        nop     
1fb5 00        nop     
1fb6 00        nop     
1fb7 00        nop     
1fb8 00        nop     
1fb9 00        nop     
1fba 00        nop     
1fbb 00        nop     
1fbc 00        nop     
1fbd 00        nop     
1fbe 00        nop     
1fbf 00        nop     
1fc0 00        nop     
1fc1 00        nop     
1fc2 00        nop     
1fc3 00        nop     
1fc4 00        nop     
1fc5 00        nop     
1fc6 00        nop     
1fc7 00        nop     
1fc8 00        nop     
1fc9 00        nop     
1fca 00        nop     
1fcb 00        nop     
1fcc 00        nop     
1fcd 00        nop     
1fce 00        nop     
1fcf 00        nop     
1fd0 00        nop     
1fd1 00        nop     
1fd2 00        nop     
1fd3 00        nop     
1fd4 00        nop     
1fd5 00        nop     
1fd6 00        nop     
1fd7 00        nop     
1fd8 00        nop     
1fd9 00        nop     
1fda 00        nop     
1fdb 00        nop     
1fdc 00        nop     
1fdd 00        nop     
1fde 00        nop     
1fdf 00        nop     
1fe0 00        nop     
1fe1 00        nop     
1fe2 00        nop     
1fe3 00        nop     
1fe4 00        nop     
1fe5 00        nop     
1fe6 00        nop     
1fe7 00        nop     
1fe8 00        nop     
1fe9 00        nop     
1fea 00        nop     
1feb 00        nop     
1fec 00        nop     
1fed 00        nop     
1fee 00        nop     
1fef 00        nop     
1ff0 00        nop     
1ff1 00        nop     
1ff2 00        nop     
1ff3 00        nop     
1ff4 00        nop     
1ff5 00        nop     
1ff6 00        nop     
1ff7 00        nop     
1ff8 00        nop     
1ff9 00        nop     
1ffa 00        nop     
1ffb 00        nop     
1ffc 00        nop     
1ffd 00        nop     
1ffe 00        nop     
1fff 00        nop     
