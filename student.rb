require_relative 'person'

class Student < Person
  attr_reader :classroom

  def initialize(age, class_room, name, parent_permission)
    super(age, name, parent_permission)
    @class_room = class_room
  end

  def classroom=(classroom)
    @classroom = classroom
<<<<<<< refractor
    classroom.add_student(self) unless classroom.students.include?(self)
  end

  def play_hooky
    '¯(ツ)/¯'
=======
    classroom.students.push(self) unless classroom.students.include?(self)
>>>>>>> dev
  end
end
