define repo::realgeeks {
	Repository { "${boxen::config::srcdir}/${title}":
		source => "${::boxen_user}@github.com:RealGeeks/${title}",
	}
}