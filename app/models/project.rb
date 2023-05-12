class Project < ApplicationRecord 

    has_many :tasks, foreign_key: 'project_id'

    belongs_to :creator, class_name: 'User'
    has_many :project_members
    has_many :members, through: :project_members, source: :user

end