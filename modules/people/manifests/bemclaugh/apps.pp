class people::bemclaugh::apps {

    notify { 'class people::bemclaugh::apps declared': }

    include iterm2::stable
    include zsh
    include wget
    include python
    include mongodb
    include virtualbox
    include vagrant
    include sublime_text_2
    #include irssi
    include chrome
    include hipchat
    include ohmyzsh
}
