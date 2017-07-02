import QtQuick 2.0
//import QtQuick.Controls 1.4

Item {
    Rectangle {
        id: terminalLineEdit
        color: "#FFFFFF"
        width: 260
        height: 22
        x: 12; y: 70;

        function presionado(){
            terminalLineEdit.border.color = "#53777A"
            terminalLineEdit.border.width = 1
        }

        TextEdit {
            anchors.fill: parent
            font.family: "Monserrat"
            font.pixelSize: 12
            color: "#53777A"
            horizontalAlignment: TextEdit.AlignLeft
            verticalAlignment: TextEdit.AlignVCenter


            onActiveFocusChanged: {
                terminalLineEdit.presionado()
            }
        }

        Rectangle {
            property int estado: 0
            property color colorBackgraound: "#53777A"
            id: iconoSend
            x: 274 -parent.x; y: 70 - parent.y;
            width: 22
            height: 22
            color: colorBackgraound

            Image {
                source: "qrc:/iconos/iconos/send.svg"
                anchors.centerIn: parent
                sourceSize.height: 14
                sourceSize.width: 14
            }

            MouseArea {
                anchors.fill: parent
                hoverEnabled: true

                onHoveredChanged: {
                    if(iconoSend.estado == 0)
                    {
                        iconoSend.colorBackgraound = "#ECD078"
                        iconoSend.estado = 1
                    }
                    else{
                        iconoSend.colorBackgraound = "#53777A"
                        iconoSend.estado = 0
                    }
                }
                onPressed: {
                    iconoSend.colorBackgraound = "#D95B43"

                }

            }
        }
    }


}
