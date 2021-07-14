require './lib/joke'

class User
  attr_accessor :jokes

  attr_reader :name

  def initialize(name)
    @name = name
    @jokes = []
  end

  def learn(joke)
    @jokes << joke
  end

  def tell(other_user, joke)
    other_user.jokes << joke
  end

  def joke_by_id(joke_id)
    joke = @jokes.find do |joke|
      joke.id == joke_id
    end
  end
end
