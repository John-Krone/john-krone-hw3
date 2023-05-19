class PostsController < ApplicationController


  def show
    @post = Post.find_by({"id" => params["id"]})
    @place = Place.where({"id" => @post["place_id"]})
    
  end

  def new
    @post = Post.new
    @post["place_id"] = params["place_id"]
    
  end

  def create
    # start with a new Contact
    @contact = Contact.new

    # assign user-entered form data to Contact's columns
    @post["title"] = params["post"]["title"]
    @post["posted_on"] = params["post"]["posten_on"]
    
    

    # assign relationship
    @post["place_id"] = params["post"]["place_id"]

    # save Contact row
    @post.save

    # redirect user
    redirect_to "/companies/#{@contact["company_id"]}"
  end

end











