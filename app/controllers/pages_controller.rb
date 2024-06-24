class PagesController < ApplicationController
  def home
    if logged_in?
      @micropost = current_user.microposts.build
      @microposts = current_user.feed.paginate(page: params[:page])
    end
  end

  def about
  end

  def contact
  end

  def news
  end
end
