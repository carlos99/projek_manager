class TaskMailer < ApplicationMailer

  def confirm_task (task)
    @task = task
    mail to: task.comments.map(&:email)
  end
end
