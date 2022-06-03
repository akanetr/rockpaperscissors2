;尿意によるビーカーの水位
*bi_ka_suii

[if exp="tf.nyoui<5"]
[live2d_motion  name="bi_ka"  filenm="bi_ka01.mtn"  idle="true"  ]
[jump  storage="bi_ka_zikan.ks"  target="*modoru"]

*nyou05
[elsif exp="tf.nyoui==5"]
[live2d_motion  name="bi_ka"  filenm="bi_ka01_2.mtn"  idle="true"  ]
[jump  storage="bi_ka_zikan.ks"  target="*modoru"  ]

*nyou10
[elsif exp="tf.nyoui==10"]
[live2d_motion  name="bi_ka"  filenm="bi_ka02.mtn"  idle="true"  ]
[jump  storage="bi_ka_zikan.ks"  target="*modoru"  ]

*nyou15
[elsif exp="tf.nyoui==15"]
[live2d_motion  name="bi_ka"  filenm="bi_ka02_2.mtn"  idle="true"  ]
[jump  storage="bi_ka_zikan.ks"  target="*modoru"  ]

*nyou20
[elsif exp="tf.nyoui==20"]
[live2d_motion  name="bi_ka"  filenm="bi_ka03.mtn"  idle="true"  ]
[jump  storage="bi_ka_zikan.ks"  target="*modoru"  ]

*nyou25
[elsif exp="tf.nyoui==25"]
[live2d_motion  name="bi_ka"  filenm="bi_ka03_2.mtn"  idle="true"  ]
[jump  storage="bi_ka_zikan.ks"  target="*modoru"  ]

*nyou30
[elsif exp="tf.nyoui==30"]
[live2d_motion  name="bi_ka"  filenm="bi_ka04.mtn"  idle="true"  ]
[jump  storage="bi_ka_zikan.ks"  target="*modoru"  ]

*nyou35
[elsif exp="tf.nyoui==35"]
[live2d_motion  name="bi_ka"  filenm="bi_ka04_2.mtn"  idle="true"  ]
[jump  storage="bi_ka_zikan.ks"  target="*modoru"  ]

*nyou40
[elsif exp="tf.nyoui==40"]
[live2d_motion  name="bi_ka"  filenm="bi_ka05.mtn"  idle="true"  ]
[jump  storage="bi_ka_zikan.ks"  target="*modoru"  ]

*nyou45
[elsif exp="tf.nyoui==45"]
[live2d_motion  name="bi_ka"  filenm="bi_ka05_2.mtn"  idle="true"  ]
[jump  storage="bi_ka_zikan.ks"  target="*modoru"  ]

*nyou50
[elsif exp="tf.nyoui==50"]
[live2d_motion  name="bi_ka"  filenm="bi_ka06.mtn"  idle="true"  ]
[jump  storage="bi_ka_zikan.ks"  target="*modoru"  ]

*nyou55
[elsif exp="tf.nyoui==55"]
[live2d_motion  name="bi_ka"  filenm="bi_ka06_2.mtn"  idle="true"  ]
[jump  storage="bi_ka_zikan.ks"  target="*modoru"  ]

*nyou60
[elsif exp="tf.nyoui==60"]
[live2d_motion  name="bi_ka"  filenm="bi_ka07.mtn"  idle="true"  ]
[jump  storage="bi_ka_zikan.ks"  target="*modoru"  ]

*nyou65
[elsif exp="tf.chibiri==2"]
[live2d_motion  name="bi_ka"  filenm="bi_ka07_3.mtn"  idle="true"  ]
[jump  storage="bi_ka_zikan.ks"  target="*modoru"  ]

*nyou70
[elsif exp="tf.chibiri==3"]
[live2d_motion  name="bi_ka"  filenm="bi_ka07_4.mtn"  idle="true"  ]
[jump  storage="bi_ka_zikan.ks"  target="*modoru"  ]
[else]
[endif]

