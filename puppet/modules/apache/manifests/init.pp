class apache {
        Package { ensure => "installed", allowcdrom => "true", }

        package { apache2: }

        service {"apache2":
                ensure => "true",
                enable => "true",
                provider => "systemd",
                require => Package["apache2"],
        }
}
