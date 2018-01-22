class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :images, :imgorder, :ordering
    rename_column :images, :imglikes, :likes
    rename_column :texts, :textorder, :ordering
    rename_column :texts, :textlikes, :likes
  end
end
