class LoginsController < ApplicationController
	
	def new
		
	end

	def create
		student = Student.find_by(email: params[:logins][:email].downcase)
		if studnet && student.authenticate(params[:logins], params[:password])
			session[:notice] = "You have successfully logged in"
			redirect_to student
		else
			flash.now[:notice] = "Something was wrong with your login information"
			render 'new'
		end
	end

	def destroy
		session[:student_id]
		flash[:notice] = "You have successfully logged out"
		redirect_to root_path
	end

end
