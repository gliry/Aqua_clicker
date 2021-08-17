import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

ApplicationWindow {
    id: window
    visible: true

    Image
    {
        id: background
        z: -1
        visible: true
        anchors.fill: parent
        source: "qrc:/img/img/Background.png"
    }
    ToolButton {

        icon.width: 640
        icon.height: 640
        icon.source: "qrc:/img/img/Crab.png"
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:1.75;height:480;width:640}
}
##^##*/
