module Dashify
  class Railtie < Rails::Railtie

    initializer 'dashify.action_view' do
      ActiveSupport.on_load :action_view do
        ::ActionView::Helpers::TagHelper::TagBuilder.prepend(
          Dashify::Extensions::ActionView::TagBuilder
        )
      end
    end

  end
end
