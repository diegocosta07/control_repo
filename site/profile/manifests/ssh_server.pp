class profile::ssh_server {
  package {'openssh-server':
          ensure => present,
  }
  service {'sshd':
          ensure => 'running',
          enable => 'true',
  }
  ssh_authorized_key {'root@master.puppet.vm':
        ensure => present,
        user   => 'root',
        type   => 'ssh-rsa',
        key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDBAp2Tgy2qMbfWSCoZ0QMObiF4sVCxAs0kkGezyxEeOC6Ti23xTgw5AC4/k3lhBadw6Bi+92GN5jc3tFy7O6Hhnmeg8DjG2rawi0e0LZR9SoiliDuDooVz6JCcoqaOD5pRMAELJnyYSYK4XIx4zdplwc4iUtzE2DVzm38XwyGKlK8Lvo7fQntUvwxkS1YMHvTyXd5ULt3EXVFkUaDHWzq/s46aFjd4ms/se48MtrbmGiXh4JRTw+A3zUsrAq9EvhW7UC302zGKbXOhlHZiej+NQkqTOnKfcwjKnJekL/kFwlThVGs+XMp+dq5wa0d+vM4o5l/6TOrtMAMnV0Nha84L'
   }
}
