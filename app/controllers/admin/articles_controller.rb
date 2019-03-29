class Admin::ArticlesController < ApplicationController
    before_action :authorize, except: [:index, :show]
    
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

    def new
        @article = Article.new
    end

    def edit
        @article = Article.find(params[:id])
    end

    def create
        @article = Article.new(article_params)
        
        if @article.save
            redirect_to @article
        else
            render 'new'
        end
    end

    def update 
        @article = Article.find(params[:id])

        if @article.update(article_params)
            redirect_to @article
        else
            render 'edit'
        end
    end

    def destroy
        @article = Article.find(params[:id])
        @article.destroy

        redirect_to articles_path
    end
    
    private
        def article_params
            params.require(:article).permit(:title, :text, :picture, :tag_list)
        end
end
