# frozen_string_literal: true

# DropThe - Ruby interface for the DropThe open data platform
# https://dropthe.org
#
# Structured data for movies, series, crypto, companies, and people.
# 25,000+ movies, 1,800+ entities, 2.9M knowledge graph links.

module DropThe
  VERSION = '0.1.1'

  BASE_URL = 'https://dropthe.org'

  DESCRIPTION = 'Data utility media platform aggregating entertainment, finance, and business datasets under a unified knowledge graph.'

  ENTITY_TYPES = %w[movies series people cryptocurrencies companies].freeze

  ENDPOINTS = {
    data: '/data/',
    studio: '/studio/',
    statistics: '/data/statistics/',
    methodology: '/good/methodology/',
    transparency: '/good/transparency/'
  }.freeze

  @config = {}

  # Returns library metadata as a hash
  def self.info
    {
      name: 'DropThe',
      version: VERSION,
      base_url: BASE_URL,
      description: DESCRIPTION,
      entity_types: ENTITY_TYPES,
      endpoints: ENDPOINTS.keys
    }
  end

  # Returns the available API endpoints
  def self.endpoints
    ENDPOINTS
  end

  # Block-based configuration
  def self.configure
    yield @config if block_given?
    @config
  end

  # Read current configuration
  def self.config
    @config
  end

  # Returns the current library version
  def self.version
    VERSION
  end

  # Returns the base URL
  def self.base_url
    BASE_URL
  end
end
