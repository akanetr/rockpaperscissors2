;アイテムボタン関係コール

;アイテムアイコン表示関係
*item

;タイツアイコン
[if exp="tf.taitsu==1"]
[button  storage="item_button.ks"  target="*taitsu_use"  graphic="taitsu_s.png"  width="80"  height="80"  x="9"  y="107" name="taitsu_but"]
[endif]

;野球拳アイコン
[if exp="tf.yakyuken==1"]
[button  storage="item_button.ks"  target="*yakyuken_use"  graphic="tiketto_s.png"  width="80"  height="80"  x="9"  y="17"  name="yakyuken_but"]
[elsif exp="tf.yakyuken==2"]
[button  storage="item_button.ks"  target="*yakyuken_use"  graphic="tiketto_s2.png"  width="80"  height="80"  x="9"  y="17"  name="yakyuken_but"]
[elsif exp="tf.yakyuken==3"]
[button  storage="item_button.ks"  target="*yakyuken_use"  graphic="tiketto_s3.png"  width="80"  height="80"  x="9"  y="17"  name="yakyuken_but"]
[endif]

;グーチョキアイコン
[if exp="tf.gu_chyoki_c01==1"]
[button  storage="item_button.ks"  target="*gu_chyoki_use"  graphic="tiketto2_s.png"  width="80"  height="80"  y="107"  x="99" name="gu_chyoki_but"]
[elsif exp="tf.gu_chyoki_c01==2"]
[button  storage="item_button.ks"  target="*gu_chyoki_use"  graphic="tiketto3_s.png"  width="80"  height="80"  y="107"  x="99" name="gu_chyoki_but"]
[endif]

;超お茶アイコン
[if exp="tf.ochya==1"]
[button  storage="item_button.ks"  target="*tyo_ochya_use"  graphic="petto02_s.png"  width="80"  height="80"  y="17"  x="99"  name="ochya_but"]
[endif]

[return]
[s]



;アイテム入手イベント

;タイツ発見
*taitsu_hakken
[wait_cancel]
[cm]
[jump  storage="item_button.ks"  target="*hakken_zumi"  cond="tf.taitsu==1"  ]

[free name="janken" layer="3" time="300" ]

#貴
Hmm, something is in it ...[p]

;タイツ画像表示
[image layer="3" width="150" height="150" x="410" y="241" storage="default/taitsu.png" name="taitsu01" time="500"]
[eval exp="tf.taitsu=1"]
Why are women's tights in such a place ...?[p]
Well, let's get it.[p]

;タイツ画像消去
[free name="taitsu01" layer="3" time="500" ]

;じゃんけんに戻り
[cm]
[jump  storage="janken.ks"  target="*modori"  ]
[s  ]



;野球拳チケット発見
*yakyuken_hakken
[wait_cancel]
[cm]
[jump  storage="item_button.ks"  target="*hakken_zumi"  cond="tf.yakyuken_c01==1"]

[free name="janken" layer="3" time="300" ]

#貴
Hmm, something is in it ...[p]

;野球拳チケット画像表示
[image layer="3" width="150" height="150" x="410" y="241" storage="default/tiketto.png" name="yakyuken01" time="500"]
[eval exp="tf.yakyuken_c01=1"]

[if exp="tf.yakyuken==0"]
... One-time baseball fist ticket ... What is this?[p]
Well, it might be useful for something ...[p]
Maybe ... no, maybe ...[p]
[else exp="tf.yakyuken>=1"]
... One-time baseball fist ticket ... Is this again ...[p]
Well, it might be useful for something ...[p]
Maybe ... no, maybe ...[p]
[endif]

;野球拳チケット画像消去
[free name="yakyuken01" layer="3" time="500" ]
[eval exp="tf.yakyuken+=1"]

;じゃんけんに戻り
[cm]
[jump  storage="janken.ks"  target="*modori"  ]
[s  ]



;野球拳チケット発見2
*yakyuken_hakken2
[wait_cancel]
[cm]
[jump  storage="item_button.ks"  target="*hakken_zumi"  cond="tf.yakyuken_c02==1"]

[free name="janken" layer="3" time="300" ]

#貴
Hmm, there's something in the gap between the binders ...[p]

