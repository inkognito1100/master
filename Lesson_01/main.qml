import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Dialogs 1.2

ApplicationWindow {
    visible: true
    width: 330
    height: 330
    title: qsTr("Transitions")

    MainForm {
        anchors.fill: parent
        id: page

        mouseArea1 {
            onClicked: stateGroup.state = ' '
        }
        mouseArea1 {
            onClicked: stateGroup.state = 'State1'
        }
        mouseArea1 {
            onClicked: stateGroup.state = 'State2'
        }

        StateGroup {
            id: stateGroup
            states: [
                State {
                    name: "State1"

                    PropertyChanges {
                        target: page.icon
                        x: page.middleRightRect.x
                        y: page.middleRightRect.y
                    }
                },
                State {
                    name: "State2"

                    PropertyChanges {
                        target: page.icon
                        x: page.bottomLeftRect.x
                        y: page.bottomLeftRect.y
                    }
                }
            ]
        }
    }
}
