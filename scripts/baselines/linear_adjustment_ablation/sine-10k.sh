set -x #echo on
start=$(date +%s)
num_iter=1

for ((i=1;i<=num_iter;i++))
do
  python3 1d_regression.py --tag=sq-optimiser-10k --dataset=sine   --generalisation_task=baseline --model_type=ASIShallowRelu --hidden_units=10000 --learning_rate=0.0001 --adjust_data_linearly=False --early_stopping=True --num_epochs=100000
done

end=$(date +%s)

runtime=$((end-start))

echo $runtime