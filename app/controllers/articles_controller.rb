class ArticlesController < ApplicationController
  def home
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
    render 'edit'
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article
    else
      render :edit
    end
  end

  def edit
    @article = Article.edit
  end

  def update
    @article = Article.find(params[:id])
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
  end


  private
    def article_params
      params.require(:article).permit(:title, :sub_title, :main_article, :tags)
    end
  end
