
DEFINES += WIDGETS_TOOLKIT

TOOLKIT = NorthArrow S
for (component, TOOLKIT) {
  message("Processing component: " $$component)
  comp_path = $$PWD/$$component
  INCLUDEPATH += $$PWD/$$component
  include($$PWD/$$component/cpp_views/cpp_views.pri)
  include($$PWD/$$component/cpp_controllers/cpp_controllers.pri)
  RESOURCES += $$PWD/$$component/images/images.qrc
}