[jump  storage="bi_ka_zikan.ks"  target="*modoru"  ]
[s]


;時間による尿意とモーション変化
*nyoui_zikan

[jump  storage="bi_ka_zikan.ks"  target="*modoru"  cond="tf.nyoui>60"  ]
[jump  storage="bi_ka_zikan.ks"  target="*modoru"  cond="tf.nyoui==0"  ]
[jump  storage="bi_ka_zikan.ks"  target="*nyoui10"  cond="tf.nyoui==10"  ]
[jump  storage="bi_ka_zikan.ks"  target="*nyoui15"  cond="tf.nyoui==15"  ]
[jump  storage="bi_ka_zikan.ks"  target="*nyoui20"  cond="tf.nyoui==20"  ]
[jump  storage="bi_ka_zikan.ks"  target="*nyoui25"  cond="tf.nyoui==25"  ]
[jump  storage="bi_ka_zikan.ks"  target="*nyoui30"  cond="tf.nyoui==30"  ]
[jump  storage="bi_ka_zikan.ks"  target="*nyoui35"  cond="tf.nyoui==35"  ]
[jump  storage="bi_ka_zikan.ks"  target="*nyoui40"  cond="tf.nyoui==40"  ]
[jump  storage="bi_ka_zikan.ks"  target="*nyoui45"  cond="tf.nyoui==45"  ]
[jump  storage="bi_ka_zikan.ks"  target="*nyoui50"  cond="tf.nyoui==50"  ]
[jump  storage="bi_ka_zikan.ks"  target="*nyoui55"  cond="tf.nyoui==55"  ]
[jump  storage="bi_ka_zikan.ks"  target="*nyoui60"  cond="tf.nyoui==60"  ]
[return  ]

