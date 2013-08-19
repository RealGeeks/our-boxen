class people::bemclaugh::my_repo {

    $home          = "/Users/${::boxen_user}"
    $git_dir       = "${home}/git"
    file { $git_dir:
        ensure => 'directory',
    }
    $dotfiles      = "${git_dir}/dotfiles"

    repository { $dotfiles:
        source => "${::github_login}/dotfiles",
        require => File[$git_dir],
    }
}
