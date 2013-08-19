define repo::realgeeks {
	repository { "${boxen::config::srcdir}/${title}":
		source => "${::boxen_user}@github.com:RealGeeks/${title}",
	}
}