import QtQuick 2.0

Item {
    width: 149
    height: 190
    /*
    background : #D95B43;
    border-style : Solid;
    border-color : #542437;
    border-width : 1px;
    width: 149px;
    height: 190px;
    */
    Rectangle {
        id: controlador_principal
        anchors.fill: parent
        color: "#D95B43"
        border.color: "#542437"
        border.width: 1

        /*
        font-family : Montserrat;
        font-weight : bold;
        font-size : 14px;
        color : #542437;
        left: 16px; top: 12px;
          */
        Text {
            font.family: "Montserrat"
            font.bold: true
            font.pixelSize: 14
            color: "#542437"
            x: 16
            y: 12
            text: "CALIBRACION"
        }

        SpinnerCalibracion {
            x: 30
            y: 40
            sufijo: " µs"
            imagen: "qrc:/iconos/iconos/pwm_min.svg"

            minimo: 0
            maximo: 3000

            onValuechange: console.log(valor)
        }

        SpinnerCalibracion {
            x: 30
            y: 70
            sufijo: " µs"
            imagen: "qrc:/iconos/iconos/pwm_max.svg"

            minimo: 0
            maximo: 3000

            onValuechange: console.log(valor)
        }

        SpinnerCalibracion {
            x: 30
            y: 96
            sufijo: " °"
            imagen: "qrc:/iconos/iconos/angle_min.svg"

            minimo: 0
            maximo: 360

            onValuechange: console.log(valor)
        }

        SpinnerCalibracion {
            x: 30
            y: 96 + 30
            sufijo: " °"
            imagen: "qrc:/iconos/iconos/angle_max.svg"

            minimo: 0
            maximo: 360

            onValuechange: console.log(valor)
        }

        Text {
            x: 10
            y: 170
            font.family: "Monserrat"
            font.pixelSize: 10
            color: "#ECD078"
            text: "PWM mínimo"
        }
    }
}
