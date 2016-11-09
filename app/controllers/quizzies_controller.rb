class QuizziesController < ApplicationController
  def index
    @quizzies = Quizzy.all
  end

  def new
    @quizzy = Quizzy.new
  end

  def create
    @quizzy = Quizzy.create(quizzy_params)
    if @quizzy.valid?
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def quizzy_params
    params.require(:quizzy).permit(:name, :description)
  end
end
