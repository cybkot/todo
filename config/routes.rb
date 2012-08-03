Blog::Application.routes.draw do
resources :todos

  	
	 post "summ/" => "summ#count"

	 get "summ/summ" => "summ#summ"
	 
	 get "todo/todo" => "todo#todo"
		get "todo/new" => "todo#todo"	
	end		

