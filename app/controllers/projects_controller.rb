class ProjectsController < ApplicationController
  
  def new
   @project = Project.new
  end

  def create
  	@project = Project.new(project_params)
  	if @project.save 
  		flash[:success] = "successfully save"
  	 else 
  	 render 'new'
  	end  
  end

  def index
  	@project=Project.all
  end	

  def edit
   @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
   
    if @project.update(project_params)
      redirect_to root_path
    else
      render 'edit'
    end
  end

  def destroy
    @project=Project.find(params[:id])
    @project.destroy

    redirect_to project_path
  end

   private

    def project_params
      params.require(:project).permit(:PROJECT, :URL, :DOMAIN, :TECHNOLOGY, :TAGS, :START_DATE, :END_DATE, :PROJECT_LEAD, :PROJECT_TYPE, :DESCRIPTION)
    end

end
