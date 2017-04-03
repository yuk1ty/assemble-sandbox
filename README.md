# assemble-sandbox

* アセンブラで遊んでみるなど。
* 実行は、下記のとおりにやればできます。
1. `as -o helloworld.o helloworld.s`
2. `ld -o helloworld -macosx_version_min 10.7 hello.o`
3. `./helloworld`

## ファイルの説明
* helloworld.s: アセンブラでHello, Worldしてみたやつ。
