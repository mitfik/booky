class Bookmark < ApplicationRecord
  validates :title, :url, presence: true
end
