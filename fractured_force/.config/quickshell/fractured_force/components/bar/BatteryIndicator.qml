import QtQuick;
import Quickshell.Widgets;

import Quickshell.Services.UPower;

ClippingRectangle {
    id: battery_pill

    readonly property int charge: Math.floor(UPower.displayDevice.percentage * 100)
    // readonly property int charge: 85
    readonly property int state: UPower.displayDevice.state

    height: parent.height
    width: height * 1.75
    radius: width / 2
    color: "#bbb"

    Rectangle {
        id: battery_pill_charge

        anchors {
            left: parent.left
        }

        height: parent.height
        width: (parent.width / 100) * battery_pill.charge

        color: (
            battery_pill.charge <= 15 && battery_pill.state != UPowerDeviceState.Charging
            ? "#c00"
            : "#fff"
        )
    }

    Text {
        id: battery_pill_text

        anchors {
            horizontalCenter: parent.horizontalCenter 
            verticalCenter: parent.verticalCenter
        }

        text: (
                battery_pill.state == UPowerDeviceState.Charging && battery_pill.charge < 100
                ? "󱐋" 
                : ""
            ) + battery_pill.charge

        font.family: "DejaVuSansM Nerd Font Mono"
        font.weight: Font.Bold
        font.pixelSize: 14
        lineHeight: 0.5
    }
}