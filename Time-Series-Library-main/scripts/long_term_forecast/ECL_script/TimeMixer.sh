#export CUDA_VISIBLE_DEVICES=0

model_name=TimeMixer

seq_len=36
e_layers=4
down_sampling_layers=3
down_sampling_window=2
learning_rate=0.01
# d_model=16
# d_ff=32
d_model=4
d_ff=8
batch_size=32
train_epochs=20
patience=10

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/illness/ \
  --data_path national_illness.csv \
  --model_id ECL_$seq_len'_'96 \
  --model $model_name \
  --data custom \
  --features MS \
  --seq_len $seq_len \
  --label_len 0 \
  --pred_len 12 \
  --e_layers $e_layers \
  --d_layers 1 \
  --factor 3 \
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --des 'Exp' \
  --itr 1 \
  --d_model $d_model \
  --d_ff $d_ff \
  --batch_size $batch_size \
  --learning_rate $learning_rate \
  --train_epochs $train_epochs \
  --patience $patience \
  --down_sampling_layers $down_sampling_layers \
  --down_sampling_method avg \
  --down_sampling_window $down_sampling_window \
  --target ILITOTAL

# python -u run.py \
#   --task_name long_term_forecast \
#   --is_training 1 \
#   --root_path ./dataset/illness/ \
#   --data_path national_illness.csv \
#   --model_id ECL_$seq_len'_'192 \
#   --model $model_name \
#   --data custom \
#   --features MS \
#   --seq_len $seq_len \
#   --label_len 0 \
#   --pred_len 12 \
#   --e_layers $e_layers \
#   --d_layers 1 \
#   --factor 3 \
#   --enc_in 7 \
#   --dec_in 7 \
#   --c_out 7 \
#   --des 'Exp' \
#   --itr 1 \
#   --d_model $d_model \
#   --d_ff $d_ff \
#   --batch_size $batch_size \
#   --learning_rate $learning_rate \
#   --train_epochs $train_epochs \
#   --patience $patience \
#   --down_sampling_layers $down_sampling_layers \
#   --down_sampling_method avg \
#   --down_sampling_window $down_sampling_window

# python -u run.py \
#   --task_name long_term_forecast \
#   --is_training 1 \
#   --root_path ./dataset/illness/ \
#   --data_path national_illness.csv \
#   --model_id ECL_$seq_len'_'336 \
#   --model $model_name \
#   --data custom \
#   --features MS \
#   --seq_len $seq_len \
#   --label_len 0 \
#   --pred_len 12 \
#   --e_layers $e_layers \
#   --d_layers 1 \
#   --factor 3 \
#   --enc_in 7 \
#   --dec_in 7 \
#   --c_out 7 \
#   --des 'Exp' \
#   --itr 1 \
#   --d_model $d_model \
#   --d_ff $d_ff \
#   --batch_size $batch_size \
#   --learning_rate $learning_rate \
#   --train_epochs $train_epochs \
#   --patience $patience \
#   --down_sampling_layers $down_sampling_layers \
#   --down_sampling_method avg \
#   --down_sampling_window $down_sampling_window

# python -u run.py \
#   --task_name long_term_forecast \
#   --is_training 1 \
#   --root_path ./dataset/illness/ \
#   --data_path national_illness.csv \
#   --model_id ECL_$seq_len'_'720 \
#   --model $model_name \
#   --data custom \
#   --features MS \
#   --seq_len $seq_len \
#   --label_len 0 \
#   --pred_len 12 \
#   --e_layers $e_layers \
#   --d_layers 1 \
#   --factor 3 \
#   --enc_in 7 \
#   --dec_in 7 \
#   --c_out 7 \
#   --des 'Exp' \
#   --itr 1 \
#   --d_model $d_model \
#   --d_ff $d_ff \
#   --batch_size $batch_size \
#   --learning_rate $learning_rate \
#   --train_epochs $train_epochs \
#   --patience $patience \
#   --down_sampling_layers $down_sampling_layers \
#   --down_sampling_method avg \
#   --down_sampling_window $down_sampling_window