#
# Makefile for utility programs WD1770 FDC.
#
# This requires a version of BeebASM that supports command line defines with -D 
# BeebASM is available from : 
# http://www.retrosoftware.co.uk/wiki/index.php?title=BeebAsm
#

# Main target build everything
all: utils 

# Utility commands are FDC independednt, but must be linked against
# the appropreate version of the rom so entry points are correct.
# Format and Verify commands are included in ados1770 so don't need
# to be built here
utils: backup compact copy copyf duty sysinfo


#
# Utility commands
#
backup: $(SRCPATH)/backup.asm $(INCLUDES) $(ROMSRC)
	$(ASM) -i $(SRCPATH)/backup.asm -D ISROM=0 -D WD1770=1 -v > $(LIST)/backup-1770.txt

compact: $(SRCPATH)/compact.asm $(INCLUDES) $(ROMSRC)
	$(ASM) -i $(SRCPATH)/compact.asm -D ISROM=0 -D WD1770=1 -v > $(LIST)/compact-1770.txt
	
copy: $(SRCPATH)/copy.asm $(INCLUDES) $(ROMSRC)
	$(ASM) -i $(SRCPATH)/copy.asm -D ISROM=0 -D WD1770=1 -v > $(LIST)/copy-1770.txt
	
copyf: $(SRCPATH)/copyf.asm $(INCLUDES) $(ROMSRC)
	$(ASM) -i $(SRCPATH)/copyf.asm -D ISROM=0 -D WD1770=1 -v > $(LIST)/copyf-1770.txt

duty: $(SRCPATH)/duty.asm $(INCLUDES) $(ROMSRC)
	$(ASM) -i $(SRCPATH)/duty.asm -D ISROM=0 -D WD1770=1 -v > $(LIST)/duty-1770.txt

infall: $(SRCPATH)/infall.asm $(INCLUDES) $(ROMSRC)
	$(ASM) -i $(SRCPATH)/infall.asm -D ISROM=0 -D WD1770=1 -v > $(LIST)/infall-1770.txt

sysinfo: $(SRCPATH)/sysinfo.asm $(INCLUDES)
	$(ASM) -i $(SRCPATH)/sysinfo.asm -D ATM=0 -D ISROM=0 -v > $(LIST)/sysinfo-1770.txt

	
clean:
	rm -f *.DFS	
