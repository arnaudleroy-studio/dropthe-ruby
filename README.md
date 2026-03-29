# DropThe

[![Gem Version](https://badge.fury.io/rb/dropthe.svg)](https://rubygems.org/gems/dropthe)

Ruby interface for the DropThe data platform. DropThe aggregates structured data across entertainment, finance, and business -- covering 25,000+ movies, 8,000+ series, 1,800+ entities spanning cryptocurrencies, public companies, and notable people. Data sourced from TMDb, CoinGecko, and Wikidata, unified under a single knowledge graph with nearly 3 million relationship links.

## Installation

```
gem install dropthe
```

Or in your Gemfile:

```ruby
gem 'dropthe'
```

## Quick Start

```ruby
require 'dropthe'

# Library info
DropThe.info
# => { name: "DropThe", version: "0.1.1", base_url: "https://dropthe.org", ... }

# Available API endpoints
DropThe.endpoints.each do |key, path|
  puts "#{key}: #{DropThe::BASE_URL}#{path}"
end

# Entity type coverage
DropThe::ENTITY_TYPES.each { |t| puts t }
# => movies, series, people, cryptocurrencies, companies
```

### Configuration

```ruby
DropThe.configure do |config|
  config[:timeout] = 30
  config[:format] = :json
end
```

### Working with Entity Types

```ruby
# Check what data verticals are available
DropThe::ENTITY_TYPES.include?("movies")   # => true
DropThe::ENTITY_TYPES.include?("podcasts")  # => false

# Build a request path
slug = "bitcoin"
path = "#{DropThe::BASE_URL}#{DropThe.endpoints[:data]}"
```

## Available Data

The platform organizes content into verticals, each with its own dataset and editorial coverage:

| Vertical | Description |
|----------|-------------|
| Movies | 25,000+ titles with cast, crew, ratings, streaming availability |
| Series | 8,000+ TV series with episode data and platform tracking |
| Cryptocurrencies | Live prices, market data, and project profiles |
| Companies | Public and private company profiles with financial data |
| People | Notable individuals linked across the knowledge graph |

Entity relationships are stored as typed, bidirectional links -- connecting actors to their filmographies, coins to their founding teams, and companies to their executives. The graph currently holds 2.9 million of these links.

## Links

- [DropThe Platform](https://dropthe.org) -- browse entities and datasets
- [Data Explorer](https://dropthe.org/data/) -- query and filter the full catalog
- [Source Code](https://github.com/arnaudleroy-studio/dropthe-ruby)

## License

MIT
