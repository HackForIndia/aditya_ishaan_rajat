class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.references :book
      t.string :name
      t.string :UID
      t.string :address
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
