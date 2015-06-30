require 'spec_helper'

describe 'workstation::default' do
  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html
  #it 'installs tree' do
  #  expect(package 'tree').to be_installed
  #end

  it 'installs vim' do
    expect(package "vim-enhanced").to be_installed
  end

  ['emacs','nano','tree'].each do |p|
    it "installs #{p}" do
	expect(package "#{p}").to be_installed
    end
  end

  it "created an motd" do
	expect(file "/etc/motd").to be_a_file
  end

  it "created an motd with desired content" do
	expect(file "/etc//motd").to contain /hand is/
  end

	#expect(file "/etc/motd").to be_symlink
end
