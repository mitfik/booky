class AddWebsiteIdToBookmarks < ActiveRecord::Migration[5.1]
  def change
    add_column :bookmarks, :website_id, :integer
  end
end
