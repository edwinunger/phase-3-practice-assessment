class CatsController < ApplicationController


  def index
    @cats = Cat.all
    @cat = Cat.new
  end

  def create
    @cat = Cat.new(cat_params)
    @cats = Cat.all
    respond_to do |format|
      if @cat.save
        format.html {redirect_to root_path}
        format.json {render :json => @cat, :status => :created}
      else
        format.html {render action: 'index'}
        format.json { render :json => root_path.errors.full_messages, :status => :unprocessable_entity}
      end
    end
  end

  def show
    @cat = Cat.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
    @cat = Cat.find(params[:id])
    @cat.destroy
    redirect_to root_path
  end

  private
  def cat_params
    params.require(:cat).permit(:name, :breed, :cute)
  end

end
