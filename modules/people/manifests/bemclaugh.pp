class people::bemclaugh {

    notify { 'class people::bemclaugh declared': }

    include people::bemclaugh::my_repo
    include people::bemclaugh::apps
    include people::bemclaugh::dotfiles
    include people::bemclaugh::osx
    #include people::bemclaugh::sublime_text_2

    include projects::rg2
    include projects::server_config
    include projects::pulley
    include projects::lm_interface

}
