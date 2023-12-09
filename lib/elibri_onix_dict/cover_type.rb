require 'yaml'

module Elibri
  module ONIX
    module Dict
      class CoverType

        # id to wartość jaka będzie zapisana w polu cover_type_id dla produktu.
        # name to nazwa w obrębie Elibri
        attr_reader :id, :key, :product_form, :product_form_detail


        conf =  File.expand_path(File.join(File.dirname(__FILE__), "cover_types.yml"))
        if RUBY_VERSION[0] == "2"
          ALL = YAML::load_file(conf)
        else
          ALL = YAML::load_file(conf, permitted_classes: [Elibri::ONIX::Dict::CoverType])
        end

        HARDBACK = 8
        PLASTIC = 6
        PAPERBACK = 4

        def name
          I18n::t("products.cover_type.#{key}")
        end

        def self.find(cover_type_id)
          self.all.find {|cover_type| cover_type.id == cover_type_id }
        end

        def self.determine_cover_type(product_form, product_form_detail)
          matching_cover = all.find { |cover| cover.product_form == product_form && cover.product_form_detail == product_form_detail }
          I18n::t("products.cover_type.#{matching_cover.key}") if matching_cover
        end

        def self.all
          ALL
        end

      end
    end
  end
end
