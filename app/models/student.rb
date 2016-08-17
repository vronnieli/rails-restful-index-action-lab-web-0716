class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def self.display_students
    var = Student.all.select do |student|
      student.first_name != nil && student.last_name != nil
    end
    var.collect do |student|
      student.to_s
    end.join(", ")
  end

end
