Rails.application.routes.draw do
 get'/ideas/:id' => 'application#show'
  get'/new_idea' => 'application#new'
  get'/create_idea'=> 'application#create'
  get'/update_idea/:id' => 'application#update'
  get'/ideas/:id/destroy' => 'application#destroy'
  get'/ideas' => 'application#index'
end
