
require 'elibri_onix_dict/version'
require 'elibri_onix_dict/releases'
require 'elibri_onix_dict/cover_type'
require 'yaml'


module Elibri
  module ONIX
    module Dict
      module Release_3_0;
        extend self

        def load_dictionaries!
          serialized_path = File.join(File.dirname(__FILE__), "elibri_onix_dict", "onix_3_0", "serialized", "*.yml")
          serialized_path = File.expand_path(serialized_path)

          Dir[serialized_path].each do |file|
            klass_name = File.basename(file, '.yml') # 'ResourceMode'
            klass = Class.new(Elibri::ONIX::Dict::Release_3_0::Base)
            # Elibri::ONIX::Dict::Release_3_0::ResourceMode
            const_set(klass_name, klass)
            klass.const_set(:ALL, YAML::load_file(file))

            klass::ALL.each do |dict_item|
              klass.const_set(dict_item.const_name, dict_item.onix_code) if dict_item.const_name
            end  
          end  
        end
      
      end

      Release_3_0.load_dictionaries!
      
    end
  end
end
