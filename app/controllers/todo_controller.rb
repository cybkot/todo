class TodoController < ApplicationController
	def show
		@todo = Todo.find(params[:id])
		end
		def new 
			@title = "todo"
		end
end