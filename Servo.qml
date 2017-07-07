import QtQuick 2.0

Item {
    property string id_servo
    Rectangle {
        width: 98
        height: 260
        color: "#53777A"

        Image {
            source: "qrc:/iconos/iconos/case_servo.svg"
//            anchors.centerIn: parent
            sourceSize.height: parent.height
            sourceSize.width: parent.width
        }

        SpinnerServo {

            minimo: 0
            maximo: 360

            onValuechange: console.log(valor)
        }

        Text {
            font.family: "Monserrat"
            font.pixelSize: 15
            color: "#ECD078"
            text: id_servo
            x: parent.width/2 - 4
            y: 198 - 1
        }
    }
}
