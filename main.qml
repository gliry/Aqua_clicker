import QtQuick.Particles 2.15
import QtQuick 2.12;
import QtQuick.Controls 2.5;
import QtQuick.Layouts 1.3;




ApplicationWindow
{
    id: window
    visible: true
    property alias now_pointsFontfamily: now_points.font.family
    property alias need_pointsFontfamily: need_points.font.family
    width: 400
    height: 800

    Image
    {
        id: background
        visible: true
        anchors.fill: parent
        source: "qrc:/img/img/Background.png"
        z: -1
    }

    ParticleSystem
    {
        id: particles_1
        ImageParticle
        {
            source: "qrc:/img/img/Bubble_1.png"
        }
        Emitter
        {
            // @disable-check M16
            x: 100
            // @disable-check M16
            y: 1000
            // @disable-check M16
            z: 1
            id: emitter_1
            lifeSpan: 12000
            sizeVariation: 16
            emitRate: 10
            velocity:
                AngleDirection
                {
                    angle: 270
                    angleVariation: 30
                    magnitude: 100
                }
        }
    }
    ParticleSystem
    {
        id: particles_2
        ImageParticle
        {
            source: "qrc:/img/img/Bubble_1.png"
        }
        Emitter
        {
            // @disable-check M16
            x: 400
            // @disable-check M16
            y: 1000
            // @disable-check M16
            z: 1
            id: emitter_2
            lifeSpan: 12000
            sizeVariation: 16
            emitRate: 10
            velocity:
                AngleDirection
                {
                    angle: 270
                    angleVariation: 30
                    magnitude: 100
                }
        }
    }
    Item{
        Button
        {
            id: btn_crab
            y: 40
            width: 400
            height: 400
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: background.horizontalCenter
            Image
            {
                id: crab
                anchors.fill: parent
                source: btn_crab.pressed? "qrc:/img/img/Crab.png" : "qrc:/img/img/Jellyfish.png"
            }
            transformOrigin: Item.Center
            background: transientParent
            onClicked: appCore.receiveFromQml()
        }
        SequentialAnimation on y
        {
            loops: Animation.Infinite

            // Move from minHeight to maxHeight in 300ms, using the OutExpo easing function
            NumberAnimation {
                from: 350; to: 450
                easing.type: Easing.InOutCirc; duration: 700
            }

            // Then move back to minHeight in 1 second, using the OutBounce easing function
            NumberAnimation {
                from: 450; to: 350
                easing.type: Easing.InOutCirc; duration: 700
            }
        }
    }


    Connections {
        target: appCore
        onSendToQml: {
                now_points.text = count
            }
    }

    Label {
        id: now_points
        x: 200
        y: 100
        width: 50
        text: "0"
        anchors.verticalCenter: need_points.verticalCenter
        font.pixelSize: 50
        horizontalAlignment: Text.AlignRight
        verticalAlignment: Text.AlignTop
        font.kerning: true
        font.weight: Font.Normal
        font.bold: false
        anchors.horizontalCenterOffset: -60
        anchors.horizontalCenter: background.horizontalCenter
        font.capitalization: Font.AllUppercase
        textFormat: Text.AutoText
        font.family: "Open Sans Condensed"

    }

    Label {
        id: need_points
        y: 100
        width: 50
        text: " / 1000"
        anchors.left: now_points.right
        font.pixelSize: 50
        horizontalAlignment: Text.AlignRight
        font.bold: false
        anchors.leftMargin: 110
        font.capitalization: Font.AllUppercase
        font.weight: Font.Normal
        font.family: "Open Sans Condensed"
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.01;height:480;width:400}
}
##^##*/
