BASE_HTML_DIR=resources/public

all: push

init: clean
	mkdir -p $(BASE_HTML_DIR) && cd $(BASE_HTML_DIR) && git init . && git remote add anucc-github-io git@github.com:anucc/anucc.github.io.git

generate-blog:
	lein run

commit-all: generate-blog
	cd $(BASE_HTML_DIR) && git add . && git commit -m "update blog"

push: commit-all
	cd $(BASE_HTML_DIR) && git push --force anucc-github-io master

clean:
	rm -rf $(BASE_HTML_DIR)
