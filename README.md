# Time-Series-Forecasting
Time Series Forecasting using Advanced Transformers like WP-Mixer and MultiPatchFormer
Usage
Install Python 3.8. For convenience, execute the following command.
``` bash
pip install -r requirements.txt
```
Prepare Data, then place the downloaded data in the folder./dataset. Here is a summary of supported datasets.


Train and evaluate model. We provide the experiment scripts for all benchmarks under the folder ./scripts/. You can reproduce the experiment results as the following examples:
```bash 
# long-term forecast
bash .scripts/long_term_forecast/ECL_script/WPMixer.sh
```

Develop your own model.
Add the model file to the folder ./models. You can follow the ./models/Transformer.py.
Include the newly added model in the Exp_Basic.model_dict of ./exp/exp_basic.py.
Create the corresponding scripts under the folder ./scripts.
