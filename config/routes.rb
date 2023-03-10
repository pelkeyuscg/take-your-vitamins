Rails.application.routes.draw do
  # Routes for the Prescription resource:

  root "user_authentication#sign_in_form"

 # devise_for :users

  #resources :pills
  #resources :pill_takens
  ##resources :vitamins

  #get ":username/pills" => "user#pills", as: :liked_photos
  #get ":username/prescriptions" => "users#prescriptions", as: :users_feed
  #get ":username/pill_takens" => "users#pill_takens", as: :users_followers  
  #get ":username/vitamins" => "users#following", as: :users_following  
  
  #get ":username" => "users#show", as: :user

  # CREATE
  post "/insert_prescription" => "prescriptions#create" 
          
  # READ
  get "/prescriptions" => "prescriptions#index" 
  
  get "/prescriptions/:path_id" => "prescriptions#show"
  
  # UPDATE
  post "/modify_prescription/:path_id" => "prescriptions#update"
  
  # DELETE
  get "/delete_prescription/:path_id" => "prescriptions#destroy"

  #------------------------------

  # Routes for the Pill taken resource:

  # CREATE
  post "/insert_pill_taken" => "pill_takens#create"
          
  # READ
  get "/pill_takens" => "pill_takens#index"
  
  get "/pill_takens/:path_id" => "pill_takens#show"
  
  # UPDATE
  
  post "/modify_pill_taken/:path_id" => "pill_takens#update"
  
  # DELETE
  get "/delete_pill_taken/:path_id" => "pill_takens#destroy"

  #------------------------------

  # Routes for the Vitamin resource:

  # CREATE
  post "/insert_vitamin" => "vitamins#create"
          
  # READ
  get "/vitamins" => "vitamins#index"
  
  get "/vitamins/:path_id" => "vitamins#show"
  
  # UPDATE
  
  post "/modify_vitamin/:path_id" => "vitamins#update"
  
  # DELETE
  get "/delete_vitamin/:path_id" => "vitamins#destroy"

  #------------------------------

  # Routes for the Pill resource:

  # CREATE
  post "/insert_pill" => "pills#create"
          
  # READ
  get "/pills" => "pills#index"
  
  get "/pills/:path_id" => "pills#show"
  
  # UPDATE
  
  post "/modify_pill/:path_id" => "pills#update"
  
  # DELETE
  get "/delete_pill/:path_id" => "pills#destroy"

  #------------------------------

  # Routes for the User account:

  # SIGN UP FORM
  get "/user_sign_up" => "user_authentication#sign_up_form"       
  # CREATE RECORD
  post "/insert_user" => "user_authentication#create" 
      
  # EDIT PROFILE FORM        
  get "/edit_user_profile" => "user_authentication#edit_profile_form"      
  # UPDATE RECORD
  post "/modify_user" => "user_authentication#update"
  
  # DELETE RECORD
  get "/cancel_user_account" => "user_authentication#destroy"

  # ------------------------------

  # SIGN IN FORM
  get "/user_sign_in" => "user_authentication#sign_in_form"
  # AUTHENTICATE AND STORE COOKIE
  post "/user_verify_credentials" => "user_authentication#create_cookie"
  
  # SIGN OUT        
  get "/user_sign_out" => "user_authentication#destroy_cookies"
             
  #------------------------------

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
