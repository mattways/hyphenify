module Dashify
  module Extensions
    module ActionView
      module TagHelper
        extend ActiveSupport::Concern

        private

        def tag_options(options, escape=true)
          options.stringify_keys!
          %w[id class for].each do |key|
            if options.has_key? key
              options[key] = options[key].to_s.dasherize
            end
          end
          super options, escape
        end

      end
    end
  end
end
