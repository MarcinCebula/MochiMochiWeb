# require 'aws/s3'
# 
# rails_env = ENV['RAILS_ENV'] || 'development'
# s3 = YAML::load_file("config/keys/#{rails_env}/aws-s3.yml")
# 
# AWS::S3::Base.establish_connection!({
#   :access_key_id => s3['access_key'],
#   :secret_access_key => s3['secret']
# })