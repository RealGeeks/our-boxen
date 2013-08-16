class people::bemclaugh::sublime_text_2 {

    notify { 'class people::bemclaugh::sublime_text_2 declared': }

    $base = "/Users/${::luser}/Library/Application Support"

    exec { 'Idempotent creation of User preferences directory':
        command => "mkdir -p '${base}/Sublime Text 2/Packages/User'"
    }

    file { "${base}/Sublime Text 2/Packages/User/Preferences.sublime-settings":
        ensure  => link,
        target  => "${::boxen_srcdir}/dotfiles/.sublime/Preferences.sublime-settings",
        require => Repository["dotfiles"],
    }

    sublime_text_2::package { 'SublimeLinter':
        source => 'SublimeLinter/SublimeLinter'
    }

    sublime_text_2::package { 'Jinja2':
        source => 'mitsuhiko/jinja2-tmbundle'
    }
}