/****************************************************************************
**
** Copyright (C) 2014 Alexander Rössler
** License: LGPL version 2.1
**
** This file is part of QtQuickVcp.
**
** All rights reserved. This program and the accompanying materials
** are made available under the terms of the GNU Lesser General Public License
** (LGPL) version 2.1 which accompanies this distribution, and is available at
** http://www.gnu.org/licenses/lgpl-2.1.html
**
** This library is distributed in the hope that it will be useful,
** but WITHOUT ANY WARRANTY; without even the implied warranty of
** MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
** Lesser General Public License for more details.
**
** Contributors:
** Alexander Rössler @ The Cool Tool GmbH <mail DOT aroessler AT gmail DOT com>
**
****************************************************************************/
import QtQuick 2.1
import HelperWidgets 2.0
import QtQuick.Layouts 1.0

Column {
    anchors.left: parent.left
    anchors.right: parent.right

    Section {
        anchors.left: parent.left
        anchors.right: parent.right
        caption: qsTr("Led")

        SectionLayout {
            Label {
                text: qsTr("Value")
            }

            SecondColumnLayout {
                CheckBox {
                    backendValue: backendValues.value
                    implicitWidth: 180
                }
                ExpandingSpacer {

                }
            }

            Label {
                text: qsTr("Blink")
            }

            SecondColumnLayout {
                CheckBox {
                    backendValue: backendValues.blink
                    implicitWidth: 180
                }
                ExpandingSpacer {

                }
            }

            Label {
                text: qsTr("Blink interval")
            }

            SecondColumnLayout {
                SpinBox {
                    backendValue: backendValues.blinkInterval
                    minimumValue: 1
                    maximumValue: 99999999999
                    decimals: 0
                }
                ExpandingSpacer {
                }
            }

            Label {
                text: qsTr("Radius")
            }

            SecondColumnLayout {
                SpinBox {
                    backendValue: backendValues.radius
                    minimumValue: 0
                    maximumValue: 99999999999
                    decimals: 0
                }
                ExpandingSpacer {
                }
            }

            Label {
                text: qsTr("Shine")
            }

            SecondColumnLayout {
                CheckBox {
                    backendValue: backendValues.shine
                    implicitWidth: 180
                }
                ExpandingSpacer {

                }
            }
        }
    }

    Section {
            anchors.left: parent.left
            anchors.right: parent.right
            caption: qsTr("On color")

            ColorEditor {
                        caption: qsTr("On color")
                        backendendValue: backendValues.onColor
                        supportGradient: false
                    }
    }

    Section {
            anchors.left: parent.left
            anchors.right: parent.right
            caption: qsTr("Off color")

            ColorEditor {
                        caption: qsTr("Off color")
                        backendendValue: backendValues.offColor
                        supportGradient: false
                    }
    }
}