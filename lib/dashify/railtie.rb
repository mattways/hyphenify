module Dashify
  class Railtie < Rails::Railtie

    initializer :dashify do
      ::ActionView::Helpers::TagHelper.prepend(
        Dashify::Extensions::ActionView::TagHelper
      )
    end

  end
end
