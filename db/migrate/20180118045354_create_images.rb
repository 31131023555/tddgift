class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.string :headline
      t.integer :imgorder
      t.text :url
      t.integer :imglikes
    end
  end
end
