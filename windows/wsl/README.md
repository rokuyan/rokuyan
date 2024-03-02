# **README.md**

## **概要**

note, tip important, warning, caution

> [!NOTE] wsl 用のスクリプト等を配置。

## **やること**

1. `setup.sh` をまず最初に実行

    - 概要

        C コンパイラ, docker, pyenv, Linuxbrew, SDKMAN などをローカル環境にインストールしてくれる

    - 注意

        ただし、 zsh の環境は整わないので、ここ以降は手動でいろいろやらないといけない

    - 概要

        oh my zsh を手動でインストールした後に実行する必要がある。

        ただし、挙動確認が全くできていないので、多分エラーがたくさん出る。

        以下のプラグインを linuxbrew 経由でインストールすることが目的

1. Oh my zsh 周辺を整える

    `setup.sh` で zsh はインストールされるので、あとは oh my zsh を入れて各プラグインをインストールすれば OK

    ただし、インストールする際は `linuxbrew` 経由でインストールするのがかなり楽だとわかったので、次回以降はそうする。

    oh my zsh 周辺で以下のモジュールをインストールする。

    1. `powerlevel10k`

    1. `zsh-syntax-highlighting`

    1. `zsh-autosuggestions`

    1. `zsh-vi-mode`

    > [!CAUTION] Windows terminal 環境ではフォントを `MesloLGS NF` に設定しないとアイコンとかつぶれちゃうので注意