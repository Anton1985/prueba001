# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_prueba001_session',
  :secret      => '002c01920dbe076023f1a9fd2e9a8ee312b1e3c67566b6017bdaec7742baff71b7e5b24251b5ba4d44a88fa0775787860edaf6223935bf0050bd7ec275a2c952'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
