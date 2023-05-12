class User < ApplicationRecord 
    has_many :tasks, foreign_key: 'creator_id'
    has_many :tasks, foreign_key: 'member_id', class_name: 'Task'
    has_many :comments, foreign_key: 'user_id'


    has_many :project_members, foreign_key: 'member_id'
    has_many :projects, through: :project_members
    has_many :created_projects, class_name: 'Project', foreign_key: 'creator_id'
  
end