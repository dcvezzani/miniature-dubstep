module LeftRightFooterHelper
 def html_title
   # @cms_page.try(:title) || 'Welcome to my site'
   title = @cms_page.blocks_attributes.find{|block| block[:identifier] == "title"}
   (title and title[:content]) or 'Welcome to my site'
 end
end

