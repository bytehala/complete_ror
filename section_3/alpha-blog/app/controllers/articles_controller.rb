class ArticlesController < ApplicationController

    def index
        @articles = Article.all
    end

    def show
        # byebug # <-- debugger
        @article = Article.find(params[:id]) # @ sign makes it an instance variable
    end

    def new
        @article = Article.new
    end

    def create
        # render plain: params[:article] # just renders in a new webpage
        @article = Article.new(params.require(:article).permit(:title, :description)) # Safety feature
        # render plain: @article.inspect # show that it gets created
        if @article.save
            flash[:notice] = "Article was created successfully."
            redirect_to @article # shortcut for article_path(@article) aka /article/:id
        else
            render 'new'
        end
    end

end