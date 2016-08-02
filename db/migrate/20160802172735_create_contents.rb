class CreateContents < ActiveRecord::Migration[5.0]
  def change
    create_table :contents do |t|
      t.string :title
      t.string :url
      t.text :content
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
