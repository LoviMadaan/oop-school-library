require_relative '../classroom'
require_relative '../student'

describe Classroom do
  context 'A student belongs to a classroom' do
    student1 = Student.new(25, 'First', 'Lovi', true)
    student2 = Student.new(26, 'Second', 'Pierre', true)
    student3 = Student.new(53, 'Third', 'James', true)
    classroom = Classroom.new([student1, student2, student3])

    it 'takes 1 parameter student and returns a Classroom array' do
      expect(classroom).to be_instance_of(Classroom)
    end

    describe '#add_student' do
      it 'adds the student to the classroom and assigns the classroom to the student' do
        classroom.add_student(student1)
        expect(classroom.students).to include(student1)
      end
    end
  end
end
