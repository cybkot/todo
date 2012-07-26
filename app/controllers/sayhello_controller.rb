class SayhelloController < ApplicationController
  	def display
  @say_to = params['who']
end
end
