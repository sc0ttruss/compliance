bash 'generate_keys' do
  user 'vagrant'
  cwd '/var/tmp'
  code <<-EOH
  echo " ENV = ", `env`
  echo " HOME = ", $HOME
  echo -e  'y\n'|ssh-keygen -t rsa -b 4096 -C vagrant@chefdemo -V +1024w1d -N '' -f /mnt/share/.ssh/id_rsa && cat /mnt/share/.ssh/id_rsa.pub >> /home/vagrant/.ssh/authorized_keys
  EOH
end
