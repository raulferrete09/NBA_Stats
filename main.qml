import QtQuick 2.0
import QtQuick.Window 2.15
import QtQuick.Controls 2.0
import QtQuick.Controls.Material 2.15
import QtQuick.Timeline 1.0
import QtQuick.VirtualKeyboard 2.1
import QtQuick.Layouts 1.3
import QtMultimedia 5.15
import Qt.labs.qmlmodels 1.0

Window {
    id: window
    width: 1600
    height: 900
    visible: true
    visibility: "Maximized"
    title: qsTr("Main")

    property string raul:"hallo"
    StackLayout{
        id: stackLayout
        width: 1600
        height: 900
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom



        Component.onCompleted: currentIndex = 0
        HomePage{
            id: homePage
            onMyVarChanged: function(imgsource) {
               stackLayout.currentIndex  = 1
            }
            // color: "#F8F9FB"
        }

        HomeTeamPage{
            id: homeTeamPage
        }

        AnalisePage{
            id: analisePage
        }
    }
}
