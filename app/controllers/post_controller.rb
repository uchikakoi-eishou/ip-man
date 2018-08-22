class PostController < ApplicationController
  def index
    @posts = Vlan.all
  end
end
