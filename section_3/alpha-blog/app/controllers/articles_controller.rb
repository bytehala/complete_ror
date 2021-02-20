class ArticlesController < ApplicationController

    def show
        # byebug # <-- debugger
        @article = Article.find(params[:id]) # @ sign makes it an instance variable

    end

end