get '/login' do
  # log in: add
  erb :login
end

get '/logout' do
  # log out: delete user from session
  redirect '/'
end

post '/login' do
  # log in
  # go to homepage
end

post '/users' do
  # make user
  # log in
  # finally go to homepage
  redirect '/'
end
