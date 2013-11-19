uri = URI.parse(Settings.redis.url)
REDIS = Redis.new(host: uri.host, port: uri.port, password: uri.password)