Rails.application.routes.draw do
  # Routes for the Prescription resource:

  #root "pills#index"

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
  post("/insert_prescription", { :controller => "prescriptions", :action => "create" })
          
  # READ
  get("/prescriptions", { :controller => "prescriptions", :action => "index" })
  
  get("/prescriptions/:path_id", { :controller => "prescriptions", :action => "show" })
  
  # UPDATE
  
  post("/modify_prescription/:path_id", { :controller => "prescriptions", :action => "update" })
  
  # DELETE
  get("/delete_prescription/:path_id", { :controller => "prescriptions", :action => "destroy" })

  #------------------------------

  # Routes for the Pill taken resource:

  # CREATE
  post("/insert_pill_taken", { :controller => "pill_takens", :action => "create" })
          
  # READ
  get("/pill_takens", { :controller => "pill_takens", :action => "index" })
  
  get("/pill_takens/:path_id", { :controller => "pill_takens", :action => "show" })
  
  # UPDATE
  
  post("/modify_pill_taken/:path_id", { :controller => "pill_takens", :action => "update" })
  
  # DELETE
  get("/delete_pill_taken/:path_id", { :controller => "pill_takens", :action => "destroy" })

  #------------------------------

  # Routes for the Vitamin resource:

  # CREATE
  post("/insert_vitamin", { :controller => "vitamins", :action => "create" })
          
  # READ
  get("/vitamins", { :controller => "vitamins", :action => "index" })
  
  get("/vitamins/:path_id", { :controller => "vitamins", :action => "show" })
  
  # UPDATE
  
  post("/modify_vitamin/:path_id", { :controller => "vitamins", :action => "update" })
  
  # DELETE
  get("/delete_vitamin/:path_id", { :controller => "vitamins", :action => "destroy" })

  #------------------------------

  # Routes for the Pill resource:

  # CREATE
  post("/insert_pill", { :controller => "pills", :action => "create" })
          
  # READ
  get("/pills", { :controller => "pills", :action => "index" })
  
  get("/pills/:path_id", { :controller => "pills", :action => "show" })
  
  # UPDATE
  
  post("/modify_pill/:path_id", { :controller => "pills", :action => "update" })
  
  # DELETE
  get("/delete_pill/:path_id", { :controller => "pills", :action => "destroy" })

  #------------------------------

  # Routes for the User account:

  # SIGN UP FORM
  get("/user_sign_up", { :controller => "user_authentication", :action => "sign_up_form" })        
  # CREATE RECORD
  post("/insert_user", { :controller => "user_authentication", :action => "create"  })
      
  # EDIT PROFILE FORM        
  get("/edit_user_profile", { :controller => "user_authentication", :action => "edit_profile_form" })       
  # UPDATE RECORD
  post("/modify_user", { :controller => "user_authentication", :action => "update" })
  
  # DELETE RECORD
  get("/cancel_user_account", { :controller => "user_authentication", :action => "destroy" })

  # ------------------------------

  # SIGN IN FORM
  get("/user_sign_in", { :controller => "user_authentication", :action => "sign_in_form" })
  # AUTHENTICATE AND STORE COOKIE
  post("/user_verify_credentials", { :controller => "user_authentication", :action => "create_cookie" })
  
  # SIGN OUT        
  get("/user_sign_out", { :controller => "user_authentication", :action => "destroy_cookies" })
             
  #------------------------------

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
