class CreateRegisterValidates < ActiveRecord::Migration[5.1]
  def change
    create_table :register_validates do |t|
      t.boolean :status
      t.boolean :account_disabled
      t.belongs_to :user
      t.timestamps
    end
  end
end
