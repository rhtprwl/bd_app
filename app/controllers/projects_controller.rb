class ProjectsController < ApplicationController
  
  def new
   @project = Project.new
  end

  def create
  	@project = Project.new(project_params)
  	if @project.save 
  		flash[:success] = "successfully save"
      redirect_to root_path
  	 else 
  	 render 'new'
  	end
  end

   def index
         logger.debug "aaaaaaaaaaaaaaaaaaaa"
        if params[:search]
           logger.debug "aaaaaaaaaaaaaaaaaaaa"
           logger.debug params[:search]
           @search = Project.search do
             fulltext params[:search]
           end
           @projects = @search.results   
           #respond_with(@projects)
          else
           logger.debug "1124324346564124343253dfhskjvfdkjbgjkalfbvjdklbfkjldsabflkdsjbfksdshfbsl"
           logger.debug params[:search]
           @projects = Project.all  
       end	
    end  

  private

    def project_params
      params.require(:project).permit(:PROJECT, :URL, :DOMAIN, :TECHNOLOGY, :TAGS, :START_DATE, :END_DATE, :PROJECT_LEAD, :PROJECT_TYPE, :DESCRIPTION)
    end
end
