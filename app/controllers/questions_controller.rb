# frozen_string_literal: true

# class for the stupid coach
class QuestionsController < ApplicationController
  STOP_MESSAGE = 'I am going to work right now!'

  def ask; end

  def answer
    @question = params[:question]
    @answer = coach_answer_enhanced(@question)
  end

  private

  def coach_answer(your_message)
    if your_message == STOP_MESSAGE || your_message == STOP_MESSAGE.upcase
      'That is a good idea'
    elsif your_message.end_with?('?')
      'Silly question, get dressed and go to work!'
    else
      "I don't care, get dressed and go to work!"
    end
  end

  def coach_answer_enhanced(your_message)
    answer = coach_answer(your_message)
    if answer == ''
      'That is a good idea'
    elsif your_message.upcase == your_message
      "I can feel your motivation! #{answer}"
    else
      answer
    end
  end
end
