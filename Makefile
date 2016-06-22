all:
	./list.sh
	cat status.md index_body.md > README.md
	google-sitemapgen --config=sitemap_config.xml

sync: all
	git add .
	git commit -m "updated"
	git push

