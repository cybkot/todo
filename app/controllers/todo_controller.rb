class TodoController < ApplicationController
	def todo
		@todo = Todo.all
	end
	def find
			@todo = Todo.find(params['id'])
	end
	def done
		@todo = Todo.find(params['id'])
			@todo.update_attributes(:status => '2')
	end
	def prorogue
		@todo = Todo.find(params['id'])
			@todo.update_attributes(:status => '3')
	end
	def delete
		@todo = Todo.find(params['id'])
			@todo.destroy					
	end 
	def new
		end
	def created
		Todo.create(:name => params['NewTodo'], :status => "1")
		end
		def show
		end
end