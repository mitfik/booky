require 'test_helper'

class WebsiteTest < ActiveSupport::TestCase
  test "Should not save without url" do
    website = Website.new
    assert_not website.save
  end

  test "Should not allow to create same domain twice" do
    website = Website.new(:url => websites(:futurism).url)
    assert_not website.save
  end

end
