class ArticlesController < ApplicationController

    def index
        @articles = Article.all
    end

    def show
        # byebug # <-- debugger
        @article = Article.find(params[:id]) # @ sign makes it an instance variable
    end

end