# frozen_string_literal: true
if Rails.env.production?
  KEY = ENV.fetch("KEY") { "123456789101112123456789101112123456789101112" }
  # Specify env variable/location/etc. to retrieve key from
else
  KEY = "123456789101112123456789101112123456789101112"
end
