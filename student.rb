require_relative 'person'

class Student < Person
  attr_reader :classroom

  def initialize(age, class_room, name, parent_permission)
    super(age, name, parent_permission)
    @class_room = class_room
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.add_student(self) unless classroom.students.include?(self)
  end

  def play_hooky
    '¯(ツ)/¯'
  end

  def to_json(*args)
    {
      JSON.create_id => self.class.name,
      'id' => @id,
      'name' => @name,
      'age' => @age,
      'parent_permission' => @parent_permission,
      'rentals' => @rentals,
      'classroom' => @classroom
    }.to_json(*args)
  end
end
