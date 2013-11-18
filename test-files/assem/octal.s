OCTAL:	andi $r0 $r0 0 #sets r0 to zero
		addi $r1 $r0 4 #sets r1 to 4
		lw $r0 0($r0) #loads the word we want
		srlv $r0 $r0 $r1 #shifts the word right by 4 so we can actually bitmask it with our 8 bit immediate
		andi $r2 $r0 0x1c #get the 3 bits that we want 
		addi $r1 $r1 2 #now r1 equals 6
		sllv $r2 $r2 $r1 #shift the bits back into the right position
		addi $r1 $r1 -5 #now r1 equals 1
		andi $r0 $r0 0 #reset r0 to zero
		lw $r0 0($r0) #reload our word
		andi $r0 $r0 0x0038 #get the second set of bits
		sllv $r0 $r0 $r1 #shift the bits into the right place
		add $r2 $r2 $r0 #store the total in r2
		addi $r1 $r1 -1 #r1 now equals zero
		lw $r0 0($r1) #load the word back into r0
		andi $r0 $r0 0x0007 #get the final set of 3 bits
		add $r2 $r2 $r0 #accumulate it with the total
		disp $r2 0 #display the total
		jr $r3 #jump back to r3