require './lib/student'
require './lib/course'

RSpec.describe Course do
  before do
    @course = Course.new("Calculus", 2)
    @student1 = Student.new({name: "Morgan", age: 21})
    @student2 = Student.new({name: "Jordan", age: 29})
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
      @course.enroll(@student1)
      @course.enroll(@student2)
      expect(@course.full?).to eq(true)
    end
  end
  describe '#enroll' do
    it 'allows you to add students to the students array' do
      @course.enroll(@student1)
      @course.enroll(@student2)
      expect(@course.students).to eq([@student1, @student2])
    end
  end
end


# pry(main)> course.full?
# # => true