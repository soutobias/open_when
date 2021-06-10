class PhrasesController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_phrase, only: [:show]

  def index
    @phrases = Phrase.all
  end

  def show
    if @phrase.question.downcase == 'quiser!'
      @value = true
      offset = rand(Phrase.count)
      if offset == 0
        offset == 1
      end
      @phrase = Phrase.offset(offset).first
    else
      @value = false
    end
  end

  private

  def set_phrase
    @phrase = Phrase.find(params[:id])
  end
end
