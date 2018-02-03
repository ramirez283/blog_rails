class ArticlesController < ApplicationController
  def index
      @articles = Article.all #trae todos los reguistros, las variables de clases empiezan con @ y podemos acceder a ellas desde la vista o el controlador
  end

  def show
      @article = Article.find(params[:id])
  end

  def new
      @article = Article.new
  end
  
  
end