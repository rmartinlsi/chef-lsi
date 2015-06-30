
package 'httpd' do
	action :install
end

file '/var/www/html/index.html' do
	action :create
	content "Hello, world\n"
end

service 'httpd' do
	action [:start,:enable]
end
