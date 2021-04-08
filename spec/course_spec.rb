require './lib/student'
require './lib/course'

RSpec.describe Course do
  before do
    @course = Course.new("Calculus", 2)
    @student = Student.new({name: "Morgan", age: 21})
  end

  describe '#initialize' do
    it 'creates an instance of a course' do
      expect(@course).to be_an_instance_of(Course)
    end
    it 'has attributes' do
      expect(@course.name).to eq("Calculus") 
      expect(@course.capacity).to eq(2)
      expect(@course.students).to eq([])
    end
  end  
  describe '#full?' do
    it 'tells you if the course is full' do
      expect(@course.full?).to eq(false)
    end
  end
end

# pry(main)> course.full?
# # => false
# pry(main)> student1 = Student.new({name: "Morgan", age: 21})
# # => #<Student:0x00007fa0a80ae588...>
# pry(main)> student2 = Student.new({name: "Jordan", age: 29})    
# # => #<Student:0x00007fa0a814f4d8...>
# pry(main)> course.enroll(student1)    
# pry(main)> course.enroll(student2)    
# pry(main)> course.students
# # => [#<Student:0x00007fa0a80ae588...>, #<Student:0x00007fa0a814f4d8...>]
# pry(main)> course.full?
# # => true