class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :message
      t.string :author
      t.references :post  #references = belongs_to

      t.timestamps
    end
    add_index :comments, :post_id
  end
end
