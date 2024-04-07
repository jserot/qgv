!include(../../config) { error("Cannot open config file. Run configure script in top directory") }

QT       += core widgets
QMAKE_MACOSX_DEPLOYMENT_TARGET = 12.6


TARGET = QGVCore
TEMPLATE = lib
CONFIG += shared staticlib

#DESTDIR = ../lib
#DLLDESTDIR = ../bin

!include(GraphViz.pri) { error("Cannot open GraphViz.pri file") }

SOURCES += QGVScene.cpp \
    QGVNode.cpp \
    QGVEdge.cpp \
    QGVSubGraph.cpp \
    private/QGVCore.cpp \
    private/QGVGraphPrivate.cpp \
    private/QGVGvcPrivate.cpp \
    private/QGVEdgePrivate.cpp \
    private/QGVNodePrivate.cpp

HEADERS  += QGVScene.h \
    QGVNode.h \
    QGVEdge.h \
    QGVSubGraph.h \
    private/QGVCore.h \
    private/QGVGraphPrivate.h \
    private/QGVGvcPrivate.h \
    private/QGVEdgePrivate.h \
    private/QGVNodePrivate.h \
    qgv.h
