class BookmarksService

  def initialize(title, url, short_url)
    @title = title
    @url = url
    @short_url = short_url
    @bookmark = nil
  end

  def create
    @bookmark = Bookmark.new(title: @title, url: @url, short_url: @short_url)
    website_host = extract_host(@url)
    @bookmark.website = Website.find_or_create_by(url: website_host)
    @bookmark.save
  end

  def bookmark
    @bookmark
  end


  private

    def extract_host(url)
      uri = URI.parse(url)
      return uri.host.downcase
    end

end
