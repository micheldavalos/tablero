import QtQuick 2.0
import QtQuick.Controls 2.2

Item {
    property string id_servo
    property real valor_rotacion: 0

    Rectangle {
        width: 98
        height: 260
        color: "#53777A"

        Image {
            source: "qrc:/iconos/iconos/case_servo.svg"
//            anchors.centerIn: parent
            sourceSize.height: parent.height
            sourceSize.width: parent.width
        }

        Dial {
            id: control
            from: 0
            to: 360
            stepSize: 1
            snapMode: Dial.SnapAlways

//            rotation: valor_rotacion
//            transformOrigin: Item.Center
            background: Rectangle {
                id: background_color
                color: "#ECD078"
                width: 116
                height: 116
                radius: width / 2
                x: -9
                y: 25




            }
            handle: Rectangle {
                id: handleItem
                x: background_color.width/2 + background_color.x
                y: background_color.height/2 + background_color.y - height/2
                width: background_color.width/2
                height: 24
                antialiasing: true
                color: "#ECD078"
                radius: 8

                Row {
                    Rectangle {
                        id: agujeros
                        x: 10
                        y: handleItem.height/2 - 5
                        Image {

                            source: "qrc:/iconos/iconos/agujeros_servo.svg"
                            sourceSize.width: 29
                            sourceSize.height: 10
                            antialiasing: true
                            //                    anchors.centerIn: parent
                        }
                    }
                    Rectangle {
                        id: tornillo

                        x: handleItem.width - 12
//                        y:
                        Image {

                            source: "qrc:/iconos/iconos/tornillo_central.svg"
                            sourceSize.width: 24
                            sourceSize.height: 24

    //                            rotation: valor_rotacion
    //                            transformOrigin: Item.Center
                            antialiasing: true

        //                    transform: Rotation { origin.x: 0; origin.y: 0; angle: 45}
                        }

                    }
                }


                transform: [
                    Translate {
//                        y: -Math.min(control.background.width, control.background.height) * 0.4 + handleItem.height / 2
                        x: -1*(background_color.width/2) //handleItem.width / 2
//                        y: control.background.height * 0.1 + handleItem.height / 2
                    },
                    Rotation {
                        angle: valor_rotacion
                        origin.x: background_color.width/2 -1*(background_color.width/2)  //handleItem.width / 2
                        origin.y: handleItem.height/2
                    }
                ]
            }

            onMoved: {
                console.log(position*360)
                var json_value = '{"id":' + id_servo + ', "pos": ' + Math.round(position*360) + '}'
                console.log(json_value)
                arduino.enviar(json_value)
                valor_rotacion = value
                spinner_servo.valor_cambio = position*360
            }
        }

        SpinnerServo {
            id: spinner_servo
            minimo: 204
            maximo: 820

            onValuechange: {
                console.log(valor)
                valor_rotacion = valor
                var json_value = '{"id":' + id_servo + ', "pos": ' + valor + '}'
                arduino.enviar(json_value)
            }

        }

        Text {
            font.family: "Monserrat"
            font.pixelSize: 15
            color: "#ECD078"
            text: id_servo
            x: parent.width/2 - 4
            y: 198 - 1
        }
    }
}
