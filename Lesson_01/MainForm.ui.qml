import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.1

Item {
    id: page
    width: 640
    height: 480
    property alias bottomLeftRect: bottomLeftRect
    property alias middleRightRect: middleRightRect
    property alias mouseArea1: mouseArea1
    property alias topLeftRect: topLeftRect
    property alias icon: icon

    Image {
        id: icon
        x: 10
        y: 20
        width: 55
        height: 41
        source: "Снимок экрана 2016-09-21 в 18.06.44.png"
    }

    Rectangle {
        id: topLeftRect
        width: 55
        height: 41
        color: "#00000000"
        anchors.top: parent.top
        anchors.topMargin: 20
        anchors.left: parent.left
        anchors.leftMargin: 10
        border.color: "#808080"
    }

    MouseArea {
        id: mouseArea1
        anchors.fill: parent
    }

    Rectangle {
        id: middleRightRect
        x: 563
        y: 3
        width: 55
        height: 41
        color: "#00000000"
        anchors.verticalCenterOffset: 0
        anchors.right: parent.right
        anchors.rightMargin: 10
        anchors.verticalCenter: parent.verticalCenter
        border.color: "#808080"
    }

    Rectangle {
        id: bottomLeftRect
        x: 3
        y: -9
        width: 55
        height: 41
        color: "#00000000"
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 20
        border.color: "#808080"
        anchors.left: parent.left
        anchors.leftMargin: 10
    }

}
