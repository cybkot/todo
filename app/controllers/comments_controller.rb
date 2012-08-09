class CommentsController < ApplicationController
  def create
    @todo = Todo.find(params[:id])
    @comment = comments.create(params[:comment])
    redirect_to todo_path(@todo)
  end
end