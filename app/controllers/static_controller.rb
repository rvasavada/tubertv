class StaticController < ApplicationController
  def home
    client = YouTubeIt::Client.new
    @client = client.videos_by(:query => "penguin")
  end
  
  def next_video
    #current_user.histories.create!(:video_id => params[:video_id])      
    client = YouTubeIt::Client.new
    @client = client.videos_by(:query => "penguin")
    render :json=> @client.to_json
  end
end
