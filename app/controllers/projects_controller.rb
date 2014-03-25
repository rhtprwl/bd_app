class ProjectsController < ApplicationController
  
  def new
   @project = Project.new
  end

  def create
  	@project = Project.new(project_params)
  	if @project.save 
      #logger.debug project_params
  		flash[:success] = "successfully save"
      redirect_to root_path
  	 else 
  	 render 'new'
  	end
  end

   def index
         #logger.debug "aaaaaaaaaaaaaaaaaaaa"
        if params[:search]
          # logger.debug "aaaaaaaaaaaaaaaaaaaa"
           #logger.debug params[:search]
           @search = Project.search do
             fulltext params[:search]
           end
           logger.debug "111111"
           logger.debug @search.inspect
           logger.debug @search.results
           @projects = @search.results   
           #respond_with(@projects)
          else
          # logger.debug "1124324346564124343253dfhskjvfdkjbgjkalfbvjdklbfkjldsabflkdsjbfksdshfbsl"
          # logger.debug params[:search]
           @projects = Project.all  
       end	
    end  

  private

    def project_params
      params.require(:project).permit(:projects, :url, :domain, :technology, :tags, :start_date, :end_date, :project_lead, :project_type, :description)
    end
end
