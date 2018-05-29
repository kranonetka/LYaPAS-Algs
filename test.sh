rm -f $1
echo Output is $1

for i in {{1..9},:,\;,\<,\=,\>,\?,\@,{A..P}}
do
	echo $i
	{ time ./algs $i ; } |& tee -a $1
done
