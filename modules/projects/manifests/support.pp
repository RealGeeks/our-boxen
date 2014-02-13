class projects::support {

	notify { 'class projects::support declared': }

	include homebrew
	include chrome
	include hipchat
	include iterm2::stable
	include osx
	include sublime_text_2
	include wget

}
