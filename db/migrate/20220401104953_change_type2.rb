class ChangeType2 < ActiveRecord::Migration[7.0]
  def change
    change_column :ateliers, :image, :string
    change_column :ateliers, :credits, :string
    change_column :ateliers, :tools, :string
  end
end
