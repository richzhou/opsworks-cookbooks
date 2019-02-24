#Create a maintenance page for deployment
#set app_name in custome json for receipt
execute "maintenance.html" do    
  Chef::Log.info("Create maintenance page #{node[:deploy][node[:app_name]][:deploy_to]}/shared/system/maintenance.html")            
  command "echo \"<div style='text-align:center;width:100%;'></div style='text-align:center;width:100%;'><h1 style='text-align:center;width:100%;'>System Maintenance In Progress</h1><br/><div style='text-align:center;width:100%;'>We should be back shortly. Thank you for your patience.</div>\" > #{node[:deploy][node[:app_name]][:deploy_to]}/shared/system/maintenance.html"
end


