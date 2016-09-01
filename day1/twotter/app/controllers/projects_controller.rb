
class ProjectsController < ApplicationController

  def index
    @twots = Twot.all
  end

  def new
    @twot = Twot.new
  end

  def create
    #raise params.inspect
    @twot = Twot.new(params[:twot].permit(:body))
    if @twot.save
      flash[:notice] = "Biennn! has twotteado"
      redirect_to action: 'index'
    else
      render :new
    end

  end
end
