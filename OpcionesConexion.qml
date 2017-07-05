import QtQuick 2.0


Item {
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

                if(arduino.name != "") {
                    if (arduino.conectar(arduino.name, arduino.baud)) {
                        statusBar_velocidad.text = arduino.baud + " / "
                        statusBar_puerto .text = arduino.name + " - "
                        statusBar_estado.text = "Conectado  "
                    }
                }

            }

        }
    }

    Rectangle {
        property int estado: 0
        property color colorBackgraound: "#53777A"
        id: iconoDesconectado
        x: 40; y: 36;
        width: 22
        height: 22
        color: colorBackgraound
        Image {
            source: "qrc:/iconos/iconos/usb_no_ok.svg"
            anchors.centerIn: parent
            sourceSize.height: 14
            sourceSize.width: 14
        }

        MouseArea {
            anchors.fill: parent
            hoverEnabled: true

            onHoveredChanged: {
                if(iconoDesconectado.estado == 0)
                {
                    iconoDesconectado.colorBackgraound = "#ECD078"
                    iconoDesconectado.estado = 1
                }
                else{
                    iconoDesconectado.colorBackgraound = "#53777A"
                    iconoDesconectado.estado = 0
                }
            }
            onPressed: {
                iconoDesconectado.colorBackgraound = "#D95B43"
                if( arduino.desconectar() ) {
                    statusBar_estado.text = "No Conectado"
                }

            }

        }
    }

    Rectangle {
        property int estado: 0
        property color colorBackgraound: "#53777A"
        id: iconoBaudrate
        x: 74; y: 36;
        width: 22
        height: 22
        color: colorBackgraound
        Image {
            source: "qrc:/iconos/iconos/baudrate.svg"
            anchors.centerIn: parent
            sourceSize.height: 14
            sourceSize.width: 14
        }

        Lista {
            id: listaBautRates
            x: 10; y: -8; z: 1
            width: 72
            visible: false
        }

        MouseArea {
            anchors.fill: parent
            hoverEnabled: true

            onHoveredChanged: {
                if(iconoBaudrate.estado == 0)
                {
                    iconoBaudrate.colorBackgraound = "#ECD078"
                    iconoBaudrate.estado = 1
                }
                else{
                    iconoBaudrate.colorBackgraound = "#53777A"
                    iconoBaudrate.estado = 0
                }
            }
            onPressed: {
                iconoSerialport.z = -1
                iconoBaudrate.colorBackgraound = "#D95B43"
                listaBautRates.visible = !listaBautRates.visible
                listaBautRates.listaPuerto.clear()
                console.log("baud: ", arduino.baud)
                var lista_baud = arduino.bautRates()
                for(var p in lista_baud) {
//                    console.log(lista_baud[p])
                    listaBautRates.agregarPuerto(lista_baud[p])
                }

            }

        }
    }

    Rectangle {
        property int estado: 0
        property color colorBackgraound: "#53777A"
        id: iconoSerialport
        x: 102; y: 36;
        width: 22
        height: 22
        color: colorBackgraound
        Image {
            source: "qrc:/iconos/iconos/serialport.svg"
            anchors.centerIn: parent
            sourceSize.height: 14
            sourceSize.width: 14
        }

        Lista {
            id: listaPuertos
            x: 10; y: -8;
            width: 72
            visible: false
        }

        MouseArea {
            anchors.fill: parent
            hoverEnabled: true

            onHoveredChanged: {
                if(iconoSerialport.estado == 0)
                {
                    iconoSerialport.colorBackgraound = "#ECD078"
                    iconoSerialport.estado = 1
                }
                else{
                    iconoSerialport.colorBackgraound = "#53777A"
                    iconoSerialport.estado = 0
                }
            }
            onPressed: {
                iconoSerialport.z = 1
                iconoSerialport.colorBackgraound = "#D95B43"
                listaPuertos.visible = !listaPuertos.visible
                listaPuertos.listaPuerto.clear()
                console.log("nombre: ", arduino.name)
                var lista_puertos = arduino.getSerial_disponibles()
                for(var p in lista_puertos) {
//                    console.log(lista_puertos[p])
                    listaPuertos.agregarPuerto(lista_puertos[p])
                }


//                console.log(arduino.getSerial_disponibles())
//                var component;
//                function finish() {
//                    if (component.status == Component.Ready) {
//                        console.log("listo")
//                        var sprite = component.createObject(iconoSerialport, {"x": 10, "y": -8})
//                        if(sprite == null)
//                            console.log("nada")
//                    }
//                    else {
//                        console.log("no listo")
//                    }
//                }

////                var dynamicObject = Qt.createQmlObject(
////                 'import QtQuick 2.0;Rectangle{id:sample;width:72; height:40;color:"#C02942";}',
////                 terminal, 'firstObject')

//                component = Qt.createComponent("Lista.qml");
//                if( component.status == Component.Ready)
//                    finish()
//                else
//                    component.statusChanged.connect(finish)


            }

        }
    }

    Text {
        font.family: "Montserrat"
        font.pixelSize: 10
        color: "#ECD078"
        x: 136; y: 44; z: -1
        text: "BaudeRate"
    }
}


