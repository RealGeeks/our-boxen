class people::bemclaugh::sublime_text_2 {

    notify { 'class people::bemclaugh::sublime_text_2 declared': }

    include people::bemclaugh::my_repo

    $home         = $people::bemclaugh::my_repo::home
    $dotfiles     = $people::bemclaugh::my_repo::dotfiles
    $base         = "${home}/Library/Application Support"
    $sublime_dir  = "${base}/Sublime Text 2/Packages/User"

    file { $sublime_dir:
        ensure => directory,
    }

    file { "${$sublime_dir}/Preferences.sublime-settings":
        ensure  => link,
        target  => "${dotfiles}/.sublime/Preferences.sublime-settings",
        require => Repository[$dotfiles],
    }

    sublime_text_2::package { 'SublimeLinter':
        source => 'SublimeLinter/SublimeLinter'
    }

    sublime_text_2::package { 'Jinja2':
        source => 'mitsuhiko/jinja2-tmbundle'
    }
}
