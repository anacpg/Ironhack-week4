class ProjectsController < ApplicationController

  def search
    @twots = Twot.where("body LIKE '%#{params[:query]}%'")
    render :index
  end

  def edit
    @twot = Twot.find(params[:biggie])
  end

  def show
    @twot = Twot.find(params[:tupac])
  end

  def index
    @twots = Twot.all
  end

  def new
    @twot = Twot.new
  end

  def update
    @twot = Twot.find(params[:id])

    if @twot.update(twot_params)
      flash[:notice] = "Bieeen! has edit-twotteado!"
      redirect_to twot_show_path(@twot)
    else
      flash[:error] = "La has cagado otra vez"
      render action: :edit
    end
  end

  def create
    @twot = Twot.new(twot_params)

    if @twot.save
      flash[:notice] = "Bieeen! has twotteado!"
      redirect_to action: 'index'
    else
      flash[:error] = "La has cagado"
      render :new
    end
  end

  def twot_params
    params.require(:twot).permit(:body, :link, :description, :active, :twot_number, :user_id)
  end
end