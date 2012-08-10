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
			if @todo.save
			else
				flash[:error] = "Could not update todo"
			end
			redirect_to tododb_path
			
	end
	def prorogue
		@todo = Todo.find(params['id'])
			@todo.update_attributes(:status => '3')
			if @todo.save
			else
				flash[:error] = "Could not find todo"
			end
			redirect_to tododb_path
	end
	def delete
		@todo = Todo.find(params['id'])	
			if @todo == nil	
				flash[:error] = "Could not find todo"					
			else
				flash[:notice] = "deleted successfully"
			end
			@todo.destroy
			redirect_to tododb_path				
	end 
	def new
		end
	def created
		@todo = Todo.create(:name => params['NewTodo'], :status => "1")
		if @todo.save
			else
				flash[:error] = "Could not create todo"
			end
			redirect_to tododb_path
	end
		def show
		end
end