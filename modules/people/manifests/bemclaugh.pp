class people::bemclaugh {
    include projects::all

    $home       = "/Users/${::luser}"
    $dotfiles   = "${home}/.dotFiles"

    repository { $dotfiles:
        source => 'bem@webfactional:/home/bem/repo/dotFiles',
        require => File[$home]
    }

    user { $id:
      ensure => present,
      shell  => "/bin/zsh",
    }

    file { "${home}/.gitconfig":
        ensure => 'link',
        mode => '0644',
        target => "${dotfiles}/.gitconfig",
        require => Repository[$dotfiles],
    }

    file { "${home}/.gitignore_global":
        ensure => 'link',
        mode => '0644',
        target => "${dotfiles}/.gitignore_global",
        require => Repository[$dotfiles],
    }
    file { "${home}/.profile":
        ensure => 'link',
        mode => '0644',
        target => "${dotfiles}/.profile",
        require => Repository[$dotfiles],
    }

    file { "${home}/.tmux.conf":
        ensure => 'link',
        mode => '0644',
        target => "${dotfiles}/.tmux.conf",
        require => Repository[$dotfiles],
    }

    file { "${home}/.vim":
        ensure => 'link',
        mode => '0644',
        target => "${dotfiles}/.vim",
        require => Repository[$dotfiles],
    }

    file { "${home}/.vimrc":
        ensure => 'link',
        mode => '0644',
        target => "${dotfiles}/.vimrc",
        require => Repository[$dotfiles],
    }

    file { "${home}/.aliases":
        ensure => 'link',
        mode => '0644',
        target => "${dotfiles}/.aliases",
        require => Repository[$dotfiles],
    }
    file { "${home}/.oh-my-zsh":
        ensure => 'link',
        mode => '0644',
        target => "${dotfiles}/.oh-my-zsh",
        require => Repository[$dotfiles],
    }

    file { "${home}/.zshrc":
        ensure => 'link',
        mode => '0644',
        target => "${dotfiles}/.zshrc",
        require => Repository[$dotfiles],
        line => "source ${home}/.zshrc"
    }
}
