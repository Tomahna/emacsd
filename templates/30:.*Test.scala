package ${1:`(scala/current-package)`}

import org.scalatest.{FlatSpec, Matchers}

class ${2:`(-first-item (split-string (buffer-name) "\\."))`} extends FlatSpec with Matchers{

  "${3:something}" should "${4:do something}" in {
    ${5:???}
  }

}
