class CreateResearchGroupMemberships < ActiveRecord::Migration
  def change
    create_table :research_group_memberships do |t|
      t.integer :research_group_id
      t.integer :employee_id

      t.timestamps
    end
  end
end
