;一番最初に呼び出されるファイル

[title name="じゃんけんで負けたらヒロインがお茶を飲むだけのゲーム2有料版"]

;[stop_keyconfig]

[call  storage="first.ks"  target="*start_macro"  ]

;ティラノスクリプトが標準で用意している便利なライブラリ群
;コンフィグ、CG、回想モードを使う場合は必須
@call storage="tyrano.ks"

;live2dプラグインを読込
@call storage="live2d/live2d.ks"

;ゲームで必ず必要な初期化処理はこのファイルに記述するのがオススメ

;メッセージボックスは非表示
@layopt layer="message" visible=false

;最初は右下のメニューボタンを非表示にする
[hidemenubutton]


;タイトル画面へ移動
@jump storage="title.ks"

[s]




;スタート時に読み込むマクロ
*start_macro
[iscript]
/*
//[wse]時にクリックで強制終了buf0
var _wse = tyrano.plugin.kag.tag.wse
var _kag = tyrano.plugin.kag.ftag.master_tag.wse.kag
tyrano.plugin.kag.tag.wse = $.extend(true, {}, _wse, {
    pm: {
        click: "true"
    },
    start: function (pm) {
        var that = this
        //スキップ中
        if (tyrano.plugin.kag.stat.is_skip === true) {
            this.kag.ftag.startTag("stopbgm")
        }
        if (pm.click === "true") {
            $("#tyrano_base").on("click._wse", function () {
                var _pm = {
                    storage: "",
                    target: "se",
                    loop: "false",
                    buf: "0",
                    fadeout: "false",
                    time: 0
                }
                that.kag.ftag.startTag("stopbgm", _pm)
                $("#tyrano_base").off("click._wse")
            })
        }
        if (this.kag.tmp.is_se_play == true) {
            this.kag.tmp.is_se_play_wait = true;
        } else {
            $("#tyrano_base").off("click._wse")
            this.kag.ftag.nextOrder()
        }
    }.bind(TYRANO)
})
tyrano.plugin.kag.ftag.master_tag.wse = tyrano.plugin.kag.tag.wse
tyrano.plugin.kag.ftag.master_tag.wse.kag = _kag
*/

 //[wait]タグをクリックでウェイトキャンセル有効に
 var _wait = tyrano.plugin.kag.tag.wait
 var _kag = tyrano.plugin.kag.ftag.master_tag.wait.kag
 tyrano.plugin.kag.tag.wait = $.extend(true, {} , _wait, {
     pm: {
       click: "true"
     },
     start: function (pm) {
         var that = this;
         //スキップ中
         if(tyrano.plugin.kag.stat.is_skip === true){
             pm.time = 0
         }
         if(pm.click === "true"){
             $("#tyrano_base").on("click.waitcancel", function(){
                 clearTimeout(that.kag.tmp.wait_id);
                 that.kag.stat.is_strong_stop = false;
                 that.kag.stat.is_wait = false;
                 that.kag.layer.showEventLayer();
                 that.kag.ftag.nextOrder()
                 $("#tyrano_base").off('click.waitcancel');
                 return false
             })
         }
         
         that.kag.stat.is_strong_stop = true;
         that.kag.stat.is_wait = true;
         that.kag.layer.hideEventLayer();
         that.kag.tmp.wait_id = setTimeout(function () {
             that.kag.stat.is_strong_stop = false;
             that.kag.stat.is_wait = false;
             that.kag.layer.showEventLayer();
             $("#tyrano_base").off('click.waitcancel');    //確実に消す
             that.kag.ftag.nextOrder()
         }, pm.time)
     }.bind(TYRANO)
 })
 tyrano.plugin.kag.ftag.master_tag.wait = tyrano.plugin.kag.tag.wait
 tyrano.plugin.kag.ftag.master_tag.wait.kag = _kag
[endscript]

/*
[macro name=wse2]
	[iscript]
		if(tyrano.plugin.kag.stat.is_auto == true){
		f.auto_check = 1
		}
	[endscript]
	[if exp="f.auto_check==1"]
		[wse]
	[endif]
[endmacro]
*/


[macro name=sek]
	[iscript]
		 if(tyrano.plugin.kag.stat.is_skip === true){
		 f.skip_check = 1
		 }
		if(tyrano.plugin.kag.stat.is_auto == false){
		f.auto_check = 0
		}
		if(tyrano.plugin.kag.stat.is_auto == true){
		f.auto_check = 1
		}
	[endscript]
	[if exp="f.skip_check==1 || f.auto_check==0"]
		[p][stopse buf=2]
	[elsif exp="f.auto_check==1"]
		[wse][p][stopse buf=2]
	[else]
		[p][stopse buf=2]
	[endif]
[endmacro]

[return]

