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
	(cd release; $(WINDEPLOYQT) $(LIBNAME).exe)
	cp $(EXTDLLS)/*.dll ./release
endif
ifeq ($(PLATFORM_TYPE), macos)
	cp lib$(LIBNAME).a $(DIST_DIR)/macos/lib
	cp *.h $(DIST_DIR)/macos/lib
	cp *.pri $(DIST_DIR)/macos/lib
endif

clean:
	make -f $(MAKEFILE) clean

clobber: 
	rm -f $(MAKEFILE)
	rm -f *.a
	rm -f $(LIBNAME).pro.user
	rm -f .qmake.stash
	rm -f *.o
	rm -f *~
