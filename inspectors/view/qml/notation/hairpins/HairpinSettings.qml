import QtQuick 2.9
import QtQuick.Layouts 1.3
import MuseScore.Inspectors 3.3
import "../../common"

PopupViewButton {
    id: root

    property alias model: hairpinPopup.model

    icon: IconNameTypes.HAIRPIN
    text: qsTr("Hairpins")

    visible: root.model ? !root.model.isEmpty : false

    HairpinPopup {
        id: hairpinPopup

        x: popupPositionX
        y: popupPositionY
        arrowX: parent.x + parent.width / 2
        width: popupAvailableWidth
    }
}
