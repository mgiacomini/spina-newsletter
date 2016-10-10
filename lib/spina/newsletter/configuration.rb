module Spina
  module Newsletter
    include ActiveSupport::Configurable

    config_accessor :title, :controller, :description, :spina_icon, :plugin_type

    self.title = 'Newsletter'
    self.controller = 'newsletters'
    self.description = 'Allow users signup and collect leads from your site.'
    self.spina_icon = '4'

    self.plugin_type = 'website_resource'
  end
end
