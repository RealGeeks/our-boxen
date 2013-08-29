class people::bemclaugh {

    $home     = "/Users/${::boxen_user}"
    $git_dir  = "${home}/git"
    $dotfiles = "${git_dir}/dotfiles"

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

    include realgeeks::environment
    include projects::realgeeks::rg2
    include projects::realgeeks::server_config
    include projects::realgeeks::pulley
    include projects::realgeeks::lm_interface

}
