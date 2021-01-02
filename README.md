<p>こちらを参考に作成</p>
<a>https://qiita.com/A-Kira/items/1c55ef689c0f91420e81</a>
<p>こちらを参考に勉強</p>
<a>https://qiita.com/sano1202/items/6021856b70e4f8d3dc3d</a>

<h1>使いかた</h1>
bash等を利用することが前提です。windowsユーザーの場合はgit bash等を使ってください。
<ol>
    <li>.envをセットする</li>
    <li>commandファイルでbash等を開ける</li>
    <li><code>chmod -R 777 .</code>を実行</li>
    <li><code>./initializer.sh</code>を実行</li>
</ol>
<p>以上</p>

<h1>マイグレーション</h1>
<h3>手順</h3>
<ol>
    <li>commandフォルダ直下で<code>./pipe.sh php artisan make:migration 名前 --create=tableの名前</code>を実行</li>
    <li>database/migrationsにできたやつを<a>https://readouble.com/laravel/5.0/ja/schema.html</a>に従って書き換え</li>
    <li><code>./migration.sh</code>を実行</li>
</ol>
<h3>確認</h3>
<ol>
    <li>command直下で<code>./db.sh</code>を実行</li>
    <li>以下のサイトを頼りに確かめてみる</li>
    <a>https://qiita.com/H-A-L/items/fe8cb0e0ee0041ff3ceb</a>
</ol>
<h3>取り消し</h3>
<code>./pipe.sh php artisan migrate:rollback</code>を実行

<h1>モデルの作成</h1>
<h3>モデルの命名規則</h3>
<p>モデルの名前は、テーブル名の単数形にする必要がある</p>
<p>そうすれば自動でマッピングする</p>
<h3>手順</h3>
<p><code>./pipe.sh php artisan make:model 名前</code>を実行する</p>

<h1>シーディング</h1>
<h3>手順</h3>
<ol>
    <li>command直下で<code>./pipe.sh php artisan make:seeder 名前</code>を実行する</li>
    <li>database/seeds直下に作成されたものを編集する</li>
    <li>DatabaseSeeder.phpを編集する</li>
    <li><code>./seeding</code>を実行する</li>
</ol>
<h3>確認</h3>
<p>こちらはマイグレーションの時と同じ手順で確認可能</p>

<h1>CentOS×RaspberryPi上で動かすとき</h1>
<ol>
    <li>command/product下のpostgresql.confの198行目<code>#fsync = off</code>のコメントを外す</li>
    <li>pg_hbaをコメントに従って書き換える</li>
    <li>initializer.shをコメントに従って書き換える</li>
    <li>docker/php下のDockerfileをコメントに従って書き換える</li>
</ol>

<h1>環境構築時参考URL（CentOS）</h1>
<ul>
    <li>https://blog.smallserver.jp/raspberry-pi-3-%E3%81%A7-centos-7-%E3%82%92%E5%8B%95%E4%BD%9C%E3%81%95%E3%81%9B%E3%82%8B/</li>
    <li>https://raspberrypi.stackexchange.com/questions/85654/installing-docker-on-rpi-3b-with-centos</li>
    <li>https://qiita.com/tkyonezu/items/ceaaf41924df39254058</li>
</ul>