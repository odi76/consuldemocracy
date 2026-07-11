module Consul
  class Application < Rails::Application
    config.multitenancy = true
  end
end
