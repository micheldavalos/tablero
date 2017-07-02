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

        OpcionesConexion {

            Text {
                font.family: "Montserrat"
                font.pixelSize: 10
                color: "#ECD078"
                x: 136; y: 44;
                text: "BaudeRate"
            }
        }

        TerminalLineEdit {

        }

    }
}
