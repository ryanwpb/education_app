class SessionsController < ApplicationController
  def index
  end

  def login 
    if request.post?
      teacher = Teacher.find_by_email(params[:email])
      student = Student.find_by_email(params[:email])
      if teacher && teacher.authenticate(params[:password])
        session[:teacher_id] = true
        redirect_to teachers_path
      elsif student && student.authenticate(params[:password])
          session[:student_id] = true
          redirect_to grades_path
      else
        redirect_to sessions_login_path

      end
    end
  end

  def show
  end

  # def create
  #   teacher = Teacher.find_by(email: params[:session][:email].downcase)
  #    if teacher && teacher.authenticate(params[:session][:password])
  #      # Log the teacher in and redirect to the teachers's show page.
  #    else
  #      # Create an error message.
  #      flash.now[:alert] = 'Invalid email/password combination' # Not quite right!
  #      render 'new'
  #    end
  #  end

  def destroy
    session[:logged_in_teacher] = false
    redirect_to_root_path, flash[:alert] = "You have been logged out"
  end

end
