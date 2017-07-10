class ArticlesController < ApplicationController
	def index
    @articles = Article.all
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
      redirect_to @article, notice: "Article was successfully created."
      SearchSuggestion.seed_one(@article) # should be done in background
    else
      render "new"
    end
  end

  def update
    @article = Article.find(params[:id])
    if @article.update_attributes(article_params)
      redirect_to @article, notice: "Article was successfully updated."
    else
      render "edit"
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    # on destroy, remove from auto suggestions
    redirect_to articles_url
  end

  private
  	def article_params
  		params.require(:article).permit(:name, :content)
  	end
end
