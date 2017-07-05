import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

Item {
    TextArea {
        id: textArea
        x: 12 - parent.x; y: 96 - parent.y ;
        width: 284
        height: 284

        font.family: "Monserrat"
        font.pixelSize: 12
        textColor: "#53777A"
        horizontalAlignment: TextEdit.AlignLeft

        Connections {
            target: arduino
            onDatos: textArea.append(datos)
        }
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

