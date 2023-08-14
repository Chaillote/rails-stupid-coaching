class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @question = params[:question]
    @response = ''
    if @question == "I am going to work"
      @response = "great"
    elsif @question.include?('?')
      @response = "Silly question, get dressed and go to work!"
    else
      @response = "I don't care, get dressed and go to work!"
    end

  end
end


# if your_message == STOP_MESSAGE || your_message == STOP_MESSAGE.upcase
#   ""
# elsif your_message.end_with?("?")
#   "Silly question, get dressed and go to work!"
# else
#   "I don't care, get dressed and go to work!"
# end
