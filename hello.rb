file "hello.txt" do
	action :create
	content "Hello, nurse!\n"
	mode '0777'
	owner 'chef'
	group 'root'
end

script '/home/chef/hello.sh' do
	action :run
	not_if do
		File.exist?("/tmp/hi")
	end
end
