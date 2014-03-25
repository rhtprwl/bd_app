class Project < ActiveRecord::Base

   
    attr_accessible :projects, :url, :domain, :technology, :tags, :start_date, :end_date, :project_lead, :project_type, :description

	validates :projects, presence: true, length: { maximum: 50 }
	validates :url, presence: true, length: { maximum: 50 }
	validates :domain, presence: true, length: { maximum: 50 }
	validates :technology, presence: true, length: { maximum: 50 }
	validates :tags, presence: true, length: { maximum: 50 }
	validates :start_date, presence: true, length: { maximum: 50 }
	validates :end_date, presence: true, length: { maximum: 50 }
	validates :project_lead, presence: true, length: { maximum: 50 }
	validates :project_type, presence: true, length: { maximum: 50 }
	validates :description, presence: true, length: { maximum: 50 }
    
   searchable do
    
     integer  :id
     text   :projects
     text   :url
     text   :domain
     text   :technology
     text   :tags
     time   :start_date
     time   :end_date
     text   :project_lead
     text   :project_type
     text   :description
   end  
end
