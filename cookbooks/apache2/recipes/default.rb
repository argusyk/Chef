# Інструкція для встановлення Apache2
package "apache2"

# Інструкція для запуску Apache2
service "apache2" do
  action [:enable, :start]
end

# Інструкція для створення файлу конфігурації Apache2
template "/etc/apache2/sites-available/default" do
  source "default.conf.erb"
  mode 0644
end

# Інструкція для створення посилання на файл конфігурації Apache2
link "/etc/apache2/sites-enabled/default" do
  to "/etc/apache2/sites-available/default"
end

# Завантажити файли index
directory "/var/www/html" do
  owner "root"
  group "root"
  mode "0755"
end

# Скопійовані файли index
cookbook_file "/var/www/html/index.html" do
  source "index.html"
  owner "root"
  group "root"
  mode "0644"
end

cookbook_file "/var/www/html/index.php" do
  source "index.php"
  owner "root"
  group "root"
  mode "0644"
end
