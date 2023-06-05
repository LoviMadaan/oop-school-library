module CreatePerson
  def create_person
    print 'Do you want to create a student (1), or a teacher (2)? [input the number]: '
    person_input = gets.chomp.to_i
    case person_input
    when 1 then create_student
    when 2 then create_teacher
    else
      raise 'Please choose a valid option number 1 or 2: '
    end
  end

  def create_student
    print 'Name: '
    name = gets.chomp
    print 'Age: '
    age = gets.chomp
    print 'Has parent permission? [Y/N]: '
    parent_permission_input = gets.chomp.downcase
    while parent_permission_input != 'y' && parent_permission_input != 'n'
      print 'Please input Y or N: '
      parent_permission_input = gets.chomp.downcase
    end
    student = Student.new(age, name) if parent_permission_input == 'y'
    student = Student.new(age, name, parent_permission: false) if parent_permission_input == 'n'
    @people << student
    puts "Student created succesfully\n_____________________"
  end

  def create_teacher
    print 'Name: '
    name = gets.chomp
    print 'Age: '
    age = gets.chomp.to_i
    print 'Specialization: '
    specialization = gets.chomp
    teacher = Teacher.new(name, age, specialization)
    @people << teacher
    puts "Teacher created successfully\n_____________________"
  end
end
