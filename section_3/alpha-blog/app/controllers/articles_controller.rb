class ArticlesController < ApplicationController

    def index
        @articles = Article.all
    end

    def show
        # byebug # <-- debugger
        @article = Article.find(params[:id]) # @ sign makes it an instance variable
    end

    def new

    end

    def create
        # render plain: params[:article] # just renders in a new webpage
        @article = Article.new(params.require(:article).permit(:title, :description)) # Safety feature
        # render plain: @article.inspect # show that it gets created
        @article.save
        redirect_to @article
    end

end