require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :super_hero
  end 
  
  post '/teams' do
     @team = params[:team]
     
     params[:team][:members].each do |details|
       Hero.new(details)
     end 
     Hero.all 
     
     erb :team
  end 

end
