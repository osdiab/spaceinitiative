# Encoding: UTF-8

require 'sequel'
require 'json'

Sequel.migration do
  up do
    root = '/images/members'
    members_file = File.dirname(__FILE__) +
      '/data/004/initial_members.json'
    members = JSON.parse(IO.read(members_file))
    members.each do |member|
      if member['name'] != 'Gregory Wolk'
        filename = member['name'].downcase.gsub(/ /, '-') + '.jpg'
        member['image'] = "#{root}/full/#{filename}"
        member['thumb'] = "#{root}/thumbs/#{filename}"
      end
      from(:members).insert(name: member['name'],
                            title: member['title'],
                            bio: member['bio'],
                            thumb: member['thumb'],
                            image: member['image'])
    end
  end

  down do
    from(:members).delete
  end
end
