class ProjectMember < ApplicationRecord 
    
    belongs_to :user, foreign_key: 'member_id'
    belongs_to :project
end