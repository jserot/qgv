!include(../../../config) { error("Cannot open config file. Run configure script in top directory") }

QT       += core gui widgets
QMAKE_MACOSX_DEPLOYMENT_TARGET = 12.6

TARGET = sample
TEMPLATE = app

#QGVCore librairie
LIBS += -L$$OUT_PWD/../../../dist/$$PLATFORM_TYPE/lib -lQGVCore
INCLUDEPATH += $$PWD/../../../dist/$$PLATFORM_TYPE/lib
DEPENDPATH += $$PWD/../../../dist/$$PLATFORM_TYPE/lib

!include(../../../dist/$$PLATFORM_TYPE/lib/GraphViz.pri) { error("Cannot open GraphViz.pri file. Make deploy in lib src directory") }

SOURCES += main.cpp\
        mainWindow.cpp \
        QGraphicsViewEc.cpp

HEADERS  += mainWindow.h \
    QGraphicsViewEc.h

FORMS    += mainWindow.ui

RESOURCES += \
    ress.qrc