;野球拳チケット画像表示
[image layer="3" width="150" height="150" x="410" y="241" storage="default/tiketto.png" name="yakyuken01" time="500"]
[eval exp="tf.yakyuken_c02=1"]

[if exp="tf.yakyuken==0"]
... One-time baseball fist ticket ... What is this?[p]
Well, it might be useful for something ...[p]
Maybe ... no, maybe ...[p]
[else exp="tf.yakyuken>=1"]
... One-time baseball fist ticket ... Is this again ...[p]
Well, it might be useful for something ...[p]
Maybe ... no, maybe ...[p]
[endif]

;野球拳チケット画像消去
[free name="yakyuken01" layer="3" time="500" ]
[eval exp="tf.yakyuken+=1"]

;じゃんけんに戻り
[cm]
[jump  storage="janken.ks"  target="*modori"  ]
[s  ]



;野球拳チケット発見3
*yakyuken_hakken3
[wait_cancel]
[cm]
[jump  storage="item_button.ks"  target="*hakken_zumi"  cond="tf.yakyuken_c03==1"]

[free name="janken" layer="3" time="300" ]

#貴
Hmm, what's this paper ...[p]

;野球拳チケット画像表示
[image layer="3" width="150" height="150" x="410" y="241" storage="default/tiketto.png" name="yakyuken01" time="500"]
[eval exp="tf.yakyuken_c03=1"]

[if exp="tf.yakyuken==0"]
... One-time baseball fist ticket ... What is this?[p]
Well, it might be useful for something ...[p]
Maybe ... no, maybe ...[p]
[else exp="tf.yakyuken>=1"]
... One-time baseball fist ticket ... Is this again ...[p]
Well, it might be useful for something ...[p]
Maybe ... no, maybe ...[p]
[endif]

;背景紙なしに変更
[if exp="tf.ochya==1"]
[bg  time="500"  method="crossfade"  storage="seitokai_yu960_2.png"]
[else exp="tf.ochya==0"]
[bg  time="500"  method="crossfade"  storage="seitokai_yu960_2b.png"]
[endif]

;野球拳チケット画像消去
[free name="yakyuken01" layer="3" time="500" ]
[eval exp="tf.yakyuken+=1"]

;じゃんけんに戻り
[cm]
[jump  storage="janken.ks"  target="*modori"  ]
[s  ]





;ぐーちょきチケット発見
*gu_chyoki_hakken
[wait_cancel]
[cm]
[jump  storage="item_button.ks"  target="*hakken_zumi"  cond="tf.gu_chyoki_c01==2"  ]

[free name="janken" layer="3" time="300" ]

[if exp="tf.gu_chyoki_c01==0"]
#貴
Hmm, something is in it ...[p]

[else exp="tf.gu_chyoki_c01==1"]
#貴
Hmm, there's still something in the back ...[p]
[endif]

;ぐーちょきケット画像表示
[image layer="3" width="150" height="150" x="410" y="241" storage="default/tiketto2.png" name="gu_chyoki01" time="500"]
[eval exp="tf.gu_chyoki_c01+=1"]

[if exp="tf.gu_chyoki_c01==1"]
... One-time goo-net ticket ... What is this?[p]
[else exp="tf.gu_chyoki_c01==2"]
... Is this ticket again ...[p]
[endif]

Well, it might be useful for something ...[p]
Maybe ... no, maybe ...[p]

;ぐーちょきチケット画像消去
[free name="gu_chyoki01" layer="3" time="500" ]

;じゃんけんに戻り
[cm]
[jump  storage="janken.ks"  target="*modori"  ]
[s  ]



:Super tea discovery
*tyo_ochya_hakken
[wait_cancel]
[cm]
[jump  storage="item_button.ks"  target="*hakken_zumi"  cond="tf.ochya==1"  ]

[free name="janken" layer="3" time="300" ]

#貴
Hmm, a bottle of tea is hidden in a place like this ...[p]

;超お茶画像表示
[image layer="3" width="150" x="410" y="210" storage="default/petto02.png" name="ochya01" time="500"]
[eval exp="tf.ochya=1"]

;背景お茶無しに変更
[if exp="tf.yakyuken_c03==1"]
[bg  time="500"  method="crossfade"  storage="seitokai_yu960_2.png"]
[else exp="tf.yakyuken_c03==0"]
[bg  time="500"  method="crossfade"  storage="seitokai_yu960_2c.png"]
[endif]

