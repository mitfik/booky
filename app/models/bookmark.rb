class Bookmark < ApplicationRecord
  acts_as_taggable
  validates :title, :url, :website, presence: true

  belongs_to :website
  after_destroy :remove_website

  private
    def remove_website
      unless self.website.bookmarks.count > 0
        self.website.destroy
      end
    end

end
