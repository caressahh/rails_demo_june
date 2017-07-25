class ArticlesController < ApplicationController

  def new
    @article = Article.new
  end

  # GET /articles/:id
  def show
    # binding.pry
    @article = Article.find(params[:id])
  end

  def create
    # binding.pry
    @article = Article.new(article_params)
    # binding.pry
    # if article_params[:title] == ''
    #   flash[:alert] = "Title can't be blank"
    # elsif article_params[:content] == ''
    #   flash[:alert] = "Content can't be blank"
    # elsif article_params[:title] == '' && article_params[:content] == ''
    #   flash[:alert] = "Content and title can't be blank"
    # end

    if @article.save
      flash[:alert] = "Article was successfully created."
      redirect_to @article
    else
      render 'new'
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :content)
  end
end

