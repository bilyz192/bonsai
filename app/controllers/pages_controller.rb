class PagesController < ApplicationController
  def home
    @pages = Article.all
  end

end
