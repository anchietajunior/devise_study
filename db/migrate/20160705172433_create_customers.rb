class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.date :birthday
      t.references :organization, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
