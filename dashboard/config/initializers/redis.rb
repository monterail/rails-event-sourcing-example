$redis = Redis::Namespace.new("dashboard:#{Rails.env}", redis: Redis.new)
