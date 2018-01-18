class CreateTexts < ActiveRecord::Migration[5.1]
  def change
    create_table :texts do |t|
      t.string :headline
      t.integer :textorder
      t.text :passage
      t.integer :textlikes
    end
  end
end
