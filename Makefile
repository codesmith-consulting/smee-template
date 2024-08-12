.PHONY: test

test:
	SMEE_ENV=test clj -M:test

clean:
	rm -rf target/*

uberjar:
	clj -T:build uberjar

repl:
	clj -M:repl bin/repl.clj

assets:
	clj -M -m smee.assets

server:
	clj -M -m server

db/migrate:
	clj -M -m smee.migrations migrate

db/rollback:
	clj -M -m smee.migrations rollback

db/create:
	clj -M -m smee.db create

db/drop:
	clj -M -m smee.db drop