get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/shortened_url' do
  saved_url = Url.create(params[:url])
end
