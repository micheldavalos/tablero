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
