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

  def show
  	@project=Project.all
  end	

   private

    def project_params
      params.require(:project).permit(:PROJECT, :URL, :DOMAIN, :TECHNOLOGY, :TAGS, :START_DATE, :END_DATE, :PROJECT_LEAD, :PROJECT_TYPE, :DESCRIPTION)
    end
end
