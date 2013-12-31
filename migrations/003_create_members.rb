# Encoding: UTF-8

require 'sequel'

Sequel.migration do
  up do
    create_table(:members) do
      primary_key :id
      String :name, null: false
      String :title, null: true
      String :bio, null: true
      String :email, null: true
      String :image, null: true
      String :thumb, null: true
    end
  end

  down do
    drop_table(:members)
  end
end
