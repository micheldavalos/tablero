import QtQuick 2.8
import QtQuick.Window 2.2

Window {
    visible: true
    width: 884
    height: 718
    title: qsTr("ServoDriver 3")

    Rectangle {
        anchors.fill: parent
        color: "#ECD078"

        Terminal {
//            anchors.fill: parent
            x: 524
            y: 52
        }
        Calibracion {
            x: 683
            y: 476
        }

        Servos {
            x: 52
            y: 52
        }

        Rectangle {
            x: 460
            y: 605
            width: 65
            height: 33
            color: "transparent"
            z: 1
            Image {

                source: "qrc:/iconos/iconos/pistas_servos_1.svg"
//                anchors.centerIn: parent
                sourceSize.width: 65
                sourceSize.height: 33
//                layer.enabled: true
            }
        }

        Rectangle {
            x: 529
            y: 465
            width: 22
            height: 11
            color: "transparent"
            z: 1
            Image {

                source: "qrc:/iconos/iconos/pistas_servos_3.svg"
                anchors.centerIn: parent
                sourceSize.width: 22
                sourceSize.height: 11
//                layer.enabled: true
            }
        }

        Rectangle {
            x: 673
            y: 490
            width: 10
            height: 34
            color: "transparent"
            z: 1
            Image {

                source: "qrc:/iconos/iconos/pistas_servos_2.svg"
                anchors.centerIn: parent
                sourceSize.width: 10
                sourceSize.height: 34
//                layer.enabled: true
            }
        }


        Rectangle {
            x: 524
            y: 476
            width: 149
            height: 90
            color: parent.color

            Image {
                source: "qrc:/iconos/iconos/id_top.svg"
                anchors.centerIn: parent
                sourceSize.height: parent.height
                sourceSize.width: parent.width
            }
        }

        Rectangle {
            x: 524
            y: 576
            width: 149
            height: 90
            color: parent.color

            Image {
                source: "qrc:/iconos/iconos/id_bottom.svg"
//                anchors.centerIn: parent
                sourceSize.height: parent.height
                sourceSize.width: parent.width

            }
        }
    }



//    MainForm {
//        anchors.fill: parent
//        mouseArea.onClicked: {
//            console.log(qsTr('Clicked on background. Text: "' + textEdit.text + '"'))
//        }
//    }
}
