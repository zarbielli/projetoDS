class CreatePhones < ActiveRecord::Migration[5.1]
  def change
    create_table :phones do |t|
      t.string :number
      t.string :phone_type
      t.belongs_to :user
      t.timestamps
    end
  end
end
