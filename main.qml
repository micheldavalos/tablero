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
    }



//    MainForm {
//        anchors.fill: parent
//        mouseArea.onClicked: {
//            console.log(qsTr('Clicked on background. Text: "' + textEdit.text + '"'))
//        }
//    }
}
