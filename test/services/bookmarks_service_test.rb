require 'test_helper'

class BookmarksServiceTest < ActiveSupport::TestCase

  test "Should create bookmark with new website" do
    url = "https://martinfowler.com/bliki/CQRS.html"
    short_url = "https://goo.gl/wfdVEb"
    title = "CQRS"
    service = BookmarksService.new(title, url, short_url)
    assert service.create

    assert_equal service.bookmark.url, url
    assert_equal service.bookmark.short_url, short_url
    assert_equal service.bookmark.title, title
    assert_instance_of Website, service.bookmark.website
    assert_equal "martinfowler.com", service.bookmark.website.url
  end

  test "Should reuse existing website" do
    url = "https://futurism.com/nasa-fast-tracking-plans-explore-metal-asteroid-worth-10000-quadrillion/"
    short_url = "https://goo.gl/Q7Ow8D"
    title = "NASA"
    website = Website.where(:url => "futurism.com")
    assert_not_nil website
    assert_equal website.count, 1
    service = BookmarksService.new(title, url, short_url)
    assert service.create
    assert_equal "futurism.com", service.bookmark.website.url
  end

end
