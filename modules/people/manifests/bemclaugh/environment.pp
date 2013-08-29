class bemclaugh::environment {

    include python
    include python::virtualenvwrapper

    python::mkvirtualenv { 'pytesting':
        ensure        => present,
        project_dir   => "${boxen::config::srcdir}/pytesting/",
    }

    python::requirements { 'pytesting':
        requirements  => "${boxen::config::srcdir}/pytesting/requirements.txt",
        virtualenv    => 'pytesting',
    }
}
