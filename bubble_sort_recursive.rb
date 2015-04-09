class BubbleSort
attr_reader :sequence

  def initialize(sequence)
    @sequence = sequence
    @swaps = 0
    @results = []
  end

  def bubble_sort
    swapped = true
    while swapped
      swapped = false
      0.upto(sequence.length-2) do |index|
      if sequence[index] > sequence[index+1]
        sequence[index], sequence[index+1] = sequence[index+1], sequence[index]
        @swaps += 1
        swapped = true
      end
      end
    end
    @results = sequence
  end


  def output
    puts "Final result: #{@results}"
    puts "Total swaps: #{@swaps}"
  end
end

test = BubbleSort.new([6, 2, 5, 1, 8])
p test.bubble_sort
