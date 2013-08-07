class people::bemclaugh {
    include projects::all

    $home = "/Users/brian"
    $dotfiles = "$home/.dotFiles"

    repository { $dotfiles:
        source => 'bem@webfactional:/home/bem/repo/dotFiles',
        require => File[$home]
    }
}
