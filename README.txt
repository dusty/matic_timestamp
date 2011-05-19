Mongomatic::Plugins::Timestamps

  matic_timestamp is a plugin for Mongomatic to automatically add created_at and updated_at

Usage

  require 'matic_timestamp'

  class Monkey < Mongomatic::Base
    include Mongomatic::Plugins::Timestamps
  end

  m = Monkey.new
  m.insert
  Monkey.find_one.created_at # Time object
  m.update
  Monkey.find_one.updated_at # More recent Time object
