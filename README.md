# GALSアプリ
2021年6月6日から2023年7月4日までアイドルとして活動していた。「GALS」の非公式アプリ

## 作成にあたって
現在はSUPERGENEとしてのサイトに変更されているが<a href="https://www.thegals.love/">HP</a> <br>
Figmaを使用したデザインとする。<a href="https://www.figma.com/file/spCpYoZze9AuKXh3LEtAVf/%E7%84%A1%E9%A1%8C?type=design&node-id=1%3A2&mode=design&t=VnOhbhPvzzhSBvlh-1">Design File </a> <br>

## 技術選定
iOS,Androidどちらとも動かすことのできる　**Flutter** での実装とする。 <br>

## Dir構成
- 機能名
  - presentation
  - domain
  - infrastructure

## 状態管理
RiverPod

## API通信
retrofit + dio

## その他 DBからの取得など
firebase cloud storage
firebase cloud firestore

## Apple審査状況について
外部テストまでは承諾済み。 <br>
AppStore未提出


## 今後の課題
### プロジェクトファイルの観点
Stringファイルの作成　Presentationに直書きしていて、コードの可読性が良くないため
命名規則　→ 個人開発の為、大きく考慮していなかったので、命名規則を改める
Dir構成　→ 機能名　からのスタートは機能がどれぐらいあるかを可視化できたが、コードを見るにあたっては行き来することが多かった。

### UI観点
独自でアニメーション実装　→ Animation Controllerを複数使用していることによるパフォーマンスの低下の恐れ
Heroアニメーション　→ 押下時の動きにきごちなさがある。　独自実装よりパッケージを使用←効率化を求めた結果パッケージの内部で設定までを見ることができなかった。
ダイアログ　→ CDのジャケット取得時にダイアログが思ったよりも小さく感じてしまった。

### ロジック観点
dio → create するのは良いが baseUrlの使い方が欠けている気がする。もう少し綺麗に見せるための考慮ができたはず。
retrofit → modelを自動生成したが、基本的には使わない部分までAPIで取得していたので、考慮が足りない。
コード面　→　条件式の連発で、コードの可読性が損なわれてしまった。　自身ではまだ把握はできていないが。絶対無駄な処理がありそう。。。
