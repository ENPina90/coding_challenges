#Write a function that takes in a string of one or more words, and returns the same string, but with all five or more letter words reversed (like the name of this kata).

def spin_words(string)
  string.gsub(/\w{5,}/, &:reverse)
end

#You are given an array (which will have a length of at least 3, but could be very large) containing integers. The array is either entirely comprised of odd integers or entirely comprised of even integers except for a single integer N. Write a method that takes the array as an argument and returns this "outlier" N.
def find_outlier(integers)
  integers.partition(&:odd?).find(&:one?).first
end

#You are going to be given an array of integers. Your job is to take that array and find an index N where the sum of the integers to the left of N is equal to the sum of the integers to the right of N. If there is no index that would make this happen, return -1.
def find_even_index(arr)
  left_sum = 0
  right_sum = arr.sum
  arr.each_with_index do |e, ind|
    right_sum -= e

    return ind if left_sum == right_sum

    left_sum += e
  end

  -1
end

#remove 'WUB' from string
def decoder(string)
  string.gsub(/(WUB)+/, ' ').strip
end

# a man was given directions to go from one point to another. The directions were "NORTH", "SOUTH", "WEST", "EAST". Clearly "NORTH" and "SOUTH" are opposite, "WEST" and "EAST" too.
# Going to one direction and coming back the opposite direction right away is a needless effort. Since this is the wild west, with dreadfull weather and not much water, it's important to save yourself some energy, otherwise you might die of thirst!
# How I crossed a mountainous desert the smart way.
# The directions given to the man are, for example, the following (depending on the language):

# ["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"] => ["WEST"]

OPPOSITE = {
  "NORTH" => "SOUTH",
  "SOUTH" => "NORTH",
  "EAST"  => "WEST",
  "WEST"  => "EAST"
}

def dirReduc(arr)
  arr.each_with_object([]) { |direction, arr|
    arr.last == OPPOSITE[direction] ? arr.pop : arr.push(direction)
  }
end


def room(l, w)
  line_one = []
  l.times { line_one << '_'}
end

# given a string, replace every letter with its position in the alphabet. If anything in the text isn't a letter, ignore it and don't return it.

def alphabet_position(text)
  text.downcase.chars.grep('a'..'z').map { |l| ('a'..'z').to_a.index(l) + 1 }.join(' ')
end

# fibinachi + 1 sequence
def tribonacci(signature, n)
  #your code here
  (n - 3).times do
    signature << signature.last(3).sum
  end
  signature.first(n)
end

# input
# customers: an array of positive integers representing the queue. Each integer represents a customer, and its value is the amount of time they require to check out.
# n: a positive integer, the number of checkout tills.
# output
# The function should return an integer, the total time required.

def checkout_time(customers, n)
  arr = Array.new(n, 0)
  customers.each { |customer| arr[arr.index(arr.min)] += customer }
  arr.max
end
