import QtQuick 2.0
import QtQuick.Controls 2.0

Page {
    Rectangle{
        id:hmt_rect_main
        width:parent.width
        height:parent.height
        Image{
          anchors.fill: hmt_rect_main
          source: "qrc:/Assets/MainBackground-1119x839.png"
          fillMode: Image.fillMode
        }
    }
}
