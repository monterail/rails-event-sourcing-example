class PageViews
  KEY = "page_views"

  def self.stats
    $redis.hgetall(KEY)
  end

  def self.record(raw_post)
    data = JSON.parse(raw_post)
    $redis.hincrby(KEY, data["site"], 1)
  end
end
