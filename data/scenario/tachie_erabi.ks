;尿意に応じて立ち絵を変更する
*tachie_erabi

[jump  storage="tachie_erabi.ks"  target="*nyoui65"  cond="tf.chibiri==2"  ]
[jump  storage="tachie_erabi.ks"  target="*nyoui70"  cond="tf.chibiri==3"  ]
[jump  storage="tachie_erabi.ks"  target="*nyoui0"  cond="tf.nyoui<5"  ]
[jump  storage="tachie_erabi.ks"  target="*nyoui5"  cond="tf.nyoui==5"  ]
[jump  storage="tachie_erabi.ks"  target="*nyoui10"  cond="tf.nyoui==10"  ]
[jump  storage="tachie_erabi.ks"  target="*nyoui15"  cond="tf.nyoui==15"  ]
[jump  storage="tachie_erabi.ks"  target="*nyoui20"  cond="tf.nyoui==20"  ]
[jump  storage="tachie_erabi.ks"  target="*nyoui25"  cond="tf.nyoui==25"  ]
[jump  storage="tachie_erabi.ks"  target="*nyoui30"  cond="tf.nyoui==30"  ]
[jump  storage="tachie_erabi.ks"  target="*nyoui35"  cond="tf.nyoui==35"  ]
[jump  storage="tachie_erabi.ks"  target="*nyoui40"  cond="tf.nyoui==40"  ]
[jump  storage="tachie_erabi.ks"  target="*nyoui45"  cond="tf.nyoui==45"  ]
[jump  storage="tachie_erabi.ks"  target="*nyoui50"  cond="tf.nyoui==50"  ]
[jump  storage="tachie_erabi.ks"  target="*nyoui55"  cond="tf.nyoui==55"  ]
[jump  storage="tachie_erabi.ks"  target="*nyoui60"  cond="tf.nyoui==60"  ]
[jump  storage="tachie_erabi.ks"  target="*modoru"  ]

