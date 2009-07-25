begin
  require 'patron'
rescue LoadError
  begin
    require 'rubygems'
    require 'patron'
  rescue LoadError
    abort <<-ERROR
The 'patron' library could not be loaded. If you have RubyGems installed
you can install patron by doing "sudo gem install patron".
ERROR
  end
end

require 'lib/hash'