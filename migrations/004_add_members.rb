# Encoding: UTF-8

require 'sequel'
require 'json'

Sequel.migration do
  up do
    members_file = File.dirname(__FILE__) +
      '/data/004/initial_members.json'
    members = JSON.parse(IO.read(members_file))
    members.each do |member|
      member['image'] = '/images/members/' +
        member['name'].downcase.gsub(/ /, '-') + '.jpg'
      from(:members).insert(name: member['name'],
                            title: member['title'],
                            bio: member['bio'],
                            image: member['image'])
    end
  end

  down do
    from(:members).delete
  end
end
