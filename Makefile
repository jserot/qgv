# Top-level, platform-independant Makefile

include ./config # All platform-dependent defns are here

MAKEFILE=Makefile.$(PLATFORM)

clean:
	(cd src/lib; make clean)
	(cd src/examples/sample; make -f $(MAKEFILE) clean)
	(cd src/examples/chrono; make -f $(MAKEFILE) clean)

clobber: 
	(cd src/lib; make clobber)
	(cd src/examples/sample; make clobber)
	(cd src/examples/chrono; make clobber)
	rm -f *~
	rm -rf ./dist/macos/bin/*.app
	rm -rf ./dist/macos/lib/*
	rm -rf ./dist/macos/lib/*
	rm -rf ./dist/windows/bin/*
	rm -rf ./dist/windows/lib/* # InnoSetup binary installer(s)
