class CreateDonates < ActiveRecord::Migration[5.1]
  def change
    create_table :donates do |t|
      t.string :donator_id
      t.string :charity_id
      t.timestamps
    end
  end
end
