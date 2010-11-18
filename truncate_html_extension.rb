require File.join(File.dirname(__FILE__), 'lib', 'truncate_html')

class TruncateHtmlExtension < Radiant::Extension

  version "1.0"
  description "Adds truncate tag to Radiant for truncating data within the tag"
  url "https://github.com/lunaweb/radiant-truncate-html-extension"
  
  def activate
    Page.send :include, TruncateHtmlTags
  end
  
end
