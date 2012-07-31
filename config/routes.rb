Blog::Application.routes.draw do
resources :todos

  get '/todo',  :to => 'todos#new'

	 post "summ/" => "summ#count"

	 get "summ/summ" => "summ#summ"
	 
	 get "todo/todo" => "todo#todo"
				
	end		

