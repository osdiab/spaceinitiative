# Encoding: UTF-8

require 'sequel'
require 'json'

Sequel.migration do
  up do
    projects = JSON.parse(IO.read('migration/data/002/initial_projects.json'))
    projects.each do |project|
      from(:projects).insert(title: project['title'],
                             description: project['description'],
                             contact_name: project['contact_name'],
                             email: project['email'])
    end
  end

  down do
    from(:projects).delete_all
  end
end
