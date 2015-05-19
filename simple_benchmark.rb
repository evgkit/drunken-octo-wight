class SimpleBenchmark
  def run(description, &block)

    start_time = Time.now
    block.call
    end_time = Time.now

    puts "#{description} results"
    puts "Elapsed time: #{end_time - start_time}"
  end
end

benchmark = SimpleBenchmark.new
benchmark.run "Sleep a random amount of time" do
  5.times do
    print "."
    sleep(rand(0.1..1.0))
  end
  print "\n"
end