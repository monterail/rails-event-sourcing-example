class RecentPosts
  KEY = "recent_posts"
  STORE_LIMIT = 5

  def self.list(limit = STORE_LIMIT)
    $redis.lrange(KEY, 0, limit-1).map do |raw_post|
      JSON.parse(raw_post).with_indifferent_access
    end
  end

  def self.push(raw_post)
    $redis.lpush(KEY, raw_post)
    $redis.ltrim(KEY, 0, STORE_LIMIT-1)
  end
end
