;ティラノスクリプトサンプLeゲーム

*start

[cm  ]
[clearfix]
[start_keyconfig]


[bg storage="room.jpg" time="100"]

;メニューボタンの表示
@showmenubutton

;メッセージウィンドウの設定
[position layer="message0" left=160 top=500 width=1000 height=200 page=fore visible=true]

;文字が表示される領域を調整
[position layer=message0 page=fore margint="45" marginl="50" marginr="70" marginb="60"]


;メッセージウィンドウの表示
@layopt layer=message0 visible=true

;キャラクターの名前が表示される文字領域
[ptext name="chara_name_area" layer="message0" color="white" size=28 bold=true x=180 y=510]

;上記で定義した領域がキャラクターの名前表示であることを宣言（これがないと#の部分でエラーになります）
[chara_config ptext="chara_name_area"]

;このゲームで登場するキャラクターを宣言
;akane
[chara_new  name="akane" storage="chara/akane/normal.png" jname="あかね"  ]
;キャラクターの表情登録
[chara_face name="akane" face="angry" storage="chara/akane/angry.png"]
[chara_face name="akane" face="doki" storage="chara/akane/doki.png"]
[chara_face name="akane" face="happy" storage="chara/akane/happy.png"]
[chara_face name="akane" face="sad" storage="chara/akane/sad.png"]


;yamato
[chara_new  name="yamato"  storage="chara/yamato/normal.png" jname="やまと" ]

#
Well, it's easy to make a game, so I came here[p]

Isn't there anyone?[p]
......[p]
Are you going home? .. ..[p]

[font  size="30"   ]
#?
It's a little messed up[p]
[resetfont  ]

#
Who! ??[p]

;キャラクター登場
[chara_show  name="akane"  ]
#?
hello.[p]
My name is Akane.[p]
#あかね
Maybe you're interested in developing a novel game?[p]

[glink  color="blue"  storage="scene1.ks"  size="28"  x="360"  width="500"  y="150"  text="yes. I'm interested"  target="*selectinterest"  ]
[glink  color="blue"  storage="scene1.ks"  size="28"  x="360"  width="500"  y="250"  text="I'm interested!"  target="*selectinterest"  ]
[glink  color="blue"  storage="scene1.ks"  size="28"  x="360"  width="500"  y="350"  text="If anything, I'm interested"  target="*selectinterest"  ]
[s  ]
*selectinterest

[chara_mod  name="akane" face="happy"  ]
#あかね
Oh. I'm glad I'm interested.[p]
#
・ ・ ・ ・ ・ ・ ・[p]
Well, I have a desire to make it, but it's difficult, right?[p]
I've never done programming ...[p]

[chara_mod name="akane" face="default"]

#あかね
I have some information that you can listen to.[p]
want to ask? You want to hear it, right?[p]
#
No, not really
#あかね
[cm]
[font size=40]
[delay speed=160]
Tyrannosaurus[p]
[delay speed=30]
[resetfont]

#
・ ・ ・ ・[p]
#あかね
With Tyrannoscript, it's easy to create a full-fledged novel game.[p]
#
really. That's a little interesting.[p]

[chara_mod  name="akane" face="happy"  ]
#あかね
Really! ??[p]
You can check the function of Tyrannoscript just by playing this game.[p]
By all means, stay with me until the end[p]

First, as a feature of Tyrannoscript[font color="red"]HTML5[resetfont]Works with[p]


#
One, that is?[p]
#あかね
A game once made with Tyrannoscript can be run in many environments![p]
#
really. That's nice.[p]
I want a lot of people to play if I make it.[p]

#あかね
Not to mention PC applications for Windows.[p]
It even supports Mac applications.[p]
Also, since it's HTML5, it can be announced as a browser game.[p]
You can paste it on the website and have it played, so you can feel free to play the game.[p]
Rest assured that all major browsers are supported.[p]
#
I'll do it. ..[p]

However, the smartphone has been restored recently, and the number of people visiting my site with smartphones has increased.[p]
Can't you play from your smartphone?[p]

#あかね
You can also play games made with Tyrannoscript from your smartphone![p]
Not to mention iPhone and Android. There is no problem with tablets such as iPads.[p]
#
Oh.[p]

#あかね
It can also be made into an app and sold to the App Store and Google Play.[p]
#
Oh, maybe I can finally escape from poverty[p]
#あかね
Well, if you don't make an interesting game, it won't sell![p]
#
Kuu. ..[p]

