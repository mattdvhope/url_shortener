get '/' do 
  erb :index
end

post '/shortened_url' do
  print params
  @saved_url = Url.create!(url_location: params[:url])
  erb :index
end

get '/all_urls' do
  @all_urls = Url.all
  erb :all_urls
end

get '/short/:shortened_url' do
  print "HEY"
  url = Url.find_by_short_url(params[:shortened_url])
  url.click_count += 1
  url.save
  redirect to url.url_location
end
