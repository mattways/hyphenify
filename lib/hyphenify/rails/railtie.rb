module Hyphenify
  module Rails
    class Railtie < ::Rails::Railtie

      initializer 'hyphenify' do
        ::ActionView::Base.send :include, Hyphenify::Rails::ActionView::Base
        if ::Rails::VERSION::MAJOR < 4
          ::ActionView::Helpers::InstanceTag.send :include, Hyphenify::Rails::ActionView::Base
        else
          ::ActionView::Helpers::Tags::Base.send :include, Hyphenify::Rails::ActionView::Base
        end
      end

    end
  end
end
