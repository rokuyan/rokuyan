; v2 もしくは v1 のどちらを使用するか聞かれたら v2 を選択するようにする
!^e::#e ; alt + ctrl + e で win + e を押したことにして explorer.exe を呼び出す / ok
!^d::#d ; alt + ctrl + d で win + d を押したことにして すべて最小化 / ok
!^c::#1 ; alt + ctrl + c で win + 1 を押したことにして タスクバーの 1 番目のアプリを呼び出す(chrome) / ok
!^t::#2 ; alt + ctrl + t で win + 2 を押したことにして タスクバーの 2 番目のアプリを呼び出す(terminal) / ok
!^s::#3 ; alt + ctrl + s で win + 3 を押したことにして タスクバーの 3 番目のアプリを呼び出す(slack) / ok

#e::#. ; super + e で 純正 emoji を呼び出す / ok / layer1 に注意
#r::#v ; super + v で 純正 clipboard を呼び出す / ok / layer1 に注意

; Windows ではUbuntu よりも 1 段上の列で音量調節を行わせる
F3::!^, ; 音量調整 (+) / remap 側の問題な気がする
F2::!^m ; 音量調整 (-) / remap 側の問題な気がする
F1::!^n ; 音量ミュート / remap 側の問題な気がする

; F12 で quake terminal を起動したい →
; F12 で quake terminal を起動 → 連打でたくさん開いてしまう...。動作確認は完了
; F12::Run, %LOCALAPPDATA%\Microsoft\WindowsApps\wt.exe --window _quake new-tab --profile "Ubuntu"

; ctrl + alt + 何かで LINE を起動したい → クライアントの仕事をやるパソコンだから LINE は会社で確認してから入れる
; ctrl + alt + 何かで Discord を起動したい → 同上

; ctrl + b で一時的にテスト / 直接的な exe の実行に関して動作確認完了
; ^b::
;     Run, "notepad.exe"
;     return

; 仮想デスクトップの切り替えは remap のマクロ側でやるようにする。win と linux で組み込むマクロを変えて対応する