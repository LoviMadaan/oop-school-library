require_relative '../person'
require_relative '../student'
require_relative '../classroom'

describe Student do
  context 'When student class is tested' do
    it 'creates a student instance' do
      student = Student.new(25, 'First', 'Lovi', true)
      expect(student).to be_instance_of(Student)
    end

    it 'should have attributes' do
      student = Student.new(25, 'First', 'Lovi', true)
      expect(student).to have_attributes(age: 25)
      expect(student).to have_attributes(name: 'Lovi')
      expect(student).to have_attributes(classroom: 'First')
    end
  end
end

describe '#play_hooky' do
  it 'returns a string representing playing hooky' do
    student = Student.new(25, 'First', 'Lovi', true)
    expect(student.play_hooky).to eq('¯\(ツ)/¯')
  end
end

RSpec.describe Student do
  let(:classroom) { Classroom.new('Physics') }
  describe '#classroom=' do
    it 'sets the student classroom and adds the student to the classroom' do
      student = Student.new(25, 'First', 'Lovi', true)
      student.classroom = classroom
      expect(student.classroom).to eq(classroom)
      expect(classroom.students).to include(student)
    end
  end
end
