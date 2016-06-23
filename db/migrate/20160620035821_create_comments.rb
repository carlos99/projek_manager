class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :name
      t.string :email
      t.text :body, null: false
      t.references :task, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
