# encoding: utf-8

# Representation of a project
class Project
  attr_accessor :name, :description, :contact, :contact_name
  def initialize(name, description, contact_name, contact)
    @name = name
    @description = description
    @contact_name = contact_name
    @contact = contact
  end
end
