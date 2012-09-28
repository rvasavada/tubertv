class StaticController < ApplicationController
  def home
    client = YouTubeIt::Client.new
    @client = client.videos_by(:query => "penguin")
  end
  
  def next_video
    #@client = client.videos_by(:query => "penguin")
    @users = User.all
    render :json=> @users
    #User.histories.create!(params[:video_id])      
  end
end
