;じゃんけんメインスクリプト

*janken_start

[playse  volume="100"  time="1000"  buf="0"  storage="kettei.ogg"  ]

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
;タイトルボタン表示
[button graphic="button/title.png" enterimg="button/title2.png" width=96 height=26 x=750 y=600 role="title" storage="title.ks" name="title" fix="true"]

[bg  storage="seitokai_yu960bc.png"  time="500"  method="fadeIn"  ]
[playbgm  volume="50"  time="1000"  loop="true"  storage="30_ＢＥＡＣＨ.ogg"  ]

;変数にtachie01を入れる
[eval exp="tf.tachie='tachie01'"]

[live2d_new name="&tf.tachie" left=-50 top=-330 width=1080 height=1080 glscale=1.0]
[live2d_show name="&tf.tachie" time=500]


;前のシナリオからジャンプして来るポイント
*from_scene1

;変数設定
[eval exp="tf.kaisu=1"]
[eval exp="tf.kachi='0'"]
[eval exp="tf.make='0'"]
[eval exp="tf.nyoui=0"]

[eval exp="tf.chibiri=0"]
[eval exp="tf.shiori_te=0"]
[eval exp="tf.zibun_te=0"]
[eval exp="tf.se_ta_nugi=0"]
[eval exp="tf.uwagi_nugi=0"]
[eval exp="tf.suka_to_nugi=0"]
[eval exp="tf.suke=0"]
[eval exp="tf.normal=1"]
[eval exp="tf.tachiver=1"]

[eval exp="tf.taitsu=0"]
[eval exp="tf.taitsu_use=0"]
[eval exp="tf.taitsu_nugi=0"]
[eval exp="tf.gu_chyoki_c01=0"]
[eval exp="tf.gu_chyoki_use=0"]
[eval exp="tf.yakyuken=0"]
[eval exp="tf.yakyuken_c01=0"]
[eval exp="tf.yakyuken_c02=0"]
[eval exp="tf.yakyuken_c03=0"]
[eval exp="tf.yakyuken_use=0"]
[eval exp="tf.yakyuken_use_kai=0"]
[eval exp="tf.yakyuken_zumi=0"]
[eval exp="tf.nugi_ue=0"]
[eval exp="tf.nugi_shita=0"]
[eval exp="tf.ochya=0"]
[eval exp="tf.ochya_use=0"]

;背景変更
[bg  storage="seitokai_yu960_2bc.png"  time="500"  method="fadeIn"  ]

[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idoling01.mtn"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/010.ogg"  ]
#詩織
Then, let's start rock-paper-scissors.[sek]

;ビーカー呼び出し
[live2d_new name="bi_ka" left=-150 top=20 width=500 height=500 glscale=1.0 zindex="1005"]
[live2d_show name="bi_ka" time=500]

;ビーカー表示
[live2d_motion  name="bi_ka"  filenm="bi_ka01.mtn"  idle="true"  ]

;じゃんけん回数他表示
[layopt layer=2 visible=true]
[ptext text="BOU-KOU" x="41" y="288" in_effect="fadeIn" out_effect="fadeOut" layer="2" size="28" name="bou_kou"]
[ptext text=&tf.kaisu x=845 y=8 in_effect="fadeIn" out_effect="fadeOut" layer="2" size="30" bold="bold" name="kaisu"]
[ptext text="Turn" x=890 y=8 in_effect="fadeIn" out_effect="fadeOut" layer="2" size="30" bold="bold" name="kaime"]
[ptext text=&tf.kachi x=875 y=40 in_effect="fadeIn" out_effect="fadeOut" layer="2" size="30" bold="bold" name="kachi"]
[ptext text="Win" x=920 y=40 in_effect="fadeIn" out_effect="fadeOut" layer="2" size="30" bold="bold" name="kai1"]
[ptext text=&tf.make x=875 y=70 in_effect="fadeIn" out_effect="fadeOut" layer="2" size="30" bold="bold" name="make"]
[ptext text="Defeat" x=920 y=70 in_effect="fadeIn" out_effect="fadeOut" layer="2" size="30" bold="bold" name="kai2"]

;じゃんけん終わると戻ってくるポイント
*modori
[wait_cancel]
[clearstack]

