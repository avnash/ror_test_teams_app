Rails.application.routes.draw do
  get 'users', to: 'user#list'
  post 'users', to: 'user#add'
  get 'users/:id', to: 'user#details'
  put 'users/:id', to: 'user#update'
  delete 'users/:id', to: 'user#delete'

  get 'users/:id/teams', to: 'user#teams'

  get 'teams', to: 'team#list'
  post 'teams', to: 'team#add'
  get 'teams/:id', to: 'team#details'
  put 'teams/:id', to: 'team#update'
  delete 'teams/:id', to: 'team#delete'

  get 'teams/:id/members', to: 'team#members'
  post 'teams/:id/add_member', to: 'team#add_member'
  post 'teams/:id/remove_member', to: 'team#remove_member'

end
