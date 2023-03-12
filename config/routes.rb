Rails.application.routes.draw do
  devise_for :views
  root "pills#index"

  devise_for :users

  resources :pills
  #resources :pills_taken
  resources :prescriptions
  resources :vitamins
 
  #post "/insert_prescription" => "prescriptions#create", as: :new_prescription # new_prescription_url and new_prescription_path
 
  #get "/prescriptions" => "prescriptions#index", as: :prescriptions # prescriptions_url and prescriptions_path
  #get "/prescriptions/:path_id" => "prescriptions#show", as: :prescription # prescription_url() prescription_path() (expects an argument to populate :id segment)
  
  #post "/modify_prescription/:path_id" => "prescriptions#update", as: :edit_prescription # edit_prescription_url and edit_prescription_path() (expects an argument to populate :id segment)

  #get "/delete_prescription/:path_id" => "prescriptions#destroy", as: :delete_prescription # delete_prescription_url and delete_prescription_path() (expects an argument to populate :id segment)

  post "/insert_pill_taken" => "pill_takens#create", as: :new_pill_taken # new_pill_taken_url and new_pill_taken_path

  get "/pill_takens" => "pill_takens#index", as: :pills_taken # pills_taken_url and pills_taken_path
  get "/pill_takens/:path_id" => "pill_takens#show", as: :pill_taken # pill_taken_url and pill_taken_path() (expects an argument to populate :id segment)
  
  post "/modify_pill_taken/:path_id" => "pill_takens#update", as: :modify_pill_taken # modify_pill_taken_url and modify_pill_taken_path() (expects an argument to populate :id segment)
  
  get "/delete_pill_taken/:path_id" => "pill_takens#destroy", as: :delete_pill_taken # delete_pill_taken_url and delete_pill_taken_path() (expects an argument to populate :id segment)

  #post "/insert_vitamin" => "vitamins#create", as: :new_vitamin # new_vitamin_url and new_vitamin_path

 # get "/vitamins" => "vitamins#index", as: :vitamins # vitamins_url and vitamins_path
 # get "/vitamins/:path_id" => "vitamins#show", as: :vitamin # vitamin_url and vitamin_path() (expects an argument to populate :id segment)
  
 # post "/modify_vitamin/:path_id" => "vitamins#update", as: :edit_vitamin # edit_vitamin_url and edit_vitamin_path() (expects an argument to populate :id segment)
  
 # get "/delete_vitamin/:path_id" => "vitamins#destroy", as: :delete_vitamin # delete_vitamin_url and delete_vitamin_path() (expects an argument to populate :id segment)

  #post "/insert_pill" => "pills#create", as: :new_pill # new_pill_url and new_pill_path

  #get "/pills" => "pills#index", as: :pills # pills_url and pills_path
  #get "/pills/:path_id" => "pills#show", as: :pill # pill_url and pill_path() (expects an argument to populate :id segment)
  
  #post "/modify_pill/:path_id" => "pills#update", as: :edit_pill # edit_pill_url and edit_pill_path() (expects an argument to populate :id segment)
  
  #get "/delete_pill/:path_id" => "pills#destroy", as: :delete_pill # delete_pill_url and delete_pill_path() (expects an argument to populate :id segment)

  get "/user_sign_up" => "user_authentication#sign_up_form", as: :sign_up # sign_up_url and sign_up_path   

  post "/insert_user" => "user_authentication#create", as: :create_user # create_user_url and create_user_path  
      
  get "/edit_user_profile" => "user_authentication#edit_profile_form", as: :edit_profile # edit_profile_url and edit_profile_path  

  post "/modify_user" => "user_authentication#update", as: :modify_user # modify_user_url and modify_user_path  
  
  get "/cancel_user_account" => "user_authentication#destroy", as: :delete_user # delete_user_url and delete_user_path  

  get "/user_sign_in" => "user_authentication#sign_in_form", as: :sign_in # sign_in_url and sign_in_path  

  post "/user_verify_credentials" => "user_authentication#create_cookie", as: :create_cookie # create_cookie_url and create_cookie_path  
   
  get "/user_sign_out" => "user_authentication#destroy_cookies", as: :sign_out # sign_out_url and sign_out_path  
  
end
