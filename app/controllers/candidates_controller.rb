class CandidatesController < ApplicationController

  def index
    @candidates = Candidate.all
    
  end

  def new
    @candidate = Candidate.new

  end

  def create
    # debugger
    # clean_params = params.require(:candidate).permit(:name , :party , :age , :politics)
    
    @candidate = Candidate.new(candidates_params)
 
    if @candidate.save
      flash[:notic] = "新增成功!!!!!!!!!!!!" 
      redirect_to '/candidates'
    else
      render :new
    end

  end

  def show
   Candidate.find(params[:id])
  end

  def edit
  end

  def update
  end

  private
  def candidates_params
  clean_params = params.require(:candidate).permit(:name , :party , :age , :politics)
  end



end
