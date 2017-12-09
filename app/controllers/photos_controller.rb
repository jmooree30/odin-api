class PhotosController < ApplicationController
require 'flickraw'
#I know I know...
FlickRaw.api_key="74ba850eb195f38f125d2a6060b28887"
FlickRaw.shared_secret="62984b32c0561a1e"
flickr.access_token="72157688142437582-b70b2e640f61161a"
flickr.access_secret="418f5a7eb6f4bac3"

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


end