class MyArray
  attr_reader :array

  def initialize
    @array = []
  end

  def push(item)
    array.push(item)
  end

  def each(&block)
    i = 0
    while i < array.length
      block.call(array[i])
      i += 1
    end
    array
  end
end

arr = MyArray.new
arr.push(1)
arr.push(2)
arr.push(3)
arr.each { |item| "#{item}"}