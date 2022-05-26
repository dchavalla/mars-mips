                .text
                .include "macros/stack.s"
                .include "macros/syscalls.s"


                .text

# Name: subroutine
# Description:
subroutine:     nop             # count subroutine(arg0, arg1, arg2, arg3)
                                
                # Bookkeeping of Registers 
                # v0:
                # v1:
                # a0:
                # a1:
                # a2:
                # a3:
                # ---
                # t0:
                # t1:
                # t2:
                # t3:
                # s0:
                # s1:
                # s2:
                # s3:

                ####################################################
                # Subroutine Setup
                #   - Save the S registers
                #     - Unmarshal the formal arguments
                push_s_registers
                move $?, $a0
                move $?, $a1
                move $?, $a2
                move $?, $a3
                ####################################################

                # Insert your code to implement the subroutine
                # ...

 
                # ...
                # ...

                ####################################################
                # Subroutine Cleanup
                #     - Marshal return values
                #   - Restore the S registers
                move $v0, $?
                move $v1, $?
                pop_s_registers

                jr $sp


###################################################################
# Subroutine Call
###################################################################
# Use the following template to make a subroutine call
###################################################################

                ####################################################
                # Subroutine Precall:  p(1, 2, 4, 5)
                #   - Marshal formal arguments
                #     - Save the T registers
                #       - Save the special registers: $ra, $fp, $sp, $gp
                move $a0, $?
                move $a1, $?
                move $a2, $?
                move $a3, $?
                push_t_registers
                push $ra, $fp, $sp, $gp

                jal p

                pop $ra, $fp, $sp, $gp
                pop_t_registers
                #####################################################
                # Subroutine Postcall
                #     - Restore the special registers: $ra, $fp, $sp, $gp
                #    - Restore the T registers
                #  - Unmarshal return values
                #####################################################
                

