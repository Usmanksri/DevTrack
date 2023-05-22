class CommentsController < ApplicationController

    def create
        @task = Task.find(params[:task_id])
        @comment = @task.comments.build(comment_params)
        @comment.user = current_user
        @comment.commentable_id= params[:task_id]
        @comment.commentable_type="Task"

        
        if @comment.save
          redirect_to @task, notice: "Comment created successfully."
        else
        
            flash[:notice]= "Not updated  #{@comment.errors.full_messages}"  
          render 'new'
        end
      end
      

      def new 

      end

      private
      
      def comment_params
        params.require(:comment).permit(:content)
      end

      


end
