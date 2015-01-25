execute "install aws script" do
  command "curl https://raw.githubusercontent.com/timkay/aws/master/aws -o /usr/bin/aws"
  action :nothing
end
