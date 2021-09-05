class BlogsController < ApplicationController
  def index
    # very simple code to grab all blogs so they can be
    # displayed in the Index view (index.html.erb)
    @blogs= Blog.all
  end

  def show
    # very simple code to grab the proper Blog so it can be
    # displayed in the Show view (show.html.erb)
    @blog = Blog.find params[:id]
  end

  def new
    # very simple code to create an empty blog and send the user
    # to the New view for it (new.html.erb), which will have a
    # form for creating the blog
    @blog = Blog.new
  end

  def create
    # code to create a new blog based on the parameters that
    # were submitted with the form (and are now available in the
    # params hash)
    @blog = Blog.new(blog_params)

    if @blog.save
      redirect_to @blog
    else
      render 'new'
    end
  end



  def edit
    # very simple code to fiand the blog we want and send the
    # user to the Edit view for it(edit.html.erb), which has a
    # form for editing the blog
    @blog = Blog.find params[:id]
  end

  def update
    # code to figure out which blog we're trying to update, then
    # actually update the attributes of that blog.  Once that's
    # done, redirect us to somewhere like the Show page for that
    # blog
    @blog = Blog.find(params[:id])

    if @blog.update(blog_params)
      redirect_to @blog
    else
      render 'edit'
    end
  end

  def destroy
    # very simple code to find the blog we're referring to and
    # destroy it.  Once that's done, redirect us to somewhere fun.
    @blog = Blog.find params[:id]
    @blog.destroy
    redirect_to blogs_path
  end

  def blog_params
    params.require(:blog).permit(:title, :content, :posted_on, :image)
  end
end
