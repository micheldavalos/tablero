import QtQuick 2.7
import Arduino 1.0

Item {
    id: terminal

    Arduino{ id: arduino }
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

        OpcionesConexion {

            z: 1
        }

        TerminalLineEdit {

        }

        TerminalTextArea {

        }

        Text {
            font.family: "Monserrat"
            font.pixelSize: 10
            color: "#ECD078"
            x: 10
            y: parent.height - 20
            text: "Velocidad / Puerto - Estado"
        }

    }
}
