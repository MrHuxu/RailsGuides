class ArticleController < ApplicationController
  def index
    @articles = Article.all
    render file: 'article/index'
  end

  def new
    @article = Article.new
    render file: 'article/new'
  end

  def create
    binding.pry
    @article = Article.new(article_params)
    @article.save
    redirect_to action: :index
  end
end
