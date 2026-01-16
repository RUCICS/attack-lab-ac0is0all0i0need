import struct

# 读取文件二进制
with open("problem3", "rb") as f:
    data = f.read()

# 我们要找的目标：小端序的 114 (72 00 00 00)
target = struct.pack('<I', 114) 

# 搜索
offset = data.find(target)

if offset != -1:
    print(f"恭喜！找到了 114！")
    print(f"尝试使用的内存地址 (VA): {hex(0x400000 + offset)}") 
    print("请先去 IDA 或 objdump 确认这个地址确实是 72 00 00 00")
else:
    print("坏消息：二进制文件里真的没有 32 位的 114 (72 00 00 00)...")