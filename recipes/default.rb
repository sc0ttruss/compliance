execute 'yum_update' do
  command 'yum -y update '
  action :run
end
# redhat 6.7
#chef-compliance-0.9.1-1.el6.x86_64.rpm
# redhat 7.1
#chef-compliance-0.9.1-1.el7.x86_64.rpm
bash 'install_compliance' do
  user 'root'
  cwd '/tmp'
  code <<-EOH
  rpm -Uvh /mnt/share/chef/chef-compliance-0.9.4-1.el7.x86_64.rpm && chef-compliance-ctl reconfigure && chef-compliance-ctl user-create chef chef && chef-compliance-ctl user-create admin chef

  EOH
end
#https://packagecloud.io/chef/stable/packages/el/6/chef-compliance-0.9.4-1.el6.x86_64.rpm/download
