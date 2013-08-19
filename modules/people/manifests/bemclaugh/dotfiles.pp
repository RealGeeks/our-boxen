class people::bemclaugh::dotfiles {

    include people::bemclaugh::my_repo

    $home         = $people::bemclaugh::my_repo::home
    $dotfiles = $people::bemclaugh::my_repo::dotfiles 

    file { "${home}/.gitconfig":
        ensure => link,
        target => "${dotfiles}/gitconfig",
        require => Repository[$dotfiles],
    }

    file { "${home}/.gitignore_global":
        ensure => link,
        target => "${dotfiles}/gitignore_global",
        require => Repository[$dotfiles],
    }

    file { "${home}/.profile":
        ensure => link,
        target => "${dotfiles}/profile",
        require => Repository[$dotfiles],
    }

    file { "${home}/.aliases":
        ensure => link,
        target => "${dotfiles}/aliases",
        require => Repository[$dotfiles],
    }

    file { "${home}/.zshrc":
        ensure => link,
        target => "${dotfiles}/zshrc",
        require => Repository[$dotfiles],
    }
}

