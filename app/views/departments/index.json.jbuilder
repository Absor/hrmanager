json.array!(@departments) do |department|
  json.extract! department, :name, :faculty_id
  json.url department_url(department, format: :json)
end
