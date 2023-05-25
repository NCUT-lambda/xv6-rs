# exec(init, argv)
.globl start
start:
        la a0, init
        la a1, 4
        li a7, 7
        ecall

# loop exit();
exit:
        li a7, 2
        ecall
        jal exit

init:
  .string "init"