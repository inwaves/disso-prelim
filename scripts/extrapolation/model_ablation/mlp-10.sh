set -x #echo on
start=$(date +%s)
num_iter=1

for ((i=1;i<=num_iter;i++))
do
  python3 1d_regression.py --tag=mlp-"$1"-10 --early_stopping=True --lr_schedule=plateau --dataset="$1" --generalisation_task=extrapolation --model_type=MLP --hidden_units=10 --learning_rate=0.005 --adjust_data_linearly=True
done

end=$(date +%s)

runtime=$((end-start))

echo $runtime
