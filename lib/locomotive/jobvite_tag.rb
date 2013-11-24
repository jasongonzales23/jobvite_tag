require 'solid'

%w{tags}.each do |dir|
    Dir[File.join(File.dirname(__FILE__), 'jobvite_tag', dir, '*.rb')].each { |lib| require lib }
end

# DEBUG
# puts "[JobviteTag] tag loaded"
