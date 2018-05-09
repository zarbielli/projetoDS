class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :cnpj
      t.string :password_digest
      t.string :type
      t.string :donations_made
      t.string :donations_priority
      t.timestamps
    end
  end
end
