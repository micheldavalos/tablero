import QtQuick 2.0
import QtQuick.Controls 1.4

Item {
    Rectangle {
        id: terminalLineEdit
        color: "#FFFFFF"
        width: 260
        height: 22
        x: 12; y: 70;

        function presionado(){
            terminalLineEdit.border.color = "#53777A"
            terminalLineEdit.border.width = 1
        }

        TextEdit {
            anchors.fill: parent
            font.family: "Monserrat"
            font.pixelSize: 12
            color: "#53777A"
            horizontalAlignment: TextEdit.AlignLeft
            verticalAlignment: TextEdit.AlignVCenter


            onActiveFocusChanged: {
                terminalLineEdit.presionado()
            }
        }

    }

}
