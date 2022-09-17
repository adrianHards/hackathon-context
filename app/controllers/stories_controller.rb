class StoriesController < ApplicationController
  before_action :set_story, only: %i[show]

  def home
  end

  def index
    @stories = Story.all
  end

  def show
    raise
  end

  private

  def set_story
    @story = Story.find(params[:id])
  end

  def story_params
    params.require(:task).permit(:name, :difficulty, :language)
  end

end
