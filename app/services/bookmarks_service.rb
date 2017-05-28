class BookmarksService

  def initialize(params)
    @title = params[:title]
    @url = params[:url]
    @short_url = params[:short_url]
    @tags = params[:tag_list]
    @bookmark = nil
  end

  def create
    @bookmark = Bookmark.new(title: @title, url: @url, short_url: @short_url, tag_list: @tag_list)
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
      if uri.host
        return uri.host.downcase
      else
        return nil
      end
    end

end
