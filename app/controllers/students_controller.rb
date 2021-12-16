class StudentsController < ApplicationController

  def index
    name = params[:name]
    students = Student.all
    student = Student.where("first_name=? COLLATE NOCASE OR last_name=? COLLATE NOCASE", name, name)
    
    if student.length == 0
      render json: students
    else
      render json: student
    end
  end

  def find_student
    find_student = Student.find(params[:id])
    render json: find_student
  end


  # Order.where("created_at > #{params[:start_date]} 
  # AND user_id = #{current_user.id}")

  # #---------------------------------------------------------------

  # Order.where("created_at > ? AND user_id = ?", 
  # params[:start_date], current_user.id)

  # #results in
  # SELECT users.* FROM users WHERE 
  # (created_at > '2018-12-21 OR 1 --' AND user_id = 1234)

  def find_student_byname
    qstringdata = request.query_string
    
    # name= params[:name]
    # sbn = Student.where("first_name=? OR last_name=?", name, name)
    # render json: sbn
  end

end
