class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :public_place
      t.string :neighborhood
      t.string :city
      t.string :state
      t.integer :number
      t.string :additional_information
      t.string :region
      t.belongs_to :user

      t.timestamps
    end
  end
end
