class ArticlesController < ApplicationController

  def index
    @articles = Articles.all
  end

  def show
    # @ convert a variable into a instance variable
    @article = Article.find(params[:id])
  end




end
