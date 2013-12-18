# Encoding: UTF-8

require 'sequel'

Sequel.migration do
  up do
    create_table(:projects) do
      primary_key :id
      String :title, null: false
      String :description, null: false
      String :contact_name, null: true
      String :email, null: false
    end
  end

  down do
    drop_table(:projects)
  end
end
