class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @answers = ["Great!", "Silly question, get dressed and go to work!", "I don't care, get dressed and go to work!"]
    if params[:question]
      case params[:question]
        when "I am going to work"
         @answers = @answers[0]
        when "?"
          @answers =  @answers[1]
        when ""
          @answers = @answers[2]
      end
    end
  end
end
