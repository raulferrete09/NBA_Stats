import QtQuick 2.0
import QtQuick.Window 2.15
import QtQuick.Controls 2.0
import QtQuick.Controls.Material 2.15
import QtQuick.Timeline 1.0
import QtQuick.VirtualKeyboard 2.1
import QtQuick.Layouts 1.3
import QtMultimedia 5.15
import Qt.labs.qmlmodels 1.0
import Qt.labs.folderlistmodel 2.15
Page{
    id: home_page
    signal myVarChanged(int myInt)
    function changeImageSource(source) {
        console.log(source)
    }

    Rectangle{
        id:hm_rect_main
        width:parent.width
        height:parent.height
        Image{
            anchors.fill: hm_rect_main
            source: "qrc:/Assets/homepage2.png"
            fillMode: Image.fillMode
        }

    }

    Button{
        id:hm_btn_emblema_home
        width:500
        height:500
        x:0
        y:hm_rect_main.height-500
        background: Image{
            anchors.fill: hm_btn_emblema_home
            source: "qrc:/Assets/Emblemas/celtics.png"
        }
        onClicked: myVarChanged(1)
    }

    //    Rectangle{
    //        id:emblema_home
    //        width:500
    //        height:500
    //        color: "transparent"
    //        x:0
    //        y:hm_rect_main.height-500
    //        Image{
    //          anchors.fill: emblema_home
    //          source: "qrc:/Assets/Emblemas/celtics.png"
    //          fillMode: Image.fillMode
    //        }
    //    }

    Rectangle{
        id:emblema_visitor
        width:500
        height:500
        color: "transparent"
        x:hm_rect_main.width-500
        y:hm_rect_main.height-500
        Image{
            anchors.fill: emblema_visitor
            source: "qrc:/Assets/Emblemas/atlanta.png"
            fillMode: Image.fillMode
        }
    }

    //    Rectangle{
    //        id:player_home
    //        width:600
    //        height:1000
    //        color: "transparent"
    //        x:300
    //        y:hm_rect_main.height-800
    //        Image{
    //          anchors.fill: player_home
    //          source: "qrc:/Assets/Players/tatum2.png"
    //          fillMode: Image.PreserveAspectFit
    //        }
    //    }
}

