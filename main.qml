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
        z: 3
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

    Item
    {
        id: chest_item
        width: parent.width / 3
        height: parent.width / 3
        anchors.right: background.right
        anchors.bottom: background.bottom
        anchors.bottomMargin: 0
        anchors.rightMargin: 20
        z: 2

        Button
        {
            id: chest_btn
            enabled: true
            width: parent.width
            height: parent.width
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter

            Image
            {
                id: chest_img
                anchors.fill: parent
                source: "qrc:/img/img/Chest.png"
            }
            transformOrigin: Item.Center
            background: transientParent
            onClicked:
            {
                inventory.visible = true
                monster_btn.enabled = false
                counter_points.visible = false
                timer_chest_anim.running = false
            }
        }

        SequentialAnimation
        {
            id: chest_anim

            NumberAnimation {
                target: chest_item
                property: "rotation"
                from: 0; to: 20
                duration: 200
            }

            NumberAnimation {
                target: chest_item
                property: "rotation"
                from: 20; to: -20
                duration: 200
            }

            NumberAnimation {
                target: chest_item
                property: "rotation"
                from: -20; to: 20
                duration: 200
            }

            NumberAnimation {
                target: chest_item
                property: "rotation"
                from: 20; to: -20
                duration: 200
            }

            NumberAnimation {
                target: chest_item
                property: "rotation"
                from: -20; to: 0
                duration: 200
            }
        }
    }

    Item
    {
        Timer
        {
            id: timer_chest_anim
            interval: 5000; running: true; repeat: true
            onTriggered: chest_anim.running = true
        }
    }



    Rectangle
    {
        id: inventory
        width: parent.width * 0.9
        height: parent.height * 0.95
        color: "white"
        opacity: 0.8
        visible: false
        border.width: 4
        anchors.verticalCenter: background.verticalCenter
        anchors.horizontalCenter: background.horizontalCenter
        radius: 40
        z: 4

        Button
        {
            id: exit_btn
            enabled: true
            width: parent.width / 7
            height: parent.width / 7
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.rightMargin: 20
            anchors.topMargin: 20

            Image
            {
                id: exit_img
                anchors.fill: parent
                source: "qrc:/img/img/Exit.png"
            }
            transformOrigin: Item.Center
            background: transientParent
            onClicked:
            {
                inventory.visible = false
                monster_btn.enabled = true
                counter_points.visible = true
                timer_chest_anim.running = true
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
        id: counter_points
        width: parent.width
        height: 50
        visible: true

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
