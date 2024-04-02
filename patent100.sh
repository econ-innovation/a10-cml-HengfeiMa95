
# 设定存储文件的根目录
root_dir="/Users/mahengfei/Library/CloudStorage/Dropbox/bigdata_econ_2023/data/assignment_cml"

# 设定要处理的文件列表
files=(/Users/mahengfei/Library/CloudStorage/Dropbox/bigdata_econ_2023/data/assignment_cml/pubnr_cn.txt)

# 计数器初始化
file_count=0
dir_count=0

# 遍历文件列表
for file in "${files[@]}"; do
    # 如果文件计数达到100，则创建新的文件夹并重置计数器
    if [ $((file_count % 100)) -eq 0 ]; then
        ((dir_count++))
        mkdir -p "$root_dir/$dir_count"
    fi
    
    # 移动文件到对应的文件夹中
    mv "$file" "$root_dir/$dir_count/"
    
    # 增加文件计数器
    ((file_count++))
done

  
echo "All files have been created."
