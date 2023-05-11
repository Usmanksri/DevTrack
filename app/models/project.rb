class Project < ApplicationRecord 

    # belongs_to :creator, class_name: 'User', foreign_key: 'creator_id'


    #belongs_to :creator, class_name: 'User', foreign_key: 'creator_id'



    belongs_to :creator, class_name: 'User'
    has_many :project_members
    has_many :members, through: :project_members, source: :user

end