class StudentsController < ApplicationController

def index
  @students = Student.display_students
end

end
