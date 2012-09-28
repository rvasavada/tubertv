class StaticController < ApplicationController
  def home
    client = YouTubeIt::Client.new
    @client = client.videos_by(:recently_featured, :restriction => "US")

  end
  
  def next_video
    if user_signed_in?
      current_user.histories.create!(:video_id => params[:v])
      
      watched = current_user.histories.select(:video_id).map(&:video_id)
      
      client = YouTubeIt::Client.new
      @client = client.videos_by(:most_popular, :restriction => "US", :time => "today")
      
      next_video = ""
      @client.videos.each do |video|
        if !watched.include?(video.unique_id)
          next_video = video
          break
        end
      end
      
      render :json=> next_video.to_json
      
    else
      render root_url   
    end
  end
end
