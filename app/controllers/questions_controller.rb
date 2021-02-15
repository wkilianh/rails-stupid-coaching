class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @user_input = params
    if @user_input['user-input'] == 'I am going to work'
      @answer_coach = 'Great!'
    elsif @user_input['user-input'][-1] == '?'
      @answer_coach = 'Silly question, get dressed and go to work!'
    else
      @answer_coach = "I don't care, get dressed and go to work!"
    end
  end
end
