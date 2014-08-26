Cgdesignbuild::Application.routes.draw do
  root 'static#index'

  get 'services' => 'services#index'
  get 'services/design' => 'services#design'
  get 'services/repositioning' => 'services#repositioning'

  get 'built' => 'built#index'
  get 'built/sea-colony' => 'built#sea_colony'
  
  get 'about' => 'static#about'
  post 'inquiry' => 'inquiry#create'
end
