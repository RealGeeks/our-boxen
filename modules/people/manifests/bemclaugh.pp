class people::bemclaugh {

    notify { 'class people::bemclaugh declared': }
    notify { "github user is ${::github_name}": }
    notify { "github email is ${::github_email}": }
    notify { "github login is ${::github_login}": }
    notify { "boxen user is ${::boxen_user}": }

    include people::bemclaugh::my_repo
    include people::bemclaugh::apps
    include people::bemclaugh::dotfiles
    include people::bemclaugh::osx
    include people::bemclaugh::sublime_text_2

    include projects::rg2
    include projects::server_config
    include projects::pulley
    include projects::lm_interface

}
