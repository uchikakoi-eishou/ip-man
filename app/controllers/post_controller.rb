class PostController < ApplicationController
  def index
    segment = params[:segment]
    if segment == "other"
      @posts = Vlanid.where('ip_address not like ?', "172.022.___.___")
    else
      @posts = Vlanid.where('ip_address like ?', "172.022.#{segment}.___")
    end
  end

  def show
    @post = Vlanid.find_by(id: params[:id])
    
  end

  def new

  end
  
  def create
    @post = Vlanid.new(ip_address:     params[:ip_address], 
                       location:       params[:location],
                       control_number: params[:control_number],
                       user:           params[:user],
                       use:            params[:use])
    @post.save

    segment = params[:ip_address][8, 3]
    redirect_to("/post/index/#{segment}")

  end

  def edit
    @post = Vlanid.find_by(id: params[:id])

  end

  def update
    @post = Vlanid.find_by(id: params[:id])
    @post.ip_address     = params[:ip_address]
    @post.location       = params[:location]
    @post.control_number = params[:control_number]
    @post.user           = params[:user]
    @post.use            = params[:use]
    @post.save

    redirect_to("/post/show/#{@post.id}")

  end
end
