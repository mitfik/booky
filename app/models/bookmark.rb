class Bookmark < ApplicationRecord
  validates :title, :url, :website, presence: true

  belongs_to :website


end
