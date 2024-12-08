date "+Compiled: %Y/%m/%d %H:%M:%S" > version.txt
rm ../InputTester.love
zip -9 -r -x\.git/* ../InputTester.love .
