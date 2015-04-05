class SessionController < ApplicationController

	def index
	end

	def new
	end

	def create
		user = User.find_by(email: params[:session][:email])
		if user && user.authenticate(params[:session][:password])
			redirect_to session_new_path
		else 
			flash[:danger] = 'Invalid email/password combination' 
			render 'index'
		end
	end

end
