export CUDA_VISIBLE_DEVICES=1

model_name=PatchTST

echo "Setting up CUDA environment..."
export PATH=/usr/local/cuda/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/cuda/lib64:$LD_LIBRARY_PATH
export CUDA_HOME=/usr/local/cuda
export CUDA_VISIBLE_DEVICES=0

echo "Checking CUDA before running Python..."
python3 -c "import torch; print('CUDA Available:', torch.cuda.is_available()); print('GPU:', torch.cuda.get_device_name(0) if torch                 .cuda.is_available() else 'No GPU')"

# python -u run.py \
#   --task_name long_term_forecast \
#   --is_training 1 \
#   --root_path ./dataset/illness/ \
#   --data_path national_illness.csv \
#   --model_id ili_36_24 \
#   --model $model_name \
#   --data custom \
#   --features MS \
#   --seq_len 36 \
#   --label_len 0 \
#   --pred_len 12 \
#   --e_layers 4 \
#   --d_layers 1 \
#   --factor 3 \
#   --enc_in 7 \
#   --dec_in 7 \
#   --c_out 7 \
#   --des 'Exp' \
#   --n_heads 4 \
#   --d_model 1024\
#   --itr 1\
#   --target ILITOTAL
  
python -u run.py \
  --task_name long_term_forecast \
  --is_training 1 \
  --root_path ./dataset/illness/ \
  --data_path national_illness.csv \
  --model_id ili_36_24 \
  --model $model_name \
  --data custom \
  --features MS \
  --seq_len 36 \
  --label_len 0 \
  --pred_len 12 \
  --e_layers 4 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --des 'Exp' \
  --n_heads 4 \
  --d_model 256\
  --itr 1\
  --target ILITOTAL

# python -u run.py \
#   --task_name long_term_forecast \
#   --is_training 1 \
#   --root_path ./dataset/illness/ \
#   --data_path national_illness.csv \
#   --model_id ili_36_36 \
#   --model $model_name \
#   --data custom \
#   --features MS \
#   --seq_len 36 \
#   --label_len 0 \
#   --pred_len 12 \
#   --e_layers 4 \
#   --d_layers 1 \
#   --factor 3 \
#   --enc_in 7 \
#   --dec_in 7 \
#   --c_out 7 \
#   --des 'Exp' \
#   --n_heads 4 \
#   --d_model 2048\
#   --itr 1\
#   --target ILITOTAL

# python -u run.py \
#   --task_name long_term_forecast \
#   --is_training 1 \
#   --root_path ./dataset/illness/ \
#   --data_path national_illness.csv \
#   --model_id ili_36_48 \
#   --model $model_name \
#   --data custom \
#   --features MS \
#   --seq_len 36 \
#   --label_len 0 \
#   --pred_len 12 \
#   --e_layers 4 \
#   --d_layers 1 \
#   --factor 3 \
#   --enc_in 7 \
#   --dec_in 7 \
#   --c_out 7 \
#   --des 'Exp' \
#   --n_heads 4 \
#   --d_model 2048\
#   --itr 1\
#   --target ILITOTAL


# python -u run.py \
#   --task_name long_term_forecast \
#   --is_training 1 \
#   --root_path ./dataset/illness/ \
#   --data_path national_illness.csv \
#   --model_id ili_36_60 \
#   --model $model_name \
#   --data custom \
#   --features MS \
#   --seq_len 36 \
#   --label_len 0 \
#   --pred_len 12 \
#   --e_layers 4 \
#   --d_layers 1 \
#   --factor 3 \
#   --enc_in 7 \
#   --dec_in 7 \
#   --c_out 7 \
#   --des 'Exp' \
#   --n_heads 16 \
#   --d_model 2048\
#   --itr 1\
#   --target ILITOTAL