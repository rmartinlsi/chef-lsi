['git','vim','emacs','nano','tree'].each do |p|
	package p do
		action :install
	end
end

#package 'tree' do
#	action :install
#end

file "#{ENV['HOME']}/.gitconfig" do
	content <<EOF
[user]
	name = Rhandi Martin
	email = rhandi.martin@liquidityservices.com
EOF

end

#file '/etc/motd' do
template '/etc/motd' do
	action :create
	owner 'root'
	group 'root'
#	mode '644'	
	manage_symlink_source true
#	content "This hand is my hand. No, it's not your hand...\nIP Address:\t<%= node['ipaddress'] %>\n"
	source 'motd.erb'
end
