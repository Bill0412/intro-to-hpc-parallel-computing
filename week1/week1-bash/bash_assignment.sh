#!/bin/bash

mkdir bash_workdir
cp data.txt bash_workdir/data.txt
cd bash_workdir
echo $(pwd) >> output_bash.txt
first_var="I love HPC!"
echo $first_var >> output_bash.txt
cat data.txt | grep 80 >> output_bash.txt
second_var=$(ls)
for v in ${second_var[@]}; do
    echo $v >> output_bash.txt
    echo ""
done
cp output_bash.txt ../
cd ../
