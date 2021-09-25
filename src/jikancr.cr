require "http/client"
require "json"

module Jikan

  def self.manga(id : String || Int64)
    response = HTTP::Client.get("https://api.jikan.moe/v3/manga/" + id)
    return JSON.parse(response.body)
  end

  def self.anime(id : String || Int64)
    response = HTTP::Client.get("https://api.jikan.moe/v3/anime/" + id)
    return JSON.parse(response.body)
  end

  def self.search(query : String)
    response = HTTP::Client.get("https://api.jikan.moe/v3/search?q=" + query.as(String))
    return JSON.parse(response.body)
  end

end
