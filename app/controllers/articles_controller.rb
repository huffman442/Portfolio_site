class ArticlesController < ApplicationController
  def index
    @articles = if params[:tag]
        Article.tagged_with(params[:tag])
    else
        Article.all
    end

    @tags = Tag.all
  end

  def search
      @articles = Article.find(params[:tag])
  end

  def show
      @article = Article.find(params[:id])
  end
end
