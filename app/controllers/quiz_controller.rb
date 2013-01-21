class QuizController < ApplicationController
@@score= 0
    def calculate
      @correct_ans= params[:correct_opt]
      @radio_ans= params[:name]
                
    respond_to do |format|
      if @correct_ans== @radio_ans
        @@score= @@score+1
        format.html{redirect_to quiz_home_path}
      else
        format.html{redirect_to quiz_home_path}
      end
      
    end
    end

  def home    
  end

  def index
    @score=@@score
    @@score=0
  end
  
  def about
  end
end




