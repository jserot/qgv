DEFINES += WITH_CGRAPH
INCLUDEPATH += private
QMAKE_CXXFLAGS += -DQGVCORE_LIB

unix {
 message("Building for unix")
 CONFIG += link_pkgconfig
 PKGCONFIG += libcdt libgvc libcgraph # libgraph 
}
win32 {
 message("Building for win32")
 DEFINES += WIN32_DLL
 DEFINES += GVDLL
 INCLUDEPATH += /ucrt64/include/graphviz
 LIBS += -L/ucrt64/lib -lgvc -lcgraph -lcdt # -lgraph
}
macx {
 message("Building for macx")
 # Enable pkg-config (pkg-config is disabled by default in the Qt package for mac)
 QT_CONFIG -= no-pkg-config
 # pkg-config location if your brew installation is standard
 PKG_CONFIG = /usr/local/bin/pkg-config
 PKGCONFIG -= libgraph
}
