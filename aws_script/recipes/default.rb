bash "install aws script" do
  user "root"
  code <<-EOS
  curl https://raw.githubusercontent.com/timkay/aws/master/aws -o /usr/bin/aws  
  EOS
  not_if "test -e /usr/bin/aws"  
end

bash "chmod aws script" do
  user "root"
  code <<-EOS
  chmod +x /usr/bin/aws     
  EOS
end
