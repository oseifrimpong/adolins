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

Paperclip::Attachment.default_options[:use_timestamp] = false