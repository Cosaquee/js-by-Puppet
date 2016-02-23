package { 'git':
    ensure => installed,
}

package { 'ruby-dev':
    ensure => installed,
}

package { 'librarian-puppet':
    ensure   => installed,
    provider => 'gem',
    require => [Package['ruby-dev'], Package['git']],
}

file { '/etc/puppet/Puppetfile':
    ensure => 'file',
    source => '/vagrant/Puppetfile',
}

exec { 'librarian-puppet update --verbose':
    path => $::path,
    cwd => '/etc/puppet',
    refreshonly => true,
    subscribe => File['/etc/puppet/Puppetfile'],
    logoutput => true,
}
