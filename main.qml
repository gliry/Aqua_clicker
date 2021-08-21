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
                        name: "Crab_common"
                        PropertyChanges
                        {
                            target: monster
                            source: "qrc:/img/img/Crab_common.png"
                        }
                    },

                    State
                    {
                        name: "Crab_uncommon"
                        PropertyChanges
                        {
                            target: monster
                            source: "qrc:/img/img/Crab_uncommon.png"
                        }
                    },

                    State
                    {
                        name: "Crab_rare"
                        PropertyChanges
                        {
                            target: monster
                            source: "qrc:/img/img/Crab_rare.png"
                        }
                    },

                    State
                    {
                        name: "Crab_mythical"
                        PropertyChanges
                        {
                            target: monster
                            source: "qrc:/img/img/Crab_mythical.png"
                        }
                    },

                    State
                    {
                        name: "Crab_epic"
                        PropertyChanges
                        {
                            target: monster
                            source: "qrc:/img/img/Crab_epic.png"
                        }
                    },

                    State
                    {
                        name: "Crab_legendary"
                        PropertyChanges
                        {
                            target: monster
                            source: "qrc:/img/img/Crab_legendary.png"
                        }
                    },

                    State
                    {
                        name: "Crab_immortal"
                        PropertyChanges
                        {
                            target: monster
                            source: "qrc:/img/img/Crab_immortal.png"
                        }
                    },

                    State
                    {
                        name: "Crab_silver"
                        PropertyChanges
                        {
                            target: monster
                            source: "qrc:/img/img/Crab_silver.png"
                        }
                    },

                    State
                    {
                        name: "Crab_gold"
                        PropertyChanges
                        {
                            target: monster
                            source: "qrc:/img/img/Crab_gold.png"
                        }
                    },

                    State
                    {
                        name: "Jellyfish_common"
                        PropertyChanges
                        {
                            target: monster
                            source: "qrc:/img/img/Jellyfish_common.png"
                        }
                    },

                    State
                    {
                        name: "Jellyfish_uncommon"
                        PropertyChanges
                        {
                            target: monster
                            source: "qrc:/img/img/Jellyfish_uncommon.png"
                        }
                    },

                    State
                    {
                        name: "Jellyfish_rare"
                        PropertyChanges
                        {
                            target: monster
                            source: "qrc:/img/img/Jellyfish_rare.png"
                        }
                    },

                    State
                    {
                        name: "Jellyfish_mythical"
                        PropertyChanges
                        {
                            target: monster
                            source: "qrc:/img/img/Jellyfish_mythical.png"
                        }
                    },

                    State
                    {
                        name: "Jellyfish_epic"
                        PropertyChanges
                        {
                            target: monster
                            source: "qrc:/img/img/Jellyfish_epic.png"
                        }
                    },

                    State
                    {
                        name: "Jellyfish_legendary"
                        PropertyChanges
                        {
                            target: monster
                            source: "qrc:/img/img/Jellyfish_legendary.png"
                        }
                    },

                    State
                    {
                        name: "Jellyfish_immortal"
                        PropertyChanges
                        {
                            target: monster
                            source: "qrc:/img/img/Jellyfish_immortal.png"
                        }
                    },

                    State
                    {
                        name: "Jellyfish_silver"
                        PropertyChanges
                        {
                            target: monster
                            source: "qrc:/img/img/Jellyfish_silver.png"
                        }
                    },

                    State
                    {
                        name: "Jellyfish_gold"
                        PropertyChanges
                        {
                            target: monster
                            source: "qrc:/img/img/Jellyfish_gold.png"
                        }
                    },

                    State
                    {
                        name: "Shrimp_common"
                        PropertyChanges
                        {
                            target: monster
                            source: "qrc:/img/img/Shrimp_common.png"
                        }
                    },

                    State
                    {
                        name: "Shrimp_uncommon"
                        PropertyChanges
                        {
                            target: monster
                            source: "qrc:/img/img/Shrimp_uncommon.png"
                        }
                    },

                    State
                    {
                        name: "Shrimp_rare"
                        PropertyChanges
                        {
                            target: monster
                            source: "qrc:/img/img/Shrimp_rare.png"
                        }
                    },

                    State
                    {
                        name: "Shrimp_mythical"
                        PropertyChanges
                        {
                            target: monster
                            source: "qrc:/img/img/Shrimp_mythical.png"
                        }
                    },

                    State
                    {
                        name: "Shrimp_epic"
                        PropertyChanges
                        {
                            target: monster
                            source: "qrc:/img/img/Shrimp_epic.png"
                        }
                    },

                    State
                    {
                        name: "Shrimp_legendary"
                        PropertyChanges
                        {
                            target: monster
                            source: "qrc:/img/img/Shrimp_legendary.png"
                        }
                    },

                    State
                    {
                        name: "Shrimp_immortal"
                        PropertyChanges
                        {
                            target: monster
                            source: "qrc:/img/img/Shrimp_immortal.png"
                        }
                    },

                    State
                    {
                        name: "Shrimp_silver"
                        PropertyChanges
                        {
                            target: monster
                            source: "qrc:/img/img/Shrimp_silver.png"
                        }
                    },

                    State
                    {
                        name: "Shrimp_gold"
                        PropertyChanges
                        {
                            target: monster
                            source: "qrc:/img/img/Shrimp_gold.png"
                        }
                    },

                    State
                    {
                        name: "Snail_common"
                        PropertyChanges
                        {
                            target: monster
                            source: "qrc:/img/img/Snail_common.png"
                        }
                    },

                    State
                    {
                        name: "Snail_uncommon"
                        PropertyChanges
                        {
                            target: monster
                            source: "qrc:/img/img/Snail_uncommon.png"
                        }
                    },

                    State
                    {
                        name: "Snail_rare"
                        PropertyChanges
                        {
                            target: monster
                            source: "qrc:/img/img/Snail_rare.png"
                        }
                    },

                    State
                    {
                        name: "Snail_mythical"
                        PropertyChanges
                        {
                            target: monster
                            source: "qrc:/img/img/Snail_mythical.png"
                        }
                    },

                    State
                    {
                        name: "Snail_epic"
                        PropertyChanges
                        {
                            target: monster
                            source: "qrc:/img/img/Snail_epic.png"
                        }
                    },

                    State
                    {
                        name: "Snail_legendary"
                        PropertyChanges
                        {
                            target: monster
                            source: "qrc:/img/img/Snail_legendary.png"
                        }
                    },

                    State
                    {
                        name: "Snail_immortal"
                        PropertyChanges
                        {
                            target: monster
                            source: "qrc:/img/img/Snail_immortal.png"
                        }
                    },

                    State
                    {
                        name: "Snail_silver"
                        PropertyChanges
                        {
                            target: monster
                            source: "qrc:/img/img/Snail_silver.png"
                        }
                    },

                    State
                    {
                        name: "Snail_gold"
                        PropertyChanges
                        {
                            target: monster
                            source: "qrc:/img/img/Snail_gold.png"
                        }
                    },

                    State
                    {
                        name: "Turtle_common"
                        PropertyChanges
                        {
                            target: monster
                            source: "qrc:/img/img/Turtle_common.png"
                        }
                    },

                    State
                    {
                        name: "Turtle_uncommon"
                        PropertyChanges
                        {
                            target: monster
                            source: "qrc:/img/img/Turtle_uncommon.png"
                        }
                    },

                    State
                    {
                        name: "Turtle_rare"
                        PropertyChanges
                        {
                            target: monster
                            source: "qrc:/img/img/Turtle_rare.png"
                        }
                    },

                    State
                    {
                        name: "Turtle_mythical"
                        PropertyChanges
                        {
                            target: monster
                            source: "qrc:/img/img/Turtle_mythical.png"
                        }
                    },

                    State
                    {
                        name: "Turtle_epic"
                        PropertyChanges
                        {
                            target: monster
                            source: "qrc:/img/img/Turtle_epic.png"
                        }
                    },

                    State
                    {
                        name: "Turtle_legendary"
                        PropertyChanges
                        {
                            target: monster
                            source: "qrc:/img/img/Turtle_legendary.png"
                        }
                    },

                    State
                    {
                        name: "Turtle_immortal"
                        PropertyChanges
                        {
                            target: monster
                            source: "qrc:/img/img/Turtle_immortal.png"
                        }
                    },

                    State
                    {
                        name: "Turtle_silver"
                        PropertyChanges
                        {
                            target: monster
                            source: "qrc:/img/img/Turtle_silver.png"
                        }
                    },

                    State
                    {
                        name: "Turtle_gold"
                        PropertyChanges
                        {
                            target: monster
                            source: "qrc:/img/img/Turtle_gold.png"
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


            Rectangle
            {
                id: rect_tresure
                width: parent.width * 0.9
                height: parent.height * 0.9 - 19
                color: "transparent"
                radius: 20
                anchors.top: parent.top
                anchors.topMargin: 80
                anchors.horizontalCenter: parent.horizontalCenter


                ListView
                {
                    id: inventory_treasure_crab
                    width: parent.width
                    height: parent.height
                    anchors.left: parent.left
                    anchors.top: parent.top
                    anchors.topMargin: 0
                    anchors.leftMargin: 0
                    orientation: ListView.Horizontal
                    spacing: 10
                    clip: true
                    model: ["qrc:/img/img/Crab_common.png", "qrc:/img/img/Crab_uncommon.png",
                    "qrc:/img/img/Crab_rare.png", "qrc:/img/img/Crab_mythical.png", "qrc:/img/img/Crab_epic.png",
                    "qrc:/img/img/Crab_legendary.png", "qrc:/img/img/Crab_immortal.png", "qrc:/img/img/Crab_silver.png",
                    "qrc:/img/img/Crab_gold.png"]
                    delegate:
                        Rectangle
                        {
                            width: ListView.view.width / 4
                            height: ListView.view.width / 4
                            border.width: 3
                            radius: 20
                            border.color: "black"
                            Image
                            {
                                width: parent.width * 0.8
                                height: parent.width * 0.8
                                anchors.top: parent.top
                                anchors.horizontalCenter: parent.horizontalCenter
                                source: modelData
                            }
                            Text
                            {
                                anchors.bottom: parent.bottom
                                anchors.bottomMargin: 5
                                anchors.horizontalCenter: parent.horizontalCenter
                                text: qsTr("12345")
                            }
                        }
                }

                ListView
                {
                    id: inventory_treasure_jellyfish
                    width: parent.width
                    height: parent.height
                    anchors.top: parent.top
                    anchors.topMargin: 90
                    orientation: ListView.Horizontal
                    spacing: 10
                    clip: true
                    model: ["qrc:/img/img/Jellyfish_common.png", "qrc:/img/img/Jellyfish_uncommon.png",
                    "qrc:/img/img/Jellyfish_rare.png", "qrc:/img/img/Jellyfish_mythical.png", "qrc:/img/img/Jellyfish_epic.png",
                    "qrc:/img/img/Jellyfish_legendary.png", "qrc:/img/img/Jellyfish_immortal.png", "qrc:/img/img/Jellyfish_silver.png",
                    "qrc:/img/img/Jellyfish_gold.png"]
                    delegate:
                        Rectangle
                        {
                            width: ListView.view.width / 4
                            height: ListView.view.width / 4
                            border.width: 3
                            radius: 20
                            border.color: "black"
                            Image
                            {
                                width: parent.width * 0.8
                                height: parent.width * 0.8
                                anchors.top: parent.top
                                anchors.horizontalCenter: parent.horizontalCenter
                                source: modelData
                            }
                            Text
                            {
                                anchors.bottom: parent.bottom
                                anchors.bottomMargin: 5
                                anchors.horizontalCenter: parent.horizontalCenter
                                text: qsTr("12345")
                            }
                        }
                }

                ListView
                {
                    id: inventory_treasure_shrimp
                    width: parent.width
                    height: parent.height
                    anchors.left: parent.left
                    anchors.top: parent.top
                    anchors.topMargin: 180
                    anchors.leftMargin: 0
                    orientation: ListView.Horizontal
                    spacing: 10
                    clip: true
                    model: ["qrc:/img/img/Shrimp_common.png", "qrc:/img/img/Shrimp_uncommon.png",
                    "qrc:/img/img/Shrimp_rare.png", "qrc:/img/img/Shrimp_mythical.png", "qrc:/img/img/Shrimp_epic.png",
                    "qrc:/img/img/Shrimp_legendary.png", "qrc:/img/img/Shrimp_immortal.png", "qrc:/img/img/Shrimp_silver.png",
                    "qrc:/img/img/Shrimp_gold.png"]
                    delegate:
                        Rectangle
                        {
                            width: ListView.view.width / 4
                            height: ListView.view.width / 4
                            border.width: 3
                            radius: 20
                            border.color: "black"
                            Image
                            {
                                width: parent.width * 0.8
                                height: parent.width * 0.8
                                anchors.top: parent.top
                                anchors.horizontalCenter: parent.horizontalCenter
                                source: modelData
                            }
                            Text
                            {
                                anchors.bottom: parent.bottom
                                anchors.bottomMargin: 5
                                anchors.horizontalCenter: parent.horizontalCenter
                                text: qsTr("12345")
                            }
                        }
                }

                ListView
                {
                    id: inventory_treasure_snail
                    width: parent.width
                    height: parent.height
                    anchors.left: parent.left
                    anchors.top: parent.top
                    anchors.topMargin: 270
                    anchors.leftMargin: 0
                    orientation: ListView.Horizontal
                    spacing: 10
                    clip: true
                    model: ["qrc:/img/img/Snail_common.png", "qrc:/img/img/Snail_uncommon.png",
                    "qrc:/img/img/Snail_rare.png", "qrc:/img/img/Snail_mythical.png", "qrc:/img/img/Snail_epic.png",
                    "qrc:/img/img/Snail_legendary.png", "qrc:/img/img/Snail_immortal.png", "qrc:/img/img/Snail_silver.png",
                    "qrc:/img/img/Snail_gold.png"]
                    delegate:
                        Rectangle
                        {
                            width: ListView.view.width / 4
                            height: ListView.view.width / 4
                            border.width: 3
                            radius: 20
                            border.color: "black"
                            Image
                            {
                                width: parent.width * 0.8
                                height: parent.width * 0.8
                                anchors.top: parent.top
                                anchors.horizontalCenter: parent.horizontalCenter
                                source: modelData
                            }
                            Text
                            {
                                anchors.bottom: parent.bottom
                                anchors.bottomMargin: 5
                                anchors.horizontalCenter: parent.horizontalCenter
                                text: qsTr("12345")
                            }
                        }
                }

                ListView
                {
                    id: inventory_treasure_turtle
                    width: parent.width
                    height: parent.height
                    anchors.left: parent.left
                    anchors.top: parent.top
                    anchors.topMargin: 360
                    anchors.leftMargin: 0
                    orientation: ListView.Horizontal
                    spacing: 10
                    clip: true
                    model: ["qrc:/img/img/Turtle_common.png", "qrc:/img/img/Turtle_uncommon.png",
                    "qrc:/img/img/Turtle_rare.png", "qrc:/img/img/Turtle_mythical.png", "qrc:/img/img/Turtle_epic.png",
                    "qrc:/img/img/Turtle_legendary.png", "qrc:/img/img/Turtle_immortal.png", "qrc:/img/img/Turtle_silver.png",
                    "qrc:/img/img/Turtle_gold.png"]


                    delegate:
                        Rectangle
                        {
                            width: ListView.view.width / 4
                            height: ListView.view.width / 4
                            border.width: 3
                            radius: 20
                            border.color: "black"
                            Image
                            {
                                width: parent.width * 0.8
                                height: parent.width * 0.8
                                anchors.top: parent.top
                                anchors.horizontalCenter: parent.horizontalCenter
                                source: modelData
                            }
                            Text
                            {
                                anchors.bottom: parent.bottom
                                anchors.bottomMargin: 5
                                anchors.horizontalCenter: parent.horizontalCenter
                                text: qsTr("12345")
                            }
                        }
                }
            }
        }





    Connections
    {
        target: appCore
        function onSendToQml(count, monster_count)
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


/*

                ListView
                {
                    id: inventory_treasure_shrimp
                    width: parent.width
                    height: parent.height
                    anchors.left: parent.left
                    anchors.top: parent.top
                    anchors.topMargin: 200
                    anchors.leftMargin: 0
                    orientation: ListView.Horizontal
                    spacing: 10
                    clip: true
                    model: ["qrc:/img/img/Shrimp_common.png", "qrc:/img/img/Shrimp_uncommon.png",
                    "qrc:/img/img/Shrimp_rare.png", "qrc:/img/img/Shrimp_mythical.png", "qrc:/img/img/Shrimp_epic.png",
                    "qrc:/img/img/Shrimp_legendary.png", "qrc:/img/img/Shrimp_immortal.png", "qrc:/img/img/Shrimp_silver.png",
                    "qrc:/img/img/Shrimp_gold.png"]
                    delegate:
                        Rectangle
                        {
                            width: ListView.view.width / 4
                            height: ListView.view.width / 4
                            border.width: 3
                            radius: 20
                            border.color: "black"
                            Image
                            {
                                width: parent.width * 0.8
                                height: parent.width * 0.8
                                anchors.top: parent.top
                                anchors.horizontalCenter: parent.horizontalCenter
                                source: modelData
                            }
                            Text
                            {
                                anchors.bottom: parent.bottom
                                anchors.bottomMargin: 5
                                anchors.horizontalCenter: parent.horizontalCenter
                                text: qsTr("12345")
                            }
                        }
                }

                ListView
                {
                    id: inventory_treasure_shrimp_2
                    width: parent.width
                    height: parent.height
                    anchors.left: parent.left
                    anchors.top: parent.top
                    anchors.topMargin: 300
                    anchors.leftMargin: 0
                    orientation: ListView.Horizontal
                    spacing: 10
                    clip: true
                    model: ["qrc:/img/img/Shrimp_common.png", "qrc:/img/img/Shrimp_uncommon.png",
                    "qrc:/img/img/Shrimp_rare.png", "qrc:/img/img/Shrimp_mythical.png", "qrc:/img/img/Shrimp_epic.png",
                    "qrc:/img/img/Shrimp_legendary.png", "qrc:/img/img/Shrimp_immortal.png", "qrc:/img/img/Shrimp_silver.png",
                    "qrc:/img/img/Shrimp_gold.png"]
                    delegate:
                        Rectangle
                        {
                            width: ListView.view.width / 4
                            height: ListView.view.width / 4
                            border.width: 3
                            radius: 20
                            border.color: "black"
                            Image
                            {
                                width: parent.width * 0.8
                                height: parent.width * 0.8
                                anchors.top: parent.top
                                anchors.horizontalCenter: parent.horizontalCenter
                                source: modelData
                            }
                            Text
                            {
                                anchors.bottom: parent.bottom
                                anchors.bottomMargin: 5
                                anchors.horizontalCenter: parent.horizontalCenter
                                text: qsTr("12345")
                            }
                        }
                }

                ListView
                {
                    id: inventory_treasure_shrimp_3
                    width: parent.width
                    height: parent.height
                    anchors.left: parent.left
                    anchors.top: parent.top
                    anchors.topMargin: 400
                    anchors.leftMargin: 0
                    orientation: ListView.Horizontal
                    spacing: 10
                    clip: true
                    model: ["qrc:/img/img/Shrimp_common.png", "qrc:/img/img/Shrimp_uncommon.png",
                    "qrc:/img/img/Shrimp_rare.png", "qrc:/img/img/Shrimp_mythical.png", "qrc:/img/img/Shrimp_epic.png",
                    "qrc:/img/img/Shrimp_legendary.png", "qrc:/img/img/Shrimp_immortal.png", "qrc:/img/img/Shrimp_silver.png",
                    "qrc:/img/img/Shrimp_gold.png"]
                    delegate:
                        Rectangle
                        {
                            width: ListView.view.width / 4
                            height: ListView.view.width / 4
                            border.width: 3
                            radius: 20
                            border.color: "black"
                            Image
                            {
                                width: parent.width * 0.8
                                height: parent.width * 0.8
                                anchors.top: parent.top
                                anchors.horizontalCenter: parent.horizontalCenter
                                source: modelData
                            }
                            Text
                            {
                                anchors.bottom: parent.bottom
                                anchors.bottomMargin: 5
                                anchors.horizontalCenter: parent.horizontalCenter
                                text: qsTr("12345")
                            }
                        }
                }

                ListView
                {
                    id: inventory_treasure_shrimp_4
                    width: parent.width
                    height: parent.height
                    anchors.left: parent.left
                    anchors.top: parent.top
                    anchors.topMargin: 500
                    anchors.leftMargin: 0
                    orientation: ListView.Horizontal
                    spacing: 10
                    clip: true
                    model: ["qrc:/img/img/Shrimp_common.png", "qrc:/img/img/Shrimp_uncommon.png",
                    "qrc:/img/img/Shrimp_rare.png", "qrc:/img/img/Shrimp_mythical.png", "qrc:/img/img/Shrimp_epic.png",
                    "qrc:/img/img/Shrimp_legendary.png", "qrc:/img/img/Shrimp_immortal.png", "qrc:/img/img/Shrimp_silver.png",
                    "qrc:/img/img/Shrimp_gold.png"]
                    delegate:
                        Rectangle
                        {
                            width: ListView.view.width / 4
                            height: ListView.view.width / 4
                            border.width: 3
                            radius: 20
                            border.color: "black"
                            Image
                            {
                                width: parent.width * 0.8
                                height: parent.width * 0.8
                                anchors.top: parent.top
                                anchors.horizontalCenter: parent.horizontalCenter
                                source: modelData
                            }
                            Text
                            {
                                anchors.bottom: parent.bottom
                                anchors.bottomMargin: 5
                                anchors.horizontalCenter: parent.horizontalCenter
                                text: qsTr("12345")
                            }
                        }
                }

                ListView
                {
                    id: inventory_treasure_shrimp_5
                    width: parent.width
                    height: parent.height
                    anchors.left: parent.left
                    anchors.top: parent.top
                    anchors.topMargin: 600
                    anchors.leftMargin: 0
                    orientation: ListView.Horizontal
                    spacing: 10
                    clip: true
                    model: ["qrc:/img/img/Shrimp_common.png", "qrc:/img/img/Shrimp_uncommon.png",
                    "qrc:/img/img/Shrimp_rare.png", "qrc:/img/img/Shrimp_mythical.png", "qrc:/img/img/Shrimp_epic.png",
                    "qrc:/img/img/Shrimp_legendary.png", "qrc:/img/img/Shrimp_immortal.png", "qrc:/img/img/Shrimp_silver.png",
                    "qrc:/img/img/Shrimp_gold.png"]
                    delegate:
                        Rectangle
                        {
                            width: ListView.view.width / 4
                            height: ListView.view.width / 4
                            border.width: 3
                            radius: 20
                            border.color: "black"
                            Image
                            {
                                width: parent.width * 0.8
                                height: parent.width * 0.8
                                anchors.top: parent.top
                                anchors.horizontalCenter: parent.horizontalCenter
                                source: modelData
                            }
                            Text
                            {
                                anchors.bottom: parent.bottom
                                anchors.bottomMargin: 5
                                anchors.horizontalCenter: parent.horizontalCenter
                                text: qsTr("12345")
                            }
                        }
                }

                ListView
                {
                    id: inventory_treasure_shrimp_6
                    width: parent.width
                    height: parent.height
                    anchors.left: parent.left
                    anchors.top: parent.top
                    anchors.topMargin: 700
                    anchors.leftMargin: 0
                    orientation: ListView.Horizontal
                    spacing: 10
                    clip: true
                    model: ["qrc:/img/img/Shrimp_common.png", "qrc:/img/img/Shrimp_uncommon.png",
                    "qrc:/img/img/Shrimp_rare.png", "qrc:/img/img/Shrimp_mythical.png", "qrc:/img/img/Shrimp_epic.png",
                    "qrc:/img/img/Shrimp_legendary.png", "qrc:/img/img/Shrimp_immortal.png", "qrc:/img/img/Shrimp_silver.png",
                    "qrc:/img/img/Shrimp_gold.png"]
                    delegate:
                        Rectangle
                        {
                            width: ListView.view.width / 4
                            height: ListView.view.width / 4
                            border.width: 3
                            radius: 20
                            border.color: "black"
                            Image
                            {
                                width: parent.width * 0.8
                                height: parent.width * 0.8
                                anchors.top: parent.top
                                anchors.horizontalCenter: parent.horizontalCenter
                                source: modelData
                            }
                            Text
                            {
                                anchors.bottom: parent.bottom
                                anchors.bottomMargin: 5
                                anchors.horizontalCenter: parent.horizontalCenter
                                text: qsTr("12345")
                            }
                        }
                }

                ListView
                {
                    id: inventory_treasure_shrimp_7
                    width: parent.width
                    height: parent.height
                    anchors.left: parent.left
                    anchors.top: parent.top
                    anchors.topMargin: 800
                    anchors.leftMargin: 0
                    orientation: ListView.Horizontal
                    spacing: 10
                    clip: true
                    model: ["qrc:/img/img/Shrimp_common.png", "qrc:/img/img/Shrimp_uncommon.png",
                    "qrc:/img/img/Shrimp_rare.png", "qrc:/img/img/Shrimp_mythical.png", "qrc:/img/img/Shrimp_epic.png",
                    "qrc:/img/img/Shrimp_legendary.png", "qrc:/img/img/Shrimp_immortal.png", "qrc:/img/img/Shrimp_silver.png",
                    "qrc:/img/img/Shrimp_gold.png"]
                    delegate:
                        Rectangle
                        {
                            width: ListView.view.width / 4
                            height: ListView.view.width / 4
                            border.width: 3
                            radius: 20
                            border.color: "black"
                            Image
                            {
                                width: parent.width * 0.8
                                height: parent.width * 0.8
                                anchors.top: parent.top
                                anchors.horizontalCenter: parent.horizontalCenter
                                source: modelData
                            }
                            Text
                            {
                                anchors.bottom: parent.bottom
                                anchors.bottomMargin: 5
                                anchors.horizontalCenter: parent.horizontalCenter
                                text: qsTr("12345")
                            }
                        }
                }

                ListView
                {
                    id: inventory_treasure_shrimp_8
                    width: parent.width
                    height: parent.height
                    anchors.left: parent.left
                    anchors.top: parent.top
                    anchors.topMargin: 900
                    anchors.leftMargin: 0
                    orientation: ListView.Horizontal
                    spacing: 10
                    clip: true
                    model: ["qrc:/img/img/Shrimp_common.png", "qrc:/img/img/Shrimp_uncommon.png",
                    "qrc:/img/img/Shrimp_rare.png", "qrc:/img/img/Shrimp_mythical.png", "qrc:/img/img/Shrimp_epic.png",
                    "qrc:/img/img/Shrimp_legendary.png", "qrc:/img/img/Shrimp_immortal.png", "qrc:/img/img/Shrimp_silver.png",
                    "qrc:/img/img/Shrimp_gold.png"]
                    delegate:
                        Rectangle
                        {
                            width: ListView.view.width / 4
                            height: ListView.view.width / 4
                            border.width: 3
                            radius: 20
                            border.color: "black"
                            Image
                            {
                                width: parent.width * 0.8
                                height: parent.width * 0.8
                                anchors.top: parent.top
                                anchors.horizontalCenter: parent.horizontalCenter
                                source: modelData
                            }
                            Text
                            {
                                anchors.bottom: parent.bottom
                                anchors.bottomMargin: 5
                                anchors.horizontalCenter: parent.horizontalCenter
                                text: qsTr("12345")
                            }
                        }
                }

  */
