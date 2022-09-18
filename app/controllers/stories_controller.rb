class StoriesController < ApplicationController
  before_action :set_story, only: %i[show]

  def home
  end

  def index
    @stories = Story.all
  end

  def show
  end

  def next
  end

  private

  def set_story
    @story = Story.find(params[:id])
  end

end
