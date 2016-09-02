class RemovePictureFromProduct < ActiveRecord::Migration[5.0]
  def change
    remove_column :products, :picture, :string
  end
end
