class ArticlesController < ApplicationController
  def home
    @article = Article.first
  end
end
