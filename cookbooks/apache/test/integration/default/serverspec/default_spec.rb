require 'spec_helper'

describe 'apache::default' do
  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html

  it 'is listening on port 80' do
	expect(port 80).to be_listening
  end

  it 'writes the proper content to the home page' do
	expect(file '/var/www/html/index.html').to contain /Hello, world/
  end

  it 'has a document root directory' do
	expect(file '/etc/httpd/conf/httpd.conf').to contain /DocumentRoot \"/	
  end

  it 'allows traffic on port 80' do

  end
end