*nyoui0
[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idoling01_iroiro.mtn"  ]
[jump  storage="tachie_erabi.ks"  target="*modoru"  ]

*nyoui5
[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idoling02_iroiro.mtn"  ]
[jump  storage="tachie_erabi.ks"  target="*modoru"  ]

*nyoui10
[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idoling01_komari.mtn"  ]
[jump  storage="tachie_erabi.ks"  target="*modoru"  ]

*nyoui15
[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idoling01_komari.mtn"  ]
[jump  storage="tachie_erabi.ks"  target="*modoru"  ]

*nyoui20
[live2d_motion  name="&tf.tachie"  filenm="idring03_sowasowa.mtn"  idle="true"  ]
[jump  storage="tachie_erabi.ks"  target="*modoru"  ]

*nyoui25
[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idring03_sowasowa.mtn"  ]
[jump  storage="tachie_erabi.ks"  target="*modoru"  ]

*nyoui30
[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idring03_sowasowa_osae.mtn"  ]
[jump  storage="tachie_erabi.ks"  target="*modoru"  ]

*nyoui35
[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idring03_sowasowa_osae.mtn"  ]
[jump  storage="tachie_erabi.ks"  target="*modoru"  ]

*nyoui40
[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idring05_moji_xjiku.mtn"  ]
[jump  storage="tachie_erabi.ks"  target="*modoru"  ]

*nyoui45
[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idring04_moji_zjiku.mtn"  ]
[jump  storage="tachie_erabi.ks"  target="*modoru"  ]

*nyoui50
[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idring06_moji_zjiku_tame_tenasi.mtn"  ]
[jump  storage="tachie_erabi.ks"  target="*modoru"  ]

*nyoui55
[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idring06_moji_zjiku_tame_tenasi.mtn"  ]
[jump  storage="tachie_erabi.ks"  target="*modoru"  ]

*nyoui60
[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idring06_moji_xjiku_tame.mtn"  ]
[jump  storage="tachie_erabi.ks"  target="*modoru"  ]

*nyoui65
[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idring06_moji_xjiku_tame_chibiri02.mtn"  ]
[jump  storage="tachie_erabi.ks"  target="*modoru"  ]

*nyoui70
[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idring07_furue01_chibiri03.mtn"  ]

*modoru
[return  ]

[s  ]


;じゃんけんでぐーを出した時の尿意変化
*junken_gu_nyoui

[jump  storage="tachie_erabi.ks"  target="*gu_nyoui65"  cond="tf.chibiri==2"  ]
[jump  storage="tachie_erabi.ks"  target="*gu_nyoui70"  cond="tf.chibiri==3"  ]
[jump  storage="tachie_erabi.ks"  target="*gu_nyoui0"  cond="tf.nyoui<10"  ]
[jump  storage="tachie_erabi.ks"  target="*gu_nyoui10"  cond="tf.nyoui<20"  ]
[jump  storage="tachie_erabi.ks"  target="*gu_nyoui20"  cond="tf.nyoui<30"  ]
[jump  storage="tachie_erabi.ks"  target="*gu_nyoui30"  cond="tf.nyoui<40"  ]
[jump  storage="tachie_erabi.ks"  target="*gu_nyoui40"  cond="tf.nyoui<50"  ]
[jump  storage="tachie_erabi.ks"  target="*gu_nyoui50"  cond="tf.nyoui<60"  ]
[jump  storage="tachie_erabi.ks"  target="*gu_nyoui60"  cond="tf.nyoui>59"  ]

*gu_nyoui0
[playse  volume="50"  time="1000"  buf="2"  storage="voice/014.ogg"  ]
#詩織
Goo!
[live2d_motion  name="&tf.tachie"  filenm="janken_gu01.mtn"  ]
[wait  time="1000"  ]
[live2d_motion  name="&tf.tachie"  filenm="janken_idoling_gu01.mtn"  idle="true"  ]
[jump  storage="tachie_erabi.ks"  target="*modoru"  ]

*gu_nyoui10
[playse  volume="50"  time="1000"  buf="2"  storage="voice/014.ogg"  ]
#詩織
Goo!
[live2d_motion  name="&tf.tachie"  filenm="janken_gu02.mtn"  ]
[wait  time="1000"  ]
[live2d_motion  name="&tf.tachie"  filenm="janken_idoling_gu02.mtn"  idle="true"  ]
[jump  storage="tachie_erabi.ks"  target="*modoru"  ]

*gu_nyoui20
[playse  volume="50"  time="1000"  buf="2"  storage="voice/014.ogg"  ]
#詩織
Goo!
[live2d_motion  name="&tf.tachie"  filenm="janken_gu03.mtn"  ]
[wait  time="1000"  ]
[live2d_motion  name="&tf.tachie"  filenm="janken_idoling_gu03.mtn"  idle="true"  ]
[jump  storage="tachie_erabi.ks"  target="*modoru"  ]

*gu_nyoui30
[playse  volume="50"  time="1000"  buf="2"  storage="voice/015.ogg"  ]
#詩織
Goo ...
[live2d_motion  name="&tf.tachie"  filenm="janken_gu04.mtn"  ]
[wait  time="1000"  ]
[live2d_motion  name="&tf.tachie"  filenm="janken_idoling_gu04.mtn"  idle="true"  ]
[jump  storage="tachie_erabi.ks"  target="*modoru"  ]

*gu_nyoui40
[playse  volume="50"  time="1000"  buf="2"  storage="voice/015.ogg"  ]
#詩織
Goo ...
[live2d_motion  name="&tf.tachie"  filenm="janken_gu05.mtn"  ]
[wait  time="1000"  ]
[live2d_motion  name="&tf.tachie"  filenm="janken_idoling_gu05.mtn"  idle="true"  ]
[jump  storage="tachie_erabi.ks"  target="*modoru"  ]

*gu_nyoui50
[playse  volume="50"  time="1000"  buf="2"  storage="voice/016.ogg"  ]
#詩織
Goo ... Hmm ...
[live2d_motion  name="&tf.tachie"  filenm="janken_gu06.mtn"  ]
[wait  time="1000"  ]
[live2d_motion  name="&tf.tachie"  filenm="janken_idoling_gu06.mtn"  idle="true"  ]
[jump  storage="tachie_erabi.ks"  target="*modoru"  ]

*gu_nyoui60
[playse  volume="50"  time="1000"  buf="2"  storage="voice/017.ogg"  ]
#詩織
Goo ... Hmm ... Hmm!
[live2d_motion  name="&tf.tachie"  filenm="janken_gu07.mtn"  ]
[wait  time="1000"  ]
[live2d_motion  name="&tf.tachie"  filenm="janken_idoling_gu07.mtn"  idle="true"  ]
[jump  storage="tachie_erabi.ks"  target="*modoru"  ]

*gu_nyoui65
[playse  volume="50"  time="1000"  buf="2"  storage="voice/018.ogg"  ]
#詩織
Goo ... Hmm ... Hmm!
[live2d_motion  name="&tf.tachie"  filenm="janken_gu07_chibiri02.mtn"  ]
[wait  time="1000"  ]
[live2d_motion  name="&tf.tachie"  filenm="janken_idoling_gu07_chibiri02.mtn"  idle="true"  ]
[jump  storage="tachie_erabi.ks"  target="*modoru"  ]

*gu_nyoui70
[playse  volume="50"  time="1000"  buf="2"  storage="voice/018.ogg"  ]
#詩織
Goo ... Hmm ... Hmm!
[live2d_motion  name="&tf.tachie"  filenm="janken_gu07_chibiri03.mtn"  ]
[wait  time="1000"  ]
[live2d_motion  name="&tf.tachie"  filenm="janken_idoling_gu07_chibiri03.mtn"  idle="true"  ]
[jump  storage="tachie_erabi.ks"  target="*modoru"  ]
[s  ]


;じゃんけんでちょきを出した時の尿意変化
*janken_chyoki_nyoui

[jump  storage="tachie_erabi.ks"  target="*chyoki_nyoui65"  cond="tf.chibiri==2"  ]
[jump  storage="tachie_erabi.ks"  target="*chyoki_nyoui70"  cond="tf.chibiri==3"  ]
[jump  storage="tachie_erabi.ks"  target="*chyoki_nyoui0"  cond="tf.nyoui<10"  ]
[jump  storage="tachie_erabi.ks"  target="*chyoki_nyoui10"  cond="tf.nyoui<20"  ]
[jump  storage="tachie_erabi.ks"  target="*chyoki_nyoui20"  cond="tf.nyoui<30"  ]
[jump  storage="tachie_erabi.ks"  target="*chyoki_nyoui30"  cond="tf.nyoui<40"  ]
[jump  storage="tachie_erabi.ks"  target="*chyoki_nyoui40"  cond="tf.nyoui<50"  ]
[jump  storage="tachie_erabi.ks"  target="*chyoki_nyoui50"  cond="tf.nyoui<60"  ]
[jump  storage="tachie_erabi.ks"  target="*chyoki_nyoui60"  cond="tf.nyoui>59"  ]

*chyoki_nyoui0
[playse  volume="50"  time="1000"  buf="2"  storage="voice/019.ogg"  ]
#詩織
Choki!
[live2d_motion  name="&tf.tachie"  filenm="janken_cyoki01.mtn"  ]
[wait  time="1000"  ]
[live2d_motion  name="&tf.tachie"  filenm="janken_idoling_cyoki01.mtn"  idle="true"  ]
[jump  storage="tachie_erabi.ks"  target="*modoru"  ]

*chyoki_nyoui10
[playse  volume="50"  time="1000"  buf="2"  storage="voice/019.ogg"  ]
#詩織
Choki!
[live2d_motion  name="&tf.tachie"  filenm="janken_cyoki02.mtn"  ]
[wait  time="1000"  ]
[live2d_motion  name="&tf.tachie"  filenm="janken_idoling_cyoki02.mtn"  idle="true"  ]
[jump  storage="tachie_erabi.ks"  target="*modoru"  ]

*chyoki_nyoui20
[playse  volume="50"  time="1000"  buf="2"  storage="voice/019.ogg"  ]
#詩織
Choki!
[live2d_motion  name="&tf.tachie"  filenm="janken_cyoki03.mtn"  ]
[wait  time="1000"  ]
[live2d_motion  name="&tf.tachie"  filenm="janken_idoling_cyoki03.mtn"  idle="true"  ]
[jump  storage="tachie_erabi.ks"  target="*modoru"  ]

*chyoki_nyoui30
[playse  volume="50"  time="1000"  buf="2"  storage="voice/020.ogg"  ]
#詩織
Choki ...
[live2d_motion  name="&tf.tachie"  filenm="janken_cyoki04.mtn"  ]
[wait  time="1000"  ]
[live2d_motion  name="&tf.tachie"  filenm="janken_idoling_cyoki04.mtn"  idle="true"  ]
[jump  storage="tachie_erabi.ks"  target="*modoru"  ]

*chyoki_nyoui40
[playse  volume="50"  time="1000"  buf="2"  storage="voice/020.ogg"  ]
#詩織
Choki ...
[live2d_motion  name="&tf.tachie"  filenm="janken_cyoki05.mtn"  ]
[wait  time="1000"  ]
[live2d_motion  name="&tf.tachie"  filenm="janken_idoling_cyoki05.mtn"  idle="true"  ]
[jump  storage="tachie_erabi.ks"  target="*modoru"  ]

*chyoki_nyoui50
[playse  volume="50"  time="1000"  buf="2"  storage="voice/021.ogg"  ]
#詩織
Choki ... Hmm ...
[live2d_motion  name="&tf.tachie"  filenm="janken_cyoki06.mtn"  ]
[wait  time="1000"  ]
[live2d_motion  name="&tf.tachie"  filenm="janken_idoling_gu06.mtn"  idle="true"  ]
[jump  storage="tachie_erabi.ks"  target="*modoru"  ]

*chyoki_nyoui60
[playse  volume="50"  time="1000"  buf="2"  storage="voice/022.ogg"  ]
#詩織
Cho ... Ki ... Hmm ... Hmm!
[live2d_motion  name="&tf.tachie"  filenm="janken_cyoki07.mtn"  ]
[wait  time="1000"  ]
[live2d_motion  name="&tf.tachie"  filenm="janken_idoling_gu07.mtn"  idle="true"  ]
[jump  storage="tachie_erabi.ks"  target="*modoru"  ]

*chyoki_nyoui65
[playse  volume="50"  time="1000"  buf="2"  storage="voice/023.ogg"  ]
#詩織
Cho ... Ki ... Hmm ... Hmm!
[live2d_motion  name="&tf.tachie"  filenm="janken_cyoki07_chibiri02.mtn"  ]
[wait  time="1000"  ]
[live2d_motion  name="&tf.tachie"  filenm="janken_idoling_gu07_chibiri02.mtn"  idle="true"  ]
[jump  storage="tachie_erabi.ks"  target="*modoru"  ]

*chyoki_nyoui70
[playse  volume="50"  time="1000"  buf="2"  storage="voice/023.ogg"  ]
#詩織
Cho ... Ki ... Hmm ... Hmm!
[live2d_motion  name="&tf.tachie"  filenm="janken_cyoki07_chibiri03.mtn"  ]
[wait  time="1000"  ]
[live2d_motion  name="&tf.tachie"  filenm="janken_idoling_gu07_chibiri03.mtn"  idle="true"  ]
[jump  storage="tachie_erabi.ks"  target="*modoru"  ]
[s  ]


;じゃんけんでぱーを出した時の尿意変化
*janken_par_nyoui

[jump  storage="tachie_erabi.ks"  target="*par_nyoui65"  cond="tf.chibiri==2"  ]
[jump  storage="tachie_erabi.ks"  target="*par_nyoui70"  cond="tf.chibiri==3"  ]
[jump  storage="tachie_erabi.ks"  target="*par_nyoui0"  cond="tf.nyoui<10"  ]
[jump  storage="tachie_erabi.ks"  target="*par_nyoui10"  cond="tf.nyoui<20"  ]
[jump  storage="tachie_erabi.ks"  target="*par_nyoui20"  cond="tf.nyoui<30"  ]
[jump  storage="tachie_erabi.ks"  target="*par_nyoui30"  cond="tf.nyoui<40"  ]
[jump  storage="tachie_erabi.ks"  target="*par_nyoui40"  cond="tf.nyoui<50"  ]
[jump  storage="tachie_erabi.ks"  target="*par_nyoui50"  cond="tf.nyoui<60"  ]
[jump  storage="tachie_erabi.ks"  target="*par_nyoui60"  cond="tf.nyoui>59"  ]

*par_nyoui0
[playse  volume="50"  time="1000"  buf="2"  storage="voice/024.ogg"  ]
#詩織
Par!
[live2d_motion  name="&tf.tachie"  filenm="janken_par01.mtn"  ]
[wait  time="1000"  ]
[live2d_motion  name="&tf.tachie"  filenm="janken_idoling_par01.mtn"  idle="true"  ]
[jump  storage="tachie_erabi.ks"  target="*modoru"  ]

*par_nyoui10
[playse  volume="50"  time="1000"  buf="2"  storage="voice/024.ogg"  ]
#詩織
Par!
[live2d_motion  name="&tf.tachie"  filenm="janken_par02.mtn"  ]
[wait  time="1000"  ]
[live2d_motion  name="&tf.tachie"  filenm="janken_idoling_par02.mtn"  idle="true"  ]
[jump  storage="tachie_erabi.ks"  target="*modoru"  ]

*par_nyoui20
[playse  volume="50"  time="1000"  buf="2"  storage="voice/024.ogg"  ]
#詩織
Par!
[live2d_motion  name="&tf.tachie"  filenm="janken_par03.mtn"  ]
[wait  time="1000"  ]
[live2d_motion  name="&tf.tachie"  filenm="janken_idoling_par03.mtn"  idle="true"  ]
[jump  storage="tachie_erabi.ks"  target="*modoru"  ]

*par_nyoui30
[playse  volume="50"  time="1000"  buf="2"  storage="voice/025.ogg"  ]
#詩織
Par ...
[live2d_motion  name="&tf.tachie"  filenm="janken_par04.mtn"  ]
[wait  time="1000"  ]
[live2d_motion  name="&tf.tachie"  filenm="janken_idoling_par04.mtn"  idle="true"  ]
[jump  storage="tachie_erabi.ks"  target="*modoru"  ]

*par_nyoui40
[playse  volume="50"  time="1000"  buf="2"  storage="voice/025.ogg"  ]
#詩織
Par ...
[live2d_motion  name="&tf.tachie"  filenm="janken_par05.mtn"  ]
[wait  time="1000"  ]
[live2d_motion  name="&tf.tachie"  filenm="janken_idoling_par05.mtn"  idle="true"  ]
[jump  storage="tachie_erabi.ks"  target="*modoru"  ]

*par_nyoui50
[playse  volume="50"  time="1000"  buf="2"  storage="voice/026.ogg"  ]
#詩織
Pah ... Hmm ...
[live2d_motion  name="&tf.tachie"  filenm="janken_par06.mtn"  ]
[wait  time="1000"  ]
[live2d_motion  name="&tf.tachie"  filenm="janken_idoling_gu06.mtn"  idle="true"  ]
[jump  storage="tachie_erabi.ks"  target="*modoru"  ]

*par_nyoui60
[playse  volume="50"  time="1000"  buf="2"  storage="voice/027.ogg"  ]
#詩織
... Par ... Hmm ... Hmm!
[live2d_motion  name="&tf.tachie"  filenm="janken_par07.mtn"  ]
[wait  time="1000"  ]
[live2d_motion  name="&tf.tachie"  filenm="janken_idoling_gu07.mtn"  idle="true"  ]
[jump  storage="tachie_erabi.ks"  target="*modoru"  ]

*par_nyoui65

[playse  volume="50"  time="1000"  buf="2"  storage="voice/028.ogg"  ]
#詩織
... Par ... Hmm ... Hmm!
[live2d_motion  name="&tf.tachie"  filenm="janken_par07_chibiri02.mtn"  ]
[wait  time="1000"  ]
[live2d_motion  name="&tf.tachie"  filenm="janken_idoling_gu07_chibiri02.mtn"  idle="true"  ]
[jump  storage="tachie_erabi.ks"  target="*modoru"  ]

*par_nyoui70
[playse  volume="50"  time="1000"  buf="2"  storage="voice/028.ogg"  ]
#詩織
... Par ... Hmm ... Hmm!
[live2d_motion  name="&tf.tachie"  filenm="janken_par07_chibiri03.mtn"  ]
[wait  time="1000"  ]
[live2d_motion  name="&tf.tachie"  filenm="janken_idoling_gu07_chibiri03.mtn"  idle="true"  ]
[jump  storage="tachie_erabi.ks"  target="*modoru"  ]
[s  ]



*janken_koe

[jump  storage="tachie_erabi.ks"  target="*janken_nyoui60"  cond="tf.nyoui>=60"  ]
[jump  storage="tachie_erabi.ks"  target="*janken_nyoui40"  cond="tf.nyoui>=40"  ]
*janken_nyoui0

[playse  volume="50"  time="1000"  buf="2"  storage="voice/011.ogg"  ]
#詩織
Rock-paper-scissors!

[return  ]
*janken_nyoui40

[playse  volume="50"  time="1000"  buf="2"  storage="voice/012.ogg"  ]
#詩織
Jan ... Ken ...

[return  ]
*janken_nyoui60

[playse  volume="50"  time="1000"  buf="2"  storage="voice/013.ogg"  ]
#詩織
Hmm ... Then ... Hmm ... Ken ...

[return  ]
[s  ]

