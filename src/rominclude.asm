;
; Here we include and assemble the system rom, this way we can access it's symbols
; however the assembled copy is not saved (as ISROM=0)
;
        SYS40   = 1
		IOBASE 	= $EFF0
		INCLUDEVDG	= 0
if (WD1770)		
        include "..\src\ados1770.asm"
else
        include "..\src\ados.asm"
endif
