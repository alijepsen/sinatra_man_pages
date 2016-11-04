require 'pry'
require 'sinatra'


get '/' do
  erb :index
end

get '/mv' do
  @mv = `man mv`
  erb :mv

end

get '/cp' do
  @cp = `man cp`
  erb :cp
end

get '/mkdir' do
  @mkdir = `man mkdir`
  erb :mkdir
end

get '/touch' do
  @touch = `man touch`
  erb :touch
end

get '/ls' do
  @ls = `man ls`
  erb :ls
end

get '/search' do
  erb :search
end


#posts

post '/search' do
  @search =`man #{params[:term]}`

  erb :search
end


