class ChangeTypeeezz < ActiveRecord::Migration[7.0]
  def change
    change_column :ateliers, :tools, :string
  end
end
