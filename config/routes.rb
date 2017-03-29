Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root('bill_splitter#index')
  #if you want to use get for your root link

  post('/bill_splitter', {to:'bill_splitter#create'})
  
end
