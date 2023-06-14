b1=readtable("b1.txt")
b2=readtable("b2.txt")
d1=readtable("d1.txt")
d2=readtable("d2.txt")
m1=readtable("m1.txt")
m2=readtable("m2.txt")
v1=readtable("v1.txt")
v2=readtable("v2.txt")

traindata=readtable("traindata.txt")
testdata=readtable("testdata968x26.txt");
traindata=convertvars(traindata,'Character','categorical')
testdata=convertvars(testdata,'Character','categorical');