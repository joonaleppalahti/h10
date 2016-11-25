class {apache:}

Apache::Vhost {
	notify => Service["apache2"],
}


apache::vhost {"kuutio":}


apache::vhost {"palikka":}
