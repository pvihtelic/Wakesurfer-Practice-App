Wakesurfers::Application.routes.draw do
  get "/wakesurfers", :controller=>"wakesurfers", :action=>"index", :as=>"wakesurfers"
  get "/wakesurfers/new", :controller=>"wakesurfers", :action=>"new", :as=>"wakesurfer_new"

  post "/wakesurfers", :controller=>"wakesurfers", :action=>"create"

  get "/wakesurfers/:id", :controller=>"wakesurfers", :action=>"show", :as=>"wakesurfer"

  delete "/wakesurfers/:id", :controller=>"wakesurfers", :action=>"destroy"

  get "/wakesurfers/edit/:id", :controller=>"wakesurfers", :action=>"edit", :as=>"edit_wakesurfer"
  put "/wakesurfers/:id", :controller=>"wakesurfers", :action=>"update"

end
