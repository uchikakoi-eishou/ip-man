class PostController < ApplicationController
  def index
    temp_segment = params[:segment]
    if temp_segment == "other"
      @posts = Vlanid.where('ip_address not like ?', "172.022.___.___")
    else
      @posts = Vlanid.where('ip_address like ?', "172.022.#{temp_segment}.___")
    end
  end

  def show
    @post = Vlanid.find_by(id: params[:id])
    
  end

  def new
    @post = Vlanid.new

  end
  
  def create
    @post = Vlanid.new(ip_address:     params[:ip_address], 
                       location:       params[:location],
                       control_number: params[:control_number],
                       user:           params[:user],
                       use:            params[:use])
    if @post.save
      flash[:notice] = "登録しました"
      #check_segment
      temp_ip_address = params[:ip_address]
      check_ip_address = temp_ip_address[0, 8]
      if check_ip_address == "172.022."
        temp_segment = temp_ip_address[8, 3]
        redirect_to("/post/index/#{temp_segment}")      
      else      
        redirect_to("/post/index/other")      
      end
    else
      render("post/new")
    end

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
    if @post.save
      flash[:notice] = "修正しました"
      redirect_to("/post/show/#{@post.id}")
    else
      render("post/edit")
    end

  end

  def destroy
    @post = Vlanid.find_by(id: params[:id])
    check_ip_address = @post.ip_address[0, 8]
    if check_ip_address == "172.022."
      temp_segment = @post.ip_address[8, 3]
      redirect_to("/post/index/#{temp_segment}")
    else
      redirect_to("/post/index/other")
    end
    @post.destroy
    flash[:notice] = "削除しました"

  end
end
