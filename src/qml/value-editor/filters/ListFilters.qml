import QtQuick 2.13
import QtQuick.Layouts 1.1
import "./../../common"

RowLayout {

    BetterLabel {
        text: qsTr("Order of elements:")
    }

    BetterComboBox {
        id: filterDirection

        model: ["default", "reverse"]

        onCurrentIndexChanged: {
            keyModel.setFilter("order", filterDirection.model[currentIndex])

            reloadValue()
            //table.model.setSortOrder(1)

        }
    }

}
