/*******************************************************************************
 *  Copyright 2012-2019 Esri
 *
 *  Licensed under the Apache License, Version 2.0 (the "License");
 *  you may not use this file except in compliance with the License.
 *  You may obtain a copy of the License at
 *
 *  http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 ******************************************************************************/

#ifndef ArKitPlaneRenderer_H
#define ArKitPlaneRenderer_H

#include <QOpenGLFunctions>

namespace Esri {
namespace ArcGISRuntime {
namespace Toolkit {
namespace Internal {

class ArKitWrapper;

class ArKitPlaneRenderer : public QOpenGLFunctions
{
public:
  ArKitPlaneRenderer(ArKitWrapper* ArKitWrapper);
  ~ArKitPlaneRenderer();

  void initGL();
  void render();

private:
  ArKitWrapper* m_arKitWrapper = nullptr;
};

} // Internal namespace
} // Toolkit namespace
} // ArcGISRuntime namespace
} // Esri namespace

#endif // ArKitPlaneRenderer_H
