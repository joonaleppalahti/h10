define apache::vhost () {
	
	file { "/etc/apache2/sites-available/${title}.com.conf":
		content => template("apache/palikka.com.conf.erb"),
		#notify => Class["apache"],
               #require => Package["apache2"],
        }


	file { "/etc/apache2/sites-enabled/${title}.com.conf":
		ensure => "link",
		target => "../sites-available/${title}.com.conf",

	}


}
