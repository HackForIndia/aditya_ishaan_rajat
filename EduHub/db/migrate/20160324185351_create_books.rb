class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.belongs_to :user, index: true
      t.string :title
      t.string :cluster
      t.references :user

      t.timestamps null: false
    end
  end
end
