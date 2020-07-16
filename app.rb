require_relative 'config/environment'

class App < Sinatra::Base
  get '/reverse' do
    puts params
    
    erb :reverse
  end

  post '/reverse' do
    puts params
    @reversed_string = params[:string].reverse
    erb :reversed
  end

  get '/friends' do
    @friends = ['Emily Wilding Davison', 'Harriet Tubman', 'Joan of Arc', 'Malala Yousafzai', 'Sojourner Truth']

  end
end