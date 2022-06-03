
;勝ちの時の尿意変化による立ち絵
*tachie_kachi

[jump  storage="tachie_nyoui_henka.ks"  target="*nyoui65_kachi"  cond="tf.chibiri==2"  ]
[jump  storage="tachie_nyoui_henka.ks"  target="*nyoui70_kachi"  cond="tf.chibiri==3"  ]
[jump  storage="tachie_nyoui_henka.ks"  target="*nyoui0_kachi"  cond="tf.nyoui<30"  ]
[jump  storage="tachie_nyoui_henka.ks"  target="*nyoui30_kachi"  cond="tf.nyoui<40"  ]
[jump  storage="tachie_nyoui_henka.ks"  target="*nyoui40_kachi"  cond="tf.nyoui<50"  ]
[jump  storage="tachie_nyoui_henka.ks"  target="*nyoui50_kachi"  cond="tf.nyoui<60"  ]
[jump  storage="tachie_nyoui_henka.ks"  target="*nyoui60_kachi"  cond="tf.nyoui>59"  ]
[s  ]

*nyoui0_kachi
[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idoling01_okori.mtn"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/029.ogg"  ]
#詩織
Why![sek]

[return  ]

*nyoui30_kachi
[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idring03_sowasowa_osae.mtn"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/030.ogg"  ]
#詩織
Well, I lost again ...[sek]

[return  ]

*nyoui40_kachi
[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idring03_sowasowa_osae.mtn"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/031.ogg"  ]
#詩織
Ah ... no more ... I can't lose ...[sek]

[return  ]

*nyoui50_kachi

[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idring06_moji_zjiku_tame_tenasi.mtn"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/032.ogg"  ]
#詩織
Hmm ... Already ... Why ... I'm losing ...[sek]

[return  ]

*nyoui60_kachi

[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idring06_moji_xjiku_tame.mtn"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/033.ogg"  ]
#詩織
Hmm ... no more ...[sek]

[return  ]

*nyoui65_kachi

[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idring06_moji_xjiku_tame_chibiri02.mtn"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/034.ogg"  ]
#詩織
Hmm ... as it is ...[sek]

[return  ]

*nyoui70_kachi

[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idring07_furue01_chibiri03.mtn"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/035.ogg"  ]
#詩織
Hmm ... well ... u ... muri ...[sek]

[return  ]
[s  ]

;負けの時の尿意変化による立ち絵
*tachie_make

[jump  storage="tachie_nyoui_henka.ks"  target="*nyoui65_make"  cond="tf.chibiri==2"  ]
[jump  storage="tachie_nyoui_henka.ks"  target="*nyoui70_make"  cond="tf.chibiri==3"  ]
[jump  storage="tachie_nyoui_henka.ks"  target="*nyoui0_make"  cond="tf.nyoui<30"  ]
[jump  storage="tachie_nyoui_henka.ks"  target="*nyoui30_make"  cond="tf.nyoui<40"  ]
[jump  storage="tachie_nyoui_henka.ks"  target="*nyoui40_make"  cond="tf.nyoui<50"  ]
[jump  storage="tachie_nyoui_henka.ks"  target="*nyoui50_make"  cond="tf.nyoui<60"  ]
[jump  storage="tachie_nyoui_henka.ks"  target="*nyoui60_make"  cond="tf.nyoui>59"  ]
[s  ]

*nyoui0_make
[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idoling01_egao.mtn"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/036.ogg"  ]
#詩織
Yay![sek]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/037.ogg"  ]
I'm sorry I didn't meet my expectations.[sek]

[return  ]

*nyoui30_make
[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idring03_sowasowa_osae.mtn"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/038.ogg"  ]
#詩織
Huh ... it's still okay ...[sek]

[return  ]

*nyoui40_make
[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idring05_moji_xjiku.mtn"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/039.ogg"  ]
#詩織
Hmm ... I'm glad ... I'll have this for a while ...[sek]

[return  ]

*nyoui50_make
[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idring06_moji_zjiku_tame_tenasi.mtn"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/040.ogg"  ]
#詩織
Hmm ... somehow ... it became ...[sek]

[return  ]

*nyoui60_make
[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idring06_moji_xjiku_tame.mtn"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/041.ogg"  ]
#詩織
Hmm ... I won ... but ... no more ... Hmm ...[sek]

[return  ]

*nyoui65_make
[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idring06_moji_xjiku_tame_chibiri02.mtn"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/042.ogg"  ]
#詩織
Hmm ... or even if I win ... this ... it's just ...[p]

[return  ]

*nyoui70_make
[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idring07_furue01_chibiri03.mtn"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/043.ogg"  ]
#詩織
Hmm ... or ... but ... already ... already ...[p]

[return  ]
[s  ]


;あいこの時の尿意変化による立ち絵
*tachie_hikiwake

[jump  storage="tachie_nyoui_henka.ks"  target="*nyoui65_hikiwake"  cond="tf.chibiri==2"  ]
[jump  storage="tachie_nyoui_henka.ks"  target="*nyoui70_hikiwake"  cond="tf.chibiri==3"  ]
[jump  storage="tachie_nyoui_henka.ks"  target="*nyoui0_hikiwake"  cond="tf.nyoui<30"  ]
[jump  storage="tachie_nyoui_henka.ks"  target="*nyoui30_hikiwake"  cond="tf.nyoui<40"  ]
[jump  storage="tachie_nyoui_henka.ks"  target="*nyoui40_hikiwake"  cond="tf.nyoui<50"  ]
[jump  storage="tachie_nyoui_henka.ks"  target="*nyoui50_hikiwake"  cond="tf.nyoui<60"  ]
[jump  storage="tachie_nyoui_henka.ks"  target="*nyoui60_hikiwake"  cond="tf.nyoui>59"  ]
[s  ]

*nyoui0_hikiwake
[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idoling01.mtn"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/044.ogg"  ]
#詩織
Aiko de ...

[return  ]

*nyoui30_hikiwake
[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idring03_sowasowa_osae.mtn"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/045.ogg"  ]
#詩織
Uku ... Aiko de ...

[return  ]

*nyoui40_hikiwake
[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idring05_moji_xjiku.mtn"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/046.ogg"  ]
#詩織
Hmm ... oh, in Aiko ...

[return  ]

*nyoui50_hikiwake
[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idring06_moji_zjiku_tame_tenasi.mtn"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/047.ogg"  ]
#詩織
Hmm ... Already ... Aiko ... De ...

[return  ]

*nyoui60_hikiwake
[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idring06_moji_xjiku_tame.mtn"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/048.ogg"  ]
#詩織
Hmm ... Aiko ... and ... Hmm ...

[return  ]

*nyoui65_hikiwake
[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idring06_moji_xjiku_tame_chibiri02.mtn"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/049.ogg"  ]
#詩織
Ah ... Aiko ... and ... Hmm ...

[return  ]

*nyoui70_hikiwake
[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idring07_furue01_chibiri03.mtn"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/050.ogg"  ]
#詩織
Hmm ... no more ... no ... no ...

[return  ]
[s  ]



;お茶を飲むモーション
*drinking

[wait_cancel]

;[layopt layer="3" visible="true"]
[if exp="tf.ochya_use==0"]
;超お茶画像表示
[image layer="message0" width="150" x="410" y="210" storage="default/petto01.png" name="ochya01" time="600" zindex="1011"]
[else exp="tf.ochya_use==1"]
[image layer="message0" width="150" x="410" y="210" storage="default/petto02.png" name="ochya01" time="600" zindex="1011"]
[endif]



*drinking_nyoui0
[if exp="tf.nyoui<10"]
#貴
Now, I'll have you drink this tea as promised.[p]

[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idoling01_komari.mtn"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/051.ogg"  ]
#詩織
Wow, I understand ... you should drink ...[sek]

[if exp="tf.ochya_use==0"]
    [if exp="tf.nyoui==55"]
        [eval  exp="tf.nyoui+=5"]
    [else]
        [eval  exp="tf.nyoui+=10"]
    [endif]
[else exp="tf.ochya_use==1"]
    [if exp="tf.nyoui==50"]
        [eval  exp="tf.nyoui+=10"]
    [elsif exp="tf.nyoui==55"]
        [eval  exp="tf.nyoui+=5"]
    [else]
        [eval  exp="tf.nyoui+=20"]
    [endif]
[endif]

