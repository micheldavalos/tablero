import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

Item {
    id: raiz
//    property string imagen
    property string sufijo
    property real minimo
    property real maximo
    property real valor_cambio: 0

    signal valuechange(real valor)

    SpinBox {
        id: spin
        x: 17
        y: 146

        suffix: sufijo
        font.family: "Monserrat"
        font.pixelSize: 20
        font.bold: true
        width: 66
        height: 46


        minimumValue: raiz.minimo
        maximumValue: raiz.maximo

        onValueChanged:   raiz.valuechange(spin.value)
        value: valor_cambio

        style: SpinBoxStyle {
            padding.left: 6
            padding.right: 20

            horizontalAlignment:  Qt.AlignHCenter
            selectionColor: "#53777A"
            background: Rectangle {
                        implicitWidth: 66
                        implicitHeight: 46
                        color: spin.hovered ? "#53777A" : "#ECD078"
//                        radius: 2





                    }
            textColor: "#542437"

            incrementControl:  Rectangle {
                implicitWidth: 18
                implicitHeight: 18
//                radius: 2
                color: styleData.upHovered ?
                           ( styleData.upPressed ?  "#C02942" : "#53777A"  )
                       : "#D95B43"

                anchors.top: parent.top
                anchors.topMargin: 2
//                anchors.right: parent.right
//                anchors.rightMargin: 1
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 2

                Image {
                    source: "qrc:/iconos/iconos/pointer_up_2.svg"
                    sourceSize.width:  16
                    sourceSize.height: 16
                    anchors.centerIn: parent
                }

            }
//
            decrementControl:  Rectangle {

                implicitWidth: 18
                implicitHeight: 18
//                radius: 2
                anchors.top: parent.top
                anchors.topMargin: 2
//                anchors.right: parent.right
//                anchors.rightMargin: 1
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 2

                color: styleData.downHovered ?
                           ( styleData.downPressed ?  "#C02942" : "#53777A"  )
                       : "#D95B43"


                Image {
                    source: "qrc:/iconos/iconos/pointer_down_2.svg"
                    sourceSize.width:  16
                    sourceSize.height: 16
                    anchors.centerIn: parent
                }


            }
        }
    }

}
