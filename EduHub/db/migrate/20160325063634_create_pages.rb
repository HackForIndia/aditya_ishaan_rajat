class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.belongs_to :book, index: true
      t.string :question
      t.string :notes
      t.integer :upvotes
      t.references :user

      t.timestamps null: false
  	end
  end
end
