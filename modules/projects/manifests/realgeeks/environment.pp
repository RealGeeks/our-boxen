class projects::realgeeks::environment {

    include python
    include python::virtualenvwrapper
    include projects::repo::realgeeks

    $rg_repo_dir = $projects::repo::realgeeks::git_dir

    python::mkvirtualenv { 'serverconfig_env':
        ensure        => present,
        project_dir   => "${boxen::config::srcdir}/serverconfig_env/",
    }

    python::requirements { 'serverconfig_env':
        requirements  => "${rg_repo_dir}/serverconfig/requirements.txt",
        virtualenv    => 'serverconfig_env',
    }
}
