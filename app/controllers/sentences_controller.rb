class SentencesController < ApplicationController

  def show
    @sentence = Sentence.find(params[:id])
  end

end
