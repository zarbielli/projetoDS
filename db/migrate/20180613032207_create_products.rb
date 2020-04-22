class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :description
      t.date :validity
      t.string :product_type
      t.string :unit_measurement
      t.string :amount
      t.belongs_to :donate

      t.timestamps
    end
  end
end