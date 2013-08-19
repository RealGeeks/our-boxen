class people::bemclaugh::sublime_text_2 {

    notify { 'class people::bemclaugh::sublime_text_2 declared': }

    $home         = "/Users/${::boxen_user}"
    $dotfiles_dir = "${home}/git/dotfiles"
    $base         = "${home}/Library/Application Support"

    repository { $dotfiles_dir:
        source => "${::github_user}/dotfiles"
    }

    exec { 'Idempotent creation of User preferences directory':
        command => "mkdir -p '${base}/Sublime Text 2/Packages/User'"
    }

    file { "${base}/Sublime Text 2/Packages/User/Preferences.sublime-settings":
        ensure  => link,
        target  => "${dotfiles_dir}/.sublime/Preferences.sublime-settings",
        require => Repository[$dotfiles_dir],
    }

    sublime_text_2::package { 'SublimeLinter':
        source => 'SublimeLinter/SublimeLinter'
    }

    sublime_text_2::package { 'Jinja2':
        source => 'mitsuhiko/jinja2-tmbundle'
    }
}