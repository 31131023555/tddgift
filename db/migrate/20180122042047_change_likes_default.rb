class ChangeLikesDefault < ActiveRecord::Migration[5.1]
  def change
    change_column_default :articles, :likes, 0
    change_column_default :texts, :likes, 0
    change_column_default :images, :likes, 0
  end
end
