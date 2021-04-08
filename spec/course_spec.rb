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
  end
end
