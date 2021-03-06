class projects::apps {

    notify { 'class projects::apps declared': }

    include iterm2::stable
    include zsh
    include wget
    include python
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
        path   => "${home}/.zshrc",
        line   => '[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh',
        ensure => present
    }

}
