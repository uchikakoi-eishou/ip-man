class PostController < ApplicationController
  def index
    @posts = Vlanid.all

  end

  def show
    @post = Vlanid.find_by(id: params[:id])
    
  end
end
