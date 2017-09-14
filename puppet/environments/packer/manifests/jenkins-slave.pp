class { 'jenkins::slave':
    masterurl => 'http://jenkins-master:8080',
    ui_user => 'adminuser',
    ui_pass => 'adminpass',
  }