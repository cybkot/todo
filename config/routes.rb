Blog::Application.routes.draw do
resources :todos do
  resources :comments
end

		 	get "/tododb/" => "todo#todo"

			get "/display/:id" => "todo#find"

		 	get "done/:id" => "todo#done"	
		 	get "prorogue/:id" => "todo#prorogue"
		 	get "delete/:id" => "todo#delete"

			post "created/"=> "todo#created"
			get "new/"=>"todo#new"
			
 			post "summ/" => "summ#count"
			get "summ/summ" => "summ#summ"

	end		


