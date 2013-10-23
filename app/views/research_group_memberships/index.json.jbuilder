json.array!(@research_group_memberships) do |research_group_membership|
  json.extract! research_group_membership, :research_group_id, :employee_id
  json.url research_group_membership_url(research_group_membership, format: :json)
end
