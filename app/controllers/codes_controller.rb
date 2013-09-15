class CodesController < ApplicationController
  def index
  end

  def new
    @code = Code.new
  end
  
  def show
    if params[:id]
      @code = Code.find_by_code(params[:id])
    else
      @code = Code.find_by_code(params[:code])
    end
  end    
  
  def create
    @code = Code.new(wherecode_params)

    if @code.save
      redirect_to @code
    else
      render 'new'
    end
  end
  
  private
    def wherecode_params
      params.require(:wherecode).permit(:code, :address)
    end
  
end
