import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

Item {
    id: raiz
    property string imagen
    property string sufijo

    signal valuechange(real valor)
    Rectangle {
//        x: 30
//        y: 44
        width: 24
        height: 24
        radius: width*0.5
        color: "#C02942"
        Image {
            source: imagen
            anchors.centerIn: parent
            sourceSize.height: 18
            sourceSize.width: 18
        }
    }

    SpinBox {
        id: spin
        x: parent.x
//        y: parent.y

        suffix: sufijo
        font.family: "Monserrat"
        font.pixelSize: 12
        width: 64
        height: 24
        horizontalAlignment: Qt.AlignRight

        onValueChanged:   raiz.valuechange(spin.value)

        style: SpinBoxStyle {
            background: Rectangle {
                        implicitWidth: 64
                        implicitHeight: 24
                        color: spin.hovered ? "#C02942" : "#542437"
                        radius: 2


                    }
            textColor: {
                color: "#53777A"
            }
            decrementControl:  Rectangle {

                implicitWidth: 10
                implicitHeight: 10
                radius: 2
                anchors.top: parent.top
                anchors.topMargin: 1
                anchors.right: parent.right
                anchors.rightMargin: 1
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 1

                color: styleData.downHovered ?
                           ( styleData.downPressed ?  "#D95B43" : "#ECD078"  )
                       : "#53777A"


                Image {
                    source: "qrc:/iconos/iconos/pointer_down_1.svg"
                    sourceSize.width:  8
                    sourceSize.height: 4
                    anchors.centerIn: parent
                }


            }
            incrementControl:  Rectangle {
                implicitWidth: 10
                implicitHeight: 10
                radius: 2
                color: styleData.upHovered ?
                           ( styleData.upPressed ?  "#D95B43" : "#ECD078"  )
                       : "#53777A"

                anchors.top: parent.top
                anchors.right: parent.right
                anchors.rightMargin: 1
                anchors.topMargin: 1
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 1.2

                Image {
                    source: "qrc:/iconos/iconos/pointer_up_1.svg"
                    sourceSize.width:  8
                    sourceSize.height: 4
                    anchors.centerIn: parent
                }

            }
//
        }
    }

}
