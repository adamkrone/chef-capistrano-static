web_app node['capistrano_ruby']['app_name'] do
  template "app.conf.erb"
  docroot node['capistrano_ruby']['docroot']
end
