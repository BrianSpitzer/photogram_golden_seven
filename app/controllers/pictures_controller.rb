class PicturesController < ApplicationController

  def new_form
      
      render("/pictures/new_form.html.erb")
  end

  def create_row
  
    p = Photo.new
    p.source = params["the_source"]
    p.caption = params["the_caption"]
    p.save
    
    @photo_count = Photo.count
  
    # render("/pictures/create_row.html.erb")
    redirect_to("/photos")
  end

  def index
    @list_of_photos = Photo.order(:created_at => :desc)

    render("/pictures/index.html.erb")
  end
  
  def show
 
    @pic = Photo.find(params["the_id"])
  
    render("/pictures/show.html.erb")
  end
  
  def edit_form
    @pic = Photo.find(params["an_id"])
  
    render("/pictures/edit_form.html.erb")
    #redirect_to("/photos/"+@pic.id.to_s)
  end
  
  def update_row
    @pic = Photo.find(params["some_id"])
    @pic.source = params["the_source"]
    @pic.caption = params["the_caption"]
    @pic.save
    #render("/pictures/update_row.html.erb")
    redirect_to("/photos/"+@pic.id.to_s)
  end
  
  def destroy_row
    
    p = Photo.find(params["toast_id"])

    p.destroy
    
    @photo_count = Photo.count
 #   render("/pictures/destroy_row.html.erb")
    redirect_to("/photos")
  end
  
end
