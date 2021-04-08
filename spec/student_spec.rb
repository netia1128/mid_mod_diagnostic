require './lib/student'

RSpec.describe Student do
  before do
    @student = Student.new({name: "Morgan", age: 21})
  end

  describe '::initialize' do
    it 'creates an instance of a student' do
      expect(@student).to be_an_instance_of(Student)
    end
    it 'has attributes' do
      expect(@student.name).to eq("Morgan")
      expect(@student.age).to eq(21)
      expect(@student.scores).to eq([])
    end
  end
end
