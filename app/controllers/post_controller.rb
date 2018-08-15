class PostController < ApplicationController
  def index
    @posts = [
      "172.22.61.1",
      "管理棟2階",
      "デスクトップ",
      "共用"
    ]
  end
end
