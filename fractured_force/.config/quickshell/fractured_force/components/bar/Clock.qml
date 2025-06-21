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

        text: Qt.formatDateTime(clock.date, "hh:mm")

        font.family: "DejaVuSansM Nerd Font Mono"
        font.weight: Font.Bold
        font.pixelSize: Math.ceil(parent.height / 1.5)
        lineHeight: 0.5

        SystemClock {
            id: clock
            precision: SystemClock.Minutes
        }
    }
}