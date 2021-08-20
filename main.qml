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
            startTime: 10000
            velocity:
                AngleDirection
                {
                    angle: 270
                    angleVariation: 20
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
            startTime: 10000
            velocity:
                AngleDirection
                {
                    angle: 270
                    angleVariation: 20
                    magnitude: 100
                }
        }
    }

    Item
    {
        id: monster_item
        width: parent.width
        height: parent.width
        Button
        {
            id: monster_btn
            enabled: true
            width: parent.width
            height: parent.width
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter

            Image
            {
                id: monster
                anchors.fill: parent
                source: "qrc:/img/img/Jellyfish_2.png"
                states:
                [
                    State
                    {
                        name: "Crab"
                        PropertyChanges
                        {
                            target: monster
                            source: "qrc:/img/img/Crab.png"
                        }
                    },

                    State
                    {
                        name: "Jellyfish"
                        PropertyChanges
                        {
                            target: monster
                            source: "qrc:/img/img/Jellyfish.png"
                        }
                    },

                    State
                    {
                        name: "Shrimp"
                        PropertyChanges
                        {
                            target: monster
                            source: "qrc:/img/img/Shrimp.png"
                        }
                    },

                    State
                    {
                        name: "Snail"
                        PropertyChanges
                        {
                            target: monster
                            source: "qrc:/img/img/Snail.png"
                        }
                    }
                ]
            }
            transformOrigin: Item.Center
            background: transientParent
            onClicked:
            {
                appCore.receiveFromQml()
            }
        }

        SequentialAnimation on y
        {
            loops: Animation.Infinite
            id: infinity_animation

            NumberAnimation
            {
                from: 150; to: 250
                easing.type: Easing.InOutCirc
                duration: 700
            }

            NumberAnimation
            {
                from: 250; to: 150
                easing.type: Easing.InOutCirc
                duration: 700
            }
        }


        SequentialAnimation
        {
            id: killing_animation
            ScriptAction
            {
                script:
                {
                    infinity_animation.pause()
                    monster_btn.enabled = false
                }
            }


            ParallelAnimation
            {
                NumberAnimation
                {
                    target: monster_item
                    property: "scale"
                    from: 1.0; to: 0.2
                    duration: 500
                }

                NumberAnimation
                {
                    target: monster_item
                    property: "opacity"
                    from: 1.0; to: 0.0
                    duration: 500
                }

                NumberAnimation {
                    target: monster_item
                    property: "rotation"
                    from: 0; to: 180
                    duration: 500
                }

                XAnimator
                {
                    target: monster_item
                    to: 100
                    duration: 500
                    easing.type: Easing.InOutCirc
                }

                YAnimator
                {
                    target: monster_item
                    to: 600
                    duration: 500
                    easing.type: Easing.InOutCirc
                }
            }

            ScriptAction
            {
                script:
                {
                    monster.state = store.text
                    creating_animation.running = true;
                }
            }
        }
        SequentialAnimation
        {
            id: creating_animation

            ParallelAnimation
            {
                NumberAnimation
                {
                    target: monster_item
                    property: "scale"
                    from: 0.2; to: 1.0
                    duration: 500
                }

                NumberAnimation
                {
                    target: monster_item
                    property: "opacity"
                    from: 0.2; to: 1.0
                    duration: 500
                }


                NumberAnimation {
                    target: monster_item
                    property: "rotation"
                    from: 180; to: 360
                    duration: 500
                }

                XAnimator
                {
                    target: monster_item
                    from: 100
                    to: 0
                    duration: 500
                    easing.type: Easing.InOutCirc
                }

                YAnimator
                {
                    target: monster_item
                    from: 600
                    to: 200
                    duration: 500
                    easing.type: Easing.InOutCirc
                }
            }
            ScriptAction
            {
                script:
                {
                    infinity_animation.resume()
                    monster_btn.enabled = true
                }
            }
        }
    }

    Connections
    {
        target: appCore
        function onSendToQml(count)
        {
            now_points.text = count
        }
        function onMonsterKilled(name_new_monster)
        {
            killing_animation.running = true
            store.text = name_new_monster

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

    Text {
        id: store
        text: qsTr("")
        visible: false
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.01;height:480;width:400}
}
##^##*/
