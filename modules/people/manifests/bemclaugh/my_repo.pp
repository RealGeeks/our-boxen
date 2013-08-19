class people::bemclaugh::my_repo {

	notify { 'class people::bemclaugh::my_repo declaired': }

	$home       = "/Users/${::boxen_user}"
    $dotfiles_dir = "${home}/git/dotfiles"
    file { $dotfiles_dir:
        ensure => directory,
    }

    repository { $dotfiles_dir:
        source => "${::github_user}/dotfiles"
    }
}