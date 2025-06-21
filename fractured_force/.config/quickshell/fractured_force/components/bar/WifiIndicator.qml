import QtQuick;
import Quickshell;

Rectangle {
    height: parent.height
    width: height * 2.75
    radius: width / 2
    color: "#fff"

    Text {
        anchors {
            horizontalCenter: parent.horizontalCenter 
            verticalCenter: parent.verticalCenter
        }

        text: "hello"

        font.family: "DejaVuSansM Nerd Font Mono"
        font.weight: Font.Bold
        font.pixelSize: 14
        lineHeight: 0.5
    }
}