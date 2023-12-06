# Інструкція для встановлення Nginx
package "nginx"

# Інструкція для створення файлу конфігурації Nginx
template "/etc/nginx/sites-available/default" do
  source "default.conf.erb"
  mode 0644
end

# Інструкція для створення посилання на файл конфігурації Nginx
link "/etc/nginx/sites-enabled/default" do
  to "/etc/nginx/sites-available/default"
end

# Інструкція для запуску Nginx
service "nginx" do
    action [:enable, :start]
end