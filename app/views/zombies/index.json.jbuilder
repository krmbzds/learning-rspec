json.array!(@zombies) do |zombie|
  json.extract! zombie, :id, :name, :weapons, :brain, :dead, :weight, :height
  json.url zombie_url(zombie, format: :json)
end
