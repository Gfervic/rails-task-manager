Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # READ

  # all the tasks

  # get 'tasks', to: "tasks#index"

  # one task

  # get 'tasks/:id', to: "tasks#show"

  # GET tasks/12 => dinamic path  (:id == params[:id] key)


  # CREATE one restaurant(2 request)

  # 1st to render the form => get 'tasks/new', to: "tasks#new"
  # 2nd to post the params when submited the form =>post 'tasks', to: "tasks#create"

  # UPDATE one restaurant(2 request)

  # get 'tasks/:id/edit', to: "tasks#edit" (1st => to render the form to edit a restaurant with that id)
  # patch 'tasks/:id', to: "tasks#update" (2nd => to update and fill that id retrieved from the DB  with info)

  # DELETE

  # delete 'tasks/:id', to: "tasks#destroy"

  #Since all the above routes are the conventional for each model we use the method resources:

  resources :tasks

  #it improves our prefix to use them for links

end
