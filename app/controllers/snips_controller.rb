class SnipsController < ApplicationController

  before_filter :authorize

  def new
    @snip = Snip.new
  end

  def create
    @snip = Snip.new(params.require(:snip).permit(:title, :snippet, :category, :tag_list))
    #@snip.permalink = ('a'..'z').to_a.shuffle[0,8].join
    if @snip.save
      flash[:notice] = "Successfully saved at "+Time.now.to_s
      redirect_to(:action => "edit", :id=> @snip.id)
    else
      flash[:alert] = "Error while saving the Snip"
      render("new")
    end
  end
  
  def show
    @snip = Snip.find(params[:id])
  end
  
  def edit
    #Helps in order to get the snip with the id
    @snip = Snip.find(params[:id])
  end
  
  def update
    #Put Code in order to update the Snip
  end
  
end
