default: otaniemipeli.png

both: otaniemipeli.png otaniemipeli.svg

otaniemipeli.svg: compiled.xml
	nik4 --ppi 200 --bbox 24.80764 60.18131 24.84412 60.19428 -z 17 compiled.xml otaniemipeli.svg
	ls -lh otaniemipeli.svg

otaniemipeli.png: compiled.xml
	nik4 --ppi 200 --bbox 24.80764 60.18131 24.84412 60.19428 -z 17 compiled.xml otaniemipeli.png
	identify otaniemipeli.png

compiled.xml: $(wildcard style/* *.mml *.yml)
	npx carto project.mml -f compiled.xml
