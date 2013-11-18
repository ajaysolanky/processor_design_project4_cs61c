MOD:	lui $r0 0
		sw $r3 2($r0)
		lw $r1 1($r0)
		slt $r2 $r1 $r0
		beq $r2 $r0 rest
		sub $r1 $r0 $r1
rest: 
		lw $r0 0($r0)
continue:
		slt $r2 $r0 $r1
		lui $r3 0
		bne $r2 $r3 return
		sub $r0 $r0 $r1
		j continue
return:
		lui $r1 0
		lw $r3 2($r1)
		sw $r0 2($r1)
		jr $r3