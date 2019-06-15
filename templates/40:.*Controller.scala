package ${1:`(scala/current-package)`}

import play.api.mvc.{AbstractController, Action, ControllerComponents}

class ${2:`(-first-item (split-string (buffer-name) "\\."))`}(
  components: ControllerComponents,
) extends AbstractController(components){
  def ${3:action}() = {
    ${4:???}
  }
}