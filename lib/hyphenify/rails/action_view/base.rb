module Hyphenify
  module Rails
    module ActionView
      module Base
        extend ActiveSupport::Concern

        included do
          alias_method_chain :tag_option, :hyphen
        end

        private

        def tag_option_with_hyphen(key, value, escape)
          value = value.to_s.dasherize if %w[id class].include? key.to_s
          tag_option_without_hyphen key, value, escape
        end

      end
    end
  end
end
