class QuestionsController < ApplicationController
  def ask
    p 'hey'
  end

  def answer
    @question = params[:question]
    @answers = ['Great!', 'Silly question, get dressed and go to work!', "I don't care, get dressed and go to work!"]
    if @question == 'I am going to work'
      @answers = @answers.select { |answer| answer == 'Great!' }
    elsif @question.include?('?')
      @answers = @answers.select { |answer| answer == 'Silly question, get dressed and go to work!' }
    else
      @answers = @answers.select { |answer| answer == "I don't care, get dressed and go to work!" }
    end
  end
end

# we need to make a questions variable from the input
# if the question has a ? or... or .... it will display a certain anaswer
