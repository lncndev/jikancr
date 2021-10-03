require "http/client"
require "json"

module Jikan

  def self.manga(id)
    response = HTTP::Client.get("https://api.jikan.moe/v3/manga/" + id.to_s)
    return JSON.parse(response.body)
  end

  def self.anime(id)
    response = HTTP::Client.get("https://api.jikan.moe/v3/anime/" + id.to_s)
    return JSON.parse(response.body)
  end

  def self.search(type, query)
    response = HTTP::Client.get("https://api.jikan.moe/v3/search/" + type.to_s + "?q=" + query.to_s + "&limit=1")
    return JSON.parse(response.body)
  end

end