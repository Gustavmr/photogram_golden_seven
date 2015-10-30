class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @id = params[:id]
    @current_photo = Photo.find(@id)
  end

  def new_form
  end

  def create_row
    i = Photo.new
    i.source = params[:the_source]
    i.caption = params[:the_caption]
    i.save
    redirect_to("http://localhost:3000/photos")
  end

  def destroy
    @id = params[:id]
    i = Photo.find(@id)
    i.destroy
    redirect_to("http://localhost:3000/photos")
  end

  def edit_form
    @id = params[:id]
    @current_photo = Photo.find(@id)
  end

  def update_row
    @id = params[:id]
    i = Photo.find(@id)
    i.caption = params[:the_caption]
    i.source = params[:the_source]
    i.save
    redirect_to("http://localhost:3000/photos/"+@id.to_s)

  end

end
