Rails.application.routes.draw do
  get '/students', to: 'students#index'
  get '/students/testing', to: 'students#find_student_byname'

  get '/students/grades', to: 'students#grades'
  get '/students/highest-grade', to: 'students#highest_grade'
  
  get '/students/:id', to: 'students#find_student'
  # get '/students/:name', to: 'students#find_student_byname'

  # get '/students?name=:name', to: 'students#find_student_byname'

  # '/students?name=kirby'
end
