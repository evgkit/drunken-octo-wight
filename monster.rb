class Monster
  attr_reader :name, :actions

  def initialize(name)
    @name = name
    @actions = {
        screams: 0,
        scares: 0,
        runs: 0,
        hides: 0
    }
  end

  def say
    print "#{name} says ..."
    yield
  end

  def scream
    print "#{name} scream: "
    yield self if block_given?
    actions[:screams] += 1
  end

  def scare
    print "#{name} scare: "
    yield self if block_given?
    actions[:scares] += 1
  end

  def run
    print "#{name} run: "
    yield self if block_given?
    actions[:runs] += 1
  end

  def hide
    print "#{name} hide: "
    yield self if block_given?
    actions[:hides] += 1
  end

  def print_scoreboard
    puts "-" * 10
    puts "Monster #{name} scores: "
    puts "-" * 10

    puts "Screams: #{actions[:screams]}"
    puts "Scares: #{actions[:scares]}"
    puts "Runs: #{actions[:runs]}"
    puts "Hides: #{actions[:hides]}"
  end
end

monster = Monster.new("Fluffy")

monster.say { |m| puts "Hello world! #{m.inspect}" }

monster.scream { |m| puts "BOO! #{m.inspect}" }

monster.scare { |m| puts "Go away! #{m.inspect}" }

monster.run { |m| puts "Going to get you! #{m.inspect}" }

monster.hide { |m| puts "Running away and hiding! #{m.inspect}" }

puts "\n"
monster.print_scoreboard