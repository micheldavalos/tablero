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
                anchors.centerIn: parent
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