;回数表示の書き換え
[clearstack]
[ptext text=&tf.kaisu x=845 y=8 in_effect="fadeIn" out_effect="fadeOut" layer="2" size="30" bold="bold" name="kaisu" overwrite="true"]
[ptext text=&tf.kachi x=875 y=40 in_effect="fadeIn" out_effect="fadeOut" layer="2" size="30" bold="bold" name="kachi" overwrite="true"]
[ptext text=&tf.make x=875 y=70 in_effect="fadeIn" out_effect="fadeOut" layer="2" size="30" bold="bold" name="make" overwrite="true"]

;71以上の尿意数値になった時に70に慣らす
[jump  storage="janken.ks"  target="*hensu_ok"  cond="tf.nyoui<=70"  ]
[eval  exp="tf.nyoui=70"]
*hensu_ok

;ビーカーの水位コール
[call  storage="bi_ka_zikan.ks"  target="*bi_ka_suii"]

;尿意変化したキャラモーションを呼び出すコール
[call  storage="tachie_erabi.ks"  target="*tachie_erabi"]



;じゃんけん待ち画面

;じゃんけんの声
[call  storage="tachie_erabi.ks"  target="*janken_koe"  ]


;レイヤー3を可視化
[layopt layer="3" visible=true]

;じゃんけん文字
[image layer="3" width="514" x="211" y="179" storage="default/janken01.png" name="janken" time="500"]

;自分の手アイコン
[button  storage="janken.ks"  target="*zibun_gu"  graphic="gu.png"  width="100"  height="100"  x="630"  y="313" name="zibun_gu"  ]
[button  storage="janken.ks"  target="*zibun_chyoki"  graphic="cyoki.png"  width="100"  height="100"  x="740"  y="313" name="zibun_chyoki"  ]
[button  storage="janken.ks"  target="*zibun_par"  graphic="par.png"  width="100"  height="100"  x="850"  y="313" name="zibun_par"  ]

;クリッカブルマップ詩織
[clickable  storage="item_button.ks"  x="442"  y="458"  width="100"  height="100"  target="*mekuri"]
[clickable  storage="item_button.ks"  x="406"  y="258"  width="139"  height="59"  target="*pai"]
[clickable  storage="bi_ka_zikan.ks"  x="478"  y="399"  width="50"  height="50"  target="*onaka_button"]

;クリッカブルマップアイテム
[clickable storage="item_button.ks"  x="639"  y="118"  width="50"  height="30"  target="*taitsu_hakken"]
[clickable storage="item_button.ks"  x="200"  y="73"  width="50"  height="50"  target="*yakyuken_hakken" ]
[clickable storage="item_button.ks"  x="715"  y="163"  width="4"  height="25"  target="*yakyuken_hakken2" ]
[clickable storage="item_button.ks"  x="843"  y="168"  width="26"  height="19"  target="*yakyuken_hakken3" ]
[clickable storage="item_button.ks"  x="-1"  y="462"  width="30"  height="50"  target="*gu_chyoki_hakken"]
[clickable storage="item_button.ks"  x="325"  y="340"  width="15"  height="60"  target="*tyo_ochya_hakken"]

;コールでアイテムボタン、時間経過モード呼び出し
[call  storage="item_button.ks"  target="*item"  ]
[call  storage="bi_ka_zikan.ks"  target="*nyoui_zikan"  cond="tf.ochya_use==1"  ]



[s]



;じゃんけん処理

;自分がグー
*zibun_gu
[cm  ]
[wait_cancel]
;じゃんけん文字消去
[free name="janken" layer="3" time="300" ]
;出した手のアイコン表示
[image layer="3" width="100" x="630" y="313" storage="default/gu.png" name="zibun_te" time="0"]
[eval  exp="tf.zibun_te=1"]
[jump  storage="janken.ks"  target="*shiori"  ]
[s  ]

;自分がチョキ
*zibun_chyoki
[cm  ]
[wait_cancel]
;じゃんけん文字消去
[free name="janken" layer="3" time="300" ]
;出した手のアイコン表示
[image layer="3" width="100" x="740" y="313" storage="default/cyoki.png" name="zibun_te" time="0"]
[eval  exp="tf.zibun_te=2"]
[jump  storage="janken.ks"  target="*shiori"  ]
[s  ]

;自分がパー
*zibun_par
[cm  ]
[wait_cancel]
;じゃんけん文字消去
[free name="janken" layer="3" time="300" ]
;出した手のアイコン表示
[image layer="3" width="100" x="850" y="313" storage="default/par.png" name="zibun_te" time="0"]
[eval  exp="tf.zibun_te=3"]
[jump  storage="janken.ks"  target="*shiori"  ]
[s  ]


