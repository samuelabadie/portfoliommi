class ChangeType < ActiveRecord::Migration[7.0]
  def change
    change_column :ateliers, :image, :string
  end
end
