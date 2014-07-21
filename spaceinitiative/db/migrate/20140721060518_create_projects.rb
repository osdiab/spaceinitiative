class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.string :contact_name, null: true
      t.string :email, null: true

      t.timestamps
    end
  end
end
