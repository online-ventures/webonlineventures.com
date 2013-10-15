json.array!(@members) do |member|
  json.extract! member, :index, :show
  json.url member_url(member, format: :json)
end
