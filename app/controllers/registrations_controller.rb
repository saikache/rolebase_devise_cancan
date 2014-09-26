class RegistrationsController <  Devise::RegistrationsController

	def new
		super
		logger.info"111111111111111111111111111111111111111#{params.inspect}"
	end

	def create
		logger.info "ssssssssssssssssssssssssssssssssssss#{params.inspect}"		
		a = params
		logger.info"rrrrrrrrrrr#{a["user"]["email"].split('@')[1].inspect}"
		if a["user"]["email"].split('@')[1] == 'yahoo.com'
			a["user"]["role"] = "SuperAdmin"
		elsif a["user"]["email"].split('@')[1] == 'gmail.com'
			a["user"]["role"] = "customer"
		else
			a["user"]["role"] == "user"
		end
		super
	end
end
