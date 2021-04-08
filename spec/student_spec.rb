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
  describe '#log_score' do
    it 'allows you to add scores to the scores array' do
      @student.log_score(89)
      @student.log_score(78)
      expect(@student.scores).to eq([89, 78])
    end
  end
  describe '#average' do
    it 'allows you to see the average of all the scores' do
      @student.log_score(89)
      @student.log_score(78)
      expect(@student.average).to eq(83.5)
    end
  end
end
