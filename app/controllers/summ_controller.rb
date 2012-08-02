class SummController < ApplicationController
	def count	
  if params["GROUP"] == "Plus"
		  @calc = params['ras'].to_i + params['dva'].to_i
		elsif params["GROUP"] == "Minus"
		  	@calc = params['ras'].to_i - params['dva'].to_i
		  	elsif params["GROUP"] == "Multiplication"
		  		@calc = params['ras'].to_i * params['dva'].to_i
		  		elsif params["GROUP"] == "Division"
		  			@calc = params['ras'].to_f / params['dva'].to_f
		  			

		  			end

						end
	def summ
end

end