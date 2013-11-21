# encoding: utf-8

# Representation of a project
class Project
  attr_reader :name, :description, :contact
  def initialize(name, description, contact)
    @name = name
    @description = description
    @contact = contact
  end
end
