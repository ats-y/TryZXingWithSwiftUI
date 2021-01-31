# ZXing Trial

SwiftUIでZXingを使ってバーコードを読み取る。

ZXing : https://github.com/zxingify/zxingify-objc

## プロジェクト作成手順

### cocoapodsのインストール

```
$ sudo gem install -n /usr/local/bin cocoapods
```

### XCodeプロジェクトを作成

XCodeでSwiftZXingという名前のSwiftUIプロジェクトを作成。

### ZXingの取り込み

1. 使いたいプロジェクトのフォルダに移動し、Podfileファイルを作成する。
1. XCodeを閉じる。
1. Podfileがあるディレクトリで以下のコマンドを実行する。
    ```
    $ pod install
    ```
