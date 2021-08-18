import QtQuick.Particles 2.15
import QtQuick 2.12;
import QtQuick.Controls 2.5;
import QtQuick.Layouts 1.3;


ApplicationWindow
{
    id: window
    visible: true
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

            NumberAnimation {
                from: 350; to: 450
                easing.type: Easing.InOutCirc; duration: 700
            }

            NumberAnimation {
                from: 450; to: 350
                easing.type: Easing.InOutCirc; duration: 700
            }
        }
    }

    Connections
    {
        target: appCore
        onSendToQml:
        {
            now_points.text = count
        }
    }

    Item
    {
        id: item1
        width: parent.width
        height: 50

        Label
        {
            id: now_points
            text: "0"
            anchors.top: parent.top
            font.pixelSize: 40
            anchors.topMargin: 60
            anchors.horizontalCenter: parent.horizontalCenter
            font.kerning: true
            font.weight: Font.Normal
            font.bold: false
            font.capitalization: Font.AllUppercase
            textFormat: Text.AlignVCenter
            font.family: new_font.name
        }
    }

    FontLoader {
        id: new_font
        source: "qrc:/img/fonts/neuropol.ttf"
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.01;height:480;width:400}
}
##^##*/
