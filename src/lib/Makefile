# Top-level, platform-independant Makefile

include ../../config # All platform-dependent defns are here

LIBNAME=QGVCore
MAKEFILE=Makefile.$(PLATFORM)

DIST_DIR=../../dist

all: build

qmake: $(LIBNAME).pro
	$(QMAKE) -o $(MAKEFILE) $(LIBNAME).pro

build: $(MAKEFILE)
	make -f $(MAKEFILE)

deploy:
ifeq ($(PLATFORM_TYPE), windows)
	cp release/lib$(LIBNAME).a $(DIST_DIR)/windows/lib
	cp *.h $(DIST_DIR)/windows/lib
	cp *.pri $(DIST_DIR)/windows/lib
#	cp $(EXTDLLS)/*.dll ./release
endif
ifeq ($(PLATFORM_TYPE), macos)
	cp lib$(LIBNAME).a $(DIST_DIR)/macos/lib
	cp *.h $(DIST_DIR)/macos/lib
	cp *.pri $(DIST_DIR)/macos/lib
endif

clean:
	make -f $(MAKEFILE) clean
	rm -f moc_*.{cpp,h}

clobber: 
	rm -f $(MAKEFILE)
	rm -f *.a
	rm -f $(LIBNAME).pro.user
	rm -f .qmake.stash
	rm -f *.o
	rm -f *~
