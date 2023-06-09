class ProjectsController < ApplicationController

    before_action :set_project, only: [:show, :edit, :update, :destroy]

    def index
        @projects=Project.all
    end

    def new
        @project=Project.new

    end

    # def select_project
    #     cookies[:current_project_id] = params[:project_id]
    #     redirect_to : a
    # end

    def select_project
        project_id = params[:project_id]
        cookies[:selectedProjectId] = project_id
        redirect_to root_path
      end



    def show
    end

    def create
        @project=Project.new(project_params)
        @project.creator_id=current_user.id
        
        if @project.save
        flash[:notice]= "Project added Successfully"
        redirect_to projects_path

        else
         render 'new'
      
        end
    end


    def edit
    end

    def update
        if @project.update(project_params)
            flash[:notice] = "Project was updated successfully."
            redirect_to projects_path
        else
            flash[:notice]= "Not updated  #{@project.errors.full_messages}"
           redirect_to projects_path
        end
    end

   
    def destroy
        @project.destroy
        redirect_to projects_path, notice: 'Project deleted successfully.'
      end
      

    
    def project_params
        #params.require(:project).permit(:name, :description)
        params.require(:project).permit(:name, :description, member_ids: [])

    end
    

    def set_project
        @project=Project.find(params[:id])
      end
end
