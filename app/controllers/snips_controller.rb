class SnipsController < ApplicationController

  def new
    @snip = Snip.new
  end

  def create
    
    @snip = Snip.new(params.require(:snip).permit(:snippet))
    if @snip.save
      flash[:notice] = "Successfully saved at "+Time.now.to_s
      redirect_to(:action => "new")
    else
      flash[:alert] = "Error while saving the Snip"
      render("new")
    end
  end
  
  def show
    @snip = Snip.all
  end
  
  def edit
    @snip = Snip.find(params[:id])
  end
  def update
  end
  
end
