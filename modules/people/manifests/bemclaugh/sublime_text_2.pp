class people::bemclaugh::sublime_text_2 {

    notify { 'class people::bemclaugh::sublime_text_2 declared': }

    include people::bemclaugh::my_repo

    $home         = "/Users/${::boxen_user}"
    $base         = "${home}/Library/Application Support"
    $sublime_dir  = "${base}/Sublime Text 2/Packages/User"

    file { $sublime_dir:
        ensure => directory,
    }

    #exec { 'Idempotent creation of User preferences directory':
    #    command => "mkdir -p '${base}/Sublime Text 2/Packages/User'"
    #}

    file { "${$sublime_dir}/Preferences.sublime-settings":
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