#Remove a maintenance page for deployment

bash "maintenance off" do
  user "deploy"
  Chef::Log.info("running command rm -f #{node[:deploy][node[:app_name]][:deploy_to]}/shared/system/maintenance.html")        

  code <<-EOS
  rm -f #{node[:deploy][node[:app_name]][:deploy_to]}/shared/system/maintenance.html
  EOS

end
