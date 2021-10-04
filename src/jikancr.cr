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

  def self.search(type, query, page = 1, limit = 1)
    response = HTTP::Client.get("https://api.jikan.moe/v3/search/" + type.to_s + "?q=" + query.to_s + "&page=" + page.to_s + "&limit=" + limit.to_s)
    return response.body
  end

  def self.characters_staff(type, id)
    response = HTTP::Client.get("https://api.jikan.moe/v3/" + type.to_s + "/" + id.to_s + "/characters_staff")
    return response.body
  end

end