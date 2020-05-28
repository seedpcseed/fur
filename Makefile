all:
	mkdir -p build
	make -C common
	make -C src
	make -C src tutorial
	cp src/fur build
	cp src/makeFurDb build
	cp src/checkTut.sh src/furTut.sh scripts
	cp src/fur2prim.awk src/prim2fasta.awk src/checkPrim.awk scripts
test:
	@make -s -C src test
eco105:
	make -C src eco105
clean:
	make -C common clean
	make -C src    clean
	make -C doc    clean
.PHONY:	doc
doc:	
	make -C doc
