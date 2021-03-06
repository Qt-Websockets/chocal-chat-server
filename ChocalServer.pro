TEMPLATE = app

QT += qml quick quickcontrols2
CONFIG += c++11

## Translations
TRANSLATIONS = translations/translate-fa.ts

SOURCES += main.cpp \
    FileIO.cpp \
    Settings.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)

HEADERS += \
    FileIO.hpp \
    Settings.hpp

# Allow lupdate to search all QML and JS files for translations
lupdate_only {
SOURCES = *.qml \
	  *.js
}

VERSION = 1.0.1
VERSION_MAJOR = 1
VERSION_MINOR = 0
VERSION_REVISION = 1
VERSION_NUMBER = $$VERSION_MAJOR$$VERSION_MINOR$$VERSION_REVISION

DEFINES += VERSION=\\\"$$VERSION\\\"
DEFINES += VERSION_MAJOR=$$VERSION_MAJOR
DEFINES += VERSION_MINOR=$$VERSION_MINOR
DEFINES += VERSION_REVISION=$$VERSION_REVISION
DEFINES += VERSION_NUMBER=$$VERSION_NUMBER

QMAKE_TARGET_COMPANY = Pure Soft
QMAKE_TARGET_PRODUCT = Chocal Server
QMAKE_TARGET_DESCRIPTION = Chocal Chat server application
QMAKE_TARGET_COPYRIGHT = CopyRight (C) 2012 - 2016 . AllRights Reserved by Pure Soft

RC_ICONS = chocal.ico

DISTFILES +=
