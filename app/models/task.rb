class Task < ApplicationRecord 
    belongs_to :creator, class_name: 'User', foreign_key: 'creator_id'
    belongs_to :member, class_name: 'User', foreign_key: 'member_id'
    #belongs_to :task, class_name: 'Task', foreign_key: 'commentable_id'
    #has_many :comments
    has_many :comments, foreign_key: 'commentable_id'

    #validates_uniqueness_of :member_id, :creator_id, scope: :project_id

    validates :title, presence: true
    validates :description, presence: true
    validates :creator_id, presence: true
    validates :project_id, presence: true
end