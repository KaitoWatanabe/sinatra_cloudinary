require 'bundler/setup'
Bundler.require
require 'sinatra/reloader' if development?

Dotenv.load

require './models.rb'

Cloudinary.config do |config|
  config.cloud_name = ENV['CLOUD_NAME']
  config.api_key = ENV['CLOUDINARY_API_KEY']
  config.api_secret = ENV['CLOUDINARY_API_SECRET']
end

get "/" do
  @posts = Post.all
  erb :index
end

post "/posts" do
 tempfile = params[:uploaded_data][:tempfile]
 upload = Cloudinary::Uploader.upload(tempfile.path)
 Post.create(image: upload['url'])
 redirect '/'
end
