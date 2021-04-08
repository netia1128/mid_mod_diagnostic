require './lib/student'

RSpec.describe Student do
  before do
    @student = Student.new({name: "Morgan", age: 21})
  end

  describe '::initialize' do
    it 'creates an instance of a student' do
      expect(@student).to be_an_instance_of(Student)
    end
  end
end
