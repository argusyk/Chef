# Інструкція для встановлення MySQL
package "mysql-server"

# Інструкція для запуску MySQL
service "mysql" do
  action [:enable, :start]
end

# Інструкція для створення конфігурації MySQL
template "/etc/mysql/my.cnf" do
  source "my.cnf.erb"
  mode 0644
end
