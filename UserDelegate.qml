import QtQuick 2.5
import QtGraphicalEffects 1.0

// Container rectangle
Rectangle {
    id: rect

    height: layout.height
    width: userView.width

    color: "#eee"


    Row {
        id: layout
        spacing: 20

        height: Math.max(itmText.height, itmImage.height) + 20

        populate:Transition {
            // Fade in animation
            NumberAnimation {
                property: "opacity";
                from: 0; to: 1.0;
                duration: 400
            }
            // Coming animation
            NumberAnimation {
                property: "scale";
                easing.amplitude: 0.3;
                easing.type: Easing.OutExpo
                from:0; to:1;
                target:layout;
                duration: 600
            }
        }
        // End populate transitions

        // Avatar item
        Item {
            id: itmImage

            height: 60
            width: 70

            // Avatar image
            Image {
                id: imgAvatar
                height: 60
                width: 60
                y: 5
                x: 10

                fillMode: Image.PreserveAspectCrop
                source: main.getAvatar(user_key)

                // Circle effect
                layer.enabled: true
                layer.effect: OpacityMask {
                    maskSource: Item {
                        width: imgAvatar.width
                        height: imgAvatar.height
                        Rectangle {
                            anchors.centerIn: parent
                            width: Math.min(imgAvatar.width, imgAvatar.height)
                            height: width
                            radius: Math.min(width, height)
                        }
                    }
                }
            }
            // End avatar image
        }
        // End avatar item

        // Text item
        Item {
            id: itmText

            height: txtName.height + txtStatus.height
            width: txtName.width

            // User name
            Text {
                id: txtName
                y: 15
                width: userView.width - 90
                text: name
                color: "#ea8627"
                font.bold: true
                wrapMode: Text.Wrap
            }

            // Status text
            Text {
                id: txtStatus

                anchors {
                    top: txtName.bottom
                    topMargin: 10
                }

                color: "teal"
                text: qsTr("Online")
            }

        }
        // End text item

    }
    // End row

}
// End container rectangle