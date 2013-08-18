class people::bemclaugh::dotfiles {

    notify { 'class people::bemclaugh::dotfiles declared': }

    repository {
        "dotfiles":
        source => 'bem@webfactional:/home/bem/repo/dotFiles',
        path   => "${::boxen_srcdir}/dotfiles"
    }

    $home       = "/Users/${::luser}"

    file { "${home}/.gitconfig":
        ensure => link,
        mode => '0644',
        target => "${::boxen_srcdir}/dotfiles/.gitconfig",
        require => Repository["dotfiles"],
    }

    file { "${home}/.gitignore_global":
        ensure => link,
        mode => '0644',
        target => "${::boxen_srcdir}/dotfiles/.gitignore_global",
        require => Repository["dotfiles"],
    }
    file { "${home}/.profile":
        ensure => link,
        mode => '0644',
        target => "${::boxen_srcdir}/dotfiles/.profile",
        require => Repository["dotfiles"],
    }

    file { "${home}/.tmux.conf":
        ensure => link,
        mode => '0644',
        target => "${::boxen_srcdir}/dotfiles/.tmux.conf",
        require => Repository["dotfiles"],
    }

    file { "${home}/.vim":
        ensure => link,
        mode => '0644',
        target => "${::boxen_srcdir}/dotfiles/.vim",
        require => Repository["dotfiles"],
    }

    file { "${home}/.vimrc":
        ensure => link,
        mode => '0644',
        target => "${::boxen_srcdir}/dotfiles/.vimrc",
        require => Repository["dotfiles"],
    }

    file { "${home}/.aliases":
        ensure => link,
        mode => '0644',
        target => "${::boxen_srcdir}/dotfiles/.aliases",
        require => Repository["dotfiles"],
    }

    file { "${home}/.oh-my-zsh":
        ensure => link,
        mode => '0644',
        target => "${::boxen_srcdir}/dotfiles/.oh-my-zsh",
        require => Repository["dotfiles"],
    }

    file { "${home}/.zshrc":
        ensure => link,
        mode => '0644',
        target => "${::boxen_srcdir}/dotfiles/.zshrc",
        require => Repository["dotfiles"],
        #line => "source ${home}/.zshrc"
    }
}
