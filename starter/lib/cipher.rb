require 'byebug'

class Cipher

  def initialize

    @plain = "abcdefghijklmnopqrstuvwxyz".split('')
    @cipher = "zyxwvutsrqponmlkjihgfedcba".split('')
    @code = Hash.new('')

    for i in 0..@plain.size do
      @code[@plain[i]] = @cipher[i]
    end
  end

  def encode(arr)

    result = []

    for i in 0..arr.size - 1 do
      result.push(@code[arr[i]])
    end

    result = result.join
  end
end

puts 'Enter word to be encoded:'

cipher = Cipher.new
res = cipher.encode(gets.chomp)

puts "Encoded string: #{res}"
