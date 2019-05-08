class BlogsController < ApplicationController
  def index
    @blogs = Blog.all


    @title = params[:title]
    respond_to do |format|
      #jsのビューを使用できる
      format.html
      format.js
    end
  end

  def new
  end

  def create
    @blogs = Blog.all
    @blog = Blog.new(blog_params)
    respond_to do |f|
      if @blog.save
        f.html
        f.js
      else
        f.js { render :new }
      end
    end
    
  end

  def edit
    @blog = Blog.find(params[:id])
  end

  def update
    @blog = Blog.find(params[:id])
    if @blog.update(blog_params)
      flash[:notice] = "記事を編集しました"
      redirect_to blogs_path
    else
      render 'edit'
    end
  end

  def show
    @blogs = Blog.find(params[:id])
  end

  private
    def blog_params
      params.require(:blog).permit(:title,:text)
    end
end
