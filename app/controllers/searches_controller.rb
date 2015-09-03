class SearchesController < ApplicationController

  def index
    client = Soundcloud.new(:client_id => "8a1760755d85f0e6579508e64c401791")
    @tracks = client.get('/tracks', :q => params[:keyterm])
  end

  def food
    foodsearch = HTTParty.get("http://food2fork.com/api/search?key=a3fdceb41ffc20a80fd94132ff3df5d3&sort=t")
    list = JSON.parse(foodsearch)["recipes"]
    rand1 = rand(0...list.length)
    title = list[rand1]["title"]
    rand2 = rand(0...title.split(" ").length)
    @word = title.split(" ")[rand2]
    # @word = "slow"
    client = Soundcloud.new(:client_id => "8a1760755d85f0e6579508e64c401791")
    @tracks = client.get('/tracks', :q => @word)
    # binding.pry
    # iconsearch = HTTParty.get("https://api.iconfinder.com/v2/icons/search?query=#{@word}&count=1&style=&vector=all&premium=all")
    # iconurl = iconsearch["icons"][0]["raster_sizes"][2]["formats"][0]["preview_url"]
    # binding.pry
  end

  def create
    user = current_user
		#fills in the user_id portion of the post_params which is needed.
		@post = user.posts.create(post_params)
		redirect_to '/posts/'+@post[:id].to_s
  end

  def new
    @post = Post.new
  end

private

  def search_params
    params.require(:search).permit(:url, :title)
  end
end
