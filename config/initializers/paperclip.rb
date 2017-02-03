require 'paperclip/media_type_spoof_detector'

module Paperclip
  class MediaTypeSpoofDetector
    old_spoofed = instance_method(:spoofed?)

    define_method(:spoofed?) do
      if supplied_file_content_types.count > 0
        old_spoofed.bind(self).()
      else
        false
      end
    end
  end
end