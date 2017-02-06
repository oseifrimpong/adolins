require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Adolins
  class Application < Rails::Application
  	config.assets.version = '1.0'

	  	config.before_configuration do
	 	 env_file = File.join(Rails.root, 'config', 'local_env.yml')
	  	YAML.load(File.open(env_file)).each do |key, value|
	    ENV[key.to_s] = value
	  end if File.exists?(env_file)
	end
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end

# Allow ".foo" as an extension for files with the MIME type "text/plain".
Paperclip.options[:content_type_mappings] = {
  foo: %w(text/plain)
}
require 'paperclip/media_type_spoof_detector'

module Paperclip
  class MediaTypeSpoofDetector
    def spoofed?
      false
    end
  end
end
