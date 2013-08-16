define repo::realgeeks {
	repository { "${boxen::config::srcdir}/${title}":
		source => "${::luser}@github.com:RealGeeks/${title}",
	}
}