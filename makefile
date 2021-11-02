up: # イメージを起動
	docker-compose up -d
stop: # イメージを止める
	docker-compose stop
destroy: # すべてのボリュームを削除する
	docker-compose down --rmi all --volumes
ps: # 動いているコンテナの確認
	docker-compose ps
front: # サーバ用のコンテナにアクセスする
	docker-compose run frontend sh
api: # サーバ用のコンテナにアクセスする
	docker-compose run api sh