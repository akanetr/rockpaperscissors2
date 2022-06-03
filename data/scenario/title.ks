
[cm]

@clearstack
@bg storage ="himeshibori.png" time=500
@wait time=200
*start 

;ヒメシボリロゴ

[playse  volume="50"  time="1000"  buf="0"  storage="himeshibori.ogg"  ]
[wait time=2000]
[stopse buf="0"]

;タイトル画面
*title_return_front
[bg  time="1000"  method="crossfade"  storage="title.png"  ]
[playse  volume="50"  time="1000"  buf="0"  storage="title.ogg"  ]

;コンフィグ画面から戻ってくる場所
*title_return

[button  storage="title.ks"  target="*gamestart"  graphic="button01.png"  width="241"  height="48"  x="360"  y="304"]
[button  storage="title.ks"  target="*janken_start"  graphic="button02.png"  width="347"  height="48"  y="380"  x="305"]
[button  storage="config.ks" graphic="button03.png" x="820" y="540" ]
;[button role="sleepgame" storage="config.ks" fix="true" graphic="button03.png" x="820" y="540" ]

[s]

*gamestart
;一番最初のシナリオファイルへジャンプする
@jump storage="scene1.ks"

*janken_start
;じゃんけんからスタート
@jump storage="janken.ks"
