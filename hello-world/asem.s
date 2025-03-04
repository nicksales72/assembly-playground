.global _start
.intel_syntax noprefix

_start:
        # sys_write
        mov rax, 1 # invoke write syscall
        mov rdi, 1 # rdi register writes to stdout fd
        lea rsi, [hello_world] # rdx register loads address of hello_world buffer
        mov rdx, 13 # rdx register allocates 13 bytes for buffer length
        syscall

        mov rax, 60 # invoke exit syscall
        mov rdi, 1  # rdi register takes error code 1
        syscall

# hello_world buffer
hello_world:
        .asciz "Hello, World!\n"
