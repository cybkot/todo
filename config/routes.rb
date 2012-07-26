Blog::Application.routes.draw do

	 post "summ/" => "summ#count"

	 get "summ/summ" => "summ#summ"

	end

