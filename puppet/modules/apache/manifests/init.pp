class apache {
        Package { ensure => "installed", allowcdrom => "true", }

        package { apache2: }

        service {"apache2":
                ensure => "true",
                enable => "true",
                provider => "systemd",
                require => Package["apache2"],
        }

        file { "/etc/apache2/sites-available/palikka.com.conf":
                content => template("apache/palikka.com.conf.erb"),
		notify => Service["apache2"],
                require => Package["apache2"],

        }


        file { "/etc/apache2/sites-enabled/palikka.com.conf":
                ensure => "link",
                target => "../sites-available/palikka.com.conf",
		notify => Service["apache2"],
		require => Package["apache2"],

        }


}
