class AddPublishFieldToArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :publishing, :datetime
  end
end
