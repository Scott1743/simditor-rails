Simditor::Engine.routes.draw do
  match '/simditor', to: 'simditor_image#upload', via: :post
end
