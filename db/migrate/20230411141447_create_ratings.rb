class CreateRatings < ActiveRecord::Migration[6.0]
  def change
    create_table :ratings do |t|
      t.references :place, null: false, foreign_key: true
      t.integer :category
      t.integer :value
    end
  end
end
