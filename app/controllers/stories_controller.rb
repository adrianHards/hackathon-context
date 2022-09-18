class StoriesController < ApplicationController
  before_action :set_story, only: %i[show]

  def home
  end

  def index
    @stories = Story.all
  end

  def show
    @page = params.fetch(:page,0).to_i
    @sentences = Sentence.all
    @pageSentences = Sentence.offset(@page*2).limit(2)
  end

  def next
  end

  private

  def set_story
    @story = Story.find(params[:id])
  end

  def set_page
  end

end
