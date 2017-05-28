require 'test_helper'

class WebsiteTest < ActiveSupport::TestCase
  test "Should not save without url" do
    website = Website.new
    assert_not website.save
  end

end
