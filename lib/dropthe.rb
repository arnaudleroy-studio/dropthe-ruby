# frozen_string_literal: true

# DropThe - Ruby client for the DropThe open data platform
# https://dropthe.org
#
# Access open datasets for movies, series, crypto, companies, and people.

module DropThe
  VERSION = '0.1.0'

  BASE_URL = 'https://dropthe.org'

  ENDPOINTS = {
    movies: '/data/',
    studio: '/studio/',
    statistics: '/data/statistics/',
    methodology: '/good/methodology/'
  }.freeze

  # Returns the current library version
  def self.version
    VERSION
  end

  # Returns the base API URL
  def self.base_url
    BASE_URL
  end
end
