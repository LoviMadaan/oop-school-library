require_relative '../person'
require_relative '../teacher'

describe 'test teacher class' do
  context 'instance of Teacher' do
    it 'takes two parameters and returns a Teacher object' do
      teacher = Teacher.new(30, 'Science', 'Jeremy')
      expect(teacher).to be_instance_of(Teacher)
    end

    it 'should have attributes' do
      teacher = Teacher.new(27, 'Science', 'Jeremy')
      expect(teacher).to have_attributes(age: 27)
      expect(teacher).to have_attributes(name: 'Jeremy')
    end
  end
end
