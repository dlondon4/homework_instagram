class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @list_of_photos = Photo.all
    @photo_id = params[:id]
    @p = @list_of_photos.find(@photo_id)
  end

  def new_form

  end

  def create_row
    @new_caption = params[:the_caption]
    @new_photo = params[:the_source]
    @np = Photo.new
    @np.source = @new_photo
    @np.caption = @new_caption
    @np.save
  end

  def destroy
    @list_of_photos = Photo.all
    @photo_id = params[:id]
    @p = @list_of_photos.find(@photo_id)
    @p.destroy
  end

  def edit_form
    @list_of_photos = Photo.all
    @photo_id = params[:id]
    @p = @list_of_photos.find(@photo_id)
  end

  def update_row
    @list_of_photos = Photo.all # retrieve the corresponding row from the table
    @photo_id = params[:id]
    @p = @list_of_photos.find(@photo_id)

    @change_caption = params[:the_caption] # receive data from an edit form
    @change_photo = params[:the_source]

    @p.source = @change_photo
    @p.caption = @change_caption
    @p.save
  end

end
