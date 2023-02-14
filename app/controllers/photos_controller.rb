class PhotosController < ApplicationController
  def index
    # matching_users = User.all
    # @list_of_users = matching_users.order({:username => :asc})
    matching_photos = Photo.all
    @list_of_photos = matching_photos.order({:created_at => :asc})
    render({:template => "photo_templates/index.html.erb"})
  end

  def show
    url_photo = params.fetch("path_photos")
    matching_photos = Photo.where({:id => url_photo})
    @the_photo = matching_photos.first
    render({:template => "photo_templates/show.html.erb"})
  end

end
