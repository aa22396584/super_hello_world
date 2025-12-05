; x86-64 Assembly Hello World (Linux)
; Assembly 是最接近機器碼的低階語言
; 這個範例使用 NASM 語法和 Linux 系統呼叫

section .data
    ; 定義字串資料
    msg db 'Hello, World!', 0x0a  ; 0x0a 是換行字元
    len equ $ - msg                ; 計算字串長度

section .text
    global _start

_start:
    ; 使用 sys_write 系統呼叫輸出文字
    mov rax, 1          ; sys_write 系統呼叫號碼
    mov rdi, 1          ; 檔案描述符 1 = stdout
    mov rsi, msg        ; 訊息的記憶體位址
    mov rdx, len        ; 訊息長度
    syscall             ; 執行系統呼叫

    ; 使用 sys_exit 系統呼叫結束程式
    mov rax, 60         ; sys_exit 系統呼叫號碼
    xor rdi, rdi        ; 返回碼 0
    syscall             ; 執行系統呼叫
