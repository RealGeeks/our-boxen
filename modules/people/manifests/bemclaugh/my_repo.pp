class people::bemclaugh::my_repo {

    include people::bemclaugh

    $git_dir  = $people::bemclaugh::git_dir
    $dotfiles = $people::bemclaugh::dotfiles

    file { $git_dir:
        ensure => 'directory',
    }
    repository { $dotfiles:
        source => "${::github_login}/dotfiles",
        require => File[$git_dir],
    }
}
