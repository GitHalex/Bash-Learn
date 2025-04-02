for mission in lunar-mission mars-mission jupiter-mission saturn-mission mercury-mission
do 
  echo "es la mission: $mission"
done

for file in $(ls images)
do 
        if [[ $file = *.jpeg ]] 
                then
                new_name=$(echo $file | sed 's/jpeg/jpg/g')
                mv images/$file images/$new_name
        fi
done