*nyoui10
[wait  time="20000"  ]
[eval  exp="tf.nyoui+=5"]
[live2d_motion  name="bi_ka"  filenm="bi_ka02_2.mtn"  idle="true"  ]
[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idoling01_komari.mtn"  ]

*nyoui15
[wait  time="20000"  ]
[eval  exp="tf.nyoui+=5"]
[live2d_motion  name="bi_ka"  filenm="bi_ka03.mtn"  idle="true"  ]
[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idring03_sowasowa.mtn"  ]

*nyoui20
[wait  time="20000"  ]
[eval  exp="tf.nyoui+=5"]
[live2d_motion  name="bi_ka"  filenm="bi_ka03_2.mtn"  idle="true"  ]
[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idring03_sowasowa.mtn"  ]

*nyoui25
[wait  time="20000"  ]
[eval  exp="tf.nyoui+=5"]
[live2d_motion  name="bi_ka"  filenm="bi_ka04.mtn"  idle="true"  ]
[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idring03_sowasowa_osae.mtn"  ]

*nyoui30
[wait  time="20000"  ]
[eval  exp="tf.nyoui+=5"]
[live2d_motion  name="bi_ka"  filenm="bi_ka04_2.mtn"  idle="true"  ]
[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idring03_sowasowa_osae.mtn"  ]

*nyoui35
[wait  time="20000"  ]
[eval  exp="tf.nyoui+=5"]
[live2d_motion  name="bi_ka"  filenm="bi_ka05.mtn"  idle="true"  ]
[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idring05_moji_xjiku.mtn"  ]

*nyoui40
[wait  time="20000"  ]
[eval  exp="tf.nyoui+=5"]
[live2d_motion  name="bi_ka"  filenm="bi_ka05_2.mtn"  idle="true"  ]
[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idring04_moji_zjiku.mtn"  ]

*nyoui45
[wait  time="20000"  ]
[eval  exp="tf.nyoui+=5"]
[live2d_motion  name="bi_ka"  filenm="bi_ka06.mtn"  idle="true"  ]
[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idring06_moji_zjiku_tame_tenasi.mtn"  ]

*nyoui50
[wait  time="20000"  ]
[eval  exp="tf.nyoui+=5"]
[live2d_motion  name="bi_ka"  filenm="bi_ka06_2.mtn"  idle="true"  ]
[live2d_motion  name="&tf.tachie"  filenm="idring06_moji_zjiku_tame_tenasi.mtn"  idle="true"  ]

*nyoui55
[wait  time="20000"  ]
[eval  exp="tf.nyoui+=5"]
[live2d_motion  name="bi_ka"  filenm="bi_ka07.mtn"  idle="true"  ]
[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idring06_moji_xjiku_tame.mtn"  ]

*nyoui60

[jump  storage="bi_ka_zikan.ks"  target="*modoru"  ]
*nyoui65

[live2d_motion  name="tachie01"  idle="true"  filenm="idring06_moji_xjiku_tame_chibiri02.mtn"  ]
[jump  storage="bi_ka_zikan.ks"  target="*modoru"  ]
*nyoui70

[live2d_motion  name="tachie01"  idle="true"  filenm="idring07_furue01_chibiri03.mtn"  ]
[jump  storage="bi_ka_zikan.ks"  target="*modoru"  ]
[s  ]


;コールから戻る
*modoru
[return  ]
[s  ]


;お腹を押したとき
*onaka_button

[free name="janken" layer="3" time="300" ]

[if exp="tf.tachiver==2"]
[jump  storage="ibent01.ks"  target="*from_janken"  cond="tf.chibiri==3"  ]
[endif]
[jump  storage="bi_ka_zikan.ks"  target="*chibiri04"  cond="tf.chibiri==3"]
[jump  storage="bi_ka_zikan.ks"  target="*chibiri00"  cond="tf.nyoui<60"]
[jump  storage="bi_ka_zikan.ks"  target="*chibiri03"  cond="tf.chibiri==2"]
[jump  storage="bi_ka_zikan.ks"  target="*chibiri02"]
[s  ]

*chibiri04
[wait_cancel]

#貴
(I feel sorry for you anymore ...)[p]

[jump  storage="janken.ks"  target="*modori"  ]
[s  ]


;尿意60未満
*chibiri00
[wait_cancel]
#貴
(Let's push it for a moment ...)[p]

[live2d_motion  name="&tf.tachie"  filenm="idoling01_zitome.mtn"  idle="true"]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/126.ogg"  ]
#詩織
Where are you trying to push ...[sek]
#貴
Is it barre ...[p]

[playse  volume="50"  time="1000"  buf="2"  storage="voice/127.ogg"  ]
#詩織
You'll know what you're thinking right away.[sek]

[jump  storage="janken.ks"  target="*modori"]


;ちびり1回目
*chibiri02
[wait_cancel]

[eval  exp="tf.chibiri=2"]
[eval  exp="tf.nyoui+=5"]
#貴
(Let's push it for a moment ...)[p]

[live2d_motion  name="bi_ka"  idle="true"  filenm="bi_ka07_3.mtn"  ]
[live2d_motion  name="&tf.tachie"  filenm="idring07_chibiri02.mtn"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/128.ogg"  ]
#詩織
Ah…
[wait  time="3000"  ]

[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idring07_furue01_chibiri02.mtn"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/129.ogg"  ]
No ... it's ... [sek]

[jump  storage="janken.ks"  target="*modori"  ]
[s  ]


;ちびり2回目
*chibiri03
[wait_cancel]

[eval  exp="tf.chibiri=3"]
[eval  exp="tf.nyoui+=5"]
#貴
(Let's push it for a moment ...)[p]

[live2d_motion  name="bi_ka"  idle="true"  filenm="bi_ka07_4.mtn"  ]
[live2d_motion  name="&tf.tachie"  filenm="idring07_chibiri03.mtn"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/130.ogg"  ]
#詩織
Ah ... ah ...
[wait  time="3000"  ]

[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idring07_furue01_chibiri03.mtn"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/131.ogg"  ]
Decha ... Ah ... [sek]

[jump  storage="janken.ks"  target="*modori"  ]
[s  ]



