require 'rails_semantic_logger'

# SemanticLogger.add_appender(
#   appender: :elasticsearch,
#   url:      ENV['ELASTIC_URL']
# )

SemanticLogger.add_appender(file_name: "log/#{Rails.env}.json", formatter: :json)