#あかね
Then, let's move the scene next.[p]
I'll move to the corridor[p]
[bg  time="3000"  method="crossfade" storage="rouka.jpg"  ]

#
Oh, you moved to the corridor.[p]

#あかね
It's cold ~. Let's get back to the classroom soon.[p]

[bg  time="1000" method="slide"  storage="room.jpg" ]
#
Well, the movement of the scene is a little different now.[p]
#あかね
yes. I was in a hurry.[p]
With Tyrannoscript, you can add various effects.[p]
You can use more than 10 types of effects just by switching screens.[p]
#
HM. It's convenient[p]

#あかね
Next, let's change the way the message is displayed.[p]
In Tyrannoscript, in addition to adventure games like now[r]
It also makes a full-screen game like a visual novel.[p]

#

;キャラクター非表示
[chara_hide name="akane"]


;メッセージを全画面に切り替え
[position layer="message0" left=20 top=40 width=1200 height=660 page=fore visible=true ]

How about? This method is convenient if you want to read the story carefully.[l][r]
Tyrannoscripts are extremely powerful and can be expressed flexibly.[l][cm]

[font size=40]Change the font size
[l][r]
[resetfont]
[font color="pink"]Change the color
[resetfont][l][r]

[ruby text=る]Le[ruby text=び]Bi[ruby text=ふ]To shake[ruby text=かん]Simple[ruby text=たん]You can simply[l]
[cm]

;たて書きにする
[position vertical=true layer=message0 page=fore margint="45" marginl="0" marginr="70" marginb="60"]

It can also be written vertically like this.[r][l]
You can use the same functions for vertical writing as for horizontal writing.[r][l]

;横書きに戻す
[position vertical=false]

You can also use horizontal writing and vertical writing properly depending on the scene.[r][l]
Then, let's go back to the adventure format.[p]

;メッセージボックスを元に戻す
[position layer="message0" left=20 top=400 width=920 height=200 page=fore visible=true]

@chara_show name="akane"

#akane
You can also use your favorite image in the message box.[p]



[font color="0x454D51"]
[deffont color="0x454D51"]


;名前部分のメッセージレイヤ削除
[free name="chara_name_area" layer="message0"]

;メッセージウィンドウの設定
[position layer="message0" width="1280" height="210" top="510" left="0"]
[position layer="message0" frame="frame.png" margint="50" marginl="100" marginr="100" opacity="230" page="fore"]

;名前枠の設定
[ptext name="chara_name_area" layer="message0" color="0xFAFAFA" size="28" bold="true" x="100" y="514"]
[chara_config ptext="chara_name_area"]



How about?[p]
Please make your own design according to the game.[p]

Also, by default, you can save and load from the button at the bottom right of the screen.[p]
If you customize the window, ...[p]

;メニューボタン非表示
@hidemenubutton

;ローLeボタン追加;;;;;;;;;;;;;;


; ローLeボタン配置

;クイックセーブボタン
[button name="role_button" role="quicksave" graphic="button/qsave.png" enterimg="button/qsave2.png" x="40" y="690"]

;クイックロードボタン
[button name="role_button" role="quickload" graphic="button/qload.png" enterimg="button/qload2.png" x="140" y="690"]

;セーブボタン
[button name="role_button" role="save" graphic="button/save.png" enterimg="button/save2.png" x="240" y="690"]

;ロードボタン
[button name="role_button" role="load" graphic="button/load.png" enterimg="button/load2.png" x="340" y="690"]

;オートボタン
[button name="role_button" role="auto" graphic="button/auto.png" enterimg="button/auto2.png" x="440" y="690"]

;スキップボタン
[button name="role_button" role="skip" graphic="button/skip.png" enterimg="button/skip2.png" x="540" y="690"]

;バックログボタン
[button name="role_button" role="backlog" graphic="button/log.png" enterimg="button/log2.png" x="640" y="690"]

;フLeスクリーン切替ボタン
[button name="role_button" role="fullscreen" graphic="button/screen.png" enterimg="button/screen2.png" x="740" y="690"]

;コンフィグボタン（※sleepgame を使用して config.ks を呼び出しています）
[button name="role_button" role="sleepgame" graphic="button/sleep.png" enterimg="button/sleep2.png" storage="config.ks" x="840" y="690"]

;メニュー呼び出しボタン（※ローLeボタンを使うなら不要）
[button name="role_button" role="menu" graphic="button/menu.png" enterimg="button/menu2.png" x="940" y="690"]

;メッセージウィンドウ非表示ボタン
[button name="role_button" role="window" graphic="button/close.png" enterimg="button/close2.png" x="1040" y="690"]

