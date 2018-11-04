package ${1:`(if (bound-and-true-p ensime-mode) (ensime/current-package) "")`}

import play.api.mvc.{AbstractController, Action, ControllerComponents}

class $1Controller(
  components: ControllerComponents,
) extends AbstractController(components){
  def ${2:action}() = {
    ${3:???}
  }
}