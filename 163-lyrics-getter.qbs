import qbs

QtGuiApplication {
    consoleApplication: false
    Depends {name: "Qt.core"}
    Depends {name: "Qt.widgets"}
    Depends {name: "Qt.network"}

    files: [
        "icon/icon.rc",
        "icon/icon.ico",
        "main.cpp",
        "mainwindow.cpp",
        "song.cpp",
        "image.cpp",
        "togglebutton.cpp",
        "lyrics.cpp",
        "lyricshighlighter.cpp",
        "jsonhighlighter.cpp",
        "jsonviewer.cpp",
        "mainwindow.h",
        "song.h",
        "image.h",
        "togglebutton.h",
        "lyrics.h",
        "lyricshighlighter.h",
        "jsonhighlighter.h",
        "jsonviewer.h",
        "language/*.ts",
    ]

    Group {
        fileTagsFilter: "qm"
        fileTags: "qt.core.resource_data"
        Qt.core.resourcePrefix: "/language"
    }

    Group {     // Properties for the produced executable
        fileTagsFilter: product.type
        qbs.install: true
    }
}
