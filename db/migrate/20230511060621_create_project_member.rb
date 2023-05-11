class CreateProjectMember < ActiveRecord::Migration[7.0]
  def change
    create_table :project_members do |t|


      t.references :member, foreign_key: { to_table: :users }
      t.references :project, foreign_key: { to_table: :project }

      t.timestamps
    end
  end
end
