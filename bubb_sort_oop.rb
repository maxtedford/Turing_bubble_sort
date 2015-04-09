class BubbleSort
  attr_reader :sequence

  def initialize(sequence)
    @sequence = sequence
    @swaps = 0
  end

  def bubble_sort
    index = 0
    until index == ((sequence.length)-1)
    if sequence[index] > sequence[index+1]
      sequence[index], sequence[index+1] = sequence[index+1], sequence[index]
      index = 0
      @swaps +=1
    else
      index += 1
    end
    end
    sequence
  end
end

results = @sequence

puts "Final results: #{results}"
puts "Swaps: #{@swaps}"