;詩織の手を決める
*shiori

;チケットを使っているか判定
[if exp="tf.gu_chyoki_use==0"]
;1~3の乱数を生成
[eval  exp="tf.shiori_te=Math.floor(Math.random()*3)+1"]
[else exp="tf.gu_chyoki_use==1"]
;1~2の乱数を生成
[eval  exp="tf.shiori_te=Math.floor(Math.random()*2)+1"]
[endif]

[jump  storage="janken.ks"  target="*shiori_gu"  cond="tf.shiori_te==1"  ]
[jump  storage="janken.ks"  target="*shiori_chyoki"  cond="tf.shiori_te==2"  ]
[jump  storage="janken.ks"  target="*shiori_par"  cond="tf.shiori_te==3"  ]
[s  ]


;詩織手を出すモーション

;詩織グー
*shiori_gu
;尿意に応じたモーションを呼び出すコール
[call storage="tachie_erabi.ks" target="*junken_gu_nyoui"]
[p]
[jump  storage="janken.ks"  target="*hantei"  ]
[s  ]

;詩織チョキ
*shiori_chyoki
;尿意に応じたモーションを呼び出すコール
[call  storage="tachie_erabi.ks"  target="*janken_chyoki_nyoui"]
[p]
[jump  storage="janken.ks"  target="*hantei"  ]
[s  ]

;詩織パー
*shiori_par
;尿意に応じたモーションを呼び出すコール
[call  storage="tachie_erabi.ks"  target="*janken_par_nyoui"]
[p]
[jump  storage="janken.ks"  target="*hantei"  ]
[s  ]



;WinDefeat判定
*hantei

[if exp="tf.zibun_te==tf.shiori_te"]
[jump  storage="janken.ks"  target="*hikiwake"]

[elsif exp="(tf.zibun_te+1)==tf.shiori_te"]
[jump  storage="janken.ks"  target="*kachi"]

[elsif exp="(tf.zibun_te-2)==tf.shiori_te"]
[jump  storage="janken.ks"  target="*kachi"]

[elsif exp="(tf.zibun_te-1)==tf.shiori_te"]
[jump  storage="janken.ks"  target="*make"]

[else exp="(tf.zibun_te+2)==tf.shiori_te"]
[jump  storage="janken.ks"  target="*make"]
[endif]

[s  ]



;Winち
*kachi

;先に表示を数値に戻しておく
[if exp="tf.kachi=='0'"]
[eval exp="tf.kachi=0"]
[else]
[endif]

;変数処理
[eval  exp="tf.kachi+=1"]
[eval  exp="tf.kaisu+=1"]
[eval  exp="tf.gu_chyoki_use=0"]

;Winち文字画像表示
[image layer="3" width="514" x="235" y="179" storage="default/win01.png" name="janken" time="500"]

;尿意に応じたモーションを呼び出すコール
[call storage="tachie_nyoui_henka.ks" target="*tachie_kachi"]

;Winち文字・自分の手画像消去
[freeimage layer="3" time="300" ]

;条件を満たしていたらイベントへ
[if exp="tf.nyoui>=60"]
	[if exp="tf.tachiver==5 || tf.tachiver==7"]
    		[jump  storage="ibent02.ks"  target="*from_janken"  cond="tf.chibiri==2"  ]
    	[endif]
[endif]

[jump storage="janken.ks" target="*yakyuken" cond="tf.yakyuken_use==1"]
[jump storage="janken.ks" target="*drink"]
[s  ]


;負け
*make

;先に表示を数値に戻しておく
[if exp="tf.make=='0'"]
[eval exp="tf.make=0"]
[else]
[endif]

;変数処理
[eval  exp="tf.make+=1"]
[eval  exp="tf.kaisu+=1"]
[eval  exp="tf.gu_chyoki_use=0"]

;負け文字画像表示
[image layer="3" width="514" x="235" y="179" storage="default/lose01.png" name="janken" time="500"]

;尿意に応じたモーションを呼び出すコール
[call  storage="tachie_nyoui_henka.ks"  target="*tachie_make"]

;Winち文字・自分の手画像消去
[freeimage layer="3" time="300" ]