What ... tea with a super diuretic effect ...[p]
Because of its strong diuretic effect, you will be irritated even when you are not drinking ... Please be careful when using it ...?[p]
What the hell is that ...?[p]

;超お茶画像消去
[free name="ochya01" layer="3" time="500" ]

[cm  ]
[jump  storage="janken.ks"  target="*modori"  ]
[s  ]


;アイテム発見済み
*hakken_zumi

[wait_cancel]
[cm]

#貴
There is nothing anymore ...[p]

[jump  storage="janken.ks"  target="*modori"  ]
[s  ]




;アイテム使用

;超お茶使用
*tyo_ochya_use

[wait_cancel]
[cm  ]

[free name="janken" layer="3" time="300" ]

;超お茶画像表示
[image layer="3" width="150" x="410" y="210" storage="default/petto02.png" name="ochya01" time="500"]

#貴
Okay, let's use this tea.[p]

[eval exp="tf.ochya_use=1"]
[eval exp="tf.ochya=0"]

;超お茶画像消去
[free name="ochya01" layer="3" time="500" ]

[jump  storage="janken.ks"  target="*modori"  ]





;野球拳チケット使用
*yakyuken_use

[wait_cancel]
[cm  ]

[free name="janken" layer="3" time="300" ]

[jump  storage="item_button.ks"  target="*siyoutyu"  cond="tf.yakyuken_use==1"  ]

;野球拳チケット画像表示
[image layer="3" width="150" height="150" x="410" y="241" storage="default/tiketto.png" name="yakyuken01" time="500"]

[if exp="tf.yakyuken_use_kai==0"]
#貴
Well, I can't believe it's really usable, but let's use this baseball fist ticket.[p]
[else]
#貴
Okay, let's use this baseball fist ticket[p]
[endif]


[eval exp="tf.yakyuken-=1"]
[eval exp="tf.yakyuken_use=1"]

;野球拳チケット画像消去
[free name="yakyuken01" layer="3" time="500" ]

