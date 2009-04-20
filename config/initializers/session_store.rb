# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_plates_session',
  :secret      => 'acc19538fa2fccf623efc08826aa4d859e362b76eedfb8e9f3ba7341fb8142d60fac6a8fdf26f76e600145d47d846ba08b692735410c36053f59f22a00cde0ad'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
