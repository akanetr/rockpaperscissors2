;失禁イベント
*shikkin_nomal


[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idring07_furue01.mtn"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/080.ogg"  ]
#詩織
Hmmmmmm[sek]

;ちびり有りの場合ビーカーアニメを変更
[if exp="tf.chibiri==0"]
[live2d_motion  name="bi_ka"  filenm="bi_ka08ugoki.mtn"  ]
[else exp="tf.chibiri>=2"]
[live2d_motion  name="bi_ka"  filenm="bi_ka08ugoki_2.mtn"  ]
[endif]

[playse  volume="50"  time="1000"  buf="1"  storage="water08kai.ogg"  ]
[wait  time="1000"  ]

[if exp="tf.chibiri==0"]
[live2d_motion  name="bi_ka"  filenm="bi_ka09.mtn"  idle="true"  ]
[else exp="tf.chibiri>=2"]
[live2d_motion  name="bi_ka"  filenm="bi_ka09_2.mtn"  idle="true"  ]
[endif]

[wse]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/081.ogg"  ]
Also ... Already ... Muri ... But ... Patience ... De ... Kina ... I ...[sek]


;ちびり有りの場合変える
[if exp="tf.chibiri==0"]
[live2d_motion  name="&tf.tachie"  filenm="shikkin01_osae_nochibiri.mtn"  ]
[else]
[live2d_motion  name="&tf.tachie"  filenm="shikkin01_osae.mtn"  ]
[endif]

[playse  volume="70"  buf="1"  storage="nyouon3.ogg"  ]
[wait  time="2000"  ]
[playse  volume="50"  time="1000"  buf="3"  storage="zyaba-zyaba.ogg"  ]
[wait  time="2000"  ]
[live2d_motion  name="&tf.tachie"  idle="true"  filenm="shikkin01_osae_idring.mtn"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/083.ogg"  ]
#詩織
Ahhhhh ... it was ...
[wait time="3000"]
[sek]

[playse  volume="50"  time="1000"  buf="2"  storage="voice/084.ogg"  ]
#詩織
Wow ... it feels so good ... it doesn't stop ... yo ...
[wait time="1000"]
[sek]

[stopse  time="800"  buf="3"  ]
[wse]
[live2d_motion  name="&tf.tachie"  idle="true"  filenm="shikkin01_owari_osae_idring.mtn"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/085.ogg"  ]
#詩織
Ah ... everything ... it came out ...[sek]

#貴
It looks refreshing.[p]

[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idoling01_okori_shikkin.mtn"  ]

;下着まで脱いだ場合に挟む
[if exp="tf.tachiver>=4 && tf.tachiver<=12"]
[playse  volume="70"  time="1000"  buf="2"  storage="voice/182.ogg"  ]
#詩織
What should I do if my pants and legs get wet with pee![sek]
[else]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/086.ogg"  ]
#詩織
What should I do if my skirt gets wet with pee![sek]
[endif]

#貴
I thought that would happen, so I have prepared it properly.[p]

[playse  volume="50"  time="1000"  buf="2"  storage="voice/087.ogg"  ]
#詩織
I thought that would happen ... I can't let you drink that kind of tea![sek]


;下着まで脱いだ場合に挟む
[if exp="tf.tachiver>=4 && tf.tachiver<=12"]
#貴
Well, wear the uniform you took off ...[p]
[endif]


#貴
Hole, let's go[p]

[playse  volume="50"  time="1000"  buf="2"  storage="voice/088.ogg"  ]
#詩織
Don't listen to people ... what kind of bucket do you have? ... Wappu![sek]


;暗転
[mask  time="500"  effect="fadeIn"  color="0x000000"  ]

;水をかける効果音
[playse  volume="50"  time="1000"  buf="1"  storage="basya.ogg"  ]

;live2dモデルを退場
[live2d_hide name="&tf.tachie" time=0]
[live2d_delete name="&tf.tachie"]


;live2dモデルの値を代入
[if exp="tf.tachiver==1 || tf.tachiver==5 || tf.tachiver==9 || tf.tachiver==11"]
[eval exp="tf.tachie='tachie01nure'"]

[elsif exp="tf.tachiver==2 || tf.tachiver==6"]
[eval exp="tf.tachie='tachie01suke'"]
[eval exp="tf.tachiver=13"]

[elsif exp="tf.tachiver==3 || tf.tachiver==7 || tf.tachiver==10 || tf.tachiver==12"]
[eval exp="tf.tachie='tachie01taitsu_nure'"]

[else exp="tf.tachiver==4 || tf.tachiver==8"]
[eval exp="tf.tachie='tachie01taitsu_suke'"]
[eval exp="tf.tachiver=14"]
[endif]


;live2dモデルを作成
[live2d_new name="&tf.tachie" left=-50 top=-330 width=1080 height=1080 glscale=1.0]
[live2d_show name="&tf.tachie" time=0]
[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idoling01_okori.mtn"  ]


;暗転解除
[mask_off  time="1000"  effect="fadeOut"  ]

[wse]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/089.ogg"  ]
#詩織
Oh! I'm getting soaked more![sek]


;透ける場合のみ
[if exp="tf.tachiver==13 || tf.tachiver==14"]
#貴
Oh, I feel good and erotic[p]

[playse  volume="50"  time="1000"  buf="2"  storage="voice/095.ogg"  ]
#詩織
Erotic ... what ...!?[sek]

[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idoling01_himei.mtn"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/096.ogg"  ]
Chaa !![sek]

[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idoling01_okori.mtn"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/097.ogg"  ]
Because it's embarrassing, don't look too much![sek]
[endif]


#貴
But if you go to the health room with this, no one thinks you've leaked pee, right?[p]

[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idoling01_uwame_kashige.mtn"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/090.ogg"  ]
#詩織
Uh ... yeah, I don't think I'm peeing ...[sek]

[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idoling01_zitome.mtn"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/091.ogg"  ]
#詩織
Wait a second…[sek]

[playse  volume="50"  time="1000"  buf="2"  storage="voice/092.ogg"  ]
Because it's about you, you've been thinking so far ...[sek]

[playse  volume="50"  time="1000"  buf="2"  storage="voice/093.ogg"  ]
I wonder how much I prepared for the pervert act ...[sek]

#貴
Well, well ... don't say that ...[p]
Let's go to the health room. I accidentally sprinkled water ...[p]

[playse  volume="50"  time="1000"  buf="2"  storage="voice/094.ogg"  ]
#詩織
It's natural![sek]


;暗転
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[stopbgm  time="1000"  fadeout="true"  ]
;live2dの削除
[live2d_hide name="&tf.tachie" time=0]
[live2d_delete name="&tf.tachie"]
[live2d_hide name="bi_ka" time=0]
[live2d_delete name="bi_ka"]
[freeimage layer=0 time=0]
[freeimage layer=2 time=0]
[freeimage layer=3 time=0]
[clearfix name="auto"]
[clearfix name="title"]

;メッセージウインドウの消去
@layopt layer=message0 visible=false

;背景画像の変更
[bg  time="0"  method="crossfade"  storage="stuff.png"  ]
[wait  time="500"  ]

;暗転解除
[mask_off  time="100"  effect="fadeOut"  ]
[wait  time="1000"  ]

[jump  storage="title.ks"]
[s  ]





















