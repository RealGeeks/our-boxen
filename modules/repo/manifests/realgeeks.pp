define repo::realgeeks {
	repository { "${boxen::config::srcdir}/${title}":
                source  => "https://github.com/RealGeeks/${title}",
                require => File["${boxen::config::bindir}/boxen-git-credential"],
                config  => {
                    'credential.helper' => "${boxen::config::bindir}/boxen-git-credential"
                }
        }
}
