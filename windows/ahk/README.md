# **README.md**

## **その他アプリとの依存関係**

- **remap**

    remap で設定したキーバインドによっては競合する可能性があるので注意

- **3RVX**

    音量調節アプリ。以下のキーバインドで設定中

    | Hotkeys | Action |
    | -- | -- |
    | Alt + Ctrl + N | Mute |
    | Alt + Ctrl + , | Increase Volume |
    | Alt + Ctrl + M | Decrease Volume |

    その他、アプリごとの音量調整は `win + R` で `sndvol` を起動して行うものとする。

- **taskbar**

    Windows 純正のタスクバーのアプリの並び方によって挙動が変化するので注意。

## **ahk のプログラムの記載方法概要**

- **式の書き方**

    `ユーザが入力するキー::コンピュータに伝えるキー`

- **キーの表現方法**

    | 入力される値 | 表現方法 |
    | -- | -- |
    | Windows(Super) | # |
    | alt | ! |
    | ctrl | ^ |
    | F1 | F1 |
    | BackSpace | BS |

- **実行方法**

    `.ahk` ファイルを右クリック → `Run Script` をクリックすると起動可能。 v2 での動作確認が完了した。

    shell:startup に配置することで自動実行が可能だが、バージョン確認をしてこないように AutoHotKey のディレクトリの settings.exe で設定する必要がある。