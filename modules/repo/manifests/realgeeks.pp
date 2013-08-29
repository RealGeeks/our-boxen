define repo::realgeeks {

	include people::${::github_name}

	$git_dir  = $people::${::github_name}::git_dir

	repository { "${git_dir}/${title}":
                source  => "https://github.com/RealGeeks/${title}",
                require => File["${boxen::config::bindir}/boxen-git-credential"],
                config  => {
                    'credential.helper' => "${boxen::config::bindir}/boxen-git-credential",
                }
        }
}
