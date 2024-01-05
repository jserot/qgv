#-------------------------------------------------
#
# Project created by QtCreator 2013-04-17T09:06:06
#
#-------------------------------------------------

QT       += core gui
QMAKE_MACOSX_DEPLOYMENT_TARGET = 12.6

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = Chrono
TEMPLATE = app

DESTDIR = ../bin

#QGVCore librairie
LIBS += -L$$OUT_PWD/../../lib -lQGVCore
INCLUDEPATH += $$PWD/../../QGVCore
DEPENDPATH += $$PWD/../../QGVCore

#GraphViz librairie
!include(../../QGVCore/GraphViz.pri) {
     error("fail open GraphViz.pri")
 }

SOURCES += main.cpp\
        MainWindow.cpp \
    QGraphicsViewEc.cpp

HEADERS  += MainWindow.h \
    QGraphicsViewEc.h

FORMS    += MainWindow.ui

#RESOURCES += \
#    ress.qrc
