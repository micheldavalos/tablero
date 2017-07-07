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

        }
    }
}
