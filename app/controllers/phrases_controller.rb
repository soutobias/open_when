class PhrasesController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_phrase, only: [:show]

  def index
    @phrases = Phrase.all
  end

  def show
  end

  private

  def set_phrase
    @phrase = Phrase.find(params[:id])
  end
end
