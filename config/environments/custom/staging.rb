Rails.application.configure do
  config.assets.js_compressor = false

  server = Rails.application.secrets.server_name
  config.hosts << server if server.present?
end
