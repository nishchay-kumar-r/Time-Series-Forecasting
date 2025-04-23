export CUDA_VISIBLE_DEVICES=0

model_name=MultiPatchFormer

python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/illness/ \
  --data_path national_illness.csv \
  --model_id ECL_96_96 \
  --model $model_name \
  --data custom \
  --features MS \
  --seq_len 36 \
  --label_len 0 \
  --pred_len 12 \
  --e_layers 4 \
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --d_model 256 \
  --d_ff 512 \
  --des 'Exp' \
  --n_heads 8 \
  --batch_size 32 \
  --itr 1 \
  --target ILITOTAL 

# python -u run.py \
#   --task_name long_term_forecast \
#   --is_training 1 \
#   --root_path ./dataset/illness/ \
#   --data_path national_illness.csv \
#   --model_id ECL_96_192 \
#   --model $model_name \
#   --data custom \
#   --features MS \
#   --seq_len 36 \
#   --label_len 0 \
#   --pred_len 12 \
#   --e_layers 2 \
#   --d_layers 1 \
#   --factor 3 \
#   --enc_in 7 \
#   --dec_in 7 \
#   --c_out 7 \
#   --d_model 256 \
#   --d_ff 512 \
#   --top_k 5 \
#   --des 'Exp' \
#   --itr 1

# python -u run.py \
#   --task_name long_term_forecast \
#   --is_training 1 \
#   --root_path ./dataset/illness/ \
#   --data_path national_illness.csv \
#   --model_id ECL_96_336 \
#   --model $model_name \
#   --data custom \
#   --features MS \
#   --seq_len 36 \
#   --label_len 0 \
#   --pred_len 12 \
#   --e_layers 2 \
#   --d_layers 1 \
#   --factor 3 \
#   --enc_in 7 \
#   --dec_in 7 \
#   --c_out 7 \
#   --d_model 256 \
#   --d_ff 512 \
#   --top_k 5 \
#   --des 'Exp' \
#   --itr 1

# python -u run.py \
#   --task_name long_term_forecast \
#   --is_training 1 \
#   --root_path ./dataset/illness/ \
#   --data_path national_illness.csv \
#   --model_id ECL_96_720 \
#   --model $model_name \
#   --data custom \
#   --features MS \
#   --seq_len 36 \
#   --label_len 0 \
#   --pred_len 12 \
#   --e_layers 2 \
#   --d_layers 1 \
#   --factor 3 \
#   --enc_in 7 \
#   --dec_in 7 \
#   --c_out 7 \
#   --d_model 256 \
#   --d_ff 512 \
#   --top_k 5 \
#   --des 'Exp' \
#   --itr 1