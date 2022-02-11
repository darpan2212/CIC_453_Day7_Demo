PRESENT=1;
PART_TIME=2;
WAGE_PER_HOUR=20;
MAX_WORK_DAY=20;
MAX_WORK_HOUR=40;

function getWorkingHour() {
	case $1 in
		$PRESENT)
			wk=8;
      		;;

		$PART_TIME)
   			wk=4;
		;;

		*)
			wk=0;
		;;
	esac;
	echo $wk;
}

totalWorkingHour=0;
day=0;

while [[ $day -lt $MAX_WORK_DAY && $totalWorkingHour -lt $MAX_WORK_HOUR ]]
do
	isPresent=$((RANDOM%3));
	#echo $isPresent;
	workingHour=$(getWorkingHour $isPresent);
	totalWorkingHour=$(($totalWorkingHour+$workingHour));
	dailyWage[$day]=$(($workingHour * $WAGE_PER_HOUR));
	((day++));
done

salary=$(($totalWorkingHour * $WAGE_PER_HOUR));

echo ${dailyWage[@]};

echo "Employee Monthly wage : $ "$salary "USD (total work hour : $totalWorkingHour)(Working Day : $day)";


for wage in ${dailyWage[@]}
do
	echo $wage;
done

for ((i=0;i<${#dailyWage[@]};i++))
do
	echo "Day $i : " ${dailyWage[i]};
done
