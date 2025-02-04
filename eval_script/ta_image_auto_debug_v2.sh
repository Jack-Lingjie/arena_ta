#!/bin/bash  
  
set -x

# 默认模型名称  
DEFAULT_MODEL_NAME="Meta-Llama-3.1-8B-Instruct"  
  
# 检查是否传入了参数，如果没有则使用默认值  
MODEL_NAME=${1:-$DEFAULT_MODEL_NAME}  

# gen asnwer
# 检查文件是否存在  

# if [ -f "data/alpaca/model_answer/${MODEL_NAME}.jsonl" ]; then  
#   echo "文件 data/alpaca/model_answer/${MODEL_NAME}.jsonl 存在, 跳过gen_answer.py 执行。"  
# else  
#   python gen_answer_ta.py --model-name ${MODEL_NAME} 
# fi 

# python gen_images.py --model_name ${MODEL_NAME} 

python gen_judgment_ta_image_with_text.py --model-name ${MODEL_NAME} 

# python show_result.py  --output image --judge-name gpt-4o_images --bench-name alpaca

python show_result.py  --output image --judge-name gpt-4o_images_with_text --bench-name alpaca
