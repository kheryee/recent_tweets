get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/tweets' do
  redirect "/#{params[:username]}"
end

get '/:username' do
  @user = params[:username]
  @tweets = $client.user_timeline(params[:username], count: 10)
  erb :user_profile
end