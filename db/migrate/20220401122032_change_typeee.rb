class ChangeTypeee < ActiveRecord::Migration[7.0]
  def change
    change_column :ateliers, :credits, :string
  end
end
