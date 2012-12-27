class QuizController < ApplicationController
  
  	def calculate
  		score=0
  		correct_ans= params[:correct_opt]
  		radio_ans= params[:name]

  		respond_to do |format|
  		if correct_opt == radio_ans
  			score=score+1
  			format.html
  		else
  			format.html
  		end
  		end
  	end
end
  
  



