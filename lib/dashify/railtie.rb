module Dashify
  class Railtie < Rails::Railtie

    initializer 'dashify.action_view' do
      ActiveSupport.on_load :action_view do
        ::ActionView::Helpers::TagHelper.prepend(
          Dashify::Extensions::ActionView::TagHelper
        )
      end
    end

  end
end
