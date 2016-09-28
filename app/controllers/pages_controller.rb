class PagesController < ApplicationController
  def index
    @pages = Page.sorted
  end

  def edit
    @page= Page.find(params[:id])

  end
  def update
     @page= Page.find(params[:id])
      if @page.update_attributes(pages_params)
        redirect_to(:action =>'index')
      else
        render('show')
        
      end

  end

  def new

  end
  def create
    @page= Page.new(pages_params)
    if @page.save
      flash[:notice]= "subject created successfully"
      redirect_to(:action => 'index')
    else
      render('new')
    end
  end

  def show
     @page=Page.find(params[:id])
  end

  def delete
     @page=Page.find(params[:id])
  end
  def destroy
    @page=Page.find(params[:id]).destroy
    
  end
  private
  def pages_params
   params.require(:page).permit(:subject_id, :name, :position, :visible, :permalink)
    end
    

end
