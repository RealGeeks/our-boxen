class projects::support {

	notify { 'class projects::apps declared': }

	include chrome
	include hipchat
	include iterm2::stable
	include osx
	include sublime_text_2
	include wget

}
