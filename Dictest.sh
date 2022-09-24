
#!/bin/bash -x

declare -A sounds
sounds[dog]="bark"
sounds[cow]="moo"
sounds[bird]="tweet"
sounds[wolf]="howl"


echo "Dog Sound " ${sounds[dog]}
echo "All Animal Sound " ${sounds[@]}
echo "Animal " ${!sounds[@]}
echo "Number of Animals " ${#sounds[@]}

values=5
#declare -A counterValues
function setCounterValues() {
	for (( counter=1; counter<=2; counter++ ))
	do
		values=$(( $values + $counter ))
		local valueDict[$counter]=$values
	done
	echo "$valueDict"
}
 counterValues="$(setCounterValues)"
  #setCounterValues

  echo " All values " ${counterValues[@]}
  echo " All keys " ${!counterValues[@]}
  echo " Number of Entries " ${#counterValues[@]}

 for val in "${counterValues[@]}"; do
	echo $val
done

:

