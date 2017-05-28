require 'test_helper'

class BookmarkTest < ActiveSupport::TestCase
   test "Should not save without url and title" do
     bookmark = Bookmark.new
     assert_not bookmark.save
   end

   test "Should create website if does not exist" do
     bookmark = bookmarks(:futurism)
     website = bookmark.website
     assert_instance_of(Website, website)
   end

end
