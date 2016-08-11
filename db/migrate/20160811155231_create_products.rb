class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :picture
      t.text :info
      t.string :website

      t.timestamps
    end
  end
end
