# require 'aws/s3'

module ImageUploader
  # include AWS::S3
  
  def upload_thumbnail(game, image)
    image = find_image(game, image)
    prepare_directory unless directory_structire_exists?()
    
    file = generate(options)
    Bucket.find("AceGmr")
    S3Object.store("tags/#{filename}.png", file, 'ZombieIntern', {:access => :public_read})
  end
  
  
  def find_image(game_id, image_id)
    Game.find(game_id).images
  end
end