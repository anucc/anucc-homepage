BASE_HTML_DIR=resources/public

all: push

init:
	mkdir -p $(BASE_HTML_DIR) && cd $(BASE_HTML_DIR) && git init . && git remote add origin git@github.com:anucc.github.io.git

generate-blog:
	lein run

commit-all: generate-blog
	git subtree push --prefix $(BASE_HTML_DIR) anucc-github-io master

push: commit-all
	cd $(BASE_HTML_DIR) && git push origin master
