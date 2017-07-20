class PicturesController < ApplicationController

  def new_form
      
      render("/pictures/new_form.html.erb")
  end

  def create_row
  
    render("/pictures/create_row.html.erb")
  end

  def index
    @pic = Photo.last

  
    render("/pictures/all_photos.html.erb")
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
