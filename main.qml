import QtQuick 2.12;
import QtQuick.Controls 2.5;
import QtQuick.Layouts 1.3;


ApplicationWindow
{
    id: window
    visible: true

    Image
    {
        id: background
        visible: true
        anchors.fill: parent
        source: "qrc:/img/img/Background.png"
        z: -1
    }

    Button
    {
        id: btn_crab
        y: 40
        width: 400
        height: 400
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: background.horizontalCenter
        transformOrigin: Item.Center
        signal monsterClicked
        background: transientParent

        Image
        {
            id: crab
            anchors.fill: parent
            source: btn_crab.pressed? "qrc:/img/img/Crab.png" : "qrc:/img/img/Jellyfish.png";

        }



    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.66;height:480;width:640}D{i:2}
}
##^##*/
