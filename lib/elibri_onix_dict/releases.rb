

%w{base}.each do |file_name|
  require File.join(File.dirname(__FILE__), "onix_3_0", file_name)
end  

