class realgeeks::environment {

    include python
    include python::virtualenvwrapper

    python::mkvirtualenv { 'serverconfig_env':
        ensure        => present,
        project_dir   => "${boxen::config::srcdir}/serverconfig_env/",
    }

    python::requirements { 'serverconfig_env':
        requirements  => "${boxen::config::srcdir}/serverconfig_env/requirements.txt",
        virtualenv    => 'serverconfig_env',
    }
}
