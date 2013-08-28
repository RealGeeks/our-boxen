class people::bemclaugh::apps {

    notify { 'class people::bemclaugh::apps declared': }

    include iterm2::stable
    include zsh
    include wget
    include python
    include python::virtualenvwrapper
    #include python::requirements
    #include python::pip
    include mongodb
    include virtualbox
    include vagrant
    include sublime_text_2
    include irssi
    include chrome
    include hipchat
    include ohmyzsh

    package {
        [
        'htop-osx',
        'multitail',
        'nmap',
        'pkg-config',
        'xz',
        ]:
        ensure => installed,
    }
}
