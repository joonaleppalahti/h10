define apache::vhost() {
	
	file { "/etc/apache2/sites-enabled/${title}.com.conf",
		ensure => "link",
		target => "../sites-available/${title}.com.conf",

	}


}
