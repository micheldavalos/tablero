import QtQuick 2.7


Item {
    id: terminal
    Rectangle {
        color: "#542437"
        border.color: "#53777A"
        border.width : 1
        width: 308
        height: 414

        Text {
            font.family: "Montserrat"
            font.bold: true
            font.pixelSize: 14
            color: "#D95B43"
            x: 16; y: 12;
            text: "CONEXIÓN"
        }
        Rectangle {
            id: iconoConectado
            x: 12; y: 36;
            width: 22
            height: 22
            color: "#53777A"
            Image {
                source: "qrc:/iconos/iconos/usb_ok.svg"
                anchors.centerIn: parent
                sourceSize.height: 11
                sourceSize.width: 11
            }
        }
    }

}
