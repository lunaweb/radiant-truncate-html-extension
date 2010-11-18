module TruncateHtmlTags

  include Radiant::Taggable

  desc %{
    Truncate contents handling HTML tags
    
    1. @chars@ - number of chars within the tag (include ellipses). Default is 100.
    2. @keep_words_intact@ - can be 'true' or 'false'. If true, it will leave whole words, but not cut them ('hello...' instead of 'hello fr...'). Default is true.
    3. @ellipses@ - default is '...'
    
    *Usage*
    
    <code><r:truncate_html>...</r:truncate_html></code>
  }
  tag 'truncate_html' do |tag|
    text = tag.expand
    
    options = {}
    options[:length] = tag.attr['chars'].to_i if tag.attr['chars']
    options[:omission] = tag.attr['ellipses'] if tag.attr['ellipses']
    options[:word_boundary] = false if tag.attr['keep_words_intact'] == 'false'
    options[:word_boundary] = true if tag.attr['keep_words_intact'] == 'true'
    
    truncate(text, options)
  end
  
  private
  
  def truncate(text, options)
    html_string = TruncateHtml::HtmlString.new(text)
    TruncateHtml::HtmlTruncator.new(html_string).truncate(options)
  end

end