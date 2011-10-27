

module Elibri
  module ONIX
    module Dict
      module Release_3_0

        # Klasa podstawowa dla wszystkich słowników ONIX`a
        class Base

          attr_reader :onix_code, :name, :const_name

          # ruby-1.9.2-head > dict_item.name(:en)
          #  => "author" 
          def name(locale = :pl)
            @name[locale.to_s]
          end


          def self.find_by_onix_code(searched_onix_code)
            self.all.find {|dict_item| dict_item.onix_code == searched_onix_code }
          end


          def self.all
            self.const_get(:ALL) # Wartość stałej 'ALL' pobierz dynamicznie - z klasy pochodnej...
          end


          # Zwróć listę wszystkich elementów słownika, poza tymi o kodach przekazanych jako argument
          def self.all_except(*onix_codes)
            onix_codes.flatten!
            self.all.reject {|dict_item| onix_codes.include?(dict_item.onix_code) }
          end

          
        end


      end
    end
  end
end
