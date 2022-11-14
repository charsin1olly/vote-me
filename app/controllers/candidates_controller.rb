class CandidatesController < ApplicationController

  def index
  end

  def new
    @candidate = Candidate.new

  end

  def create
    # debugger
    @candidate = Candidate.new(clean_params)

    if @candidate.save
      redirect_to '/candidates'
    else
      #NG
    end

  end

  # private
  # def clean_params
  # params[:candidate].require(:candidate).permit(:name , :party , :age , :politics)
  # end



end
