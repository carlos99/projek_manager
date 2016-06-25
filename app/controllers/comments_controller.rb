class CommentsController < ApplicationController

  def create
    @task = Task.find(params[:task_id])
    @comment = @task.comments.build(comment_params)

    if @comment.save
      redirect_to @task, notice: "Comment Posted"
    else
      redirect_to @tasks, alert: "Comment Not Posted"
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:name, :email, :body)
  end
end
