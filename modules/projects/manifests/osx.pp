class projects::osx {

    notify { 'class projects::osx declared': }

    include osx::software_update
    include osx::global::disable_key_press_and_hold
    include osx::global::disable_remote_control_ir_receiver
    class { 'osx::global::key_repeat_delay': delay => 10 }
    class { 'osx::global::key_repeat_rate': rate => 2 }
    class { 'osx::global::natural_mouse_scrolling': enabled => false }
    osx::recovery_message { 'If found, please call 808.261.0616': }
}

