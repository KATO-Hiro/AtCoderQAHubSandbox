Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/"        , to: "home#top"
  get "about"    , to: "home#about"
  get "guideline", to: "home#guideline"
  get "userpage" , to: "home#userpage"
  get "links"    , to: "home#links"
  get "login"    , to: "home#login"

  get "/problems"         , to: "problems#index"
  get "/problems/:task_id", to: "problems#show"

  get "/problems/:task_id/questions"             , to: "questions#index"
  get "/problems/:task_id/questions/new"         , to: "questions#new"
  post "/problems/:task_id/questions/create"     , to: "questions#create"
  get "/problems/:task_id/questions/:id"         , to: "questions#show"
  get "/problems/:task_id/questions/:id/edit"    , to: "questions#edit"
  post "/problems/:task_id/questions/:id/update" , to: "questions#update"
  post "/problems/:task_id/questions/:id/destroy", to: "questions#destroy"

  get '/problems/:task_id/questions/:question_id/answers'             , to: "answers#index"
  get '/problems/:task_id/questions/:question_id/answers/new'         , to: "answers#new"
  post '/problems/:task_id/questions/:question_id/answers/create'     , to: "answers#create"
  get '/problems/:task_id/questions/:question_id/answers/:id/edit'    , to: "answers#edit"
  post '/problems/:task_id/questions/:question_id/answers/:id/update,', to: "answers#update"
  post '/problems/:task_id/questions/:question_id/answers/:id/destroy', to: "answers#destroy"
end
