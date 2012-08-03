class TodoController < ApplicationController
	def todo
		@todo = Todo.all
		end
		def new
		@todo = Todo.new 
		end
end