require'./lib/joke'
require './lib/user'
require 'pry'

class OpenMic

  attr_accessor :repeated_jokes
  attr_reader :location, :date, :performers

  def initialize(info)
    @location = info[:location]
    @date = info[:date]
    @performers = []
    @repeated_jokes = false
  end

  def welcome(performer)
    @performers << performer
  end

  def repeated_jokes?
    joke_ids = @performers.map do |performer|
      performer.jokes
    end

    joke_ids.flatten
    
    repeated_jokes = joke_ids.one? do |joke|
      joke == joke
    end
  end
end
