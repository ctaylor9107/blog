class CreateComments < ActiveRecord::Migration[8.0]
  def change
    create_table :comments do |t|
      t.integer :article_id
      t.string :commenter
      t.text :body

      t.timestamps
    end

    add_foreign_key :comments,
                    :articles,
                    column: :article_id
    add_index :comments, :article_id
  end
end
