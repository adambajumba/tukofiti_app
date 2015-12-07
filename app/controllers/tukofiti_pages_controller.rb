class TukofitiPagesController < ApplicationController
  def home
    if logged_in?
      @post = current_user.posts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end

  def user
  end

  def profile
  end

  def progress
  end

  def about
  end

  def help
  end
end
