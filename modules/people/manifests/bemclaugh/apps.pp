class people::bemclaugh::apps {

    notify { 'class people::bemclaugh::apps declared': }

    include iterm2::stable
    include zsh
    include wget
    include python
    include python::virtualenvwrapper
    include mongodb
    include virtualbox
    include vagrant
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

    file_line { 'source_boxen_env':
        path   => "/Users/${::boxen_user}/.zshrc",
        line   => '[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh',
        ensure => present
    }

}
