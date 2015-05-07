import QtQuick 2.0
import Ubuntu.Components 1.1
import QtQuick.Window 2.0
import Ubuntu.Components.ListItems 1.0 as ListItem
MainView {
    id:main
    width: Screen.width
    height: Screen.height
    applicationName: "com.ubuntu.developer.mkamenjak77.anime"
    backgroundColor: "#A4CAFC"
    automaticOrientation :true
    PageStack {
        id: pageStack
        Component.onCompleted: push(page0)
        Page {
            id: page0
            visible: false
            Image {
                id: image
                width: parent.width;
                height: parent.height;
                source: "hchmain.png"
                clip: true      // only makes a difference if mode is PreserveAspectCrop
                smooth: true
                Column {
                    anchors.fill: parent
                    ListItem.Standard {
                        text: i18n.tr("My Anime List")
                        onClicked: pageStack.push(Qt.resolvedUrl("MAL.qml"))
                        progression: true
                    }
                    ListItem.Standard {
                        text: i18n.tr("Anime news network")
                        onClicked: pageStack.push(Qt.resolvedUrl("ANN.qml"))
                        progression: true
                    }
                    ListItem.Standard {
                        text: i18n.tr("Haruhi-chan")
                        onClicked: pageStack.push(Qt.resolvedUrl("HCN.qml"))
                        progression: true
                    }
                    ListItem.Standard {
                        text: i18n.tr("Crunchyroll")
                        onClicked: pageStack.push(Qt.resolvedUrl("Crunchyroll.qml"))
                        progression: true
                    }
                    ListItem.Standard {
                        text: i18n.tr("SGC")
                        onClicked: pageStack.push(Qt.resolvedUrl("SGC.qml"))
                        progression: true
                    }
                    ListItem.Standard {
                        text: i18n.tr("Malgraph")
                        onClicked: pageStack.push(Qt.resolvedUrl("Malgraph.qml"))
                        progression: true
                    }
                    ListItem.Standard {
                        text: i18n.tr("Jlist")
                        onClicked: pageStack.push(Qt.resolvedUrl("jlist.qml"))
                        progression: true
                    }
                }
            }
        }

    }
}
