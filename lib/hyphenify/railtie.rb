module Hyphenify
  class Railtie < Rails::Railtie

    initializer 'hyphenify' do
      ::ActionView::Base.send :include, Hyphenify::ActionView::Base
      if Rails::VERSION::MAJOR < 4
        ::ActionView::Helpers::InstanceTag.send :include, Hyphenify::ActionView::Base
      else
        ::ActionView::Helpers::Tags::Base.send :include, Hyphenify::ActionView::Base
      end
    end

  end
end
