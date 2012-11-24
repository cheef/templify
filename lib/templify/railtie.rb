module Templify
  class Railtie < ::Rails::Railtie
    initializer 'templify.extend_active_record' do
      ActiveSupport.on_load :active_record do
        extend Templify::ActiveRecord
      end
    end
  end
end