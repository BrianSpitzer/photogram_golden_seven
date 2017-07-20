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
  
    render("/pictures/create_row.html.erb")
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
  
    render("/pictures/edit_form.html.erb")
  end
  
  def update_row
    render("/pictures/update_row.html.erb")
  end
  
  def destroy_row
    render("/pictures/destroy_row.html.erb")
  end
  
end
