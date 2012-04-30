require 'bundler/setup'

require 'hashie'
require 'post_to_s3/file_upload'

module PostToS3
  class Configuration < Hashie::Mash; end
  class MissingConfiguration < StandardError; end

  def self.configuration
    @config ||=
      begin
        config = Configuration.new

        # default creds to those in ENV
        config.access_key_id = ENV['AMAZON_ACCESS_KEY_ID']
        config.secret_access_key = ENV['AMAZON_SECRET_ACCESS_KEY']

        config
      end
  end

  def self.configure(&block)
    yield configuration
  end
end

if defined? ActionView::Base
  require 'post_to_s3/view_helpers'
  ActionView::Base.send :include, PostToS3::ViewHelpers
end
