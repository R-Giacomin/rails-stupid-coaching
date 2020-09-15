class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @answer = params[:answer]
    if @answer == 'I am going to work'
      @coach_response = 'Great!'
    elsif @answer.include? '?'
      @coach_response = "Silly question, get dressed and go to work!"
    else
      @coach_response = "I don't care, get dressed and go to work!"
    end
  end
end
