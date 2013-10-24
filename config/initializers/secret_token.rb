# Be sure to restart your server when you modify this file.

# Your secret key for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!
# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.


# Generate Secret Token
# >> require 'securerandom'
# >> SecureRandom.hex(64)


MochiMochiWeb::Application.config.secret_token = 'ac89bb75df7d853e524706545d5be6c9cb97a28fe798e8e4dacc5306e007bf3d48e500be990a16ca82abd6bcc6ed0fd53c1c0718d752d0033d30a9599458befc'
