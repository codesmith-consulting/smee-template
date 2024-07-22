.PHONY: test

test:
	COAST_ENV=test clj -M:test

clean:
	rm -rf target/*

uberjar:
	clj -M:uberjar

repl:
	clj -M:repl bin/repl.clj

assets:
	clj -M -m coast.assets

server:
	clj -M -m server

db/migrate:
	clj -M -m coast.migrations migrate

db/rollback:
	clj -M -m coast.migrations rollback

db/create:
	clj -M -m coast.db create

db/drop:
	clj -M -m coast.db drop