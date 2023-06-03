require_relative 'student'
require_relative 'classroom'
require_relative 'person'
require_relative 'book'
require_relative 'rental'

std = Student.new(12, name: 'Lovi', parent_permission: false)
cls = Classroom.new('Full Stack Developer')
std.classroom = cls
p std.classroom.label
std2 = Student.new(18, name: 'jiya', parent_permission: true)
cls.add_student(std2)
p std2.classroom.label

person = Person.new(10, 'Jackson', parent_permission: false)
p person.rentals
book = Book.new('Lord Shiva', 'Puneet Madaan')
rental = Rental.new('2022-04-2', person, book)
p person.rentals.first.book
p book.rentals.first.book

person2 = Person.new(20, 'Jony', parent_permission: true)
p person2.rentals
person2.add_rentals(rental)
p person2.rentals.length
book2 = Book.new('Scary nights', 'J.J.')
rental2 = Rental.new('2023-03-8', person2, book2)
book2.add_rental(rental2)
p book2.rentals.first.book.title
p book2.rentals.last.book.title
