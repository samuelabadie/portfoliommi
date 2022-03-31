class CreateAteliers < ActiveRecord::Migration[7.0]
  def change
    create_table :ateliers do |t|
      t.text :name
      t.text :description
      t.integer :domains
      t.date :started_at
      t.date :ended_at
      t.text :image
      t.text :credits
      t.text :tools

      t.timestamps
    end
  end
end
