OCTAL:	andi $r0 $r0 0 #sets ori to zero
		addi $r1 $r0 2 #sets r1 to 2
		lw $r0 0($r0)
		and $r2 $r0 0x01c0
		sllv $r2 $r2 $r1
		addi $r1 $r1 -1
		and $r0 $r0 0x0038
		srlv $r0 $r0 $r1
		add $r2 $r2 $r0
		addi $r1 $r1 -1
		lw $r1 0($r1)
		and $r0 $r0 0x0007
		add $r2 $r2 $r0
		disp $r2 0
		jr $r3