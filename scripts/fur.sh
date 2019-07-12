wget guanine.evolbio.mpg.de/fur/test.tar.gz
tar -xzf test.tar.gz
./fur -I testFur.idx -t testTar -n testNei 2>/dev/null > tmp.out
DIFF=$(diff tmp.out ../data/fur.out)
if [ "$DIFF" == "" ] 
then
    printf "Test(fur)\tpass\n"
else
    printf "Test(fur)\tfail\n"
    echo ${DIFF}
fi

rm -r testFur.idx testTar testNei test.tar.gz tmp.out
