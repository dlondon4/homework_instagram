class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @list_of_photos = Photo.all
    @photo_id = params[:id]
    @p = @list_of_photos.find(@photo_id)
  end

end
