module Spina
  module Newsletter
    class Engine < ::Rails::Engine
      isolate_namespace Spina

      initializer 'spina.plugin.register.events', before: :load_config_initializers do
        ::Spina::Plugin.register do |plugin|
          plugin.name       = 'Newsletter'
          plugin.namespace  = 'newsletters'
        end
      end

    end
  end
end
