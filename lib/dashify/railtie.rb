module Dashify
  class Railtie < Rails::Railtie

    initializer 'dashify.extensions' do
      ::ActionView::Helpers::TagHelper.prepend(
        Dashify::Extensions::ActionView::TagHelper
      )
    end

  end
end
