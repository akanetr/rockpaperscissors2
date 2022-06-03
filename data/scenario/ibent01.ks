;特殊イベント01
*ibent01start

[playse  volume="50"  time="1000"  buf="0"  storage="kettei.ogg"  ]

;デバック用の設定
[cm  ]
[clearfix]
[start_keyconfig]

;デバック用にLive2Dモデルや背景をロードする。
[position layer="message0" left=0 top=430 width=960 height=200 page=fore visible=true]
;メッセージウィンドウの設定
[position layer=message0 page=fore frame="m_window01.png" margint="0" marginl="0" marginr="0" marginb="0"]

;メッセージウィンドウの表示
@layopt layer="message0" visible=true

;文字が表示される領域を調整
[position layer=message0 page=fore margint="50" marginl="20" marginr="30" marginb="20"]

;キャラクターの名前が表示される文字領域
[ptext name="chara_name_area" layer="message0" color="white" size=26 x=35 y=440 bold="bold"]

;上記で定義した領域がキャラクターの名前表示であることを宣言（これがないと#の部分でエラーになります）
[chara_config ptext="chara_name_area"]

;オートボタン表示
[button graphic="button/auto.png" enterimg="button/auto2.png" clickimg="button/auto2.png" width=96 height=26 x=850 y=600 role="auto" name="auto" fix="true"]

[bg  storage="seitokai_yu960_2b.png"  time="500"  method="fadeIn"  ]
[playbgm  volume="100"  time="1000"  loop="true"  storage="30_ＢＥＡＣＨ.ogg"  ]

;変数にtachie01を入れる
[eval exp="tf.tachie='tachie01se_ta_nugi'"]
[live2d_new name="&tf.tachie" left=-50 top=-330 width=1080 height=1080 glscale=1.0]
[live2d_show name="&tf.tachie" time=500]

;ビーカーモデル呼び出し
[live2d_new name="bi_ka" left=-150 top=20 width=500 height=500 glscale=1.0]
[live2d_show name="bi_ka" time=500]
[layopt layer=2 visible=true]
[ptext text="BOU-KOU" x="41" y="288" in_effect="fadeIn" out_effect="fadeOut" layer="2" size="28" name="bou_kou"]

