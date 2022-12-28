class Student
  attr_reader :grade

  def initialize
    @grade = 'C'
    @effort = 0
  end

  def calculate_grade
    scoring_hash = {
      '2' => 'A',
      '1' => 'B',
      '0' => 'C',
      '-1' => 'D',
      '-2' => 'F'
    }
    return unless @effort >= -2 && @effort <= 2

    @grade = scoring_hash[@effort.to_s]
  end

  def study
    if @effort < 2
      @effort += 1
    end
    calculate_grade
  end

  def slack_off
    if @effort > -2
      @effort -= 1
    end
    calculate_grade
  end
end
