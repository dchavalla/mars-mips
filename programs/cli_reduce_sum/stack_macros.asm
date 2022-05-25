            .macro push(%r1)
               addiu $sp, $sp, -4
               sw %r1, 0($sp)
            .end_macro

            .macro push(%r1, %r2)
               addiu $sp, $sp, -8
               sw %r1, 4($sp)
               sw %r2, 0($sp)
            .end_macro

            .macro push(%r1, %r2, %r3)
               addiu $sp, $sp, -12
               sw %r1, 8($sp)
               sw %r2, 4($sp)
               sw %r3, 0($sp)
            .end_macro

            .macro push(%r1, %r2, %r3, %r4)
               addiu $sp, $sp, -16
               sw %r1, 12($sp)
               sw %r2, 8($sp)
               sw %r3, 4($sp)
               sw %r4, 0($sp)
            .end_macro

            .macro pop(%r1)
               lw %r1, 0($sp)
               addiu $sp, $sp, 4
            .end_macro

            .macro pop(%r1, %r2)
               lw %r1, 4($sp)
               lw %r2, 0($sp)
               addiu $sp, $sp, 4
            .end_macro

            .macro pop(%r1, %r2, %r3)
               lw %r1, 8($sp)
               lw %r2, 4($sp)
               lw %r3, 0($sp)
               addiu $sp, $sp, 4
            .end_macro

            .macro pop(%r1, %r2, %r3, %r4)
               lw %r1, 12($sp)
               lw %r2, 8($sp)
               lw %r3, 4($sp)
               lw %r4, 0($sp)
               addiu $sp, $sp, 4
            .end_macro

            

