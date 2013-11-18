MOD:	lui $r0 0
		lw $r1 0($r0)
		lw $r2 1($r0)
		addi $r2 $r2 -1
		and $r1 $r1 $r2
		sw $r1 2($r0)
		jr $r3