;live2dモデルモーション変更
[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idring03_sowasowa.mtn"  ]

[if exp="tf.yakyuken_use_kai==0"]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/099.ogg"  ]
#詩織
Hey, if you win next time, don't drink tea ... baseball fist ... no?[sek]
#貴
(Seriously !? Asked by Shiori, what is that ticket ...)[p]
I don't care ... is it really good?[p]
[else]
[playse  volume="90"  time="1000"  buf="2"  storage="voice/174.ogg"  ]
#詩織
Hey, if you win next time ... Baseball fist ... No?[sek]
#貴
I don't care ... is it really good?[p]
[endif]

[playse  volume="50"  time="1000"  buf="2"  storage="voice/100.ogg"  ]
#詩織
Uh ... it's embarrassing, but ... rather than drinking tea ...[sek]

[eval exp="tf.yakyuken_use_kai=1"]
[jump  storage="janken.ks"  target="*modori"  ]
[s  ]



;チケット使用中
*siyoutyu
#貴
Hmm, that ticket is in use ...[p]

[jump  storage="janken.ks"  target="*modori"  ]
[s  ]



;ぐーちょきチケット使用
*gu_chyoki_use

[wait_cancel]
[cm  ]

[free name="janken" layer="3" time="300" ]

[jump  storage="item_button.ks"  target="*siyoutyu"  cond="tf.gu_chyoki_use==1"  ]

;ぐーちょき画像表示
[image layer="3" width="150" height="150" x="410" y="241" storage="default/tiketto2.png" name="gu_chyoki01" time="500"]

#貴
Well, I can't believe it's really usable, but let's use this goo-net ticket.[p]

[eval exp="tf.gu_chyoki_c01-=1"]
[eval exp="tf.gu_chyoki_use=1"]

;ぐーちょきチケット画像消去
[free name="gu_chyoki01" layer="3" time="500" ]

[jump  storage="janken.ks"  target="*modori"  ]
[s  ]




;タイツ使用
*taitsu_use

[wait_cancel]
[cm]

[free name="janken" layer="3" time="300" ]

;タイツ画像表示
[image layer="3" width="150" height="150" x="410" y="241" storage="default/taitsu.png" name="taitsu01" time="500"]

#貴
Hmm, would you like to ask Shiori to wear these tights?[p]

[eval  exp="tf.taitsu=0"]

;タイツ画像消去
[free name="taitsu01" layer="3" time="500" ]

#貴
Hey Shiori ... Can you wear these tights?[p]

;live2dモーション変更
[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idoling01_komari.mtn"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/115.ogg"  ]
#詩織
Yes !? Even if you suddenly say that ...[sek]

#貴
Please, ask[p]

[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idoling01_zitome.mtn"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/116.ogg"  ]
#詩織
Next to the perverted rock-paper-scissors, tights fetish ...[sek]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/117.ogg"  ]
Today, I'm just drawn to your propensity ...[sek]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/118.ogg"  ]
It can't be helped at all ...[sek]

#貴
(Do you really wear it !?)[p]
(Is that tights magical tights or something ...?)[p]

;暗転
[mask  time="500"  effect="fadeIn"  color="0x000000"  ]

[eval  exp="tf.taitsu_use=1"]

;衣擦れ音
[playse  volume="50"  time="1000"  buf="1"  storage="kinuzure.ogg"  ]

;live2dモデルの消去と生成
[live2d_hide name="&tf.tachie" time=0]
[live2d_delete name="&tf.tachie"]

;live2dモデルの変数をタイツに切り替える
[if exp="tf.tachiver==1"]
[eval exp="tf.tachie='tachie01taitsu'"]
[eval exp="tf.tachiver=3"]

;セーター脱ぎ・スカート脱いでない・上着脱いでない場合
[elsif exp="tf.tachiver==2]
[eval exp="tf.tachie='tachie01taitsu_se_ta_nugi'"]
[eval exp="tf.tachiver=4"]

;セーター脱いでない・スカート脱いでる・上着脱いでない場合
[elsif exp="tf.tachiver==5]
[eval exp="tf.tachie='tachie01taitsu_nugi'"]
[eval exp="tf.tachiver=7"]

;セーター脱いでいる・スカート脱いでる・上着脱いでない場合
[elsif exp="tf.tachiver==6"]
[eval exp="tf.tachie='tachie01shitagi_taitsu_uwagi'"]
[eval exp="tf.tachiver=8"]

;セーター脱いでいる・スカート脱いでる・上着脱いでいる場合
[else exp="tf.tachiver==11"]
[eval exp="tf.tachie='tachie01shitagi_taitsu'"]
[eval exp="tf.tachiver=12"]
[endif]

;live2dモデルを再び生成
[live2d_new name="&tf.tachie" left=-50 top=-330 width=1080 height=1080 glscale=1.0]
[live2d_show name="&tf.tachie" time=0]

;尿意に応じた立ち絵をロード
[call  storage="tachie_erabi.ks"  target="*tachie_erabi"  ]
[wait  time="1800"  ]

;暗転解除
[mask_off  time="1000"  effect="fadeOut"  ]

[playse  volume="50"  time="1000"  buf="2"  storage="voice/119.ogg"  ]
#詩織
I wore it ...[sek]
#貴
Hmm, tights are good to be erotic![p]

[live2d_motion  name="&tf.tachie"  idle="true"  filenm="idoling01_okori.mtn"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/120.ogg"  ]
#詩織
Stupid! Don't look too crazy with those lascivious eyes ...[sek]

[jump  storage="janken.ks"  target="*modori"  ]
[s  ]



;スカートめくり時の反応
*mekuri
[wait_cancel]

;スカートをはいていない時は直帰
[if exp="tf.tachiver==11 || tf.tachiver==12 || tf.tachiver>=5 && tf.tachiver<=8]
[jump  storage="janken.ks"  target="*modori"]

[else]
[endif]

[free name="janken" layer="3" time="300" ]

[jump  storage="item_button.ks"  target="*chibiri00"  cond="tf.chibiri==0"  ]
[jump  storage="item_button.ks"  target="*chibiri02"  cond="tf.chibiri==2"  ]
[jump  storage="item_button.ks"  target="*chibiri03"  cond="tf.chibiri==3"  ]
[s  ]


*chibiri00

[cm  ]
#貴
(Let's turn over ...)[p]

[live2d_motion  name="&tf.tachie"  filenm="idoling01_mekuri.mtn"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/121.ogg"  ]
#詩織
Cha! What are you doing!

[wait  time="3000"  ]
[cm  ]
[live2d_motion  name="&tf.tachie"  filenm="idoling01_mekuri_idring.mtn"  idle="true"  ]
[playse  volume="90"  time="1000"  buf="2"  storage="voice/173.ogg"  ]
#詩織
Already ... I'm angry![sek]

[jump  storage="janken.ks"  target="*modori"  ]
[s  ]


*chibiri02
[wait_cancel]
[cm  ]
#貴
(Let's turn over ...)[p]

[live2d_motion  name="tachie01"  filenm="idoling07_mekuri_chibiri02.mtn"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/121.ogg"  ]
#詩織
Cha! What are you doing!

[wait  time="3000"  ]
[live2d_motion  name="&tf.tachie"  filenm="idoling07_mekuri_idring_chibiri02.mtn"  idle="true"  ]
[cm  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/123.ogg"  ]
#詩織
Already ... stop now![sek]

[jump  storage="janken.ks"  target="*modori"  ]
[s  ]


*chibiri03
[wait_cancel]
[cm  ]
#貴
(Let's turn over ...)[p]

[live2d_motion  name="tachie01"  filenm="idoling07_mekuri_chibiri03.mtn"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/121.ogg"  ]
#詩織
Cha! What are you doing!

[wait  time="3000"  ]
[live2d_motion  name="tachie01"  filenm="idoling07_mekuri_idring_chibiri03.mtn"  idle="true"  ]
[cm  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/124.ogg"  ]
#詩織
... You saw ... Forget the sight you just saw![sek]

[jump  storage="janken.ks"  target="*modori"  ]
[s  ]



;パイタッチ時の反応
*pai
[wait_cancel]

[free name="janken" layer="3" time="300" ]

[jump  storage="item_button.ks"  target="*pai_chibiri00"  cond="tf.chibiri==0"  ]
[jump  storage="item_button.ks"  target="*pai_chibiri02"  cond="tf.chibiri==2"  ]
[jump  storage="item_button.ks"  target="*pai_chibiri03"  cond="tf.chibiri==3"  ]
[s  ]


*pai_chibiri00

[if exp="tf.nyoui<=35"]
[live2d_motion  name="&tf.tachie"  filenm="idoling01_zitome.mtn"  idle="true"]
[else]
[live2d_motion  name="&tf.tachie"  filenm="idoling01_mekuri_idring.mtn"  idle="true"  ]
[endif]

[playse  volume="90"  time="1000"  buf="2"  storage="voice/183.ogg"  ]
#詩織
Where are you trying to touch ...[sek]
#貴
Is it barre ...[p]

[playse  volume="50"  time="1000"  buf="2"  storage="voice/127.ogg"  ]
#詩織
You'll know what you're thinking right away.[sek]

[jump  storage="janken.ks"  target="*modori"  ]
[s  ]



*pai_chibiri02

[live2d_motion  name="&tf.tachie"  filenm="idoling01_himei_chibiri02.mtn"  idle="true"]
[playse  volume="90"  time="1000"  buf="2"  storage="voice/184.ogg"  ]
#詩織
Cha! Where are you touching![sek]
[live2d_motion  name="&tf.tachie"  filenm="idoling07_mekuri_idring_chibiri02.mtn"  idle="true"  ]
[playse  volume="90"  time="1000"  buf="2"  storage="voice/173.ogg"  ]
#詩織
Already ... I'm angry![sek]

[jump  storage="janken.ks"  target="*modori"  ]
[s  ]


*pai_chibiri03

[live2d_motion  name="&tf.tachie"  filenm="idoling01_himei_chibiri03.mtn"  idle="true"]
[playse  volume="90"  time="1000"  buf="2"  storage="voice/184.ogg"  ]
#詩織
Cha! Where are you touching![sek]
[live2d_motion  name="&tf.tachie"  filenm="idoling07_mekuri_idring_chibiri03.mtn"  idle="true"  ]
[playse  volume="50"  time="1000"  buf="2"  storage="voice/123.ogg"  ]
#詩織
Already ... stop now![sek]


[jump  storage="janken.ks"  target="*modori"  ]
[s  ]






