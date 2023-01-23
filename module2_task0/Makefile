.SILENT:
help: ##implemente and print a list of all the goals
			@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

build: ##Compile source code
			@go mod init github.com/Luiyi-F/awesome-api
			@go build

run: ##Runs the API
			@.awesome-api >./awesome.log 2>&1 &

stop:	##Stop the API
			@kill $(shell pgrep awesome-api)

clean: ##Delete info
			@make stop
			@rm -r awesome-api
			@rm -r awesome.log

test: ##Tests for the API
			@curl curl http://localhost:9999
			@curl curl http://localhost:9999/health
