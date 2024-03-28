#Prime number using For Loop

echo -n "Prime numbers arë: "
for((k=1;k<=100;k++))
do
	n=$k
	flag=1
	i=2
	while [ $i -lt $n ]
	do
		r=`expr $n % $i`
		if [ $r -eq 0 ]
		then
			flag=0
			break
		fi
		i=`expr $i + 1`
	done
	if [ $flag -eq 1 ]
	then
		echo -n -e "\t$n"
	fi
done
echo

