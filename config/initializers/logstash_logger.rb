require 'logstash-logger'

# Use the TCP logger
# See https://github.com/dwbutler/logstash-logger for further options
log_stash = LogStashLogger.new(type: :tcp, host: ENV['LOGSTASH_HOST'], port: 5000)

SemanticLogger.add_appender(logger: log_stash)