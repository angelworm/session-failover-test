session-failover-test
=====================

Cookieとして渡されたセッション情報と、サーバーが扱うセッション情報を確認する為のwebサーバーです。

ロードバランサを使った環境で、接続先のインスタンスが応答しない場合の挙動を確認するのに使うことができます。

起動方法
-------

1. `docker build -t session-failover-test .`
2. `docker run --rm -p 8080:8080 session-failover-test`
