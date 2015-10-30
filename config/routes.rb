Rails.application.routes.draw do

  get("/", { :controller => "photos", :action => "index" })

  # Routes to READ photos
  get("/photos",           { :controller => "photos", :action => "index" })

  #Route to Create photo lines
  get("/photos/new",       { :controller => "photos", :action => "new_form" })

  get("/create_photo", { :controller => "photos", :action => "create_row" })

  # Routes to Read photos 2
  get("/photos/:id",       { :controller => "photos", :action => "show" })

  # Delete stuffs
  get("/delete_photo/:id", { :controller => "photos", :action => "destroy" })

  # Edit stuffs
  get("/photos/:id/edit", { :controller => "photos", :action => "edit_form" })

  get("/update_photo/:id", { :controller => "photos", :action => "update_row" })



end
