json.array!(@employers) do |employer|
  json.extract! employer, :id, :name, :address, :website, :industry, :size, :city, :state, :country, :evp, :status
  json.url employer_url(employer, format: :json)
end
