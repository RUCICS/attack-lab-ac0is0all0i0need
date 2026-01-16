# 1. 基础设置
set pagination off
set disassembly-flavor intel
set confirm off

# 2. 加载文件 (建议加上这句，这样进gdb不用手动 file problem1)
file problem3

# 3. 打断点
# 注意：attacklab中可能没有叫 'func' 的函数，通常是 getbuf, touch1, touch2 等
b main

b func

b func1
# b fopen  <-- 不建议对库函数打断点，除非你想看libc内部实现，否则会很干扰

# 4. (可选) 自动运行，方便调试
# run ans1.txt