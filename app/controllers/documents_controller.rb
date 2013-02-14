class DocumentsController < ApplicationController
  def index
    @documents = Document.all
  end
  
  def show
    @doc = Document.find_by_id(params[:id])
  end
  
  def new
  end
  
  def create
    @doc = Document.create!(params[:doc])
    redirect_to documents_path
  end
  
  def delete(id)
  end
end