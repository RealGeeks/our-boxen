class people::bemclaugh::dotfiles {

    include people::bemclaugh

    $home     = "$people::${::boxen_user}::home"
    $dotfiles = "$people::${::boxen_user}::dotfiles"

    file { "${home}/.gitconfig":
        ensure  => link,
        target  => "${dotfiles}/gitconfig",
        require => Repository[$dotfiles],
    }

    file { "${home}/.gitignore_global":
        ensure  => link,
        target  => "${dotfiles}/gitignore_global",
        require => Repository[$dotfiles],
    }

    file { "${home}/.profile":
        ensure  => link,
        target  => "${dotfiles}/profile",
        require => Repository[$dotfiles],
    }

    file { "${home}/.aliases":
        ensure  => link,
        target  => "${dotfiles}/aliases",
        require => Repository[$dotfiles],
    }

    file { "${home}/.zshrc":
        ensure  => link,
        target  => "${dotfiles}/zshrc",
        require => Repository[$dotfiles],
    }

    file { "${home}/.virtualenvs":
        ensure => directory,
    }

    file { "${home}/.oh-my-zsh/themes":
        ensure => directory,
    }

    file { "${home}/.oh-my-zsh/themes/bem.zsh-theme":
        ensure  => link,
        target  => "${dotfiles}/bem.zsh-theme",
        require => Repository[$dotfiles],
    }
}
