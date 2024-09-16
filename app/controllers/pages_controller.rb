class PagesController < ApplicationController
  def home; end

  def about; end

  def archive
    @posts_with_images = Post.joins(:images_attachments).distinct
  end

  def questions; end
end
