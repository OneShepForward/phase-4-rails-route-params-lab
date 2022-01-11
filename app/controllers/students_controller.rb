class StudentsController < ApplicationController

  def index
    if params[:name]
      students = Student.all.by_name(params[:name])
    else
      students = Student.all
    end
    render json: students
  end

  def show
    student = Student.all.find_by_id(params[:id])
    render json: student
  end

end
