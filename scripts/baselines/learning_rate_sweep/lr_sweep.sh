set -x #echo on
start=$(date +%s)
num_iter=3

for ((i=1;i<=num_iter;i++))
do
  python3 1d_regression.py --tag=lrsw"$1" --dataset=chebyshev_polynomial --generalisation_task=baseline --model_type=ASIShallowRelu --hidden_units=10 --learning_rate="$1" --adjust_data_linearly=True --early_stopping=True --num_epochs=100000
done

end=$(date +%s)

runtime=$((end-start))

echo $runtime
