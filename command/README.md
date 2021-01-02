<h1>基本的な使い方</h1>
<p>一番最初に使う時や、環境を作り直すときには<code>./initializer.sh</code>をする</p>
<p>あとは、開発を始めるときは<code>./start.sh</code>、終わるときは<code>./stop.sh</code>を実行する</p>
<p>詳しい説明は下のリストを参照してください</p>

<h1>コマンドリスト</h1>
<p><code>./db.sh</code>・・・databaseを確認するコマンドを打てる</p>
<p><code>./db_initializer.sh</code>・・・データベースの初期化</p>
<p><code>./down.sh</code>・・・コンテナの破棄</p>
<p><code>./initializer.sh</code>・・・コンテナの初期化</p>
<p><code>./logs.sh</code>・・・コンテナのログの確認</p>
<p><code>./migration.sh</code>・・・マイグレーションの実施　コンテナは立てておく必要あり</p>
<p><code>./seeding.sh</code>・・・シーディングの実施　コンテナは立てておく必要あり</p>
<p><code>./pipe.sh コマンド</code>・・・指定された何かしらのコマンド(php artisan等)をdockerコンテナのlaravelプロジェクト内で実行するコマンド</p>
<p><code>./start.sh</code>・・・コンテナの起動</p>
<p><code>./stop.sh</code>・・・コンテナの停止</p>