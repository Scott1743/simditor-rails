Simditor::Engine.routes.draw do
  match '/', to: 'simditor_image#upload', via: :post
  resources :simditor_image, only: [:index, :destroy]
end
