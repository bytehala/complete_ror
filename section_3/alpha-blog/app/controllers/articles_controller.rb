class ArticlesController < ApplicationController

    before_action :set_article, only: [:show, :edit, :update, :destroy]

    def index
        @articles = Article.all
    end

    def show
    end

    def new
        @article = Article.new
    end

    def create
        # render plain: params[:article] # just renders in a new webpage
        @article = Article.new(article_params) # Safety feature
        # render plain: @article.inspect # show that it gets created
        if @article.save
            flash[:notice] = "Article was created successfully."
            redirect_to @article # shortcut for article_path(@article) aka /article/:id
        else
            render 'new'
        end
    end

    def edit
    end

    def update
        if @article.update(article_params)
            flash[:notice] = "Article was updated successfully."
            redirect_to @article
        else
            render 'edit'
        end
    end

    def destroy
        @article.destroy
        redirect_to articles_path # articles_path is the Prefix under rails routes
    end

    # Everything below is private
    private

    def set_article
        @article = Article.find(params[:id])
    end

    def article_params
        params.require(:article).permit(:title, :description)
    end

end