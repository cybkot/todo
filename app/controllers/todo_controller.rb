class TodoController < ApplicationController
	def todo
		@todo = Todo.all
		end
		
end