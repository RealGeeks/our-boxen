class people:Pezzo1234 {

    $home = "/Users/${::boxen_user}"
    $git_dir  = "${home}/git"

    notify { 'class people::Pezzo1234 declared': }
    notify { "github user is ${::github_name}": }
    notify { "github email is ${::github_email}": }
    notify { "github login is ${::github_login}": }
    notify { "boxen user is ${::boxen_user}": }

    include projects::support

}