[jump  storage="janken.ks"  target="*game_over"  cond="tf.kaisu==16"  ]
[jump  storage="janken.ks"  target="*modori"  ]
[s  ]


;引き分け
*hikiwake

;あいこ文字画像表示
[image layer="3" width="514" x="239" y="179" storage="default/aikode.png" name="janken" time="500"]

;尿意に応じたモーションを呼び出すコール
[call  storage="tachie_nyoui_henka.ks"  target="*tachie_hikiwake"]

;自分の手画像消去
[free name="zibun_te" layer="3" time="300" ]

;じゃんけんボタン表示
[button  storage="janken.ks"  target="*zibun_gu"  graphic="gu.png"  width="100"  height="100"  x="630"  y="313"]
[button  storage="janken.ks"  target="*zibun_chyoki"  graphic="cyoki.png"  width="100"  height="100"  x="740"  y="313"]
[button  storage="janken.ks"  target="*zibun_par"  graphic="par.png"  width="100"  height="100"  x="850"  y="313"]
[s  ]


;お茶を飲む
*drink

;飲むモーションをコール
[call  storage="tachie_nyoui_henka.ks"  target="*drinking"]
;ビーカー水位をコール
[call  storage="bi_ka_zikan.ks"  target="*bi_ka_suii"  ]
;注がれる音
[playse  volume="40"  time="1000"  buf="1"  storage="water00k.ogg"  ]
[wse]
;飲み終わった後のモーション
[call  storage="tachie_nyoui_henka.ks"  target="*drink_after"]


[jump  storage="shikkin1.ks"  target="*shikkin_nomal"  cond="tf.nyoui>65"  ]
[jump  storage="janken.ks"  target="*game_over"  cond="tf.kaisu==16"  ]
[jump  storage="janken.ks"  target="*modori"  ]
[s  ]



;野球拳モード
*yakyuken

[jump  storage="janken.ks"  target="*drink"  cond="f.yakyuken_use==0"  ]
[call  storage="tachie_erabi.ks"  target="*tachie_erabi"]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/101.ogg"  ]
#詩織
What ... should I take off ...?

[ptext text="Click the part you want to take off!" x=310 y=13 in_effect="fadeIn" out_effect="fadeOut" layer="3" size=30 time=500 name="nugasetai"]

;上半身脱衣クリッカブル
[if exp="tf.nugi_ue==0"]
[clickable  storage="janken.ks"  x="426"  y="202"  width="100"  height="200"  target="*nugi_zikkou_st"]
[else exp="tf.nugi_ue==1"]
[clickable  storage="janken.ks"  x="426"  y="202"  width="100"  height="200"  target="*nugi_zikkou_uw"]
[endif]
;下半身脱衣クリッカブル
[if exp="tf.nugi_shita==0"]
[clickable  storage="janken.ks"  x="432"  y="436"  width="100"  height="100"  target="*nugi_zikkou_sk"]
[endif]

[s  ]



;セーター脱ぎ
*nugi_zikkou_st
[wait_cancel]


;脱がせたい～の文字消去
[free name="nugasetai" layer=3 time=500]

