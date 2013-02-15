class StaticController < ApplicationController
  def home
  end
  
  def popular
    unique_ids = []
    client = YouTubeIt::Client.new(:dev_key => "AI39si6oYP4GfE_J0LDuUTwWjA-4CNd1HbantYLBPMNQ7TiSz5jKdnuRC7WtOxahsdLq9JUJWvcpooNB1qxKvvYTWXt9th6dvg")
    @categories = []
    #get params that have value 1
    params.each do |key, value|  
      @categories.push(key) if value == 1 } 
    end    

    pre_playlist = unique_ids.uniq.sort_by { rand }
    @first_vid = pre_playlist.pop
    @playlist = pre_playlist.join(",")

  end
  
  def next_video
    #if user_signed_in?
    #  current_user.histories.create!(:video_id => params[:v])
    #  
    #  watched = current_user.histories.select(:video_id).map(&:video_id)
      
    #  client = YouTubeIt::Client.new
    #  @client = client.videos_by(:most_popular, :restriction => "US", :time => :today)
      
    #  next_video = ""
    #  @client.videos.each do |video|
    #    if !watched.include?(video.unique_id)
    #      next_video = video
    #      break
    #    end
    #  end
            
      
    #  render :json=> next_video.to_json
      
    #else
    #  render root_url   
    #end
  end
end
