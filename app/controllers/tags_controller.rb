class TagsController < ApplicationController
  def show
    @tag = Tag.find(params[:id])
  end

  def index
    @tag = Tag.all
  end

  def destroy
    flash.notice = "Tag '#{Tag.find(params[:id])}' Destroyed!"
    Tag.find(params[:id]).destroy
    redirect_to tags_path
  end
end
