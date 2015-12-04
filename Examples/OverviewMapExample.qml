/*******************************************************************************
 * Copyright 2012-2015 Esri
 *
 *  Licensed under the Apache License, Version 2.0 (the "License");
 *  you may not use this file except in compliance with the License.
 *  You may obtain a copy of the License at
 *
 *  http://www.apache.org/licenses/LICENSE-2.0
 *
 *   Unless required by applicable law or agreed to in writing, software
 *   distributed under the License is distributed on an "AS IS" BASIS,
 *   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *   See the License for the specific language governing permissions and
 *   limitations under the License.
 ******************************************************************************/

import QtQuick 2.0
import QtQuick.Controls 1.1
import Esri.ArcGISRuntime 100.00
import Esri.ArcGISRuntime.Toolkit.Controls 1.1

Rectangle {
    width: 500
    height: 400

    MapView {
        id: mapview
        anchors.fill: parent
        wrapAroundMode: Enums.WrapAroundModeDisabled
        magnifierEnabled: true
        zoomByPinchingEnabled: true
        Map {
            id: map
            BasemapTopographic {}
        }

        OverviewMap {
            id: overviewmap
            anchors {
                top: parent.top
                left: parent.left
                margins: 20
            }
        }

        Component.onCompleted: {
            var basemap = ArcGISRuntimeEnvironment.createObject("BasemapTopographic");
            overviewmap.mapview.map = ArcGISRuntimeEnvironment.createObject("Map", {basemap: basemap});
            overviewmap.parentMapview =mapview;
        }
    }
}
