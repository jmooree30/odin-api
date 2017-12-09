class PhotosController < ApplicationController
require 'flickraw'
before_action :set_flickr

def index
user = params[:id]
id = flickr.people.findByUsername(:username => user).id 
@pics = flickr.photos.search(:user_id => id, extras: "url_s")
end

def show
end

def new
end

def create
end

def destroy
end

private
def set_flickr
FlickRaw.api_key = ENV['API_KEY']
FlickRaw.shared_secret = ENV['SHARED_SECRET']
flickr.access_token = ENV['ACCESS_TOKEN']
flickr.access_secret = ENV['ACCESS_SECRET']
end

end