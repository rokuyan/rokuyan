# **README.md**

## **ディレクトリ構成**

``` tree
extensions.txt
keybindings.json
settings.json
```

- extensions.txt

    現段階で使用している VSCode Extension のリストを出力してまとめたもの。

- keybindings.json

    現段階で使用している VSCode のキーバインドについて記載。

- settings.json

    現段階で使用している VSCode の settings.json について記載。

## **拡張機能の Export 方法**

`extensions.txt` の取り扱いに関して記載。

``` bash
code --list-extensions
```

## **拡張機能の Import 方法**

- **Windows の場合**

``` powershell
extensions_list_file = "vscode-extensions.txt"
foreach ($extension in Get-Content $extensions_list_file) {
    code --install-extension $extension
}
```

- **Unix 系の OS の場合**

``` bash
cat vscode-extensions.txt | while read line; do code --install-extension $line; done
```

※ ただし、 Unix 系の方のコマンドに関しては未検証なので、要注意。