;live2dモーション設定
[live2d_motion  name="bi_ka"  idle="true"  filenm="bi_ka07_4.mtn"  ]
[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idring07_furue01_chibiri03.mtn"  ]



;前のシナリオからジャンプして来るポイント
*from_janken

;じゃんけん文字消去
[free name="janken" layer="3" time="300" ]
#貴
(Now, let's gently stroke ...)[p]

[playse  volume="50"  time="1000"  buf="2"  storage="voice/132.ogg"  ]
#詩織
...!?[sek]

[live2d_motion  name="&tf.tachie"  filenm="idring06_moji_xjiku_tame_chibiri03.mtn"  idle="true"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/133.ogg"  ]
#詩織
Dame ... Taka ... Hmm ... That ... Hmm ... D ... Me ... Hmm!
[sek]

[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idring07_furue01_chibiri03.mtn"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/134.ogg"  ]
#詩織
Ah ... Dame ... Dame ...[sek]

[live2d_motion  name="&tf.tachie"  filenm="idring06_moji_xjiku_tame_chibiri03.mtn"  idle="true"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/135.ogg"  ]
#詩織
Go ... Noodles ... Mmm ... Uh ... Muri ... Hmm ...[sek]

;live2dモデル退場
[live2d_hide name="&tf.tachie" time=500]
[live2d_delete name="&tf.tachie"]

[playse  volume="50"  time="1000"  buf="1"  storage="run01.ogg"  ]
[stopse  time="4000"  buf="1"  fadeout="true"  ]
#貴
Oh, Shiori ... where are you going !?[sek]



;暗転
[mask  time="500"  effect="fadeIn"  color="0x000000"  ]

[playse  volume="60"  time="1000"  buf="0"  storage="clash.ogg"  ]
[wait  time="500"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/136.ogg"  ]
;背景を変更
[bg  time="0"  method="crossfade"  storage="ibent_back01s.png"  ]
[wse  ]
;画面表示文字を書き換える
[free name="bou_kou" layer=2 time=0]
[ptext text="BOU-KOU" x="705" y="65" in_effect="fadeIn" out_effect="fadeOut" layer="2" size="16" name="bou_kou"]

;live2dビーカーの移動
[live2d_scale name="bi_ka" scaleX=0.6 scaleY=0.6 time=0]
[live2d_trans name="bi_ka" left=638 top=-218 time=0]

;変数にibent01を入れる
[eval exp="tf.tachie='ibent01'"]
[live2d_new name="&tf.tachie" left=-480 top=-480 width=1920 height=1920 glscale=1.0]
[live2d_show name="&tf.tachie" time=0]
;live2dモーション設定
[live2d_motion  name="&tf.tachie"  filenm="idring01_itai.mtn"  idle="true"  ]

;暗転解除
[mask_off  time="500"  effect="fadeOut"  ]



#貴
Ahhh ... Did you stumble on the cardboard boxes that were piled up near the entrance ...[p]
Shiori, are you okay?[p]

[playse  volume="50"  time="1000"  buf="2"  storage="voice/137.ogg"  ]
#詩織
Hmm ... Itata ...[sek]

[live2d_motion  name="&tf.tachie"  filenm="idring01_bikubiku.mtn"  idle="true"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/138.ogg"  ]
Hmm !?[sek]

[live2d_motion  name="&tf.tachie"  filenm="idring01_ahahah.mtn"  idle="true"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/139_1.ogg"  ]
Ahhh ...[wse][l]

[live2d_motion  name="bi_ka"  filenm="bi_ka08ugoki_2.mtn"  ]
[playse  volume="40"  time="1000"  buf="0"  storage="water08kai.ogg"  ]
[wait  time="2500"  ]
[live2d_motion  name="bi_ka"  filenm="bi_ka09_2.mtn"  idle="true"  ]
[l]

[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idring01_dame.mtn"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/139_2.ogg"  ]
Damn ... Decha ... Damn ... [sek]

[live2d_motion  name="&tf.tachie"  filenm="shikkin01.mtn"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/140.ogg"  ]
[playse  volume="70"  time="1000"  buf="0"  storage="nyouon3.ogg"  ]
Ahhhhhhhhh ...

[wait  time="3000"  ]
[wait  time="2000"  ]
[live2d_motion  name="&tf.tachie"  filenm="idring01_shikkin01.mtn"  idle="true"  ]
[sek]

[playse  volume="50"  time="1000"  buf="2"  storage="voice/141.ogg"  ]
[playse  volume="50"  time="1000"  buf="1"  storage="zyaba-zyaba.ogg"  ]
Hmm ... damn ... it doesn't stop ...

[wait time="7000"]
[sek]
[wse]
[stopse  time="500"  buf="1"  fadeout="true"  ]

[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idring01_shikkin01_owari_naki.mtn"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/142.ogg"  ]
... Hmm ... Pee ... I've done it all ...
[wait time="5000"]
[p]
[stopse  time="0"  buf="2"]



;暗転
[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
;背景変更
[bg  time="1000"  method="crossfade"  storage="seitokai_yu960_2.png"  ]
;画面表示文字を切り替え
[free name="bou_kou" layer=2 time=0]
[ptext text="BOU-KOU" x="41" y="288" in_effect="fadeIn" out_effect="fadeOut" layer="0" size="28" name="bou_kou"]
;live2dモデルを退場
[live2d_hide name="&tf.tachie" time=0]
[live2d_delete name="&tf.tachie"]
;ビーカーモデルを元の場所に戻す
[live2d_scale name="bi_ka" scaleX=1.0 scaleY=1.0 time=0]
[live2d_trans name="bi_ka" left=0 top=0 time=0]

;変数にtachie01sukeを入れる
[eval exp="tf.tachie='tachie01suke'"]
[live2d_new name="&tf.tachie" left=-50 top=-330 width=1080 height=1080 glscale=1.0]
[live2d_show name="&tf.tachie" time=500]
;live2dのモーションを設定
[live2d_motion  name="&tf.tachie"  filenm="idoling01_komari_udekumi_more.mtn"  idle="true"  ]

;暗転解除
[mask_off  time="500"  effect="fadeOut"  ]




[playse  volume="50"  time="1000"  buf="2"  storage="voice/143.ogg"  ]
#詩織
Hmm ... I'm peeing all over my body ...[sek]

#貴
It happened because Shiori escaped on the way ...[p]

[playse  volume="50"  time="1000"  buf="2"  storage="voice/144.ogg"  ]
#詩織
That's because you're saying you're no good, but you're hungry ...[sek]

#貴
Well, I'm wondering if that might happen, so I'm thinking about it ...[p]


[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idoling01_okori_shikkin.mtn"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/087.ogg"  ]
#詩織
I thought that would happen ... I can't let you drink that kind of tea![sek]

#貴
Hole, let's go[p]


[playse  volume="50"  time="1000"  buf="2"  storage="voice/088.ogg"  ]
#詩織
Don't listen to people ... what kind of bucket do you have? ... Wappu![sek]



;暗転
[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
[playse  volume="10"  time="1000"  buf="1"  storage="basya.ogg"  ]

[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idoling01_okori.mtn"  ]
;暗転解除
[mask_off  time="1000"  effect="fadeOut"  ]


[wse]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/089.ogg"  ]
#詩織
Oh! I'm getting soaked more![sek]

#貴
I thought it was pitiful to say it right after peeing, but have you noticed that you've been peeing for a long time?[p]

[playse  volume="50"  time="1000"  buf="2"  storage="voice/095.ogg"  ]
#詩織
Erotic ... what ...!?[sek]

[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idoling01_himei.mtn"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/096.ogg"  ]
#詩織
Chaa !![sek]

[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idoling01_okori.mtn"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/097.ogg"  ]
#詩織
Because it's embarrassing, don't look too much![sek]

#貴
But now I'm peeing, and even if I go to the health room, no one thinks I've leaked pee, right?[p]

[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idoling01_uwame_kashige.mtn"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/090.ogg"  ]
#詩織
Uh ... yeah, I don't think I'm peeing ...[sek]

[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idoling01_zitome.mtn"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/091.ogg"  ]
#詩織
Wait a second…[sek]

[playse  volume="50"  time="1000"  buf="2"  storage="voice/092.ogg"  ]
#詩織
Because it's about you, you've been thinking so far ...[sek]

[playse  volume="50"  time="1000"  buf="2"  storage="voice/093.ogg"  ]
#詩織
I wonder how much I prepared for the pervert act ...[sek]

#貴
Well, well ... don't say that ...[p]
Let's go to the health room. I accidentally sprinkled water ...[p]

[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idoling01_uwame_kashige.mtn"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/145.ogg"  ]
#詩織
It's natural! ... But ... Thank you ...[sek]

;暗転
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[stopbgm  time="1000"  fadeout="true"  ]

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

;暗転解除
[mask_off  time="100"  effect="fadeOut"  ]
[wait  time="1000"  ]

[jump  storage="title.ks"]







[s]























