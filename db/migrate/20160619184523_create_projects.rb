class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name, :null => false
      t.date :ends_at

      t.timestamps null: false
    end
  end
end
