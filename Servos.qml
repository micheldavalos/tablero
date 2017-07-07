import QtQuick 2.0

Item {
    /*
        background : #53777A;
        border-style : Solid;
        border-color : #542437;
        border-width : 1px; w
        idth: 462px;
        height: 614px;
      */
    Rectangle {
        color: "#53777A"
        border.color: "#542437"
        border.width: 1
        width: 462
        height: 614

        Image {
            x: 71
            y: 6
            source: "qrc:/iconos/iconos/pistas_servos_0.svg"

            sourceSize.width:  367
            sourceSize.height: 580
//            anchors.centerIn: parent
        }
        Rectangle {
            property color color_paste: "#53777A"
            property real estado: 0
            id: paste
            x: 16
            y: 580
            width: 22
            height: 22

            color: color_paste
            Image {
                source: "qrc:/iconos/iconos/take_a_frame.svg"
                sourceSize.width:  22
                sourceSize.height: 22
                anchors.centerIn: parent
            }

            MouseArea {
                anchors.fill: parent
                hoverEnabled: true

                onHoveredChanged: {
                    if(paste.estado == 0)
                    {
                        paste.color_paste = "#ECD078"
                        paste.estado = 1
                    }
                    else{
                        paste.color_paste = "#53777A"
                        paste.estado = 0
                    }
                }
                onPressed: {
                    paste.color_paste = "#C02942"
                    }

            }
        }

        Text {
            x: 45
            y: 591
            font.family: "Monserrat"
            font.pixelSize: 10
            color: "#542437"

            text: "Copiar frame"
        }

        Servo {

            x: 24
            y: 23

            id_servo: "1"
        }

        Servo {

            x: 163
            y: 23

            id_servo: "2"
        }
        Servo {

            x: 302
            y: 23

            id_servo: "3"
        }
        Servo {

            x: 24
            y: 307

            id_servo: "4"
        }


        Servo {

            x: 163
            y: 307

            id_servo: "5"
        }


        Servo {

            x: 302
            y: 307

            id_servo: "6"
        }


    }
}