;タイトLeに戻るボタン
[button name="role_button" role="title" graphic="button/title.png" enterimg="button/title2.png" x="1140" y="690"]

;;ローLeボタン追加終わり


You can easily have the functions required for the game on the screen like this.[p]
This is called a roll button, and you can give the button a special function.[p]
What is prepared as standard is[l]
save,[l]
Load,[l][cm]
Return to title,
Menu display,
Hide message,
skip,
Back log,
Full screen switching,
Quick save,
Quick load,
auto mode!
[p]

Hah, huh[p]

#
All right?[p]
With all this, it seems that it will be difficult to make a game[p]

#あかね
Well, of course you can also play music[l][cm]
Then I'll play it?[l][cm]

[link target=*playmusic][1] Yeah. Please play[endlink][r]
[link target=*noplay][2] No. Don't play now![endlink]
[s]

*playmusic

[cm]
Alright, I'll play it.[l]
@playbgm time="3000" storage=music.ogg loop=true
You can also play while gradually fading in[l][cm]

@jump target="*common_bgm"

*noplay
[cm]
yes. all right. I don't play it.[l][cm]
Also give it a try[l][cm]

*common_bgm

Oh yeah[l][cm]
It's easy to branch the story with the options you have now.[l][cm]

#あかね
Shall we have another character appear here?[l][cm]
Yamato[p]
[chara_show name="yamato"]

just like this. it's simple.[l][r]
Any number of characters can appear, so give it a try.[p]

#yamato
Hey, can I go home now?[l][cm]

#akane
Oh, I'm sorry. Thank you[l][cm]

[chara_hide name="yamato"]

#akane
This is the end of the explanation of the basic functions of Tyrannoscript.[p]
How was it?[p]

#
Yeah, I feel like I can make it myself[p]

#あかね
Was good![p]
At first, I think you should try the tutorial on the official Tyrannoscript page![p]
Of course, this game also runs on Tyrannoscript, so I think it will be helpful.[p]
Please try to make a game.[p]
Thank you for playing.[p]

Finally, I'll show you a link to useful information in the Tyrannoscript.
Please check it.[p]

[cm]

*button_link

@layopt layer=message0 visible=false
@layopt layer=fix visible=false
[anim name="akane" left=600 time=1000]

;リンクボタンを表示
[glink text="Introducing Tyrannosaurus" size=20 width=500 x=30 y=100 color=blue target=tyranobuilder ]
[glink text="Production example" size=20 width=500 x=30 y=160 color=blue target=example ]
[glink text="Applied technique" size=20 width=500 x=30 y=220 color=blue target=tech ]
[glink text="Useful sources of information" size=20 width=500 x=30 y=280 color=blue target=info ]
[glink text="Tag reference" size=20 width=500 x=30 y=340 color=blue target=tagref ]

[s]

*tyranobuilder

[cm]
@layopt layer=message0 visible=true
@layopt layer=fix visible=true;
[font color-"red"]
Tyrannosaurus
[resetfont]
There is also a free development tool called.[p]

[image layer=1 page=fore visible=true top=10 left=50 width=560 height=400  storage = builder.png]

This is a tool that allows you to create novel games on a graphical screen[p]
Even people who are not good at scripting can make games, so please give it a try.[p]
[freeimage layer=1]

@jump target=button_link

[s]
*example
@layopt layer=message0 visible=true
@layopt layer=fix visible=true
So far, many games have been created using Tyrannoscript.[p]
Some production examples are posted on the official website, so please check if you like.[p]

[iscript]
window.open("http://tyrano.jp/home/example");
[endscript]

@jump target=button_link

[cm]
[s]

*tech
@layopt layer=message0 visible=true
@layopt layer=fix visible=true
This sample only shows a small part of the features of Tyrannosaurus.[p]
If you want to know more, you can download the whole script.[p]
I recommend you to touch the sample![p]

[iscript]
window.open("http://tyrano.jp/home/demo");
[endscript]

@jump target=button_link


*info
@layopt layer=message0 visible=true
@layopt layer=fix visible=true
If you have any questions about Tyrannoscript[p]
You can ask questions on the official bulletin board, and there are also Wikis, so please refer to them.[p]
@jump target=button_link

*tagref
@layopt layer=message0 visible=true
@layopt layer=fix visible=true
The tag has a detailed reference page.[p]
Learn more about how to use this page[p]

[iscript]
window.open("http://tyrano.jp/home/tag");
[endscript]

@jump target="*button_link"

[s]