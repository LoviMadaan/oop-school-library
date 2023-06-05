require_relative 'person'

class Student < Person
  attr_accessor :name
  attr_reader :classroom

  def initialize(age, name, parent_permission: true)
    super(age, name: name, parent_permission: parent_permission)
  end

  def play_hooky
    '¯(ツ)/¯'
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students << self
  end
end
