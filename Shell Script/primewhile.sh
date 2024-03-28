#Prime using While Loop

echo -n "Enter the Value: "
read a
flag=1
i=2
while [ $i -lt $a ]
do
	r=`expr $a % $i`
	if [ $r -eq 0 ]
	then
		flag=0
		break
	fi
	i=`expr $i + 1`
done
if [ $flag -eq 1 ]
then
	echo "$a is Prime Number"
else
	echo "$a is not Prime Number"
fi
