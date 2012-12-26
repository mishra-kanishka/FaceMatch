class QuizController < ApplicationController
  def home
  	@answer= params(:name)
  
  end

  def index
  end
end
