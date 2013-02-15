class StaticController < ApplicationController
  def home
  end
  
  def popular
    unique_ids = []
    client = YouTubeIt::Client.new(:dev_key => "AI39si6oYP4GfE_J0LDuUTwWjA-4CNd1HbantYLBPMNQ7TiSz5jKdnuRC7WtOxahsdLq9JUJWvcpooNB1qxKvvYTWXt9th6dvg")
    
 
     news = Crack::XML.parse(open("https://gdata.youtube.com/feeds/api/standardfeeds/US/most_popular_News?time=today&start-index=1&max-results=10"))
     autos = Crack::XML.parse(open("https://gdata.youtube.com/feeds/api/standardfeeds/US/most_popular_Autos?time=today&start-index=1&max-results=10"))
     music = Crack::XML.parse(open("https://gdata.youtube.com/feeds/api/standardfeeds/US/most_popular_Music?time=today&start-index=1&max-results=10"))
     animals = Crack::XML.parse(open("https://gdata.youtube.com/feeds/api/standardfeeds/US/most_popular_Animals?time=today&start-index=1&max-results=10"))
     sports = Crack::XML.parse(open("https://gdata.youtube.com/feeds/api/standardfeeds/US/most_popular_Sports?time=today&start-index=1&max-results=10"))
     travel = Crack::XML.parse(open("https://gdata.youtube.com/feeds/api/standardfeeds/US/most_popular_Travel?time=today&start-index=1&max-results=10"))
     comedy = Crack::XML.parse(open("https://gdata.youtube.com/feeds/api/standardfeeds/US/most_popular_Comedy?time=today&start-index=1&max-results=10"))
     entertainment = Crack::XML.parse(open("https://gdata.youtube.com/feeds/api/standardfeeds/US/most_popular_Entertainment?time=today&start-index=1&max-results=10"))
     howto = Crack::XML.parse(open("https://gdata.youtube.com/feeds/api/standardfeeds/US/most_popular_Howto?time=today&start-index=1&max-results=10"))
     education = Crack::XML.parse(open("https://gdata.youtube.com/feeds/api/standardfeeds/US/most_popular_Education?time=today&start-index=1&max-results=10"))
     tech = Crack::XML.parse(open("https://gdata.youtube.com/feeds/api/standardfeeds/US/most_popular_Tech?time=today&start-index=1&max-results=10"))
 
     
    news["feed"]["entry"].each do |video|
      id = video["id"].match(/videos\/(.+)/)
      !unique_ids.include?(id[1]) ? unique_ids.push(id[1]) : 1
    end 
    autos["feed"]["entry"].each do |video|
      id = video["id"].match(/videos\/(.+)/)
      !unique_ids.include?(id[1]) ? unique_ids.push(id[1]) : 1
    end
    music["feed"]["entry"].each do |video|
      id = video["id"].match(/videos\/(.+)/)
      !unique_ids.include?(id[1]) ? unique_ids.push(id[1]) : 1
    end
    animals["feed"]["entry"].each do |video|
      id = video["id"].match(/videos\/(.+)/)
      !unique_ids.include?(id[1]) ? unique_ids.push(id[1]) : 1
    end
    sports["feed"]["entry"].each do |video|
      id = video["id"].match(/videos\/(.+)/)
      !unique_ids.include?(id[1]) ? unique_ids.push(id[1]) : 1
    end
    travel["feed"]["entry"].each do |video|
      id = video["id"].match(/videos\/(.+)/)
      !unique_ids.include?(id[1]) ? unique_ids.push(id[1]) : 1
    end
    comedy["feed"]["entry"].each do |video|
      id = video["id"].match(/videos\/(.+)/)
      !unique_ids.include?(id[1]) ? unique_ids.push(id[1]) : 1
    end
    entertainment["feed"]["entry"].each do |video|
      id = video["id"].match(/videos\/(.+)/)
      !unique_ids.include?(id[1]) ? unique_ids.push(id[1]) : 1
    end
    howto["feed"]["entry"].each do |video|
      id = video["id"].match(/videos\/(.+)/)
      !unique_ids.include?(id[1]) ? unique_ids.push(id[1]) : 1
    end
    education["feed"]["entry"].each do |video|
      id = video["id"].match(/videos\/(.+)/)
      !unique_ids.include?(id[1]) ? unique_ids.push(id[1]) : 1
    end
    tech["feed"]["entry"].each do |video|
      id = video["id"].match(/videos\/(.+)/)
      !unique_ids.include?(id[1]) ? unique_ids.push(id[1]) : 1
    end
    
    pre_playlist = unique_ids.uniq.sort_by { rand }
    @first_vid = pre_playlist.pop
    @playlist = pre_playlist.join(",")

  end
  
  def trending
    unique_ids = []
    
    client = YouTubeIt::Client.new(:dev_key => "AI39si6oYP4GfE_J0LDuUTwWjA-4CNd1HbantYLBPMNQ7TiSz5jKdnuRC7WtOxahsdLq9JUJWvcpooNB1qxKvvYTWXt9th6dvg")
    
    news = Crack::XML.parse(open("https://gdata.youtube.com/feeds/api/standardfeeds/US/on_the_web_News?start-index=1&max-results=10"))
    autos = Crack::XML.parse(open("https://gdata.youtube.com/feeds/api/standardfeeds/US/on_the_web_Autos?start-index=1&max-results=10"))
    music = Crack::XML.parse(open("https://gdata.youtube.com/feeds/api/standardfeeds/US/on_the_web_Music?start-index=1&max-results=10"))
    animals = Crack::XML.parse(open("https://gdata.youtube.com/feeds/api/standardfeeds/US/on_the_web_Animals?start-index=1&max-results=10"))
    sports = Crack::XML.parse(open("https://gdata.youtube.com/feeds/api/standardfeeds/US/on_the_web_Sports?start-index=1&max-results=10"))
    travel = Crack::XML.parse(open("https://gdata.youtube.com/feeds/api/standardfeeds/US/on_the_web_Travel?start-index=1&max-results=10"))
    comedy = Crack::XML.parse(open("https://gdata.youtube.com/feeds/api/standardfeeds/US/on_the_web_Comedy?start-index=1&max-results=10"))
    entertainment = Crack::XML.parse(open("https://gdata.youtube.com/feeds/api/standardfeeds/US/on_the_web_Entertainment?start-index=1&max-results=10"))
    howto = Crack::XML.parse(open("https://gdata.youtube.com/feeds/api/standardfeeds/US/on_the_web_Howto?start-index=1&max-results=10"))
    education = Crack::XML.parse(open("https://gdata.youtube.com/feeds/api/standardfeeds/US/on_the_web_Education?start-index=1&max-results=10"))
    tech = Crack::XML.parse(open("https://gdata.youtube.com/feeds/api/standardfeeds/US/on_the_web_Tech?start-index=1&max-results=10"))

    news["feed"]["entry"].each do |video|
      id = video["id"].match(/videos\/(.+)/)
      !unique_ids.include?(id[1]) ? unique_ids.push(id[1]) : 1
    end 
    autos["feed"]["entry"].each do |video|
      id = video["id"].match(/videos\/(.+)/)
      !unique_ids.include?(id[1]) ? unique_ids.push(id[1]) : 1
    end
    music["feed"]["entry"].each do |video|
      id = video["id"].match(/videos\/(.+)/)
      !unique_ids.include?(id[1]) ? unique_ids.push(id[1]) : 1
    end
    animals["feed"]["entry"].each do |video|
      id = video["id"].match(/videos\/(.+)/)
      !unique_ids.include?(id[1]) ? unique_ids.push(id[1]) : 1
    end
    sports["feed"]["entry"].each do |video|
      id = video["id"].match(/videos\/(.+)/)
      !unique_ids.include?(id[1]) ? unique_ids.push(id[1]) : 1
    end
    travel["feed"]["entry"].each do |video|
      id = video["id"].match(/videos\/(.+)/)
      !unique_ids.include?(id[1]) ? unique_ids.push(id[1]) : 1
    end
    comedy["feed"]["entry"].each do |video|
      id = video["id"].match(/videos\/(.+)/)
      !unique_ids.include?(id[1]) ? unique_ids.push(id[1]) : 1
    end
    entertainment["feed"]["entry"].each do |video|
      id = video["id"].match(/videos\/(.+)/)
      !unique_ids.include?(id[1]) ? unique_ids.push(id[1]) : 1
    end
    howto["feed"]["entry"].each do |video|
      id = video["id"].match(/videos\/(.+)/)
      !unique_ids.include?(id[1]) ? unique_ids.push(id[1]) : 1
    end
    education["feed"]["entry"].each do |video|
      id = video["id"].match(/videos\/(.+)/)
      !unique_ids.include?(id[1]) ? unique_ids.push(id[1]) : 1
    end
    tech["feed"]["entry"].each do |video|
      id = video["id"].match(/videos\/(.+)/)
      !unique_ids.include?(id[1]) ? unique_ids.push(id[1]) : 1
    end
    
    pre_playlist = unique_ids.uniq.sort_by { rand }
    @first_vid = pre_playlist.pop
    @playlist = pre_playlist.join(",")
    
  end
  
  def top_rated
    unique_ids = []
      
    client = YouTubeIt::Client.new(:dev_key => "AI39si6oYP4GfE_J0LDuUTwWjA-4CNd1HbantYLBPMNQ7TiSz5jKdnuRC7WtOxahsdLq9JUJWvcpooNB1qxKvvYTWXt9th6dvg")
    
    news = Crack::XML.parse(open("https://gdata.youtube.com/feeds/api/standardfeeds/US/top_rated_News?start-index=1&max-results=10&time=today"))
    autos = Crack::XML.parse(open("https://gdata.youtube.com/feeds/api/standardfeeds/US/top_rated_Autos?start-index=1&max-results=10&time=today"))
    music = Crack::XML.parse(open("https://gdata.youtube.com/feeds/api/standardfeeds/US/top_rated_Music?start-index=1&max-results=10&time=today"))
    animals = Crack::XML.parse(open("https://gdata.youtube.com/feeds/api/standardfeeds/US/top_rated_Animals?start-index=1&max-results=10&time=today"))
    sports = Crack::XML.parse(open("https://gdata.youtube.com/feeds/api/standardfeeds/US/top_rated_Sports?start-index=1&max-results=10&time=today"))
    travel = Crack::XML.parse(open("https://gdata.youtube.com/feeds/api/standardfeeds/US/top_rated_Travel?start-index=1&max-results=10&time=today"))
    comedy = Crack::XML.parse(open("https://gdata.youtube.com/feeds/api/standardfeeds/US/top_rated_Comedy?start-index=1&max-results=10&time=today"))
    entertainment = Crack::XML.parse(open("https://gdata.youtube.com/feeds/api/standardfeeds/US/top_rated_Entertainment?start-index=1&max-results=10&time=today"))
    howto = Crack::XML.parse(open("https://gdata.youtube.com/feeds/api/standardfeeds/US/top_rated_Howto?start-index=1&max-results=10&time=today"))
    education = Crack::XML.parse(open("https://gdata.youtube.com/feeds/api/standardfeeds/US/top_rated_Education?start-index=1&max-results=10&time=today"))
    tech = Crack::XML.parse(open("https://gdata.youtube.com/feeds/api/standardfeeds/US/top_rated_Tech?start-index=1&max-results=10&time=today"))
    
    news["feed"]["entry"].each do |video|
      id = video["id"].match(/videos\/(.+)/)
      !unique_ids.include?(id[1]) ? unique_ids.push(id[1]) : 1
    end 
    autos["feed"]["entry"].each do |video|
      id = video["id"].match(/videos\/(.+)/)
      !unique_ids.include?(id[1]) ? unique_ids.push(id[1]) : 1
    end
    music["feed"]["entry"].each do |video|
      id = video["id"].match(/videos\/(.+)/)
      !unique_ids.include?(id[1]) ? unique_ids.push(id[1]) : 1
    end
    animals["feed"]["entry"].each do |video|
      id = video["id"].match(/videos\/(.+)/)
      !unique_ids.include?(id[1]) ? unique_ids.push(id[1]) : 1
    end
    sports["feed"]["entry"].each do |video|
      id = video["id"].match(/videos\/(.+)/)
      !unique_ids.include?(id[1]) ? unique_ids.push(id[1]) : 1
    end
    travel["feed"]["entry"].each do |video|
      id = video["id"].match(/videos\/(.+)/)
      !unique_ids.include?(id[1]) ? unique_ids.push(id[1]) : 1
    end
    comedy["feed"]["entry"].each do |video|
      id = video["id"].match(/videos\/(.+)/)
      !unique_ids.include?(id[1]) ? unique_ids.push(id[1]) : 1
    end
    entertainment["feed"]["entry"].each do |video|
      id = video["id"].match(/videos\/(.+)/)
      !unique_ids.include?(id[1]) ? unique_ids.push(id[1]) : 1
    end
    howto["feed"]["entry"].each do |video|
      id = video["id"].match(/videos\/(.+)/)
      !unique_ids.include?(id[1]) ? unique_ids.push(id[1]) : 1
    end
    education["feed"]["entry"].each do |video|
      id = video["id"].match(/videos\/(.+)/)
      !unique_ids.include?(id[1]) ? unique_ids.push(id[1]) : 1
    end
    tech["feed"]["entry"].each do |video|
      id = video["id"].match(/videos\/(.+)/)
      !unique_ids.include?(id[1]) ? unique_ids.push(id[1]) : 1
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
