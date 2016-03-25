class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.belongs_to :user, index: true
      t.has_many :pages
      t.string :title
      t.string :cluster
      t.references :user

      t.timestamps null: false
    end

    create_table :pages do |t|
      t.references :book
      t.string :question
      t.string :notes
      t.integer :upvotes

      t.timestamps null: false
  end
end
