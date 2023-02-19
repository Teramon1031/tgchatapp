Rails.application.routes.draw do
  
  get 'chat/:tgnum'=>"chats#chat"
   post "/chat/:tgnum/new"=> "chats#create"
  get "/" => "home#top"
  post "/logout" => "users#logout"
  get "/loginpage" => "users#loginPage"
  post "/login" => "users#login"
  get "/signuppage" => "users#signupPage"
  post "/signup" => "users#signup"
  get "/mypage/:tgnum" => "users#mypage"
 

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
