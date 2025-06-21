import QtQuick;
import Quickshell;

import "root:/components/bar" as BarComponents

ShellRoot {
    id: root

    PanelWindow {
        id: bar

        anchors {
            top: true
            left: true
            right: true
        }

        implicitHeight: 30
        color: "#333"

        Rectangle {
            id: bar_container_left_rect

            anchors {
                left: parent.left
                right: parent.horizontalCenter
                rightMargin: bar_container_center_row.implicitWidth / 2 + 10
            }

            height: parent.height
            color: "transparent"

            Row {
                id: bar_container_left_row

                anchors {
                    left: parent.left
                    verticalCenter: parent.verticalCenter
                    leftMargin: 10
                }

                height: parent.height / 1.5
                spacing: 10

                BarComponents.Clock {}
            }
        }

        Rectangle {
            id: bar_container_center_rect

            anchors {
                horizontalCenter: parent.horizontalCenter 
                verticalCenter: parent.verticalCenter
            }

            height: parent.height
            color: "transparent"

            Row {
                id: bar_container_center_row

                anchors {
                    horizontalCenter: parent.horizontalCenter 
                    verticalCenter: parent.verticalCenter
                    leftMargin: 10
                    rightMargin: 10
                }

                height: parent.height / 1.5
                spacing: 10

                // BarComponents.BatteryIndicator {}
            }
        }

        Rectangle {
            id: bar_container_right_rect

            anchors {
                right: parent.right
                left: parent.horizontalCenter
                leftMargin: bar_container_center_row.implicitWidth / 2 + 10
            }

            height: parent.height
            color: "transparent"

            Row {
                id: bar_container_right_row

                anchors {
                    right: parent.right
                    verticalCenter: parent.verticalCenter
                    rightMargin: 10
                }

                height: parent.height / 1.5
                spacing: 10

                BarComponents.WifiIndicator {}
                BarComponents.BatteryIndicator {}
            }
        }
    }
}