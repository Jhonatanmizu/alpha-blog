class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end
  def new
  end

  def create
    @article = Article.new(params.require(:article).permit(:title,:description))
    @article.save
    redirect_to article_path(@article)
  end
  def show
    # @ convert a variable into a instance variable
    @article = Article.find(params[:id])
  end

  def destroy
    @article = Article.destroy(params[:id])
  end

end
