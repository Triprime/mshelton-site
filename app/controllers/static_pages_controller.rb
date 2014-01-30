class StaticPagesController < ApplicationController
  
  def home
    @post = Post.featured.last
  end

  def about
  end

  def gallery
  end

end
