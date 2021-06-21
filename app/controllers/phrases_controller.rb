class PhrasesController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_phrase, only: [:show, :edit, :destroy, :update,
    :delete_image_attachment, :add_image_attachment]

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

  def new
    @phrase = Phrase.new
  end

  def create
    @phrase = Phrase.new(phrase_params)
    @phrase.save
    redirect_to phrase_path(@phrase)
  end

  def destroy
    @phrase.destroy
    redirect_to root_path
  end

  def edit
  end

  def update
    @phrase.update(phrase_params)
    redirect_to phrase_path(@phrase)
  end

  def destroy
    @phrase.destroy
    redirect_to root_path
  end


  def delete_image_attachment
    @image = ActiveStorage::Blob.find_signed(params[:format])
    @phrase.photos.each do |photo|
      if @image.id == photo.id
        photo.purge
      end
    end
    redirect_to edit_phrase_path(@phrase)
  end

  def add_image_attachment
    @file_params = file_params
    @file_params[:photos].each do |photo|
      @phrase.photos.attach(photo)
    end
    redirect_to edit_phrase_path(@phrase)
  end


  private

  def set_phrase
    @phrase = Phrase.find(params[:id])
  end

  def phrase_params
    params.require(:phrase).permit(
      :question, :answer, :link, :sentence
      )
  end

  def file_params
    params.require(:phrase).permit(
      photos: []
      )
  end

end
