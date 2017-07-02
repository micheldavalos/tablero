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
        Text {
            font.family: "Montserrat"
            font.pixelSize: 10
            color: "#ECD078"
            x: 16; y: 12;
            text: "BaudeRate"
        }

        Rectangle {
            property int estado: 0
            property color colorBackgraound: "#53777A"
            id: iconoConectado
            x: 12; y: 36;
            width: 22
            height: 22
            color: colorBackgraound
            Image {
                source: "qrc:/iconos/iconos/usb_ok.svg"
                anchors.centerIn: parent
                sourceSize.height: 14
                sourceSize.width: 14
            }

            MouseArea {
                anchors.fill: parent
                hoverEnabled: true

                onHoveredChanged: {
                    if(iconoConectado.estado == 0)
                    {
                        iconoConectado.colorBackgraound = "#ECD078"
                        iconoConectado.estado = 1
                    }
                    else{
                        iconoConectado.colorBackgraound = "#53777A"
                        iconoConectado.estado = 0
                    }
                }
                onPressed: {
                    iconoConectado.colorBackgraound = "#D95B43"

                }
//                onReleased: {
//                    iconoConectado.colorBackgraound = "#53777A"
//                }

            }
        }
    }
}
