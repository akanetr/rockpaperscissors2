;このファイルは削除しないでください！
;
;make.ks はデータをロードした時に呼ばれる特別なKSファイルです。
;Fixレイヤーの初期化など、ロード時点で再構築したい処理をこちらに記述してください。
;
;

[live2d_restore]

[call  storage="first.ks"  target="*start_macro"]



;make.ks はロード時にcallとして呼ばれるため、return必須です。
[return]
