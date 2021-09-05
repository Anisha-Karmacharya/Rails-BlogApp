class AuthorController < ApplicationController
  def index
    # very simple code to grab all authors so they can be
    # displayed in the Index view (index.html.erb)
    @authors= Author.all
  end

  def show
    # very simple code to grab the proper Author so it can be
    # displayed in the Show view (show.html.erb)
   
  end

  def new
    # very simple code to create an empty author and send the user
    # to the New view for it (new.html.erb), which will have a
    # form for creating the author
    @author = Author.new
  end

  def create
    # code to create a new author based on the parameters that
    # were submitted with the form (and are now available in the
    # params hash)
    @author = Author.new(author_params)
    if @author.save
      flash[:notice] = "Post has been created."
      redirect_to @author
    else
      flash[:notice] = "Post has not been created."
      render :action => "new"
    end
  end

  def author_params
    params.require(:author).permit(:title, :author, :content, :posted_on)
  end

  def edit
    # very simple code to fiand the author we want and send the
    # user to the Edit view for it(edit.html.erb), which has a
    # form for editing the author
   
  end

  def update
    # code to figure out which author we're trying to update, then
    # actually update the attributes of that author.  Once that's
    # done, redirect us to somewhere like the Show page for that
    # author
    @author = Author.find params[:id]
    if @author.update_attributes params[:author]
      redirect_to authors_path
    else
      render :action => :edit
    end
  end

  def destroy
    # very simple code to find the author we're referring to and
    # destroy it.  Once that's done, redirect us to somewhere fun.
    @author = Author.find params[:id]
    @author.destroy
    redirect_to authors_path
  end
end
