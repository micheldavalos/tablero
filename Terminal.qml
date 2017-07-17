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

            z: 1
        }

        TerminalLineEdit {

        }

        TerminalTextArea {

        }

        Row {
            id: statusBar
            x: 10
            y: parent.height - 20
            Text {
                id: statusBar_velocidad
                font.family: "Monserrat"
                font.pixelSize: 10
                color: "#ECD078"

                text: "Velocidad / "//"Puerto - Estado"
            }
            Text {
                id: statusBar_puerto
                font.family: "Monserrat"
                font.pixelSize: 10
                color: "#ECD078"
//                x: 10
//                y: parent.height - 20

                text: "Puerto - "//"Estado"
            }
            Text {
                id: statusBar_estado
                font.family: "Monserrat"
                font.pixelSize: 10
                color: "#ECD078"
//                x: 10
//                y: parent.height - 20

                text: "Estado"
            }


        }


    }
}
