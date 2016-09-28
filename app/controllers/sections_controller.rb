class SectionsController < ApplicationController
  def edit
    @section= Section.find(params[:id])
  end
def update
  @section= Section.find(params[:id])
if @section.update_attributes(section_params)
  redirect_to('index')
else
render('new')
  end
end

  def index
  	@sections= Section.sorted
  end

  def new
  	@section= Section.new({:name=>"defalt"})
  end
  def create
  @section=Section.new(section_params)
  if @section.save
  	redirect_to(:action => "index")
  else
  redirect_to(:action => "index")
  end
  	
  end

  def show
  	@section= Section.find(params[:id])
  end



  def delete
    @section= Section.find(params[:id])
    
  end
  def destroy
     @section= Section.find(params[:id]).destroy
    
  end
  private
  def section_params
  	params.require(:section).permit(:name, :position, :visible)

  end

end
