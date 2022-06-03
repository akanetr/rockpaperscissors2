;じゃんけんで負けたらヒロインがお茶を飲むだけのゲーム2オープニングイベント

*start

[playse  volume="100"  time="1000"  buf="0"  storage="kettei.ogg"  ]

[cm  ]
[clearfix]
[start_keyconfig]

[bg storage="rouka_yu960.png" time="500"]

;メニューボタンの表示
;@showmenubutton

;メッセージウィンドウの設定
[position layer="message0" left=0 top=430 width=960 height=200 page=fore visible=true]
[position layer=message0 page=fore frame="m_window01.png" margint="0" marginl="0" marginr="0" marginb="0"]


;文字が表示される領域を調整
[position layer=message0 page=fore margint="50" marginl="20" marginr="30" marginb="20"]


;メッセージウィンドウの表示
@layopt layer=message0 visible=true

;キャラクターの名前が表示される文字領域
[ptext name="chara_name_area" layer="message0" color="white" size=26 x=35 y=440 bold="bold"]

;上記で定義した領域がキャラクターの名前表示であることを宣言（これがないと#の部分でエラーになります）
[chara_config ptext="chara_name_area"]

;レイヤー3の可視化
[layopt layer="3" visible=true]

;オートボタン表示
[button graphic="button/auto.png" enterimg="button/auto2.png" clickimg="button/auto2.png" width=96 height=26 x=850 y=600 role="auto" name="auto" fix="true"]
;コンフィグボタン表示
;[button graphic="button/sleep.png" enterimg="button/sleep2.png" width=96 height=26 x=750 y=600 role="sleepgame" storage="config.ks"  name="role_button" fix="true"]
;タイトルボタン表示
[button graphic="button/title.png" enterimg="button/title2.png" width=96 height=26 x=750 y=600 role="title" storage="title.ks" name="title" fix="true"]

;変数にtachie01を入れる
[eval exp="tf.tachie='tachie01'"]


;オープニングイベントスタート

#
Garat[l]

[playse  volume="100"  time="1000"  buf="1"  storage="tm2_slidedoor000.ogg"  ]
[bg  storage="seitokai_yu960bc.png"  time="1000"  method="slideInRight"  ]
[p]

#貴(たかし)
Okay, no one ...[p]

[playbgm  volume="50"  time="1000"  loop="true"  storage="30_ＢＥＡＣＨ.ogg"  ]

;Live2Dモデルの定義
;Live2Dモデルの生成（標準立ち絵）
[live2d_new name="&tf.tachie" left=-50 top=-330 width=1080 height=1080 glscale=1.0]
[live2d_show name="&tf.tachie" time=1000]
[live2d_motion  name="&tf.tachie"  filenm="idoling01.mtn"  idle="true"]

#貴(たかし)
Well ... let's do it here, as promised.[p]


[live2d_motion  name="&tf.tachie"  filenm="idoling01_komari.mtn"  idle="true"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/001.ogg"  ]
#詩織(しおり)
Hey, why isn't there anyone in the student organization room after school![sek]

#貴
Why ...[p]
#貴
That's because I talked to the Student Organization and asked me to open a classroom ...[p]

[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idoling01_zitome.mtn"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/002.ogg"  ]
#詩織
What's that useless action power ... why did you look forward to it so much?[sek]

#貴
Now, there's nothing wrong with it.[p]
#貴
In the first place, if Shiori wins the bet, he has set the condition to listen to whatever the other party says ...[p]

[live2d_motion  name="&tf.tachie"  filenm="idoling01_okori.mtn"  idle="true"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/003.ogg"  ]
#詩織
Wow, I know![sek]

[playse  volume="50"  time="1000"  buf="2"  storage="voice/004.ogg"  ]
#詩織
That's why I'm dating like this![sek]

[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idoling01_zitome.mtn"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/005.ogg"  ]
#詩織
So what should I do if I lose my bet?[sek]

#貴
Get me to play rock-paper-scissors!
[quake  time="300"  count="3"  hmax="10"  wait="true"  ]
[p]

[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idoling01_komari.mtn"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/006.ogg"  ]
#詩織
Then ... rock-paper-scissors ...?[sek]

#貴
Oh, that's not just rock-paper-scissors ...[p]
#貴
Rock-paper-scissors play 10 times, Aiko does not count[p]

;お茶画像の表示
[image layer="3" width="150" x="410" y="210" storage="petto01.png" name="ochya01" time="500"]
[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idoling01_zitome.mtn"  ]

#貴
Every time I lose to rock-paper-scissors, Shiori drinks tea that is famous for its excellent diuretic effect ...[p]

;お茶画像の削除
[free name="ochya01" layer="3" time="500" ]

#貴
What ... what happened?[p]

[playse  volume="50"  time="1000"  buf="2"  storage="voice/007.ogg"  ]
#詩織
No ... I suddenly found out my childhood friend's habit, and I just pulled it a little ...[sek]

#貴
Kohon ... well, don't worry about the details![p]

[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idoling01_komari.mtn"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/008.ogg"  ]
#詩織
No ... I'm being drunk, so you care ... normal ...[sek]

#貴
Okay, let's get started![p]

[playse  volume="50"  time="1000"  buf="2"  storage="voice/009.ogg"  ]
#詩織
Hmm ... I should have made such a bet if this happened ...[sek]


[jump  storage="janken.ks"  target="*from_scene1"  ]

[s]