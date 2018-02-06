class ArticlesController < ApplicationController
  def index
      @articles = Article.all #trae todos los reguistros, las variables de clases empiezan con @ y podemos acceder a ellas desde la vista o el controlador
  end
    #GET /arrticles/:id
  
    def show
      @article = Article.find(params[:id])
  end
    #GET /articles/new
  
    def new
      @article = Article.new
  end
    #POST /articles
  
  def create
      @article = Article.new(title: params[:article][:title], body: 
      params[:article][:body]
      )

      if @article.save
        redirect_to @article  
      else
          render :new
      end
  end

  def destroy
      @article = Article.find(params[:id])
      if @article.destroy # destroy elimina el objeto de la base de datos.
          flash[:success] = 'Article was successfully deleted.'
          redirect_to articles_path
      else
          flash[:error] = 'Something went wrong'
          redirect_to articles_path
      end
  end
  
  

  #PUT /articles/:id
#   def update
#       @article = Article.find(params[:id])
#       if @article.update_attributes(params[:article])
#         flash[:success] = "Article was successfully updated"
#         redirect_to @article
#       else
#         flash[:error] = "Something went wrong"
#         render 'edit'
#       end
#  end
  
  
  
  
end