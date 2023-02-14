class UsersController < ApplicationController
  def index
    matching_users = User.all
    @list_of_users = matching_users.order({:username => :asc})
    @name = params.fetch("path_username")
    render({:template => "user_templates/index.html.erb"})
  end
end
