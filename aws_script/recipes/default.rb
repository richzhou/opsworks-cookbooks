execute "install aws script" do
  command "sudo curl https://raw.githubusercontent.com/timkay/aws/master/aws -o /usr/bin/aws"
  not_if "test -e /usr/bin/aws"  
  action :nothing
end


