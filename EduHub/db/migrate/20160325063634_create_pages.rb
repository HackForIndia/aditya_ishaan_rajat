class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.belongs_to :book
      t.string :question
      t.string :notes
      t.integer :upvotes

      t.timestamps null: false
  	end
  end
end
