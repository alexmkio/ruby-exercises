class RollCall
  def initialize
    @students = []
  end

  def <<(student)
    @students << student
  end

  def longest_name
    return unless @students.length.positive?

    @students.max_by { |student| student.length } 
  end
end
