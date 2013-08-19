module Hyphenify
  module ActionView
    module Base
      extend ActiveSupport::Concern

      included do
        alias_method_chain :tag_options, :hyphen
      end

      private

      def tag_options_with_hyphen(options, escape = true)
        options.stringify_keys!
        %w[id class for].each { |key| options[key] = options[key].to_s.dasherize if options.has_key? key }
        tag_options_without_hyphen options, escape 
      end

    end
  end
end
