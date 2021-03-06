require "active_support/configurable"

class Sidekiq::Merger::Config
  include ActiveSupport::Configurable

  def self.options
    Sidekiq.options["merger"] || {}
  end

  config_accessor :poll_interval do
    options[:poll_interval] || 5
  end

  config_accessor :lock_ttl do
    options[:lock_ttl] || 1
  end
end
