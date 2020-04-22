class CreateDonates < ActiveRecord::Migration[5.1]
  def change
    create_table :donates do |t|
      t.string :status
      t.integer :donator_id
      t.integer :charity_id
      t.timestamps
    end
  end
end
