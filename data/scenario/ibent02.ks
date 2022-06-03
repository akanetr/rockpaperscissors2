;特殊イベント02
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

;じゃんけん回数他表示
[layopt layer=2 visible=true]
[ptext text=&tf.kaisu x=845 y=8 in_effect="fadeIn" out_effect="fadeOut" layer="2" size="30" bold="bold" name="kaisu"]
[ptext text="turn" x=890 y=8 in_effect="fadeIn" out_effect="fadeOut" layer="2" size="30" bold="bold" name="kaime"]
[ptext text=&tf.kaisu x=875 y=40 in_effect="fadeIn" out_effect="fadeOut" layer="2" size="30" bold="bold" name="kachi"]
[ptext text="win" x=920 y=40 in_effect="fadeIn" out_effect="fadeOut" layer="2" size="30" bold="bold" name="kai1"]
[ptext text=&tf.kaisu x=875 y=70 in_effect="fadeIn" out_effect="fadeOut" layer="2" size="30" bold="bold" name="make"]
[ptext text="lose" x=920 y=70 in_effect="fadeIn" out_effect="fadeOut" layer="2" size="30" bold="bold" name="kai2"]

;デバック時用選択肢
[link target=*taitsu_ari][1] With tights[endlink][r]
[link target=*taitsu_nashi][2] No tights[endlink][r]
[s]


*taitsu_ari
;変数にtachie01taitsu_nugiを入れる
[eval exp="tf.tachie='tachie01taitsu_nugi'"]
[eval exp="tf.tachiver=7"]
[jump target=*tsuduki]
[s]

*taitsu_nashi
;変数にtachie01nugiを入れる
[eval exp="tf.tachie='tachie01nugi'"]
[eval exp="tf.tachiver=5"]
[jump target=*tsuduki]
[s]


*tsuduki
[cm]
[live2d_new name="&tf.tachie" left=-50 top=-330 width=1080 height=1080 glscale=1.0 zindex="1002"]
[live2d_show name="&tf.tachie" time=500]

;ビーカーモデル呼び出し
[live2d_new name="bi_ka" left=-150 top=20 width=500 height=500 glscale=1.0 zindex="1005"]
[live2d_show name="bi_ka" time=500]
[layopt layer=2 visible=true]
[ptext text="BOU-KOU" x="41" y="288" in_effect="fadeIn" out_effect="fadeOut" layer="2" size="28" name="bou_kou"]

