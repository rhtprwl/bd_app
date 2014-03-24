class Project < ActiveRecord::Base

    attr_accessible :PROJECT, :URL, :DOMAIN, :TECHNOLOGY, :TAGS, :START_DATE, :END_DATE, :PROJECT_LEAD, :PROJECT_TYPE, :DESCRIPTION

    validates :PROJECT, presence: true, length: { maximum: 50 }
	validates :URL, presence: true, length: { maximum: 50 }
	validates :DOMAIN, presence: true, length: { maximum: 50 }
	validates :TECHNOLOGY, presence: true, length: { maximum: 50 }
	validates :TAGS, presence: true, length: { maximum: 50 }
	validates :START_DATE, presence: true, length: { maximum: 50 }
	validates :END_DATE, presence: true, length: { maximum: 50 }
	validates :PROJECT_LEAD, presence: true, length: { maximum: 50 }
	validates :PROJECT_TYPE, presence: true, length: { maximum: 50 }
	validates :DESCRIPTION, presence: true, length: { maximum: 50 }
    
   searchable do
    
     integer  :ID
     text   :PROJECT
     text   :URL
     text   :DOMAIN
     text   :TECHNOLOGY
     text   :TAGS
     time   :START_DATE
     time   :END_DATE
     text   :PROJECT_LEAD
     text   :PROJECT_TYPE
     text   :DESCRIPTION
   end  

   #handle_asynchronously :solr_index

end

