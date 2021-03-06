#-------------------------------------------------
#
# Project created by QtCreator 2013-01-02T10:07:51
#
#-------------------------------------------------

!include(common.pri) {
  error("Failed loading common.pri")
}

QT       += core dbus
QT       -= gui
MAKEFILE = Makefile.gateway
TEMPLATE = app
TARGET = wifigateway-server
CONFIG   += console
CONFIG   -= app_bundle
INCLUDEPATH += .
LIBS += -lruncommand -lfilewatcher -Lfilewatcher/ -Lruncommand/
PRE_TARGETDEPS += runcommand/libruncommand.a filewatcher/libfilewatcher.a
QMAKE_CXXFLAGS += -std=c++11

# Input
HEADERS += controller.h \
    controllerdbusadaptor.h \
    files.h \
    dbus.h \
    handle_signals.h \
    ec_simple.h \
    quotabeacon.h \
    sessionexport.h \
    gatewaycoreapplication.h

SOURCES += controller.cpp \
    controllerdbusadaptor.cpp \
    main.cpp \
    handle_signals.c \
    quotabeacon.cpp \
    gatewaycoreapplication.cpp

OTHER_FILES += \
    filewatcher/* \
    runcommand/* \
    wifigateway-script/* \
    wifigateway-server.pro \
    README.md \
    conf/hostapd.conf \
    conf/dnsmasq.conf \
    conf/interfaces
