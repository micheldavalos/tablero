import QtQuick 2.0
Item {
    id: info
    height: vista.contentItem.childrenRect.height
    width: 72
    property alias listaPuerto: puertosModel

    signal agregarPuerto(string puerto)
    function agregar(palabra){
//        console.log(palabra)
        puertosModel.append({"namePort": palabra})

    }
    Rectangle {

        id: infoRect
//        width: 180; height: 200;
        implicitHeight: vista.contentItem.childrenRect.height
        implicitWidth: parent.width
        color: "#C02942"
        ListModel {
            id: puertosModel
            ListElement {
                namePort: "COM"
            }
        }
        ListView {
            id: vista
            anchors.fill: parent
            model: puertosModel
            delegate: Text {
                id: port
                font.family: "Monserrat"
                font.pixelSize: 10
                color: "#ECD078"
//                horizontalAlignment: Text.AlignLeft
                x: 4
                text: namePort

                MouseArea {
                    anchors.fill: parent

                    onClicked: {
                        console.log(namePort)
                        arduino.name = namePort

                    }

                }
            }
        }



       Component.onCompleted: {
           info.agregarPuerto.connect(agregar)
//           console.log(puertosModel.get(0).namePort)
           puertosModel.clear()

       }
}
}
/*
Item {

    Rectangle {
        width: 200; height: 200

        ListModel {
            id: fruitModel

            ListElement {
                name: "Apple"
                cost: 2.45
            }
            ListElement {
                name: "Orange"
                cost: 3.25
            }
            ListElement {
                name: "Banana"
                cost: 1.95
            }
        }
        Component {
            id: fruitDelegate
            Row {
                spacing: 10
                Text { text: name }
                Text { text: '$' + cost }
            }
        }
        ListView {
            anchors.fill: parent

            model: fruitModel
            delegate: fruitDelegate
        }
        //    Rectangle {
        //        anchors.fill: parent
        //        color: "#C02942"


        //}
    }

}
*/