[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idring_drink01.mtn"  ]
[wait  time="700"  ]
[playse  volume="90"  time="1000"  buf="2"  storage="voice/052.ogg"  ]
#詩織
Koku ... Koku ... Koku ...[sek]

#貴
(Although I hated it, he would drink it properly ...)[p]



*drinking_nyoui10
[elsif exp="tf.nyoui<20"]
#貴
Now, have a cup of tea[p]

[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idoling01_komari.mtn"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/053.ogg"  ]
#詩織
Even if you don't tell me ... I'll drink ...[sek]

[if exp="tf.ochya_use==0"]
    [if exp="tf.nyoui==55"]
        [eval  exp="tf.nyoui+=5"]
    [else]
        [eval  exp="tf.nyoui+=10"]
    [endif]
[else exp="tf.ochya_use==1"]
    [if exp="tf.nyoui==50"]
        [eval  exp="tf.nyoui+=10"]
    [elsif exp="tf.nyoui==55"]
        [eval  exp="tf.nyoui+=5"]
    [else]
        [eval  exp="tf.nyoui+=20"]
    [endif]
[endif]

[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idring_drink02.mtn"  ]
[wait  time="700"  ]
[playse  volume="90"  time="1000"  buf="2"  storage="voice/052.ogg"  ]
#詩織
Koku ... Koku ... Koku ...[sek]



*drinking_nyoui20
[elsif exp="tf.nyoui<30"]
#貴
Now, have a cup of tea[p]

[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idring03_sowasowa.mtn"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/053-2.ogg"  ]
#詩織
This tea ... strangely delicious ... angry ...[sek]

[if exp="tf.ochya_use==0"]
    [if exp="tf.nyoui==55"]
        [eval  exp="tf.nyoui+=5"]
    [else]
        [eval  exp="tf.nyoui+=10"]
    [endif]
[else exp="tf.ochya_use==1"]
    [if exp="tf.nyoui==50"]
        [eval  exp="tf.nyoui+=10"]
    [elsif exp="tf.nyoui==55"]
        [eval  exp="tf.nyoui+=5"]
    [else]
        [eval  exp="tf.nyoui+=20"]
    [endif]
[endif]

[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idring_drink03.mtn"  ]
[wait  time="700"  ]
[playse  volume="90"  time="1000"  buf="2"  storage="voice/052.ogg"  ]
Koku ... Koku ... Koku ...[sek]



*drinking_nyoui30
[elsif exp="tf.nyoui<40"]
#貴
Yes, it's tea.[p]

[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idring03_sowasowa_osae.mtn"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/054.ogg"  ]
#詩織
Huh ... I'm gonna drink ...[sek]

[if exp="tf.ochya_use==0"]
    [if exp="tf.nyoui==55"]
        [eval  exp="tf.nyoui+=5"]
    [else]
        [eval  exp="tf.nyoui+=10"]
    [endif]
[else exp="tf.ochya_use==1"]
    [if exp="tf.nyoui==50"]
        [eval  exp="tf.nyoui+=10"]
    [elsif exp="tf.nyoui==55"]
        [eval  exp="tf.nyoui+=5"]
    [else]
        [eval  exp="tf.nyoui+=20"]
    [endif]
[endif]

[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idring_drink04.mtn"  ]
[wait  time="700"  ]
[playse  volume="90"  time="1000"  buf="2"  storage="voice/056.ogg"  ]
#詩織
Nku ... Nku ... Nku ...[sek]

#貴
(Slightly, it's getting harder to drink ...)[p]



*drinking_nyoui40
[elsif exp="tf.nyoui<50"]
#貴
Yes, it's tea.[p]

[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idring05_moji_xjiku.mtn"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/055.ogg"  ]
#詩織
Hmm ... drink ... wow ...[sek]

[if exp="tf.ochya_use==0"]
    [if exp="tf.nyoui==55"]
        [eval  exp="tf.nyoui+=5"]
    [else]
        [eval  exp="tf.nyoui+=10"]
    [endif]
[else exp="tf.ochya_use==1"]
    [if exp="tf.nyoui==50"]
        [eval  exp="tf.nyoui+=10"]
    [elsif exp="tf.nyoui==55"]
        [eval  exp="tf.nyoui+=5"]
    [else]
        [eval  exp="tf.nyoui+=20"]
    [endif]
[endif]

[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idring_drink05.mtn"  ]
[wait  time="700"  ]
[playse  volume="90"  time="1000"  buf="2"  storage="voice/056.ogg"  ]
#詩織
Nku ... Nku ... Nku ...[p]



*drinking_nyoui50
[elsif exp="tf.nyoui<60"]
#貴
Now, let's have a cup of tea.[p]

[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idring06_moji_zjiku_tame_tenasi.mtn"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/057.ogg"  ]
#詩織
Hmm ... uh ... already ... hard ... hmm[sek]

[if exp="tf.ochya_use==0"]
    [if exp="tf.nyoui==55"]
        [eval  exp="tf.nyoui+=5"]
    [else]
        [eval  exp="tf.nyoui+=10"]
    [endif]
[else exp="tf.ochya_use==1"]
    [if exp="tf.nyoui==50"]
        [eval  exp="tf.nyoui+=10"]
    [elsif exp="tf.nyoui==55"]
        [eval  exp="tf.nyoui+=5"]
    [else]
        [eval  exp="tf.nyoui+=20"]
    [endif]
[endif]

[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idring_drink06.mtn"  ]
[wait  time="700"  ]
[playse  volume="90"  time="1000"  buf="2"  storage="voice/058.ogg"  ]
#詩織
Hmm ... Hmm ... Hmm ...[sek]

#貴
(It's really getting harder ...)[p]



*drinking_nyoui60
[elsif exp="tf.nyoui>=60"]
#貴
Now, you have to drink tea.[p]

[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idring06_moji_xjiku_tame.mtn"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/059.ogg"  ]
#詩織
Hmm ... that's ... it's too much ... it's ...[sek]

[if exp="tf.ochya_use==0"]
    [if exp="tf.nyoui==55"]
        [eval  exp="tf.nyoui+=5"]
    [else]
        [eval  exp="tf.nyoui+=10"]
    [endif]
[else exp="tf.ochya_use==1"]
    [if exp="tf.nyoui==50"]
        [eval  exp="tf.nyoui+=10"]
    [elsif exp="tf.nyoui==55"]
        [eval  exp="tf.nyoui+=5"]
    [else]
        [eval  exp="tf.nyoui+=20"]
    [endif]
[endif]

[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idring_drink07.mtn"  ]
[wait  time="700"  ]
[playse  volume="90"  time="1000"  buf="2"  storage="voice/058.ogg"  ]
#詩織
Hmm ... Hmm ... Hmm ...[sek]

#貴
(It looks really hard, but I'm stubborn ...)[p]



*drinking_nyoui65
[elsif exp="tf.chibiri==2"]
#貴
Now, you have to drink tea.[p]

[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idring06_moji_xjiku_tame_chibiri02.mtn"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/060.ogg"  ]
#詩織
Hmm ... that ... already ... already ... hmm[sek]


[if exp="tf.ochya_use==0"]
    [if exp="tf.nyoui==55"]
        [eval  exp="tf.nyoui+=5"]
    [else]
        [eval  exp="tf.nyoui+=10"]
    [endif]
[else exp="tf.ochya_use==1"]
    [if exp="tf.nyoui==50"]
        [eval  exp="tf.nyoui+=10"]
    [elsif exp="tf.nyoui==55"]
        [eval  exp="tf.nyoui+=5"]
    [else]
        [eval  exp="tf.nyoui+=20"]
    [endif]
[endif]

[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idring_drink07_chibiri02.mtn"  ]
[wait  time="700"  ]
[playse  volume="90"  time="1000"  buf="2"  storage="voice/058.ogg"  ]
#詩織
Hmm ... Hmm ... Hmm ...[sek]

#貴
(Although it seems to be really difficult, Shiori who drinks properly is amazing ...)[p]



*drinking_nyoui70
[else exp="tf.chibiri==3"]
#貴
Well, can you still drink?[p]

[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idring07_furue01_chibiri03.mtn"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/061.ogg"  ]
#詩織
Hmm ... Hmm ... Already ... Already ...[sek]

[if exp="tf.ochya_use==0"]
    [if exp="tf.nyoui==55"]
        [eval  exp="tf.nyoui+=5"]
    [else]
        [eval  exp="tf.nyoui+=10"]
    [endif]
[else exp="tf.ochya_use==1"]
    [if exp="tf.nyoui==50"]
        [eval  exp="tf.nyoui+=10"]
    [elsif exp="tf.nyoui==55"]
        [eval  exp="tf.nyoui+=5"]
    [else]
        [eval  exp="tf.nyoui+=20"]
    [endif]
[endif]

[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idring_drink07_chibiri03.mtn"  ]
[wait  time="700"  ]
[playse  volume="90"  time="1000"  buf="2"  storage="voice/062.ogg"  ]
#詩織
Hmm ... Hmm ... Hmm ... Hmm !?[sek]

#貴
(It looks like it's really impossible anymore ...)[p]
[endif]

;超お茶画像消去
[free name="ochya01" layer="message0" time="600" ]

[return  ]
[s  ]



;飲んだ後の動作
*drink_after

[jump  storage="tachie_nyoui_henka.ks"  target="*drink_af_nyoui65"  cond="tf.chibiri==2"  ]
[jump  storage="tachie_nyoui_henka.ks"  target="*drink_af_nyoui70"  cond="tf.chibiri==3"  ]
[jump  storage="tachie_nyoui_henka.ks"  target="*drink_af_nyoui0"  cond="tf.nyoui<20"  ]
[jump  storage="tachie_nyoui_henka.ks"  target="*drink_af_nyoui10"  cond="tf.nyoui<30"  ]
[jump  storage="tachie_nyoui_henka.ks"  target="*drink_af_nyoui20"  cond="tf.nyoui<40"  ]
[jump  storage="tachie_nyoui_henka.ks"  target="*drink_af_nyoui30"  cond="tf.nyoui<50"  ]
[jump  storage="tachie_nyoui_henka.ks"  target="*drink_af_nyoui40"  cond="tf.nyoui<60"  ]
[jump  storage="tachie_nyoui_henka.ks"  target="*drink_af_nyoui50"  cond="tf.nyoui<70"  ]
[jump  storage="tachie_nyoui_henka.ks"  target="*drink_af_nyoui60"  cond="tf.nyoui>69"  ]


*drink_af_nyoui0
[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idoling01_komari.mtn"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/063.ogg"  ]
#詩織
I drank ...[sek]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/064.ogg"  ]
This tea ... delicious is salvation ...[sek]
[return  ]


*drink_af_nyoui10
[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idoling01_komari.mtn"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/063.ogg"  ]
#詩織
I drank ...[sek]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/064.ogg"  ]
This tea ... delicious is salvation ...[sek]
[return  ]


*drink_af_nyoui20
[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idring03_sowasowa.mtn"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/063.ogg"  ]
#詩織
I drank ...[sek]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/065.ogg"  ]
I hate this tea a little ...[sek]
[return  ]


*drink_af_nyoui30

[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idring03_sowasowa_osae.mtn"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/066.ogg"  ]
#詩織
Hmm ... I drank ...[sek]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/067.ogg"  ]
I'm hungry ... I'm chapochapo with tea ...[sek]
[return  ]


*drink_af_nyoui40
[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idring05_moji_xjiku.mtn"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/068.ogg"  ]
#詩織
Hmm ... I drank ...[sek]
[playse  volume="90"  time="1000"  buf="2"  storage="voice/181.ogg"  ]
Let's do it next ...[sek]
[return  ]


*drink_af_nyoui50
[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idring06_moji_zjiku_tame_tenasi.mtn"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/070.ogg"  ]
#詩織
Hmm ... I drank ... I ...[sek]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/071.ogg"  ]
Fast ... next ... next ...[sek]
[return  ]


*drink_af_nyoui60
[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idring06_moji_xjiku_tame.mtn"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/072.ogg"  ]
#詩織
Hmm ... drink ...[sek]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/073.ogg"  ]
Next ... Hmm ...[wse][l]
[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idring07_furue01.mtn"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/073-2.ogg"  ]
… Hmm! [p]
[return  ]


*drink_af_nyoui65
[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idring06_moji_xjiku_tame.mtn"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/074.ogg"  ]
#詩織
Hmm ... drink ...[sek]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/075.ogg"  ]
Momo ... U ... Muri ... Hmm ...[wse][l]
[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idring07_furue01.mtn"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/075-2.ogg"  ]
… Hmm! [sek]
[return  ]


*drink_af_nyoui70
[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idring06_moji_xjiku_tame.mtn"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/076.ogg"  ]
#詩織
Hmm ... drink ...[sek]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/077.ogg"  ]
Momo ... U ... Muri ... Hmm ...[wse][l]
[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idring07_furue01.mtn"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/078.ogg"  ]
… Hmm! [sek]
[return  ]
[s  ]



