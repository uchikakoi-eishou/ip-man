class PostController < ApplicationController
  def index
    @segment = params[:ip_address3]
    @posts = Vlan.all
  end

  def show
    @show = Vlan.find_by(id: params[:id])
    
  end
end
