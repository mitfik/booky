require 'test_helper'

class BookmarkTest < ActiveSupport::TestCase
   test "Should not save without url and title" do
     bookmark = Bookmark.new
     assert_not bookmark.save
   end
end
