require "minuteman"

Minuteman.configure do |config|
  # You need to use Redic to define a new Redis connection
  config.redis = Redic.new(host: 'redis')

  # The prefix affects operations
#   config.prefix = "Tomato"

  # The patterns is what Minuteman uses for the tracking/counting and the
  # different analyzers
#   config.patterns = {
#     dia: -> (time) { time.strftime("%Y-%m-%d") }
#   }
end