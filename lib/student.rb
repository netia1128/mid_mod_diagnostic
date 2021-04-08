class Student
  attr_reader :name,
              :age,
              :scores

  def initialize(attributes)
    @name = attributes[:name]
    @age = attributes[:age]
    @scores = []
  end

  def log_score(score)
    @scores << score
  end

  def average
    score_total = @scores.sum do |score|
      score.to_f
    end
    score_total / @scores.count
  end
end
