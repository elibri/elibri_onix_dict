require 'yaml'
require 'amatch'

module Elibri
  module ONIX
    module Dict
      class CoverType

        # id to wartość jaka będzie zapisana w polu cover_type_id dla produktu.
        # name to nazwa w obrębie Elibri
        attr_reader :id, :name, :product_form, :product_form_detail


        conf =  File.expand_path(File.join(File.dirname(__FILE__), "cover_types.yml"))
        ALL = YAML::load_file(conf).sort_by(&:name)

        HARDBACK = 8
        PLASTIC = 6
        PAPERBACK = 4

        def self.find(cover_type_id)
          self.all.find {|cover_type| cover_type.id == cover_type_id }
        end

        def self.determine_cover_type(product_form, product_form_detail)
          matching_cover = all.find { |cover| cover.product_form == product_form && cover.product_form_detail == product_form_detail }
          matching_cover.name if matching_cover
        end

        # Znajdź w słowniku typ okładki, którego nazwa jest najbardziej podobna do podanego stringu.
        def self.most_similar_to(cover_name)
          if cover_name =~ /karton/
            return all.find { |c| c.name == "twarda" }
          else
            all.sort_by {|cover_type| cover_type.name.downcase.levenshtein_similar(cover_name.downcase) }.last
          end
        end


        def self.all
          ALL
        end


      end
    end
  end
end
