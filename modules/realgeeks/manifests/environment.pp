class realgeeks::environment {

    notify { 'class realgeeks::environment declared': }
    include osx::recovery_message { 'If this Mac is found, please call 808.261.0616': }

    include osx::global::disable_key_press_and_hold
    include osx::global::disable_remote_control_ir_receiver
    class { 'osx::global::natural_mouse_scrolling': enabled => false }
    class { 'osx::global::key_repeat_rate': rate => 2 }
    class { 'osx::global::key_repeat_delay': delay => 10 }

    include projects::all
}
