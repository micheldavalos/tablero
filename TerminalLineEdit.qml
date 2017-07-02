import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

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

        TextArea {
            id: textArea
            x: 12 - parent.x; y: 96 - parent.y ;
            width: 284
            height: 284

            font.family: "Monserrat"
            font.pixelSize: 12
            textColor: "#53777A"
            horizontalAlignment: TextEdit.AlignLeft

            style: TextAreaStyle {

                scrollBarBackground: Rectangle {
                    implicitWidth: 18
                    implicitHeight: 284
                    color: "#C02942"
                }

                handle:  Rectangle {
                    id: scrollBar
                    property int estado: 0
                    property color colorBackgraound: "#D95B43"
                    implicitWidth: 18
                    implicitHeight: 24
                    color: styleData.hovered ?
                                 ( styleData.pressed ?  "#53777A" : "#ECD078"  )
                             : colorBackgraound

                }

                decrementControl: Rectangle {
                    implicitWidth: 18
                    implicitHeight: 18
                    color: styleData.hovered ?
                               ( styleData.pressed ?  "#ECD078" : "#53777A"  )
                           : "#C02942"

                    Image {
                        source: "qrc:/iconos/iconos/pointer_up_0.svg"
                        sourceSize.width:  10
                        sourceSize.height: 5
                        anchors.centerIn: parent
                    }
                }

                incrementControl: Rectangle {
                    implicitWidth: 18
                    implicitHeight: 18
                    color: styleData.hovered ?
                               ( styleData.pressed ?  "#ECD078" : "#53777A"  )
                           : "#C02942"

                    Image {
                        source: "qrc:/iconos/iconos/pointer_down_0.svg"
                        sourceSize.width:  10
                        sourceSize.height: 5
                        anchors.centerIn: parent
                    }
                }
            }
        }

    }

}
