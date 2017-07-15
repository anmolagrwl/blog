require 'rails_semantic_logger'

SemanticLogger.add_appender(
  appender: :elasticsearch,
  url:      ENV['ELASTIC_URL']
)