Rails.application.routes.draw do
  get 'shelters/index'

  get 'shelters/new'

  get 'shelters/show'

  get 'shelters/edit'

  get 'animals/index'

  get 'animals/new'

  get 'animals/show'

  get 'animals/edit'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
