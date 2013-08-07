class realgeeks::environment {
  include osx::global::disable_key_press_and_hold
  include osx::global::disable_remote_control_ir_receiver
  include osx::software_update
  class { 'osx::global::natural_mouse_scrolling': enabled => false }
  class { 'osx::global::key_repeat_rate': rate => 2 }
  class { 'osx::global::key_repeat_delay': delay => 10 }
  include python
  include vagrant
  include zsh
  include wget
  include python
  include mongodb
  include virtualbox
  include vagrant
}