[cm  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/102.ogg"  ]
#詩織
You should take off your cardigan ...[sek]

#貴
Yes, take the ribbon as well.[p]

[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idoling01_okori.mtn"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/103.ogg"  ]
#詩織
It's not one at all![sek]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/104.ogg"  ]
It can't be helped at all ...[sek]


;暗転
[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
;衣擦れ効果音
[playse  volume="50"  time="1000"  buf="1"  storage="kinuzure.ogg"  ]


;既存のlive2dモデルを消去
[live2d_hide name="&tf.tachie" time=0]
[live2d_delete name="&tf.tachie"]


;live2d用変数の変更
[if exp="tf.tachiver==1"]
[eval exp="tf.tachie='tachie01se_ta_nugi'"]
[eval exp="tf.tachiver=2"]

[elsif exp="tf.tachiver==3"]
[eval exp="tf.tachie='tachie01taitsu_se_ta_nugi'"]
[eval exp="tf.tachiver=4"]

[elsif exp="tf.tachiver==5"]
[eval exp="tf.tachie='tachie01shitagi_uwagi'"]
[eval exp="tf.tachiver=6"]

[else exp="tf.tachiver==7"]
[eval exp="tf.tachie='tachie01shitagi_taitsu_uwagi'"]
[eval exp="tf.tachiver=8"]

[endif]


;新しいモデルの生成
[live2d_new name="&tf.tachie" left=-50 top=-330 width=1080 height=1080 glscale=1.0]
[live2d_show name="&tf.tachie" time=0]
[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idring03_sowasowa.mtn"  ]

[eval  exp="tf.se_ta_nugi=1"]
[eval  exp="tf.nomal=0"]
[eval  exp="tf.nugi_ue=1"]
[wait  time="1800"  ]

;暗転解除
[mask_off  time="500"  effect="fadeOut"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/105.ogg"  ]
#詩織
No, I took it off ...[sek]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/114.ogg"  ]
Suddenly, continue ...[sek]

[eval  exp="tf.yakyuken_use=0"]
[eval  exp="tf.yakyuken_zumi+=1"]
[jump  storage="janken.ks"  target="*game_over"  cond="tf.kaisu==11"  ]
[jump  storage="janken.ks"  target="*modori"  ]



;上着脱ぎ
*nugi_zikkou_uw
[wait_cancel]


;脱がせたい～の文字消去
[free name="nugasetai" layer=3 time=500]

[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idoling01_komari.mtn"  ]
[cm  ]
[playse  volume="90"  time="1000"  buf="2"  storage="voice/175.ogg"  ]
#詩織
You have to take this off ... isn't it ...?[sek]

#貴
Of course! One is one ...[p]

[playse  volume="90"  time="1000"  buf="2"  storage="voice/176.ogg"  ]
#詩織
Uh ... this is pretty embarrassing ...[sek]

;暗転
[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
;衣擦れ効果音
[playse  volume="50"  time="1000"  buf="1"  storage="kinuzure.ogg"  ]


;既存のlive2dモデルを消去
[live2d_hide name="&tf.tachie" time=0]
[live2d_delete name="&tf.tachie"]


;live2d用変数の変更
[if exp="tf.tachiver==2"]
[eval exp="tf.tachie='tachie01shitagi_suka_to'"]
[eval exp="tf.tachiver=9"]

[elsif exp="tf.tachiver==4"]
[eval exp="tf.tachie='tachie01shitagi_taitsu_suka_to'"]
[eval exp="tf.tachiver=10"]

[elsif exp="tf.tachiver==6"]
[eval exp="tf.tachie='tachie01shitagi'"]
[eval exp="tf.tachiver=11"]

[else exp="tf.tachiver==8"]
[eval exp="tf.tachie='tachie01shitagi_taitsu'"]
[eval exp="tf.tachiver=12"]
[endif]


;新しいモデルの生成
[live2d_new name="&tf.tachie" left=-50 top=-330 width=1080 height=1080 glscale=1.0]
[live2d_show name="&tf.tachie" time=0]
[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idring03_sowasowa.mtn"  ]

[eval  exp="tf.se_ta_nugi=1"]
[eval  exp="tf.nomal=0"]
[eval  exp="tf.nugi_ue=2"]
[wait  time="1800"  ]

;暗転解除
[mask_off  time="500"  effect="fadeOut"  ]

;下着が露出した場合のみ
[if exp="tf.tachiver==9 || tf.tachiver==10 ]
[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idoling01_okori.mtn"  ]
[playse  volume="90"  time="1000"  buf="2"  storage="voice/178.ogg"  ]
#詩織
This is something like this ... I wouldn't forgive you if you weren't you! ...[sek]

[else]

[playse  volume="50"  time="1000"  buf="2"  storage="voice/105.ogg"  ]
#詩織
No, I took it off ...[sek]
[endif]

[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idring03_sowasowa.mtn"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/114.ogg"  ]
#詩織
Suddenly, continue ...[sek]

[eval  exp="tf.yakyuken_use=0"]
[eval  exp="tf.yakyuken_zumi+=1"]
[jump  storage="janken.ks"  target="*game_over"  cond="tf.kaisu==11"  ]
[jump  storage="janken.ks"  target="*modori"  ]




;スカート脱ぎ
*nugi_zikkou_sk
[wait_cancel]


;脱がせたい～の文字消去
[free name="nugasetai" layer=3 time=500]

[cm  ]
[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idoling01_zitome.mtn"  ]

[if exp="tf.yakyuken_zumi==0]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/107.ogg"  ]
#詩織
To take off your skirt first ... metamorphosis ...[sek]
[else]
[playse  volume="90"  time="1000"  buf="2"  storage="voice/177.ogg"  ]
#詩織
I can't even take off my skirt ... metamorphosis ...[sek]
[endif]

#貴
Well, one skirt is one.[p]

[playse  volume="50"  time="1000"  buf="2"  storage="voice/108.ogg"  ]
#詩織
It can't be helped at all ...[sek]


;暗転
[mask  time="500"  effect="fadeIn"  color="0x000000"  ]
;衣擦れ効果音
[playse  volume="50"  time="1000"  buf="1"  storage="kinuzure.ogg"  ]


;既存のlive2dモデルを消去
[live2d_hide name="&tf.tachie" time=0]
[live2d_delete name="&tf.tachie"]


;live2d用変数の変更
[if exp="tf.tachiver==1"]
[eval exp="tf.tachie='tachie01nugi'"]
[eval exp="tf.tachiver=5"]

[elsif exp="tf.tachiver==2"]
[eval exp="tf.tachie='tachie01shitagi_uwagi'"]
[eval exp="tf.tachiver=6"]

[elsif exp="tf.tachiver==3"]
[eval exp="tf.tachie='tachie01taitsu_nugi'"]
[eval exp="tf.tachiver=7"]

[elsif exp="tf.tachiver==4"]
[eval exp="tf.tachie='tachie01shitagi_taitsu_uwagi'"]
[eval exp="tf.tachiver=8"]

[elsif exp="tf.tachiver==9"]
[eval exp="tf.tachie='tachie01shitagi'"]
[eval exp="tf.tachiver=11"]

[else exp="tf.tachiver==10"]
[eval exp="tf.tachie='tachie01shitagi_taitsu'"]
[eval exp="tf.tachiver=12"]
[endif]


;新しいモデルの生成
[live2d_new name="&tf.tachie" left=-50 top=-330 width=1080 height=1080 glscale=1.0]
[live2d_show name="&tf.tachie" time=0]
[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idring03_sowasowa.mtn"  ]


[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idring03_sowasowa_osae.mtn"  ]
[eval  exp="tf.suka_to_nugi=1"]
[eval  exp="tf.nomal=0"]
[eval  exp="tf.nugi_shita=1"]
[wait  time="1800"  ]

;暗転解除
[mask_off  time="500"  effect="fadeOut"  ]

;下着が露出した場合のみ
[if exp="tf.tachiver>=5 && tf.tachiver<=8]
[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idoling01_okori.mtn"  ]
[playse  volume="60"  time="1000"  buf="2"  storage="voice/178.ogg"  ]
#詩織
This is something like this ... I wouldn't forgive you if you weren't ...[sek]
[else]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/109.ogg"  ]
#詩織
No, I took it off ...[sek]
#貴
(Although I tried to say it with momentum, I never really took it off ...)[p]
[endif]

[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idring03_sowasowa_osae.mtn"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/110.ogg"  ]
#詩織
Because it's embarrassing, don't look too much ...[sek]

[eval  exp="tf.yakyuken_use=0"]
[eval  exp="f.yakyuken_zumi+=1"]
[jump  storage="janken.ks"  target="*game_over"  cond="f.kaisu==11"  ]
[jump  storage="janken.ks"  target="*modori"  ]

[s]


;ゲームオーバー
*game_over

[jump  storage="janken01.ks"  target="*game_over_cansel"  cond="f.chibiri==2"  ]
[jump  storage="janken01.ks"  target="*game_over_cansel"  cond="f.chibiri==3"  ]
#貴
Hmm ... Did you finish the number of appointments ... I'm sorry ...[p]

[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idoling05_mekuri_idring.mtn"  ]
[playse  volume="90"  time="1000"  buf="2"  storage="voice/179.ogg"  ]
#詩織
It's not so easy to do what you want![sek]

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

;メッセージウインドウの消去
@layopt layer=message0 visible=false

;背景画像の変更
[bg  time="0"  method="crossfade"  storage="stuff.png"  ]

;暗転解除
[mask_off  time="100"  effect="fadeOut"  ]
[wait  time="1000"  ]

[jump  storage="title.ks"]
[s  ]


;ゲームオーバーキャンセル
*game_over_cansel

#貴
(Somehow, Shiori is desperate to put up with it and doesn't seem to know how many times, so let's keep going ...)[p]

[jump  storage="janken.ks"  target="*modori"  ]
[s  ]













