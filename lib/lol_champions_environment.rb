require "pry"
require "httparty"
require "dotenv/load"

require_relative "./lol_champions/version"
require_relative "./lol_champions/cli"
require_relative "./lol_champions/champion"
require_relative "./lol_champions/api"

module LolChampions
  class Error < StandardError; end
  # Your code goes here...
end
