class AddColumnToContent < ActiveRecord::Migration[5.0]
  def change
    add_column :contents, :image, :string
  end
end
