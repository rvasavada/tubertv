class StaticController < ApplicationController
  def home
  end
  
  def popular
    unique_ids = []
    client = YouTubeIt::Client.new(:dev_key => "AI39si6oYP4GfE_J0LDuUTwWjA-4CNd1HbantYLBPMNQ7TiSz5jKdnuRC7WtOxahsdLq9JUJWvcpooNB1qxKvvYTWXt9th6dvg")
    @categories = []
    #get params that have value 1
    params.each {|key, value|  @categories.push(key) if value == 1 }
    
    # # of vids per category = divide 180 / # of params that have value 1
    @vids_per_cat = Integer(180 / @categories.count)
    
    #for loop through each category
    @categories.each do |category|
      max_vids = @vids_per_cat 
      INDEX = 1
      while max_vids > 0
        feed = Crack::XML.parse(open("https://gdata.youtube.com/feeds/api/standardfeeds/US/most_popular_#{category}?time=today&start-index=#{index}&max-results=#{max_vids > 25 ? 25 : max_vids }"))
        index += 1
        max_vids -= 25
        
        feed["feed"]["entry"].each do |video|
          id = video["id"].match(/videos\/(.+)/)
          !unique_ids.include?(id[1]) ? unique_ids.push(id[1]) : 1
        end
      end
      #for loop through category to get to # (subtracting 25)



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
