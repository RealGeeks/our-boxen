class people::bemclaugh::dotfiles {

    notify { 'class people::bemclaugh::dotfiles declared': }

    include people::bemclaugh::my_repo

    file { "${home}/.gitconfig":
        ensure => link,
        target => "${dotfiles_dir}/gitconfig",
        require => Repository[$dotfiles_dir],
    }

    file { "${home}/.gitignore_global":
        ensure => link,
        target => "${dotfiles_dir}/gitignore_global",
        require => Repository[$dotfiles_dir],
    }

    file { "${home}/.profile":
        ensure => link,
        target => "${dotfiles_dir}/profile",
        require => Repository[$dotfiles_dir],
    }

    file { "${home}/.aliases":
        ensure => link,
        target => "${dotfiles_dir}/aliases",
        require => Repository[$dotfiles_dir],
    }

    file { "${home}/.zshrc":
        ensure => link,
        target => "${dotfiles_dir}/zshrc",
        require => Repository[$dotfiles_dir],
    }

    #file { "${home}/.oh-my-zsh":
    #    ensure => link,
    #    target => "${::boxen_srcdir}/oh-my-zsh/.oh-my-zsh",
    #}
}
