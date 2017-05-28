class Website < ApplicationRecord
  validates :url, presence: true
  validates :url, uniqueness: true

  has_many :bookmarks, :dependent => :destroy
end
