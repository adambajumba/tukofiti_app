module SessionsHelper

	#Logs in the given User
	def log_in(user)
		session[:user_id] = user.id
	end

	#Returns the current logged-in user (idf any)
	def current_user
		@current_user ||= User.find_by(id: session[:user_id])
	end

	#Returns True if the User is Logged in, false otherwies
	def loggged_in?
		!current_user.nil?
	end
end
