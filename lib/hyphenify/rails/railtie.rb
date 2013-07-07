module Hyphenify
  module Rails
    class Railtie < ::Rails::Railtie

      initializer 'hyphenify' do
        ::ActionView::Base.send :include, Hyphenify::Rails::ActionView::Base
      end

    end
  end
end
