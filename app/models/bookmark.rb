class Bookmark < ApplicationRecord
  validates :title, :url, presence: true

  belongs_to :website

end
