class SessionController < ApplicationController

	def index
	end

	def new
	end

	def ask
		@age_filter = Filter.where("ftype = ?", "AGE")
		@gender_filter = Filter.where("ftype = ?", "GENDER")
		@race_filter = Filter.where("ftype = ?", "RACE")
		@smoking_filter = Filter.where("ftype = ?", "SMOKING STATUS")
		@immu_filter = Filter.where("ftype = ?", "IMMUNOCOMPROMISED")
		@renal_filter = Filter.where("ftype = ?", "RENAL IMPAIRMENT")
		@preg_filter = Filter.where("ftype = ?", "PREGNANCY")
	end

	def create
		user = User.find_by(email: params[:session][:email])
		if user && user.authenticate(params[:session][:password])
			log_in user
      		redirect_to session_new_path
		else 
			flash[:danger] = 'Invalid email/password combination' 
			render 'index'
		end
	end

	def destroy
		log_out
		redirect_to root_url
	end

end
