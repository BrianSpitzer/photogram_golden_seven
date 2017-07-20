class PicturesController < ApplicationController

  def new_form
      
      render("/pictures/new_form.html.erb")
  end

  def create_row
  
    render("/pictures/create_row.html.erb")
  end

  def index
  
    render("/pictures/index.html.erb")
  end
  
end
