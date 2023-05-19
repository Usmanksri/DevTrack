class TasksController < ApplicationController

    before_action :set_task, only: [:show, :edit, :update, :destroy]
    include ApplicationHelper


    def index
        @tasks=Task.all
    end

    def new
        @task=Task.new
    end

    def create
        @task=Task.new(task_params)
        @task.creator_id=current_user.id
        @task.project_id=current_project_id
        if @task.save
            flash[:notice] = "Task was updated successfully."
            redirect_to tasks_path
        else
            #flash[:notice]= "Not updated  #{@task.errors.full_messages}"
           render 'new'
        end

    end

    def edit

    end

    def update
        if @task.update(task_params)
            flash[:notice] = "Task was updated successfully."
            redirect_to tasks_path
        else
            flash[:notice]= "Not updated  #{@task.errors.full_messages}"
           redirect_to tasks_path
        end
    end
    
    def show

    end

    def destroy
        @task.destroy
        redirect_to tasks_path, notice: 'Task deleted successfully.'
    end

    def set_task
        @task=Task.find(params[:id])
    end

    def task_params
        params.require(:task).permit(:title, :description, :member_id, :project_id)
    end

end