;live2dモーション設定
[live2d_motion  name="bi_ka"  idle="true"  filenm="bi_ka07_3.mtn"  ]
[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idring07_furue01_chibiri02.mtn"  ]



;前のシナリオからジャンプして来るポイント
*from_janken

;じゃんけん文字消去
[free name="janken" layer="3" time="300" ]


[playse  volume="50"  time="1000"  buf="2"  storage="voice/132.ogg"  ]
#詩織
...!?[sek]

#貴
(It looks like it's no good anymore ...)[p]


[live2d_motion  name="&tf.tachie"  filenm="idring06_moji_xjiku_tame_chibiri02.mtn"  idle="true"  ]
[playse  volume="90"  time="1000"  buf="2"  storage="voice/146.ogg"  ]
#詩織
Dame ... Hmm ... Already ... Muri ... Hmm![sek]

;live2dモデル非表示
[live2d_hide name="&tf.tachie" time=500]
[playse  volume="50"  time="1000"  buf="1"  storage="run01.ogg"  ]
#貴
(I ran towards the exit of the Student Organization Room ...)[p]

[stopse  time="500"  buf="1"  fadeout="true"  ]
;live2dモデル表示
[live2d_show name="&tf.tachie" time=500]
#貴
(Somehow, I'm stepping in front of the door ...)[p]

[playse  volume="90"  buf="2"  storage="voice/147.ogg"  ]
#詩織
Hmm ... noble ... what should I do ... in this style ... I can't go outside ... hmm ...[sek]
#貴
Why don't you wear clothes?[p]

[playse  volume="90"  time="1000"  buf="2"  storage="voice/148.ogg"  ]
#詩織
Hmm ... Mmm, I can't ... Already ... If I move ... I'll come out ...[sek]

#貴
Then, you should make this bucket.[p]
(Maybe I prepared another bucket and it was the correct answer ...)[p]

[playse  volume="90"  time="1000"  buf="2"  storage="voice/149.ogg"  ]
#詩織
Hmm ... that's ... it's embarrassing ... Hmm ...[sek]

#貴
But if you leave it as it is, you'll leak it there?[p]

[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idring07_furue01_chibiri03.mtn"  ]
[playse  volume="90"  time="1000"  buf="2"  storage="voice/150.ogg"  ]
#詩織
Ah ... Dame ... Dame ...[sek]

[live2d_motion  name="&tf.tachie"  filenm="idring06_moji_xjiku_tame_chibiri03.mtn"  idle="true"  ]
[playse  volume="90"  time="1000"  buf="2"  storage="voice/151.ogg"  ]
#詩織
Go ... Noodles ... Mmm ... Uh ... Muri ... Hmm ...[sek]

;live2dモデル非表示
[live2d_hide name="&tf.tachie" time=500]
;バケツ持つ音
[playse  volume="50"  time="1000"  buf="1"  storage="baketsu_motsu.ogg" ]
[playse  volume="50"  time="1000"  buf="0"  storage="run01.ogg"  ]

#貴
(Is it really the limit, I took it like a bucket ...)[p]
[stopse  time="500"  buf="0"  fadeout="true"  ]


;暗転
[mask  time="500"  effect="fadeIn"  color="0x000000"  ]

;live2dモデル退場
[live2d_delete name="&tf.tachie"]

;背景を変更
[bg  time="0"  method="crossfade"  storage="ibent02_back.png"  ]

;変数にibent02を入れる
[eval exp="tf.tachie='ibent02'"]
[live2d_new name="&tf.tachie" left=-520 top=-550 width=2050 height=2050 glscale=1.0]
[live2d_show name="&tf.tachie" time=0]

;live2dモーション設定
[if exp="tf.tachiver==7"]
[live2d_motion  name="&tf.tachie"  filenm="taitsu_idring01_nugenai.mtn"  idle="true"  ]

[else]
[live2d_motion  name="&tf.tachie"  filenm="zurashi_idring01_aseri.mtn"  idle="true"  ]
[endif]

;バケツ置く音
[playse  volume="50"  time="1000"  buf="1"  storage="baketsu_oku.ogg" ]

;画面表示文字を書き換える
[free name="bou_kou" layer=2 time=0]
[ptext text="BOU-KOU" x="26" y="65" in_effect="fadeIn" out_effect="fadeOut" layer="2" size="16" name="bou_kou" zindex=1010]

;live2dビーカーの移動
[live2d_scale name="bi_ka" scaleX=0.6 scaleY=0.6 time=0]
[live2d_trans name="bi_ka" left=-40 top=-218 time=0]

;回数表示の背景表示
[image layer=2 width="960" x="0" y="0" storage="default/kaisu_back.png" name="kaisu_back" time=0 zindex=900]

[wse]
[wait time="500"]




;タイツの場合
[if exp="tf.tachiver==7"]

;暗転解除
[mask_off  time="500"  effect="fadeOut"  ]


;衣擦れ効果音
[playse  volume="50"  time="1000"  buf="1"  storage="kinuzure.ogg" ]

#貴
(Finally, it seems like I'm going to put it in a bucket ...)[p]

[playse  volume="90"  time="1000"  buf="2"  storage="voice/152.ogg" clear="true" ]
#詩織
Hmm ... hey ... hm ... nu ... I can't take it off ...[sek]

[playse  volume="50"  time="1000"  buf="1"  storage="kinuzure.ogg" ]

#貴
(Because I'm in a hurry, I'm stuck and I can't take off my tights well ...)[p]

[live2d_motion  name="&tf.tachie"  filenm="taitsu_idring01_nugenai2.mtn"  idle="true"  ]
[playse  volume="50"  time="1000"  buf="1"  storage="chibiri.ogg"  ]
[wait time=1000]
[playse  volume="50"  time="1000"  buf="3"  storage="baketsu_suiteki.ogg" ]
[wse]
[playse  volume="90"  time="1000"  buf="2"  storage="voice/153.ogg" clear="true" ]
#詩織
Ah, ah ... a little ... wait ... no ...[sek]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/154.ogg"  ]
Hmm ... no more ... if it comes out ... no ...[sek]

[live2d_motion  name="&tf.tachie"  filenm="taitsu_idring01_nugenai3.mtn"  idle="true"  ]
[playse  volume="50"  time="1000"  buf="1"  storage="chibiri.ogg"  ]
[wait time=1000]
[playse  volume="50"  time="1000"  buf="3"  storage="baketsu_suiteki.ogg" ]
[wse]
[playse  volume="90"  time="1000"  buf="2"  storage="voice/155.ogg" clear="true" ]
#詩織
Wait ... Wait ... Still ... Hmm ... Take off ... No ... Hmm ...[sek]

[live2d_motion  name="&tf.tachie"  filenm="taitsu_idring01_nugenai4.mtn"  idle="true"  ]
[playse  volume="50"  time="1000"  buf="1"  storage="chibiri.ogg"  ]
[wait time=200]
[playse  volume="50"  time="1000"  buf="3"  storage="baketsu_suiteki.ogg" ]
[playse  volume="90"  time="1000"  buf="2"  storage="voice/156.ogg"  ]
#詩織
Ahhhhh ...

[live2d_motion  name="bi_ka"  filenm="bi_ka08ugoki_2.mtn"  ]
[playse  volume="40"  time="1000"  buf="3"  storage="water08kai.ogg"  ]
[wait  time="2500"  ]
[live2d_motion  name="bi_ka"  filenm="bi_ka09_2.mtn"  idle="true"  ]

[sek]

[live2d_motion  name="&tf.tachie"  filenm="taitsu_shikkin.mtn" ]
[playse  volume="90"  time="1000"  buf="2"  storage="voice/157.ogg"  ]
[playse  volume="70"  time="1000"  buf="1"  storage="nyouon3.ogg"  ]
#詩織
Ahhhhhhhhh ...

[wait  time="2000"  ]
[playse  volume="50"  time="1000"  buf="3"  storage="baketsu_mizu.ogg"  ]
[wait  time="2500"  ]
[cm]

[live2d_motion  name="&tf.tachie"  filenm="taitsu_shikkin_idring.mtn"  idle="true"  ]
[playse  volume="90"  time="1000"  buf="2"  storage="voice/158.ogg"  ]
#詩織
Ahhhhh ... no ... it doesn't stop ...[wse]
[wait time="10000"]
[p]

[stopse  time="500"  buf="1"  fadeout="true"  ]

[live2d_motion  name="&tf.tachie"  filenm="taitsu_shikkin_idring_owari.mtn"]
[wait  time="1800"  ]
[live2d_motion  name="&tf.tachie"  filenm="taitsu_shikkingo_idring.mtn"  idle="true"  ]
[playse  volume="90"  time="1000"  buf="2"  storage="voice/159.ogg"  ]
#詩織
Uh ... pee ... I leaked ...[sek]




;タイツ無しの場合
[else]

;衣擦れ効果音
[playse  volume="50"  time="1000"  buf="1"  storage="kinuzure.ogg" ]
[wse]

;暗転解除
[mask_off  time="500"  effect="fadeOut"  ]

[live2d_motion  name="&tf.tachie"  filenm="zurashi_idring01_aseri.mtn"  idle="true"  ]
[wait time="200"]
[playse  volume="50"  time="1000"  buf="1"  storage="baketsu_suiteki.ogg" ]

#貴
(Finally, it seems like I'm going to put it in a bucket ...)[p]

[playse  volume="90"  time="1000"  buf="2"  storage="voice/160.ogg"  ]
#詩織
Hmm ... Already ... Pants ... I can't![sek]

[live2d_motion  name="&tf.tachie"  filenm="zurashi_idring01_aseri.mtn"  idle="true"  ]
[wait time="200"]
[playse  volume="50"  time="1000"  buf="1"  storage="baketsu_suiteki.ogg" ]
[wse]
[playse  volume="90"  time="1000"  buf="2"  storage="voice/156.ogg"  ]
#詩織
Ahhhhh ...

[live2d_motion  name="bi_ka"  filenm="bi_ka08ugoki_2.mtn"  ]
[playse  volume="40"  time="1000"  buf="1"  storage="water08kai.ogg"  ]
[wait  time="2500"  ]
[live2d_motion  name="bi_ka"  filenm="bi_ka09_2.mtn"  idle="true"  ]

[sek]

[live2d_motion  name="&tf.tachie"  filenm="zurashi_shikkin.mtn" ]
[playse  volume="90"  time="1000"  buf="2"  storage="voice/157.ogg"  ]
[playse  volume="70"  time="1000"  buf="1"  storage="nyouon3.ogg"  ]
#詩織
Ahhhhhhhhh ...

[wait  time="2000"  ]
[playse  volume="50"  time="1000"  buf="3"  storage="baketsu_mizu.ogg"  ]
[wait  time="2500"  ]

[live2d_motion  name="&tf.tachie"  filenm="zurashi_shikkin_idring.mtn"  idle="true"  ]
[p]
[playse  volume="90"  time="1000"  buf="2"  storage="voice/158.ogg"  ]
#詩織
Ahhhhh ... no ... it doesn't stop ...[sek]
[playse  volume="90"  time="1000"  buf="2"  storage="voice/162.ogg"  ]
Huh ... huh ... somehow ... in the meantime ... there was ...
[wait time="9000"]
[p]

[stopse  time="500"  buf="1"  fadeout="true"  ]

[live2d_motion  name="&tf.tachie"  filenm="zurashi_shikkin_idring_owari.mtn"]
[wait  time="1800"  ]
[live2d_motion  name="&tf.tachie"  filenm="zurashi_shikkingo_idring.mtn"  idle="true"  ]

[playse  volume="90"  time="1000"  buf="2"  storage="voice/163.ogg"  ]
#詩織
Uh ... pee ... I've put it in a bucket ...[sek]

[endif]


;暗転
[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
;背景変更
[bg  time="1000"  method="crossfade"  storage="seitokai_yu960_2.png"  ]
;画面表示文字を切り替え
[free name="bou_kou" layer=2 time=0]
[ptext text="BOU-KOU" x="41" y="288" in_effect="fadeIn" out_effect="fadeOut" layer="0" size="28" name="bou_kou"]
[free name="kaisu_back" layer=2 time=0]

;live2dモデルを退場
[live2d_hide name="&tf.tachie" time=0]
[live2d_delete name="&tf.tachie"]
;ビーカーモデルを元の場所に戻す
[live2d_scale name="bi_ka" scaleX=1.0 scaleY=1.0 time=0]
[live2d_trans name="bi_ka" left=0 top=0 time=0]

[if exp="tf.tachiver==7"]
;変数にtachie01taitsu_nugiを入れる
[eval exp="tf.tachie='tachie01taitsu_nugi'"]

[else]
;変数にtachie01nugiを入れる
[eval exp="tf.tachie='tachie01nugi'"]
[endif]

[live2d_new name="&tf.tachie" left=-50 top=-330 width=1080 height=1080 glscale=1.0]
[live2d_show name="&tf.tachie" time=500]
;live2dのモーションを設定
[live2d_motion  name="&tf.tachie"  filenm="idoling01_komari_udekumi_more.mtn"  idle="true"  ]

[wait time="500"]
;暗転解除
[mask_off  time="500"  effect="fadeOut"  ]


;タイツの場合
[if exp="tf.tachiver==7"]
[playse  volume="90"  time="1000"  buf="2"  storage="voice/164.ogg"  ]
#詩織
Hmm ... I ended up leaking pee ...[sek]
[playse  volume="90"  time="1000"  buf="2"  storage="voice/165.ogg"  ]
Pee, pants and legs are soaked ...[sek]

#貴
I never thought that the tights wouldn't come off and would be left alone ...[p]


;タイツを履いてない場合
[else]
[playse  volume="90"  time="1000"  buf="2"  storage="voice/167.ogg"  ]
#詩織
Hmm ... I ended up with a pee bucket ...[sek]
[playse  volume="90"  time="1000"  buf="2"  storage="voice/168.ogg"  ]
On top of that, it's a little pee, and my pants and legs are soaked ...[p]

#貴
I never thought I would just shift my pants and leave them as they are ...[p]

[endif]


[live2d_motion  name="&tf.tachie"  filenm="idoling01_uwame_kashige_shikkin.mtn"  idle="true"  ]
[playse  volume="90"  time="1000"  buf="2"  storage="voice/166.ogg"  ]
#詩織
Because ... it was really the limit ...[sek]

#貴
Well, I'm thinking that it might happen, so I put on the skirt I took off for the time being.[p]

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
[playse  volume="50"  time="1000"  buf="1"  storage="basya.ogg"  ]

;live2d消去
[live2d_hide name="&tf.tachie" time=0]
[live2d_delete name="&tf.tachie"]

;live2d用変数の変更
[if exp="tf.tachiver==7"]
[eval exp="tf.tachie='tachie01taitsu_nure'"]

[else]
[eval exp="tf.tachie='tachie01nure'"]
[endif]

[live2d_new name="&tf.tachie" left=-50 top=-330 width=1080 height=1080 glscale=1.0]
[live2d_show name="&tf.tachie" time=500]
[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idoling01_okori.mtn"  ]
;暗転解除
[mask_off  time="1000"  effect="fadeOut"  ]


[wse]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/089.ogg"  ]
#詩織
Oh! I'm getting soaked more![sek]


;タイツの場合
[if exp="tachiver==7"]
#貴
But now I'm peeing, and even if I go to the health room, no one thinks I've leaked pee, right?[p]

[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idoling01_uwame_kashige.mtn"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/090.ogg"  ]
#詩織
Uh ... yeah, I don't think I'm peeing ...[sek]


;タイツを履いてない場合
[else]
#貴
But now I'm peeing, and even if I go to the health room, no one thinks I'm peeing in a bucket in the classroom, right?[p]
[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idoling01_uwame_kashige.mtn"  ]
[playse  volume="90"  time="1000"  buf="2"  storage="voice/169.ogg"  ]
#詩織
Uh ... I'm embarrassed to say it again, so don't say I'm peeing too much ...[sek]
[endif]



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
Let's go to the health room. I have to throw away the contents of this trash can ...[p]

[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idoling01_okori.mtn"  ]
[playse  volume="90"  time="1000"  buf="2"  storage="voice/170.ogg"  ]
#詩織
Oh ... wait![sek]

;live2dモデルを非表示
[live2d_hide name="&tf.tachie" time=500]
[wait time=500]

[playse  volume="50"  time="1000"  buf="1"  storage="run01.ogg"  ]
[playse  volume="90"  time="1000"  buf="2"  storage="voice/171.ogg"  ]
#詩織
Hey ... I'll throw that bucket myself![sek]
[playse  volume="40"  time="1000"  buf="2"  storage="voice/172.ogg"  ]
Because it's embarrassing, don't look at the pee in the middle![sek]


;暗転
[mask  time="1000"  effect="fadeIn"  color="0x000000"  ]
[stopbgm  time="1000"  fadeout="true"  ]

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







