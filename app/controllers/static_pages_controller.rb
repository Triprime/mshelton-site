class StaticPagesController < ApplicationController
  
  def home
    @post = Post.featured
    @post = Post.featured.first
  end

  def about
  end

  def gallery
  end

end
