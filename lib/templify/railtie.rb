module Templify
  class Railtie < Rails::Railtie
    initializer 'templify.insert_into_active_record' do
      ActiveSupport.on_load :active_record do
        ActiveRecord::Base.extend Templify::Rails
      end
    end
  end
end