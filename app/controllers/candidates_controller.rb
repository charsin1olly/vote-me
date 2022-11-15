class CandidatesController < ApplicationController

  def index
    @candidates = Candidate.all
    # @candidate = @candidates.params[ id: [@candidate.id] ]
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

  # def show
  # end


  private
  def candidates_params
  clean_params = params.require(:candidate).permit(:name , :party , :age , :politics)
  end



end
