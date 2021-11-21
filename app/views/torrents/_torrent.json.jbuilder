json.extract! torrent, :id, :title, :relase_year, :url, :main, :created_at, :updated_at
json.url torrent_url(torrent, format: :json)
