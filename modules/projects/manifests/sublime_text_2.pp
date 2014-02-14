class projects::sublime_text_2 {

    notify { 'class projects::sublime_text_2 declared': }

    include sublime_text_2

    $sublime_dir  = "${app_home}/Sublime Text 2/Packages/User"

    file { $sublime_dir:
        ensure => directory,
    }

    sublime_text_2::package { 'SublimeLinter':
        source => 'SublimeLinter/SublimeLinter',
    }

}
