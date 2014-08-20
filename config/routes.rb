Simditor::Engine.routes.draw do
  match '/', to: 'simditor_image#upload', via: :post
end
