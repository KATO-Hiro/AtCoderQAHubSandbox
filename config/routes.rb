Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/", to: "home#top"

  get "/users"             , to: "users#index"
  get "/signup"            , to: "users#new"
  post "/users/create"     , to: "users#create"
  get "/users/:id"         , to: "users#show"
  get "/users/:id/edit"    , to: "users#edit"
  post "/users/:id/update" , to: "users#update"
  post "/users/:id/destroy", to: "users#destroy"
  get "/login"             , to: "users#login_form"
  post "/login"            , to: "users#login"
  post "/logout"           , to: "users#logout"

  get "/problems"         , to: "problems#index"
  get "/problems/new"     , to: "problems#new"
  get "/problems/abc"     , to: "problems#abc"
  get "/problems/arc"     , to: "problems#arc"
  get "/problems/agc"     , to: "problems#agc"
  get "/problems/other"   , to: "problems#other"
  get "/problems/:task_id", to: "problems#show"
  post "/problems/create" , to: "problems#create"

  get "/questions"                               , to: "questions#index"
  get "/problems/:task_id/questions/new"         , to: "questions#new"
  post "/problems/:task_id/questions/create"     , to: "questions#create"
  get "/problems/:task_id/questions/:id"         , to: "questions#show"
  get "/problems/:task_id/questions/:id/edit"    , to: "questions#edit"
  post "/problems/:task_id/questions/:id/update" , to: "questions#update"
  post "/problems/:task_id/questions/:id/destroy", to: "questions#destroy"

  get "/problems/:task_id/questions/:question_id/answers"             , to: "answers#index"
  get "/problems/:task_id/questions/:question_id/answers/new"         , to: "answers#new"
  post "/problems/:task_id/questions/:question_id/answers/create"     , to: "answers#create"
  get "/problems/:task_id/questions/:question_id/answers/:id/edit"    , to: "answers#edit"
  post "/problems/:task_id/questions/:question_id/answers/:id/update" , to: "answers#update"
  post "/problems/:task_id/questions/:question_id/answers/:id/destroy", to: "answers#destroy"
  put "/problems/:task_id/questions/:question_id/answers/:id/like"  ,   to: "answers#upvote"
  put "/problems/:task_id/questions/:question_id/answers/:id/unlike",   to: "answers#downvote"
  put "/problems/:task_id/questions/:question_id/answers/:id/cancel_like"  ,   to: "answers#cancel_upvote"
  put "/problems/:task_id/questions/:question_id/answers/:id/cancel_unlike"  ,   to: "answers#cancel_downvote"
end
